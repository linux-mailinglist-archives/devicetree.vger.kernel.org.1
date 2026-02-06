Return-Path: <devicetree+bounces-263196-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDaaIwlGhWm5/AMAu9opvQ
	(envelope-from <devicetree+bounces-263196-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 02:38:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F1EF8FC9
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 02:38:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B49A13014953
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 01:38:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09F3123E346;
	Fri,  6 Feb 2026 01:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.spacemit.com header.i=@linux.spacemit.com header.b="o7FOpGgv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgsg2.qq.com (smtpbgsg2.qq.com [54.254.200.128])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB1B2264A8;
	Fri,  6 Feb 2026 01:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.128
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770341889; cv=none; b=J7hbrIWhbTG9fYndjvZ/+dR85rAIm4lwSyBURpz5+ECEvWPTLACkx2KEBoeu2uC59IAWttwy6wjqaWK2TQJLRag+sZXPLE07EnasC8X+7lktSbixUFT4m2if1yfH8rCAEl6aItJoGfWLzwgLXOKRon4XYgOt+OhysBWBt+HD8mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770341889; c=relaxed/simple;
	bh=fvvrcLmcigdavzznPtYsGheTPDtg54an1PXGs4+TFC0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kGuno5/5eTfEi+R8RZLIwRzO8yV/1yp0giQwVGBosrH1IchJtfN8rOKLJpjoJTMtqn6nLW+cpAXig80kOZwL/J7Lmkm1eBAaIhjkceHsC5B0mYv5CCPYE1nvx7fNJBzTVCs9up7E1K2Y88CAko4nAhF91oTfZiE6g6IsJ+7kRoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.spacemit.com; spf=none smtp.mailfrom=linux.spacemit.com; dkim=pass (1024-bit key) header.d=linux.spacemit.com header.i=@linux.spacemit.com header.b=o7FOpGgv; arc=none smtp.client-ip=54.254.200.128
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.spacemit.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.spacemit.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.spacemit.com;
	s=mxsw2412; t=1770341830;
	bh=u66lDzn3W+s9lLSBjCrJQz3iX/gWLeceviCCn8xnhQA=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=o7FOpGgvbX0PXyChaED76RZzeiQ+/8zcCtx7IfhWZhp6y77Ilgp4g/zIEItxdwDmU
	 czrJOl+77F6gCpZQYY1TgYg60PZDfPuteadl32mITjL2sFEtPghYMGtwke7UYMKBNJ
	 pwX5TOjpZ9Vr3iPxRvZntppt49IB7Nsv4EyietG4=
X-QQ-mid: zesmtpsz7t1770341822t19d1032a
X-QQ-Originating-IP: iIAeuwskNV4ojOYuV3Noln3ZDwxd2URhMw6INSSJBQ8=
Received: from [10.3.91.191] ( [101.70.125.34])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 06 Feb 2026 09:36:59 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 18048956717111257135
Message-ID: <6139284F36497822+1b579565-0f44-46b8-aa46-00258b40e0e4@linux.spacemit.com>
Date: Fri, 6 Feb 2026 09:36:59 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/8] iommu/riscv: Fix WSI mode IRQ number handling
To: Andrew Jones <andrew.jones@oss.qualcomm.com>
Cc: Tomasz Jeznach <tjeznach@rivosinc.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Jingyu Li <joey.li@spacemit.com>,
 iommu@lists.linux.dev, linux-perf-users@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
 devicetree@vger.kernel.org
References: <cover.1769562575.git.lv.zheng@spacemit.com>
 <cover.1770195980.git.lv.zheng@linux.spacemit.com>
 <F77F878EF7C59BD3+a9078997d97dacd05d1271a5390dfd08a402b325.1770195980.git.lv.zheng@linux.spacemit.com>
 <2ueryrki7uzpjn6rbqz7scy46sjhw76jjilddz2naslz3eyfdp@ycwf42eaw5yy>
 <927D288E956D61AD+d1488c72-afff-49d2-bb6b-5ef5ea08b627@linux.spacemit.com>
 <qlnntgtoaatvdpyvusjhe2y3hickopigwf3sobtnsfwpfhwjiu@zi4auf65eepa>
