Return-Path: <devicetree+bounces-272863-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mGgCL5CvrmkSHwIAu9opvQ
	(envelope-from <devicetree+bounces-272863-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:31:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6896A237F49
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:31:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E0FD730515C6
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 11:28:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 564153A1A3C;
	Mon,  9 Mar 2026 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AbfkQJKr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OUWRo1oS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9BCD39283C
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 11:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773055696; cv=none; b=Mb4ktwOw1RP60iEvNSaRmIJgpgPr23eR2hmZP654Qf7h7/EVSh8fSg66niizWu3y/Z2jSDPgyINp22wm6GSg6/NFTVIzDMC5uQHkN8Z5OQTPUFGlLhqe5YI4vL3CwgmWyaOQhX5eJut7nSbwygXuhgbswmPNjaHPCE8uIPMi/FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773055696; c=relaxed/simple;
	bh=ffzYuk87oLdr01kXxXdni7PcHeH6mS+mEtrAYUC6uWM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s97NZPofQYHkw8TRX3L5F14WSrFlPQZaSZG7IHX6KnXEIoDOLCYHf06f6Vv1Bk8lunKTdRF5KrJOgTRwKwlIUFmlLbCCkeFL6lsvU/PNlyqy5asuNfVFrmm+vOHp3ihK1mkuosLxbqpEwe3XBAE76r9r7mOs95x0dRURtarjuBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AbfkQJKr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OUWRo1oS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6297vKhZ4143734
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 11:28:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RKVphyoaPLZOPMgBSVtGNnozi0+Qf+TQcqaRjh09CKQ=; b=AbfkQJKrD60/hXiy
	iBdRITAzulzNO40wAcQbkyD+zVYbeCDUnLq7b4l7T0wxngpia41K/mZ+pB+ROVp9
	NPR26HO28da1A5zVNFIUy6t9aCnQ9PlwqTxRm5JABapmsnP36ihSsZ1GpkN7Ylps
	GlQVhi946qg40dXalRPE0+y7GS23hcSZ9guASgT620Vqa0NZ1nEmbuNuBFleyFI6
	niI8rDIUdzXkkIsQ4hBRN93qEfXK1HngSAEPMpXXOsmL/twesHJaenLgRLd4zJ51
	xmH0LNtTWj140Qb3iiZZ+BdzVPR5qgW0vTTf5OwzwB87b4+9Rr3Zk69S+flAt0Z/
	T/VbvA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crd6fd2x6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 11:28:13 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89a081737bbso56445436d6.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 04:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773055692; x=1773660492; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RKVphyoaPLZOPMgBSVtGNnozi0+Qf+TQcqaRjh09CKQ=;
        b=OUWRo1oSXKdaLlZAJXzleoQs97GtjMZzPf3PeOUxWlqXfSW4NtOJ2EMIWWBgek5dzL
         pCXaEpT8LlaVZfN9QsjC9n0nLlT8KkVl5m47vSYt4XkA58qHs06zkGKp7cVyA9UFeQfe
         WNa39UZsPdTc9EKkXFrrP48JSgsIxHHzWVWTZbAZLSTxP27w0JQp1zTgbkvc7JhVh47m
         AY4kDZKFWj/gtSQhlDLVVtLNnnqiQ8ypOlXVBo/U9f+HzCmTQkGsZEjkzfQYD69txotf
         QUI8LSvChsTCMuyjmJC17XY5om6YlvyLHks2tBk92R4SS2ZSWUQCZuSpgVrxFdPvZlUc
         ieXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773055692; x=1773660492;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RKVphyoaPLZOPMgBSVtGNnozi0+Qf+TQcqaRjh09CKQ=;
        b=FF5wBYpQPKOGYLO8JLyuJqombvvYLKEyiVbnxgAg8UL+3UjbjTfRxZJsEkf8BWlCOR
         gFBUElCfKB/YUn06Lcw4IExuIsPK09Za1ee+jHlunqhhLcDpn49nRshmqOICvBrM4SIV
         en7i4b2YhUzBvHPb4Qlb5IMOAP44tXjUR2GXaMe50S/+nz4Jr4pCZfLzKVEVjSta2yZ9
         zcKdQ9ye+IWFBeUhNkZ1A0tk68dP9j/GdtgFtXTfSb+K3VIDjJLInvCBIxtQElnzNeL3
         dVZwJCJCUEjBp7s+gRlr9S77mhCs0PJupAmTTmXouhOOv3ASEILudSx9QiYLhpLny66K
         l7Jg==
X-Forwarded-Encrypted: i=1; AJvYcCX6DRqiq/xXQzy4JjJ+egwz1Bdbemn+6trQGYFvX/EoPgfEFtAlvkXRa1pHcds8GFfw1HYdlHSQ5wSo@vger.kernel.org
X-Gm-Message-State: AOJu0YxuEagXOYYSQkJMeWD+RnzVp3/fpZFYR19AGWeq5uHNw24DCLTt
	rZK92yxGQjInjzwArkyl6IbfDRGtst7w8QFfkQdkLPuDtbQf7hPWxLuiBDZiDHzSHxcI2gb78J1
	k58f9IVJFIwaekAK1NnvEFptlMsPONdllztPnz+VHFW5VWN7oj8vmeCi0rHKl8qRp
X-Gm-Gg: ATEYQzyLo4WyZNfOuQRFMNNDZhSfPHJzy+fmVqzBc6S5wbY3DP7s+n+878QpflURQpo
	mU3NAXwKCgETz0NyLj1Kmp5dugM3RBqdgZjoG8BTysaGOLOO1m5GjlxFQilLhNyyTxIcPDhRoGw
	YUhAFK6NCkM3/VegrpenGO0KqaiEsTkJT+ljJTriOfdbgCknhaoGbuuaPZd0Bb9wHx6Y/fEl/P9
	66n/gp+D7NmnXrS47EEJXFiy9ML5zm/EF5n2C628w61I0U7puJ6A56gDGVHjE/PvU957FZkX80w
	oX1Q1h0Zh1a7mXr6m4bbepkyxQKog/1mMi44OKCWJFdjd3znjIXL4CPhu3UlOPh/IFUYQ2+Nhj1
	pnQSMR6tJJJPpmCTd4H/TNpOvpW29b8/l2shiz8fhXt4WuJUa/ufFrcK2VrpgOeolkUhosangut
	0UWeA=
X-Received: by 2002:a05:6214:6104:b0:89a:4f20:cb28 with SMTP id 6a1803df08f44-89a4f20d1aamr22563846d6.3.1773055692156;
        Mon, 09 Mar 2026 04:28:12 -0700 (PDT)
X-Received: by 2002:a05:6214:6104:b0:89a:4f20:cb28 with SMTP id 6a1803df08f44-89a4f20d1aamr22563416d6.3.1773055691636;
        Mon, 09 Mar 2026 04:28:11 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942ef4827esm354122166b.2.2026.03.09.04.28.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 04:28:10 -0700 (PDT)
Message-ID: <1728fd8c-148e-4d0d-a041-85a64cf03770@oss.qualcomm.com>
Date: Mon, 9 Mar 2026 12:28:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8250: Add inline crypto engine
To: Alexander Koskovich <AKoskovich@pm.me>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260307-sm8250-ice-v1-0-a0c987371c62@pm.me>
 <20260307-sm8250-ice-v1-2-a0c987371c62@pm.me>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260307-sm8250-ice-v1-2-a0c987371c62@pm.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: iDmNtBgH__Xb7zFGbZjKWFkdyYu5SF9n
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDEwNSBTYWx0ZWRfX2fW+WKUS2Yg9
 YjZMgkU8XF58Fwj1rFSNFGFYPZdaXao2seoCO+UOqT0Yj1SH5TMcoK8+x7INf9ny5F9lLGMthg8
 vbFLiVpjzH8BuydxzjfZkL7SVq7H+88CeHuZIOY9PpVLn9CIH0iNSjT7TFgjV00GunFoUST7prb
 aWmRNjbTLuSL+TG+UIm1SDhzkEClZCx9MEzkQPY/pB8nudqDkdLGjIJJtR8JAbj0+rGa54c1b/H
 sX2TPDwjXtHSPAelI5rhlUUhWl2ra4MNKSustKiudhnBIfDYUweQIFIaDny3Ff45B2SEwTaQOSO
 nHRH4zdWNpAK+AG+7G43RWBeBbVMB4bZlMvNdZgdpxMPFn5QDQt/rD32b8sPqb2ZxCGiozV4A7t
 F0buU+qyjOi5AhqzeoeKe8f/GhP20j4FwlMTmZYn4j5maNjcGKKigkAtpcZbisA9+YXYBT3BnDz
 4K7qyMs6ffnrd/c2ZRA==
X-Proofpoint-GUID: iDmNtBgH__Xb7zFGbZjKWFkdyYu5SF9n
X-Authority-Analysis: v=2.4 cv=RP++3oi+ c=1 sm=1 tr=0 ts=69aeaecd cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=P904AwLpek5QnlVglQ4A:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 malwarescore=0 spamscore=0 phishscore=0
 clxscore=1015 bulkscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090105
X-Rspamd-Queue-Id: 6896A237F49
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272863-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[1d90000:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,pm.me:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.980];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/8/26 5:49 AM, Alexander Koskovich wrote:
> Add the ICE found on sm8250 and link it to the UFS node.
> 
> qcom-ice 1d90000.crypto: Found QC Inline Crypto Engine (ICE) v3.1.81
> 
> Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
> ---
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index c7dffa440074..4e8a960acc5e 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -2513,6 +2513,8 @@ ufs_mem_hc: ufshc@1d84000 {
>  
>  			power-domains = <&gcc UFS_PHY_GDSC>;
>  
> +			qcom,ice = <&ice>;
> +
>  			iommus = <&apps_smmu 0x0e0 0>, <&apps_smmu 0x4e0 0>;
>  
>  			clock-names =
> @@ -2592,6 +2594,13 @@ ufs_mem_phy: phy@1d87000 {
>  			status = "disabled";
>  		};
>  
> +		ice: crypto@1d90000 {
> +			compatible = "qcom,sm8250-inline-crypto-engine",
> +				     "qcom,inline-crypto-engine";
> +			reg = <0 0x01d90000 0 0x8000>;

This part is OK

> +			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;

But here, please add the ifaceclock and the UFSPHY GDSC, as per

https://lore.kernel.org/linux-arm-msm/20260123-qcom_ice_power_and_clk_vote-v1-1-e9059776f85c@qti.qualcomm.com/#t

I'm not sure about the merging timeline for that, but it exposed
that we need some more resources for the ICE to be actually
accessible

Konrad

