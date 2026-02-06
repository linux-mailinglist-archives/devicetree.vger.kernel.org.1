Return-Path: <devicetree+bounces-263275-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YITxLo+xhWkRFAQAu9opvQ
	(envelope-from <devicetree+bounces-263275-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 10:17:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE72FBE93
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 10:17:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00C45304605A
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 09:11:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0B0D35771D;
	Fri,  6 Feb 2026 09:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KnK/xRoe";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hflRHzkw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71DC93570A0
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 09:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770369108; cv=none; b=G5fb6xj68re9+l3ni6qmXSZvC0qsdVJpm55hkQrq7FSg/HMAWDOqA0OCPsamwgUCiipkSBuxvFk0S9AsVwqeLeQRihpv3AHukPVEwEwiWXisKC6P+2Djyn5pUWg23xpNRz9cYYHqB8ODAMeym2fNueqdbUQXdp6QchQCQmWvWbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770369108; c=relaxed/simple;
	bh=Qobkgstg4jim6MxKUCBWoLcPEdL4TRW+k82sMjr58q4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X4S7JnyYZHWTWt60SmqS1RAoXAACpd9yEWKA1KvGaIBrbL8l/RSZVddCQjTmPZAvCKtgAoR9yKtVBht79neG7+ecpUybuFfppCV9HUxWyysTc99FpvCrSqUXLExtH74ilLglFlBTTX0aisGXKM9ETpRB1o+VgyZ7ls70s8MEvSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KnK/xRoe; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hflRHzkw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6168LO8T1987573
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 09:11:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XUdof4el6Kjt7r5sJvWGFwX65pxh28RZD7+N5QBc63U=; b=KnK/xRoeUmimaCWY
	Tj2/G9t02amF/qfZxVEs7UC8tOws+hrG52AT8vOp5vRUEtnlyAETm90HtCCo1Fc4
	fqQsVEdIMrqWB+7BWIj425kTG+PKgvHtN5lgZ2DtWRb9KuMHpaQOO+jl223HAkWL
	eX8smBsWg+UNNmue9JarEnllync+fD2wWjc7RE2lemrMpN9wrvhnObasZEByfAII
	nr0/pkxXuERcxYGwhrXP6AccsV0yFqetCCyNAUiW4V4gfRmmotLcbydOOkxZQ72e
	D69Jzhb0KLrF+pBRVn6QmD+ESNojSnTj/CDRMuiQLn0rNQKhb6bN2oUHdWbZ07Ng
	xaF+kg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4t0p3xxj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:11:47 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c709a3a56dso94358785a.2
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 01:11:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770369107; x=1770973907; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XUdof4el6Kjt7r5sJvWGFwX65pxh28RZD7+N5QBc63U=;
        b=hflRHzkwEQF4dGumB1VkM7gY45NwNpYwdVS7vG72jdMNJAZ8QWFOGinl1SbCjuliDH
         m+FMRMHjg4UPstxrjOTeRFRi6amMVWYZ/sADjO9a55i7T4lxr+HGzssOmKHK9EGbMoso
         g1muLBMBjrnZa54YnybO/8ncle1CY9nC5/TI+k4PPDWPe03qrGuS+CcGu66vK9vMKzp/
         bqB78wpBKhNIPFTKJ2W6o8JawT7EqUmwEbrb7joe0JOuY00IGJ8z1FDxxW/d410uZl6Z
         Kq9B1j5jVvUGSQN8BZebJ+c6NAwUphWWwpK7jQEvI20nGqzP2nEJa3vuwulNgLcTbh04
         l/bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770369107; x=1770973907;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XUdof4el6Kjt7r5sJvWGFwX65pxh28RZD7+N5QBc63U=;
        b=t2DSRTBqxatLKUGXlqzvpu0d5p+zCBuBoZpp3jEq0YBzF2Y2LnTbsmDBuG59kmnGyP
         2xzcY9ZLVxvvA8YH3AqxcShzhTO7v5tB3Vk18Ea8LNxTfKWaHgp8LnHxpnGNyWKDkVM8
         ghZNvhAZKmg9jVIW8XXnz3VP0dGj9jTg2ItG8ZMI0Qalo2YWLY9o/CYdBclfS0XJ7DrO
         4KmbLpxAAjOCPVsuOTTXSc/ss4YxooA3Zn27X8rAF6d5R1/Wsxgv6zPUlzvG+Rve/t9w
         vDtocF4Fc27O5h1pbHYgH2lWfinoWeNsZgeu09ENdeu2ik0drmwSFVOd9p2J2e5oxifN
         g5pQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhg6OgrDsBqx399xCPIwSYLyA5+qek6/BHVbbAAwiVP7TxTpCpoG/XvCIlpDXG+6lVQBuEs7PRdB69@vger.kernel.org
X-Gm-Message-State: AOJu0YzUMn1AWf7zU4f0K1bQR3kyTQQN/6HYE6GHpfdwar1XcAZx7VrK
	UeWk9enUWyzYv4fumHl9xO/s+lV/Zy7zmnHvQW2NtDSqZG7lOIKRoGxCCTE4zDlVLyxyd6rorUG
	UhXy43b40JF8kM0rFx6iPzN8EqjaarCPK6Xva/JnV3iuSa7VF1ld5/3pt14G1CRdk
X-Gm-Gg: AZuq6aI2pTkoMj9y7XJXR6F/K5vueO2h5JgbY/nOk8rs9SGflxpsqGkfsBhre8PESEE
	1x3ZuAdA0zniSY+WbyOMiiZvxc3PtpwTXaRS7MzrLzy9d6wAkOsYldmkm5ulKD5RP9uLyz9wpWd
	beqwIU0pjOXctOnSC4YTsY32/DNJviKLlStLc/ezWgkFV5a3iU1L68nrgrERQkSC66dTVAOmugY
	08/3ObvmpnPNFdj9vTzX35wrlWPIcosEOzJHZTF56Mt8z3i0It+r1siktvLrbP9ivsy+X7hkhzt
	jnxC1SqnjhipRyaAtoO6klqZTpqtddtUzIYjZm/Tq9kfT3eg2pRO5l3zesmQoM3LOsIvON1aJ+2
	s3ZZyIOmPY07zQsgQplMqLYiDIYTwWBdC6khxAtMcvrpuNIojzWVj0rSBUDiJDjfOQEM=
X-Received: by 2002:a05:620a:29ca:b0:8c7:1156:efe9 with SMTP id af79cd13be357-8caf17e40e2mr175877985a.11.1770369106757;
        Fri, 06 Feb 2026 01:11:46 -0800 (PST)
X-Received: by 2002:a05:620a:29ca:b0:8c7:1156:efe9 with SMTP id af79cd13be357-8caf17e40e2mr175877085a.11.1770369106273;
        Fri, 06 Feb 2026 01:11:46 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8eda7a3004sm67451466b.15.2026.02.06.01.11.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 01:11:45 -0800 (PST)
Message-ID: <c1a9aec2-0389-4a24-bc28-75be04cc91d8@oss.qualcomm.com>
Date: Fri, 6 Feb 2026 10:11:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: pm7250b: Enable Qualcomm BCL device
To: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, amit.kucheria@oss.qualcomm.com,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: linux-hwmon@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260206-qcom-bcl-hwmon-v1-0-7b426f0b77a1@oss.qualcomm.com>
 <20260206-qcom-bcl-hwmon-v1-3-7b426f0b77a1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260206-qcom-bcl-hwmon-v1-3-7b426f0b77a1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ItITsb/g c=1 sm=1 tr=0 ts=6985b053 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=eb200YweA7kxUedDXicA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: t_IrO3jvXuUO53BFObM68-_EUfBLzygk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA2MCBTYWx0ZWRfXwQQFgmKA7nRN
 Op/u8Fw4/oK2j9wsdhYeIKFB32MPZKMyyDwC9zIJlNHr5C5ROhwwBbanOyqiKg69mOe0gozViNv
 f7U1X+8FXhhZ6lcFhvPhvCGrRBQ3yAcXsnCZD6is1YQMJCeEybUe7yRdjPBdxdz0XdZGe8rJnyR
 phBF8fs+3eGMoCIz5u0t4f8Pa9jRclEMWrnCJ/M0bCO9r+JIdbrIc4sun6XBPBv6Mhm+iinq2uz
 j8blAgvtp8sKH92OPmO9K3o08kPnyYjp8X4ZTcZM3CwMhUP3C+0xT65KDTJdb5vP3fGebR5Wn7c
 cJYkImff3Y31AMutEJcz/X7ATamjnHnYAf2GryJZD8UjkQKr72E1bHMHhds2mm+RBzpt1BZIK/h
 oJcJJsIIVWCHx9ALUQHdbHimvwDD0fqv/F2BTTRftx+1gfGOmw3OjH7kRUemgjYnl9Gv6L6VY1C
 aaOE8HMMIISMU/02NXg==
X-Proofpoint-GUID: t_IrO3jvXuUO53BFObM68-_EUfBLzygk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_02,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 spamscore=0 lowpriorityscore=0 adultscore=0
 suspectscore=0 malwarescore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060060
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263275-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,1d00:email,c000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1EE72FBE93
X-Rspamd-Action: no action

On 2/5/26 10:14 PM, Manaf Meethalavalappu Pallikunhi wrote:
> Enable Qualcomm BCL hardware devicetree binding configuration
> for pm7250b.
> 
> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/pm7250b.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm7250b.dtsi b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
> index 0761e6b5fd8d..69ad76831cde 100644
> --- a/arch/arm64/boot/dts/qcom/pm7250b.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
> @@ -202,6 +202,16 @@ pm7250b_gpios: gpio@c000 {
>  			interrupt-controller;
>  			#interrupt-cells = <2>;
>  		};
> +
> +		bcl@1d00 {

This should be higher up (the node above is 0xc000, this one is 0x1d00)

Konrad

