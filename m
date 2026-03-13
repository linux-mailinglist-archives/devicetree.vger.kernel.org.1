Return-Path: <devicetree+bounces-275208-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IHBwHQEGtGnjfQAAu9opvQ
	(envelope-from <devicetree+bounces-275208-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:41:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBF92832C1
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:41:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 92551304B3A8
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:41:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E30639479B;
	Fri, 13 Mar 2026 12:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="en91guIE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JcJCygq+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5FF534216C
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773405687; cv=none; b=F3o9xIURZdiH7Iqpenx1o3ZAzWHEv1iZKrese8HQzLg+RxVh8eOkpNbgZkCiTQdNvOjva2rbC9D6iNwnrYjjUbnsmKnhmDPsGQWyA9QVy4gx6DIJ9mAeo7B9UEMhnoTgK64Fy97sg//evxyRkrxHw51D8bzgaIBdG+6B5UMssME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773405687; c=relaxed/simple;
	bh=93fRAfe+M0UwAu1w0RFIgYxUtQJMPFt4/lW4UyUjK6o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JP829rsWwVINVbBU/ZlpbCNa6mbUXTwTwMF9JON0IruYfSxxzZff1DzKsqyur/VVa83szGKMADLYwGHvszmXXgGdG8BKk9VrYcoueRX9IvaDe7PlYeCeG7p2W8EHGvPJr6BH+vZQhfPmtm1bF1VLJxITCriBCF+FLKhITD6EZvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=en91guIE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JcJCygq+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D7iLId2262550
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:41:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5ARqNHfgmw+FzkOHRhQHIR9FE9jKNtuPOMxUqU8/Zws=; b=en91guIE1xJVHGFe
	KuQf6veMM6uWUiKz8haYPV25bd+QkJwLteLqsCNyi9e7bmKdn1G3ozdA9DMQtUuj
	pVOdIC50C6siotGCWcI9EvHQ1Ce7sw9QC7yzsOCRiGI8QbeuF4dYIsw0mOuCrWIV
	FXLzudpJB1v91jCGGzFFBLqh9HNZ/v/NvAiOiLtXnMlpLR6wTTFY4l3ftu8rJqNc
	XBOiFN3/ygBliefszT4dg4R/KpUmpiuN3lo808C5/FMqRYJk794gfOxmJa3Wly2S
	YcX12ePOMdgwhUxp305Kn6BTfVAbQYrwV3psbTfYXFmVNNalxjZ162f/bhj6Ohqj
	xp5IsA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvef4s0ce-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:41:24 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb39de5c54so117146085a.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 05:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773405683; x=1774010483; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5ARqNHfgmw+FzkOHRhQHIR9FE9jKNtuPOMxUqU8/Zws=;
        b=JcJCygq+olk67OzuKs/K88pUc871OLjBlZIbOlYNCEBTy1oWd7tAw0UwQPdhgEWG4j
         gxB4jBDebAz8yZURd4sAJYdxdZtg7dwA90ZDPenFrOfiAgY68x+vb4aUVTWa3wLmy6ls
         3h2dUUKAKOI1uZ+WFXL11tiwrR0J7TG30LexIq436BHX21v+PYPChCo6qqW6RTNJUhtI
         hXUgYFS7vBIE5RNfKsP36yIEizefj2AV1eZdGnlgjx4A7NvcMDXErLBOt+AizAiyQ0Gi
         OYG7Pg2havp8gmpC8dUgScz7ljtityH193pJDLH9ssMdodvFaV4uSBdUq3x/GUJTrdfS
         HFtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773405683; x=1774010483;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5ARqNHfgmw+FzkOHRhQHIR9FE9jKNtuPOMxUqU8/Zws=;
        b=R/JUYey4U0ZsUT8H3hTttEFw9CwYyGjwn3jlvpM61qNjyaZo5K/+AqJR9TebXyFyol
         uvriTv7TA7+7t01aG8+dYO6tyqMW4MUZFZ46FnsR3w0c6/7+dcGzJ1z2KXJpGgIodBhL
         9zO2S14ltni0fau1Y19+dS9S7e0S0BT/lkizOKYKhsNR6ay9104XBpTH59ZtMkC0RMhd
         1kaSHKuXeYxAyEctVS3+Ke9tP/5X6fDMtsImOmK5rOJ0yo8PNWHosie4i1CbFWKRiFY8
         uuSznvOG7HddWO9FhUCWV/V3xNmndk+1TdH3kccKd2+Y983zx3iHKPFTPRvqJ/Lf65FR
         OXnQ==
X-Forwarded-Encrypted: i=1; AJvYcCXsRc1/CANywAd5e9ll78NZ9Rkk9SYl4LYS5A5vBgeEA7Kc/DynTiWFQfCdviPFzUOWS9iyS2n33Yjb@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8dcgOY76/G7GFw6ySq8ZIdADk4Am63F7102XZbN7lX0+Nrl0s
	fb/al9usZWt9gBTOVCmpP9WgkM3LDElzE4mZFPV5iwKiujm5eSCA04BoYDqDTBJyIwkp64XlTdX
	LhA9Bl9198Q0+y50yfHd2YiH9aC8TNaVeamXJA4hK9DQRkZ0F0ZXrrbhafW+6l95z
X-Gm-Gg: ATEYQzwDoQwEGrVdPMf+TFhcQ/LiR0yffdUAFshwvkX5xCP1Hy8obJuL08Ylagcgtkd
	5SITwSYXU5Run9NarZxUQ8Nf1DJKuwMVo5/nzx8oAKrgqMLrT8QSxiTP8YLNXRsbVOficeLve0P
	EQJLZ+Y1zHbd0XonHWeWzYoH5lHAfDvvBwvsaztEUbZIPH68IUWP5Irf289F0LgV26QtK6dXfzH
	CRClXybMq21RtDpdNhSoq1Dq2belK2YzKZGFExy9WBGxYMN3tRDAavdEAm0lKM2NYyHE+a0zf0/
	XG/HqryGZd1q3hCkK0gY7PbXjv1GnDQfT5r2Yx9/Cf6y7OemHw8L9jhOl5e8fGaxjgwLmgdeMkC
	lVudk34f6mxQHqs/U7phNg3EveN2X6LRIW1se/995kXvGYTnAj3il/lN1ssEF5oPhysLVRqRtrn
	PkXh4=
X-Received: by 2002:a05:620a:4512:b0:8cd:8b9b:4581 with SMTP id af79cd13be357-8cdb57c3792mr324911485a.0.1773405683056;
        Fri, 13 Mar 2026 05:41:23 -0700 (PDT)
X-Received: by 2002:a05:620a:4512:b0:8cd:8b9b:4581 with SMTP id af79cd13be357-8cdb57c3792mr324908085a.0.1773405682574;
        Fri, 13 Mar 2026 05:41:22 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cf02b14sm43894766b.51.2026.03.13.05.41.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 05:41:21 -0700 (PDT)
Message-ID: <9f01beca-50c8-43a3-8a6c-d2efca2d90d9@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 13:41:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: milos-fairphone-fp6: Enable
 Bluetooth
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Alexander Koskovich <AKoskovich@pm.me>,
        Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20260116-milos-fp6-bt-wifi-v1-0-27b4fbb77e9c@fairphone.com>
 <20260116-milos-fp6-bt-wifi-v1-4-27b4fbb77e9c@fairphone.com>
 <52fffc84-2fb5-47aa-835c-b0dd8c110d59@oss.qualcomm.com>
 <DH1L9UD68SKL.21KTH1XGR724Y@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DH1L9UD68SKL.21KTH1XGR724Y@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: zJ-_WJBNq8XBjjF4Uc2pwhb1sIcb1MWP
X-Proofpoint-GUID: zJ-_WJBNq8XBjjF4Uc2pwhb1sIcb1MWP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEwMCBTYWx0ZWRfXxostQWskXAaH
 2ky8DDqoaJ/r6ivn9zaXkHlWiux/JMisaLtov+yJvr9IUThCzA9ZSJiqbTqHCL5UcncaLZJjdb8
 AOxQ0e4kOqRlTvN2LPXNJXb32iIuBikvB0a4hrXm+1hNFxafPSnsNNGBeP2DVx5xgaqkQgQJUv4
 8apZDVaFZiCS5y8D6OG2rZg25g5OW2xSx4HN6YaDR3XTH2RUhjQPRQmlxAqVNdco88Yc9L/xNIW
 iXvGzTaEOQP9bXr5Vqdl7TB+8h1LYM1QbLllhhQs2Yam0wXRxCmzEJ/3RqwMsKh2Y7E2ilLdmYe
 NetI5h/20pcg4nZZ8DvmcdoADwnR80E3vGGKFFQRjQiQ59/CF+1I0QM+/733Yj+4R7PJEdsxPwj
 Ciysm4AExIGsaQVAtmtcPwPa3Afid9lgu0Sv912IMv5Mlja4iG9e76PTud2CFCSPo7gQLcQpZyJ
 Z5OmB8nwnnYf4cLpdtQ==
X-Authority-Analysis: v=2.4 cv=S9nUAYsP c=1 sm=1 tr=0 ts=69b405f4 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=6H0WHjuAAAAA:8 a=JgvLXVqx2Q9J9S3OATcA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 priorityscore=1501 suspectscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130100
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275208-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,fairphone.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1FBF92832C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 11:40 AM, Luca Weiss wrote:
> On Wed Jan 21, 2026 at 12:52 PM CET, Konrad Dybcio wrote:
>> On 1/16/26 3:50 PM, Luca Weiss wrote:
>>> Add the nodes to describe the WCN6755 chip with its PMU and Bluetooth
>>> parts.
>>>
>>> Thanks to Alexander Koskovich for helping with the bringup, adding
>>> 'clocks' to the PMU node to make Bluetooth work.
>>>
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 174 +++++++++++++++++++++++
>>>  1 file changed, 174 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
>>> index 52895dd9e4fa..cbe1507b0aaa 100644
>>> --- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
>>> +++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
>>> @@ -24,6 +24,7 @@ / {
>>>  
>>>  	aliases {
>>>  		serial0 = &uart5;
>>> +		serial1 = &uart11;
>>>  	};
>>>  
>>>  	gpio-keys {
>>> @@ -215,6 +216,67 @@ trip1 {
>>>  			};
>>>  		};
>>>  	};
>>> +
>>> +	wcn6750-pmu {
>>> +		compatible = "qcom,wcn6750-pmu"; /* WCN6755 */
>>
>> I think a fallback compatible would be in order, if the data matches
>> exactly
> 
> That'd give us these changes
> 
> milos.dtsi:
> 
>     -+                  compatible = "qcom,wcn6750-wifi";
>     ++                  compatible = "qcom,wcn6755-wifi", "qcom,wcn6750-wifi";
> 
> milos-fairphone-fp6.dts:
> 
>     -+          compatible = "qcom,wcn6750-pmu"; /* WCN6755 */
>     ++          compatible = "qcom,wcn6755-pmu", "qcom,wcn6750-pmu";
> 
>     -+          compatible = "qcom,wcn6750-bt"; /* WCN6755 */
>     ++          compatible = "qcom,wcn6755-bt", "qcom,wcn6750-bt";
> 
> Plus 3 new patches for dt-bindings, with commit message something like
> 
> Document the WCN6755 WiFi using a fallback to WCN6750 since the two
> chips seem to be completely pin and software compatible. In fact the
> original downstream kernel just pretends the WCN6755 is a WCN6750.
> 
> Does this sound okay?

To me yes, but I have zero insight into what's the actual difference/
whether there's any. Maybe +Jeff could spare some details

Konrad