Content-Language: en-US
From: Lv Zheng <lv.zheng@linux.spacemit.com>
In-Reply-To: <qlnntgtoaatvdpyvusjhe2y3hickopigwf3sobtnsfwpfhwjiu@zi4auf65eepa>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:linux.spacemit.com:qybglogicsvrgz:qybglogicsvrgz5b-1
X-QQ-XMAILINFO: MFZ9kh0LMtuH0AU9pAK9/PazOypgIKoQg76nLcge23gYkiXS8HdxXEce
	xTe3LiYcAFT9/BtDhydb42SrASmK84yFYudwg0EftdMHoO1+xfE2+Qd+NwpOysRJzkGUgNK
	DgrFwkzTC+Z5hnW2yRrA4vNmQ2WRJ4VlmjUUXlatjnOHHkG6ol9Fmlo5yGcRb/vvRxbNH+F
	nzoCsbbv2lnEvLMDUwr1luDeDmlMThOjBreO6zriEX2cwFaL0OBqsYRMnkB8qvKRnzkN37+
	FOCYXjeX+8EBYutxLfIl1H7OYOgVM+9nTMzXn6B9Z6QhKO/OfVDvTWbFz2ELqUaTQjJy1XD
	Ok92U/YCMZLcBMKxBuVgsZWpDOL3O4hEKQKAnHYr0mncz1nqezJ735nMOHiv9odNYM3G6Kg
	MhxwXqG8XG7mM7sfj8jBzOafce4WkQKhKuqTe2rBi+3hHAD1OAVzdrourSs+u1kVp/aIGjv
	IReVBIUD575mw3J1zpjePh6i2feHzzhxDJZxnYlJD01X0CXr1VwkMQ17RK3QoL3Zp3bYJvl
	M9rF0XRAdz3ub/JTb2sHoYyugjGcLqpGF/dkGl49nrFoZyJ39lC9HgREwiDUhDm9bY8fYC4
	oPVA2d46sHgMTutJkJI06TdOpri6Vztwjz1sflTrYIzGmcphgzyUlZufCo2MEoskXQQRrz4
	YshVPH3eMvPyXs13PkaTVfYAvIVSO/AFkgWLJAIwQg8d5CcS7CirnnQHFOsS6C36zdZpzEz
	KevYGs1tgRC5TRbzIheyf1sEitY02OIe08z2cTDzUqHKns3rarqmrbzYsOFvL7XoeeqtgLl
	u6vl3Tj/yyqwyVGt5iP59rNGU0hExuos43NcclhqrebJhSj9U+8WxKw5gx3o38ufF+UFcR1
	qBgCdxXzSX/4sFJc5Ci2+we+i+4kNNTtmvm1UBfUtDqUvTB01V0tDFmDpu//JqcI9UsR9v9
	iIUKvjaJTTkcKRdPu/urRLGoi00jp4xPzg+TTzkvI9mZf6rWTBbqQOF6Qo9CgT379OQUcl6
	8oq/Utqo9w71/prjkm
