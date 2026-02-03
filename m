Return-Path: <devicetree+bounces-262120-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJJJBtm/gWm7JAMAu9opvQ
	(envelope-from <devicetree+bounces-262120-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:28:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC4FD6C68
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:28:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DAD7D300988E
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 09:28:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 857D3396D0C;
	Tue,  3 Feb 2026 09:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SE+Ky7MT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MziifmS8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD5E396D26
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 09:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770110935; cv=none; b=bdQ3a+4CblFIFgXKSLq/YkVLnbcnCgmM920h0EH3U4HZnwJO2m9X0BGeWe3X2fb5PbOJF/wu84dLXIrljsF41ZggPzb3vSA0qUcK3Y4S7IWdxMK9MRPVyIvncu5gUGzO4ExuhbDlvttFWXQtz/Mx7/EKbXOkRtOhzoOcd90kSsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770110935; c=relaxed/simple;
	bh=aWy/cJ0KuAdyUz5j5+dngfisO77EzrMgGrdsQ7uUpjc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rgj0DMPhUel6dTkyEtu5qNMMwqEwoQJVNbRpcNgHycof0cUBtHhNfHAgQnjtNe3tPS5/T2+yG/YVlaHYTdD2uvd/3TTmFBEMJVDKKcK/5xYofV47WRvA8ZC3K20sVlQCEmp+Vdmk8CwZbN5lq2wqeGpZVKcuUKKS36pD+z0bNOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SE+Ky7MT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MziifmS8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6136TtaL278102
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 09:28:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CUXwRzSpTMASTBm/Nn4YabRRCriTLjpu8J1jIHdArek=; b=SE+Ky7MTzNUjJFzb
	kuIaDXJlonFTMMa61IMsa9Pf/ZvgFF9sM59tFjLW9ZyPs7xnXZb/cv7a1Vf4ti6E
	9NClDnDsSXy3xc0VsPX1iekERoaRmDoI8KwR1+IA0QRhj6bJ/N+PdwAoc9VN8nrd
	Tz+ptmlhPD5XK5/jwS8xO48j96JvHdWqSJCUWqbDb0fA+CVRrZoKixtTJpixbTay
	Suw+CICwxD4ijRnoIOZjl7Rck416HcBz2i7kb0sL5YV75i+nkZZ9IojeZ05FUi0u
	Vz2H+Ug2JnfMzY49XJBM7HEcv/L0tMnULuiKb4gl2ceKSepmhjB8LLdx3wYj9yq6
	4gksmQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c32s3a2e3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 09:28:53 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88882c9b4d0so13370896d6.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 01:28:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770110932; x=1770715732; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CUXwRzSpTMASTBm/Nn4YabRRCriTLjpu8J1jIHdArek=;
        b=MziifmS8pQ3BXgAnFvEl9DFXFNnABcxYehFippz/eGubNeRJ3b0Ll51M5ufR67uFiA
         hO22vQSbD4nLPENUdMQMxVfyztP9VCqEUd90kVGgAIiR2BEv3GfyfV9IBsR2yz1hZOF3
         HicdhcmHcHQuLNONdJpQpC5e99bCcdlsgylU1ZYAnskYCKtRiSXW8UlX/GUofknm9NtF
         GE78o5Vfk/r9plQUGigfYaKAfACTuJKzM0jclEngR2bNaumBZpk6Uibk+gH7GsIAnS1V
         rYALhd0sjN9iWLzFRdtZU9OP+30YRI3jJjcvjBLkIfR1IMhQrfSNgw02ilCyGgSki+Ij
         OfIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770110932; x=1770715732;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CUXwRzSpTMASTBm/Nn4YabRRCriTLjpu8J1jIHdArek=;
        b=TJV0bVKDQzF7F0fnAwoh7CFzmb4h33c/UhaH43YX2V6pN65tqgQi3fCeCKjERfpRMU
         YkYYiPHo3X1Z52zPlb3pccxtBvE7Y/m03LaVPINh9h64CZXa9VntHnkLT8o13InOnTvi
         aBxUtkvQ4LOFTo2ocE2tSESfeOe/AeLmlSMhM8DccerGDuZKoczSBk5BmmtguIjaSHW5
         yblP6GGFZWWmgSGjf6e30Qcqa6q26QDD8EHAEnS/AlRpl6JfPh7k7MrYrHCzIvNV8FKP
         Lr5D1GUoilmeoWegRKd+zWhrbcHhTPwiw7woqwTL2Ur4+tjF/aBoRTeT38fQ0ibubgIw
         sD0g==
X-Forwarded-Encrypted: i=1; AJvYcCUA+IU8XxBAeKcE6pk9t86EUGaaNv31fQQRKpOH/Pge6U9nl216k/gRlhes1K/DBMAB/ObJTlY8U6Om@vger.kernel.org
X-Gm-Message-State: AOJu0YwyNgSPl5hVA49QArNrjXj4so+N/XjIO1CNPEmV6MAuIxyd/s7a
	acO+rm+BzAsnefzXMONhuv4HXA7fzw67sIh407idPyjB8tchrdOEEryYOxmA9BC64/gYWJrIbYp
	pO6gcfXAPePS9OMaADDKgfqGPlkqqkxsjKlsluSu56KUxWQWv/nu1fJ5JpL5vvsC/
X-Gm-Gg: AZuq6aLCQ+IW7zT/ORtKMtnbyBWtq3CsjfMh4yMns/VFjqPsvQ/zKAMSRpVsxa1fPl7
	sfA8xhBe/A985cKY23tbLEUvilB6NqcC83foJE3hEpfjKgp1EWf59hkm6zm7Sp7JqoCkyFjbeVa
	TNqAdw0dieWKtY4LpyBprrQsL6AxoK2PqoUbW8C48I38Qjinxid166juXIVzAMSpi+C1jTuyBLI
	ra3Gj2l+IwNUWMCBfWWcETCJFVYV3GxiVwnEZDksyI5Rwf85UbpGbrs8b0HAeZ2dosNv1FOUUm6
	Hc9d43pH8LXRKY9A6b8D6cAYGgSxoQFX56hUbofyJjJpTaiC3OKH+Q1n6h0dnpid6atHITUC//E
	sMOCwpwkmQzIuqdTFpzIeAeWu+zu8hwzzvye1i33a55vpo6WLhW3z1vUpr1QnUuIkJ0M=
X-Received: by 2002:a05:620a:19a7:b0:8be:6733:92b1 with SMTP id af79cd13be357-8c9eb139c25mr1498434285a.0.1770110932368;
        Tue, 03 Feb 2026 01:28:52 -0800 (PST)
X-Received: by 2002:a05:620a:19a7:b0:8be:6733:92b1 with SMTP id af79cd13be357-8c9eb139c25mr1498433585a.0.1770110931924;
        Tue, 03 Feb 2026 01:28:51 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbeffed15sm981560266b.31.2026.02.03.01.28.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 01:28:51 -0800 (PST)
Message-ID: <74380f3e-eb76-4fb8-a1a5-d2151fb410f6@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 10:28:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8550: Add tz-log node
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Kumar Sharma <quic_vksharma@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Lei Chen <quic_chenlei@quicinc.com>
References: <20260129-sm8550-abl-dtbo-v1-0-abca3be14024@gmail.com>
 <20260129-sm8550-abl-dtbo-v1-2-abca3be14024@gmail.com>
 <eef70e37-3841-47f3-a436-13e18c157176@oss.qualcomm.com>
 <CALHNRZ-aj+rR0qFuiU+cPNsHWQgMJ2mMjzysJudY-TPN9tY3gg@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CALHNRZ-aj+rR0qFuiU+cPNsHWQgMJ2mMjzysJudY-TPN9tY3gg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Zc4Q98VA c=1 sm=1 tr=0 ts=6981bfd5 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=pGLkceISAAAA:8 a=K4JxSUtKilCc_hRamdoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: gf0VEFXFoDmOc1AwnpiK0WuoqRtX5SHO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA3NCBTYWx0ZWRfXzHGRst8h4qCE
 jJxJ++TuYJ7Go69r/Mx4F2ea1dfkpLrsKVtYTjdEW0hAnNCPKzqfMk498X6BzhacqNLEeuI3IsA
 OVvAUJDJ2Bk2RhiO4YVbIrBNReZB62/zXIrU2SqAbNQu2z6YoitugJ///A5pAxNDzmDRt9wOLEl
 cKY2annhcjjwF2/IdMDKV+id6rH0RCGzMT4jjbCU5SAkiBRj3zfUkJy2KJOzVrJKUU6b1KGDtJA
 nDqaGdYEsMM9DTEufHhfalrHPyWs+SOJmgsnwRXoZXN69/e0bd9JjCLssI21pB4foWGn41LX0q4
 Gnr2lGJcVzH3psOIC8O9ci/Ow1XrjAFnVpURBCTd3rHRTYBaLyaAMewiBPhHcdbBr1JNPrhANxc
 ipfbJllxdPg2pz3+A63u70mrdB+THywRAki3xhFIptTj8yprNFc9HQNfgGt5t41QnlJJEhiRARC
 alx5xOp3JZOuo0FMKOQ==
X-Proofpoint-GUID: gf0VEFXFoDmOc1AwnpiK0WuoqRtX5SHO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_03,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 impostorscore=0 adultscore=0
 phishscore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030074
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-262120-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,quicinc.com:email,146aa720:email,146aa000:email];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7BC4FD6C68
X-Rspamd-Action: no action

