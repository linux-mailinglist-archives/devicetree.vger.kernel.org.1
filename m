Return-Path: <devicetree+bounces-263058-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eA9oBhyyhGk54wMAu9opvQ
	(envelope-from <devicetree+bounces-263058-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:07:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E69BF4681
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:07:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E878D30470EE
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 15:04:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26CFF4218BD;
	Thu,  5 Feb 2026 15:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OvdZEEh9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cvxZN8Og"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E49104218B4
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 15:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770303869; cv=none; b=tciDjHkKKedJ7tE+++fOpaKpYS+Xpv/NZP8EUZrzIWIbb4525rul/M6LTMgqAWXwV/fv7x8anKLJfqFdDVCd26Jomyvgb8gTk9RP4DAvFQxV98Aayl7L1HTX+VOaauOF5jVSA2ZqN49cg1Vkv5/EexVddW3b/ovFrnnBdOvOCs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770303869; c=relaxed/simple;
	bh=SUsEwkuyVvNP3vyBu9cxsyIKK9MZJsYqzp9t9GalqBY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rRs3nPfcnEqJbX4zs0TDqaTh+AURUQQBpMMcn2ulrEzWOxAuwv84E8wOge6j31ieAq2WK7v6bSW5lsSZoYpnXD0kaKMSDZ/qEcd32vpB+o9CvERZMf73PXshylaKuDDJ+P6/kqnvl7XDb8m+t1WwV9L9vtk0MrNMIfJSvQAxHDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OvdZEEh9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cvxZN8Og; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 615F48q02945146
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 15:04:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KfBltjWFs/4bjLl10PANJ+We
	wubPhQqXLGvIdvHvBRo=; b=OvdZEEh9XkPxnIwQcO8fsStOxA7WybJudPm1SCz+
	XQ+z1brLbXcUFfSgLIZCWzoy2jRfANeM6wwnOxYVNoSDwyBs/y/7x84JC2lwgiU5
	05x9skkTvIdMC6LHpFImXlJMqa0DMau4loxb9fKpXzryA2EovY+LCtU0LJn1iaBp
	Sk2d0uqf2x5NVk5pAB7MCjMzBap09SrJA2KKXacL5/dkW/IaKgDVnAYUQ54h4zuD
	AHX4PVEDKrBviVzdf00Du6PHrYlQvmgwiZcYLcgtVu9GL+0ahE0QPqbCdLPc13Z2
	FFBty+5mqMDEkZzACzI495/LgKdmO/2yd/8QduqH3p9FrQ==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4q55sa59-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 15:04:28 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2b71bdcd037so716058eec.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 07:04:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770303867; x=1770908667; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KfBltjWFs/4bjLl10PANJ+WewubPhQqXLGvIdvHvBRo=;
        b=cvxZN8Og4v6D1oBsyBC0Za46lRJknj9+wRyH2Yz90pHMdyCKkCv//D6F4/RN/dGRDh
         8A69yTuQy8gCQnXAlNBTfEFs4yBLVCLp0rKJJ6+DPm7t5EW/gpxZPt2c9KRW5K4q14v9
         QiQXdaUb8GF895/PpPpx0syUTHm7lPy6Zo/bntLKDEqKgqOau5PGH64iABnNRa3uX563
         UjyEAXZG85Xzr2Hqw8ffJg77JM6TamrotI+FeGB2nCdQESmNkTFtinoyPKPQjxEL5uug
         F+NZ+BAWHB2ys4v5bUJtSVDFCwAV8jJ1PkLqAOKo+wb/UzkmjWfURWSVPWDmeai/VJOJ
         cdAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770303867; x=1770908667;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KfBltjWFs/4bjLl10PANJ+WewubPhQqXLGvIdvHvBRo=;
        b=qMVOpJ8HkHS4AlhNR9FdXa7tqPr1Gr4rBFXdU8AqQ9uK0CXgCVknDJgGIaD2JIo8E2
         BmTeUBhQ8cDx9oh01hKo5B8biJa30Mfsy0TL5CfcbN8Ak21+WpgD1prmlyx2zQexk41w
         sktBHDGYU/mwLqGjwY+nR9K9F6AGVDmrOEN0KXXXHS1nivdi2YEtTrwgpXMRsB6LKaER
         Ce4c2EOoXRtw8K8Fsax0a33jncw9LebqJwgyIbJjhLNHLjW+El5VuyYlUMgbY6RI++7z
         sdYYffD+FRH4SUgtsX+raTn/dh6/J6rUy3jnD/WrNIbiuLv0D9MLCcEq/aBI7A7CxXTl
         ny7w==
X-Forwarded-Encrypted: i=1; AJvYcCXlQ71HbbnRA+Eidl5sjLMDfEGvuocWzKJMtjioNaPvG/FJ73Hzyg5OtehLywKLVQfbu7y7cVA0zj2i@vger.kernel.org
X-Gm-Message-State: AOJu0YwsR7lyBD8LRUsTeEnMBQ54s8yFgzWVbV8YNByhH/20LOni3lci
	a5XmJiVRo8yb5yN/1dcOjaAXc8YpqCJ8ugTSEn1evpSLHklXaW5D0eWyFC9EanSMtZWAO3ns3A3
	LISSuRCmcBDRBDS7MOvPf8+rmATjlRwuiZayP8k3JFOPtdzLlHT54HtjSlTb7vKbQ
X-Gm-Gg: AZuq6aKybUUYFB+x+2LttxB4D90oPjvLYJW0jVt3eFAULWK37HUocSBZobKvMY264iL
	xxsITMvMAd3XrdTEqTr1LCYFnJ2OuElj29k82ufRTvcB4iC7eXoW+jCOb+5GAMeJ6x4FUFy1h07
	VXtILgTZTOTz4Dozj4KkRwQ856/+DXALeiEdg4GtYHxQJbwt7JG2Iwrnv7MLmZR9QwdKDOnPynf
	IK2ECTYRZ9sQtSFRmqNf9/DkPxU7ePtmRQll+rnnnuuyMQssSMpOjiQsgxWIwH4agez0T2wICoj
	W4fYTtUV5JZ9tKxL7+VD9OGfL1czK/6FBm4T6T+kw/HndJbgrZDlf/egBzGHWrK6o56hfgjawne
	JZIXudNU+F93d158K320=
X-Received: by 2002:a05:693c:2c0a:b0:2b8:3224:90fc with SMTP id 5a478bee46e88-2b845e48ae3mr1234323eec.5.1770303866782;
        Thu, 05 Feb 2026 07:04:26 -0800 (PST)
X-Received: by 2002:a05:693c:2c0a:b0:2b8:3224:90fc with SMTP id 5a478bee46e88-2b845e48ae3mr1234303eec.5.1770303866168;
        Thu, 05 Feb 2026 07:04:26 -0800 (PST)
Received: from localhost ([140.82.166.162])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b832e12845sm3491862eec.5.2026.02.05.07.04.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 07:04:25 -0800 (PST)
Date: Thu, 5 Feb 2026 09:04:24 -0600
From: Andrew Jones <andrew.jones@oss.qualcomm.com>
To: Lv Zheng <lv.zheng@linux.spacemit.com>
Cc: Tomasz Jeznach <tjeznach@rivosinc.com>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
        Alexandre Ghiti <alex@ghiti.fr>, Jingyu Li <joey.li@spacemit.com>,
        iommu@lists.linux.dev, linux-perf-users@vger.kernel.org,
        linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/8] iommu/riscv: Fix WSI mode IRQ number handling