X-QQ-XMRINFO: NI4Ajvh11aEjEMj13RCX7UuhPEoou2bs1g==
X-QQ-RECHKSPAM: 0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[linux.spacemit.com:s=mxsw2412];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263196-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[spacemit.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FORGED_MUA_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linux.spacemit.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lv.zheng@linux.spacemit.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.spacemit.com:mid,linux.spacemit.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 24F1EF8FC9
X-Rspamd-Action: no action

On 2/5/2026 11:04 PM, Andrew Jones wrote:
> On Thu, Feb 05, 2026 at 11:52:57AM +0800, Lv Zheng wrote:
>> On 2/5/2026 1:20 AM, Andrew Jones wrote:
>>> On Wed, Feb 04, 2026 at 05:08:52PM +0800, Lv Zheng wrote:
> ...
>>>> diff --git a/drivers/iommu/riscv/iommu.c b/drivers/iommu/riscv/iommu.c
>>>> index d9429097a2b5..26630979473b 100644
>>>> --- a/drivers/iommu/riscv/iommu.c
>>>> +++ b/drivers/iommu/riscv/iommu.c
>>>> @@ -1593,11 +1593,26 @@ static int riscv_iommu_init_check(struct riscv_iommu_device *iommu)
>>>>    		       FIELD_PREP(RISCV_IOMMU_ICVEC_PMIV, 3 % iommu->irqs_count);
>>>>    	riscv_iommu_writeq(iommu, RISCV_IOMMU_REG_ICVEC, iommu->icvec);
>>>>    	iommu->icvec = riscv_iommu_readq(iommu, RISCV_IOMMU_REG_ICVEC);
>>>> -	if (max(max(FIELD_GET(RISCV_IOMMU_ICVEC_CIV, iommu->icvec),
>>>> -		    FIELD_GET(RISCV_IOMMU_ICVEC_FIV, iommu->icvec)),
>>>> -		max(FIELD_GET(RISCV_IOMMU_ICVEC_PIV, iommu->icvec),
>>>> -		    FIELD_GET(RISCV_IOMMU_ICVEC_PMIV, iommu->icvec))) >= iommu->irqs_count)
>>>> -		return -EINVAL;
>>>> +	/*
>>>> +	 * In WSI mode, ICVEC may read as zero. Only validate if using MSI.
>>>> +	 * Check if FCTL.WSI is set to determine interrupt mode.
>>>> +	 */
>>>> +	if (!(iommu->fctl & RISCV_IOMMU_FCTL_WSI)) {
>>>
>>> The behavior of ICVEC does not depend on FCTL.WSI
>>>
>>>> +		if (max(max(FIELD_GET(RISCV_IOMMU_ICVEC_CIV, iommu->icvec),
>>>> +			    FIELD_GET(RISCV_IOMMU_ICVEC_FIV, iommu->icvec)),
>>>> +			max(FIELD_GET(RISCV_IOMMU_ICVEC_PIV, iommu->icvec),
>>>> +			    FIELD_GET(RISCV_IOMMU_ICVEC_PMIV, iommu->icvec))) >= iommu->irqs_count)
>>>> +			return -EINVAL;
>>>> +	} else {
>>>> +		/*
>>>> +		 * WSI mode: ICVEC is not used. Set to identity mapping for
>>>> +		 * riscv_iommu_queue_vec() to work correctly.
>>>> +		 */
>>>> +		iommu->icvec = FIELD_PREP(RISCV_IOMMU_ICVEC_CIV, 0) |
>>>> +			       FIELD_PREP(RISCV_IOMMU_ICVEC_FIV, 1) |
>>>> +			       FIELD_PREP(RISCV_IOMMU_ICVEC_PIV, 2) |
>>>> +			       FIELD_PREP(RISCV_IOMMU_ICVEC_PMIV, 3);
>>>
>>> It's certainly not correct to set iommu->icvec to anything that can't be
>>> written to the IOMMU's WARL ICVEC fields and read back again.
>>
>> Indeed.
>> It looks I can keep icvec returned for WSI and keeps the write-and-read
>> check logic only for MSI.
>>
> 
> You shouldn't need to touch this code at all. I don't see anything to fix
> wrt the spec. As I said, if iommu->irqs_count is known to be greater than
> one but you're getting zero back from ICVEC even after writing 0xffff to
> it first, then ICVEC on your IOMMU is broken. Once you've confirmed that,
> then the best you can do is add some workaround for your specific IOMMU
> here.
> 
> Thanks,
> drew
> 

This patch is an approach trying to give PMIV a standalone wired IRQ#
which is required by pre-silicon spacemit T100 RTLs when it is
configured to report both MSI/WSI caps. However there is no such real
product on the market, I just drop it it in the next version.

Thanks,
Lv