On 2/3/26 5:25 AM, Aaron Kling wrote:
> On Fri, Jan 30, 2026 at 4:59 AM Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> On 1/29/26 8:46 AM, Aaron Kling via B4 Relay wrote:
>>> From: Lei Chen <quic_chenlei@quicinc.com>
>>>
>>> Add DT node to enable tz-log driver.
>>>
>>> Signed-off-by: Lei Chen <quic_chenlei@quicinc.com>
>>> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
>>> ---
>>
>> It's nice that you preserved the original authorship.
>>
>> Please extend the rather lackluster commit message to explain the
>> "why", which is notably different from the original downstream
>> addition, since your goal here is to mainly appease a grumpy
>> bootloader.
>>
>>>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 8 ++++++++
>>>  1 file changed, 8 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
>>> index e3f93f4f412ded9583a6bc9215185a0daf5f1b57..740e3c238e8ed0f162dd168291f6e307ace66e80 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
>>> @@ -5136,6 +5136,14 @@ data-pins {
>>>                       };
>>>               };
>>>
>>> +             qcom_tzlog: tz-log@146aa720 {
>>
>> If we were to implement qcom,tz-log upstream, this would definitely
>> not be a node randomly in the middle of /soc, rather a child of
>> imem, most likely.
>>
>> Could you please check whether adding a qcom_tzlog label to *any*
>> node makes the BL happy enough? Does it need the properties that
>> this node has?
> 
> It does appear that ABL doesn't care about the path name, only the
> label. And given that the original change that worked had the label
> pointing at an empty node, it doesn't fail if all the properties are
> missing. I moved the node underneath an sram node and the bootloader
> loaded my dtbo just fine.
> 
> The imem/sram node, though... The numbers don't add up. Per the
> downstream dt, qcom,msm-imem@146aa000 has size 0x1000. Then
> tz-log@146AA720 has size 0x3000. Which... starts within the imem
> range, then blasts quite far outside of it. So... what should this end
> up looking like?

The real SYSTEM_IMEM range is base=0x14680000 len=0x2c000, not all of
which is accessible to the OS

Perhaps it's high time for me to respin:

https://lore.kernel.org/linux-arm-msm/20250523-topic-ipa_mem_dts-v1-9-f7aa94fac1ab@oss.qualcomm.com/

> I should also note that an empty node at /soc@0/tz-log fails dt schema
> checks. I presume that adding any warnings would immediately get a
> patch nuked from orbit, which is why I fetched a real binding and node
> from CLO.

I don't know if that'll be acceptable by others, but if all we need
is a label *somewhere*, I wouldn't be totally opposed to doing something
like:

/* The bootloader fails to apply DTBOs if this specific label is absent */
qcom_tzlog: aliases { ... };

Konrad