Message-ID: <qlnntgtoaatvdpyvusjhe2y3hickopigwf3sobtnsfwpfhwjiu@zi4auf65eepa>
References: <cover.1769562575.git.lv.zheng@spacemit.com>
 <cover.1770195980.git.lv.zheng@linux.spacemit.com>
 <F77F878EF7C59BD3+a9078997d97dacd05d1271a5390dfd08a402b325.1770195980.git.lv.zheng@linux.spacemit.com>
 <2ueryrki7uzpjn6rbqz7scy46sjhw76jjilddz2naslz3eyfdp@ycwf42eaw5yy>
 <927D288E956D61AD+d1488c72-afff-49d2-bb6b-5ef5ea08b627@linux.spacemit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <927D288E956D61AD+d1488c72-afff-49d2-bb6b-5ef5ea08b627@linux.spacemit.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDExMyBTYWx0ZWRfX2NgnQcAnt9Ho
 Xei6vjJo7j6IznQMvQ65QP/eUR5ceB3zu56dMMyKhiOxeyoIv4L7EEB4tAEUkQ0ClUFlnJ7Ehn0
 i6bHW+z2WZohY76Fkwxz1jk+nPwU9BYr9N4fd16FwwCwWZ0SVjNpG/Q8Nz/46xSoTdhmrwVwBZ9
 FzBtp/gOOsfuW5RJwULUkiKTZq4xzql5E+CJ9ipIGGZk6mzhL7KcQPCvBRrEJY3hv1vM7/m25bD
 1RpLb2A6/1aCO+pTOYyxzkJs6DxWWVqCgvHRHCkPKSF7rk3gjeDfWfAMMDqOOa75L1rE4We6R2I
 2+fznbj7l5OPTlnaIxoKJPqW7D8FTqTRdNGRsKmpfT6ZuenNTdwC8kSVaLFG7zcFwn97Qgpq7mq
 nHAn10SabvWWHbQ8Zv1kF2WnHSczl94tUSFqFEnMW7h5edYeom2Ia3Xy4wyPb39z8n9Uai6h+JE
 GmaPQ9nHbfv046Q7U3Q==
X-Proofpoint-ORIG-GUID: v1pHwbEKcLpuMEPcGZ0kkIlgo8kKHJS-
X-Proofpoint-GUID: v1pHwbEKcLpuMEPcGZ0kkIlgo8kKHJS-
X-Authority-Analysis: v=2.4 cv=Z6zh3XRA c=1 sm=1 tr=0 ts=6984b17c cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=cvcws7F5//HeuvjG1O1erQ==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=2SqC6Y7SbBa8MZsB_aYA:9 a=CjuIK1q_8ugA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_03,2026-02-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 spamscore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050113
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263058-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew.jones@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6E69BF4681
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 11:52:57AM +0800, Lv Zheng wrote:
> On 2/5/2026 1:20 AM, Andrew Jones wrote:
> > On Wed, Feb 04, 2026 at 05:08:52PM +0800, Lv Zheng wrote:
...
> > > diff --git a/drivers/iommu/riscv/iommu.c b/drivers/iommu/riscv/iommu.c
> > > index d9429097a2b5..26630979473b 100644
> > > --- a/drivers/iommu/riscv/iommu.c
> > > +++ b/drivers/iommu/riscv/iommu.c
> > > @@ -1593,11 +1593,26 @@ static int riscv_iommu_init_check(struct riscv_iommu_device *iommu)
> > >   		       FIELD_PREP(RISCV_IOMMU_ICVEC_PMIV, 3 % iommu->irqs_count);
> > >   	riscv_iommu_writeq(iommu, RISCV_IOMMU_REG_ICVEC, iommu->icvec);
> > >   	iommu->icvec = riscv_iommu_readq(iommu, RISCV_IOMMU_REG_ICVEC);
> > > -	if (max(max(FIELD_GET(RISCV_IOMMU_ICVEC_CIV, iommu->icvec),
> > > -		    FIELD_GET(RISCV_IOMMU_ICVEC_FIV, iommu->icvec)),
> > > -		max(FIELD_GET(RISCV_IOMMU_ICVEC_PIV, iommu->icvec),
> > > -		    FIELD_GET(RISCV_IOMMU_ICVEC_PMIV, iommu->icvec))) >= iommu->irqs_count)
> > > -		return -EINVAL;
> > > +	/*
> > > +	 * In WSI mode, ICVEC may read as zero. Only validate if using MSI.
> > > +	 * Check if FCTL.WSI is set to determine interrupt mode.
> > > +	 */
> > > +	if (!(iommu->fctl & RISCV_IOMMU_FCTL_WSI)) {
> > 
> > The behavior of ICVEC does not depend on FCTL.WSI
> > 
> > > +		if (max(max(FIELD_GET(RISCV_IOMMU_ICVEC_CIV, iommu->icvec),
> > > +			    FIELD_GET(RISCV_IOMMU_ICVEC_FIV, iommu->icvec)),
> > > +			max(FIELD_GET(RISCV_IOMMU_ICVEC_PIV, iommu->icvec),
> > > +			    FIELD_GET(RISCV_IOMMU_ICVEC_PMIV, iommu->icvec))) >= iommu->irqs_count)
> > > +			return -EINVAL;
> > > +	} else {
> > > +		/*
> > > +		 * WSI mode: ICVEC is not used. Set to identity mapping for
> > > +		 * riscv_iommu_queue_vec() to work correctly.
> > > +		 */
> > > +		iommu->icvec = FIELD_PREP(RISCV_IOMMU_ICVEC_CIV, 0) |
> > > +			       FIELD_PREP(RISCV_IOMMU_ICVEC_FIV, 1) |
> > > +			       FIELD_PREP(RISCV_IOMMU_ICVEC_PIV, 2) |
> > > +			       FIELD_PREP(RISCV_IOMMU_ICVEC_PMIV, 3);
> > 
> > It's certainly not correct to set iommu->icvec to anything that can't be
> > written to the IOMMU's WARL ICVEC fields and read back again.
> 
> Indeed.
> It looks I can keep icvec returned for WSI and keeps the write-and-read
> check logic only for MSI.
>

You shouldn't need to touch this code at all. I don't see anything to fix
wrt the spec. As I said, if iommu->irqs_count is known to be greater than
one but you're getting zero back from ICVEC even after writing 0xffff to
it first, then ICVEC on your IOMMU is broken. Once you've confirmed that,
then the best you can do is add some workaround for your specific IOMMU
here.

Thanks,
drew

