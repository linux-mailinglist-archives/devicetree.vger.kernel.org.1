Return-Path: <devicetree+bounces-276110-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6HKFBhHlt2mzWwEAu9opvQ
	(envelope-from <devicetree+bounces-276110-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:10:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B3629881C
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:10:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 41F01305ED1D
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:04:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8646273D8F;
	Mon, 16 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cDIKhuKb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P9+UaOTH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1AF1DF723
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 11:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773659093; cv=none; b=ACUJNPvKoRqL3D12CYq8dZQY/OHjjXSf3BI4OcK79AdEzprBrdrkVImo7oaaWBJqFxtgEnpmfFocFZ20gzfkBPgY0AiR3HGJ9kmFPcrGYCHStlPFANibjI3IFEjQlVOFEzs9Mw1NCGzw9BgTSbeZrREJn4AankRXAdXwcyQSBzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773659093; c=relaxed/simple;
	bh=esLUPOOWx2BE2RIaFwDSmG6sMCM1hS+EmMydfYN/tsE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mdWVS7PjklAD7bNeV97eJSJKBDBSKbUv4BWh8BxuqZCsh9sz9bbYB87GnrpmnsqsTFgWqHSjKmD2C9kZuEtQYbc+JTXTjYEcqxnplNLV5yEcQFUNaP2PAj4qxZ/2wQ+gOhgX7ksHC2PF83RD9498vJDo5jYDCLLypaBHBf4k1Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cDIKhuKb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P9+UaOTH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64kr1538960
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 11:04:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7XllX3Ebz4hppz9fzI1VP/5MLoDsPPNQg3TBzEGzGm8=; b=cDIKhuKbKcmjkPnj
	4BNlBxp8U49u3fT5ASTNQ7cvUI3DMFWh+ZQyg4wgV0bIHzFX4qz5vZ2D+dU3fa6c
	MnHm3RZx/YHLWHwvUL7wyc9rxqSpMae3t8Bgyvx1lOe2VHqRjhIB50l3BviFHZCT
	VlO4ECTTKXfy+d+9TUkLc6Ja0w1a3DrgWjN3cZ61A/5D0c9wLa7Mxw/ArkjAbEzk
	GOXofH9sxZvUonU9iP/MJcQprQb2tUkjsyd9LZPUJD+eR6oMHZmflCr/4TgkQEVU
	8Cs9uGV3dhfMpcw7tpjjyDYnpcXZAHAt9sNI24MqSlMWirJbCZREdUCYztRiudej
	RvR3GA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvyy5nc0t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 11:04:51 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2b061bf1a2dso174845ad.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 04:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773659088; x=1774263888; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7XllX3Ebz4hppz9fzI1VP/5MLoDsPPNQg3TBzEGzGm8=;
        b=P9+UaOTHmskQ/xyDq/9ucmJGG9Stk3G/vMGp+bNWq+v+o55zkuxUngB4+ja4sUg06r
         WMjmIU8wSpw4R9Bj553uf0z+JCdCOx3c4jNfalKbMgQ0Dx/N7MDWkb6PQdCZNT4j/IhZ
         qwG3S3tZzuQMY+9RXQjmtUPyUUk1PWJIkMDbmQmejDy/Hhepj2DyYRI7rQ11BEn5uvUY
         6TH5IZnrDA/YGbWXSVpuvzob2df9C+8sVUELdYSZjln7Ar3sezKtcpHMyAZeJZToelGE
         1zuhSJ4cDqDsL3Ak3xttq2tz3YEUmXSyhjv2Qvu7K9vidWUvN3HSGyK1mdjAiY3HBGMg
         evSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773659088; x=1774263888;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7XllX3Ebz4hppz9fzI1VP/5MLoDsPPNQg3TBzEGzGm8=;
        b=asMXeXW63VxbnEDnCeIdjQpThXkzgfqqWMjEc7mx80eM9hqEbQxOddCmayUnRbuXyM
         CyN+EQe4WWFllYr9i7f6kInvtZIHzInM1ctqp/5N/LJWTJGOZExjfVYiFU1Ds4wt+EXw
         Ufp8pr12T6jYr0rbYzqLS/yTTP/xi7ckQbljflcxPjCmHktQLEmO9tMDci4wf4MVOcmP
         MthVG1u+x3U3QGpFv2RVB8dahA4ogdyLN3sf+iZod7bTuiXMVF1Up3LMrzwNG4TntiIc
         jrd2302Tlil2T+XvJYzs3VO/CJODtRzChO+VR2RFgor47Ho5MBfSWe86ZoYv5jzWTv39
         TjRA==
X-Forwarded-Encrypted: i=1; AJvYcCXiDKX8mfPGqlh8zESDF1v4OWAxQzhOlL/DQdCcQPO6mP0KuwoviGT3O/ro1yVRlf/kQLPzBqX4UFOn@vger.kernel.org
X-Gm-Message-State: AOJu0YzOLQN8CCbYpdwD5K2GcMbC7qzkTs1bDarMi2RodojkYFQokI6E
	TtGzsfn0WKLha9LCaRRTcoc/SQHTSwRrp4fmTpTLUhSx1kEhqoVLz3X8KSQqXMMIIqCdgD/yxts
	fCvSGgVq82UIA859Y8Ect7OtowoHb2rKYfhF+nk8J1lS74+LIPUSGQC9+RhXWO9iGCcldV3/7
X-Gm-Gg: ATEYQzySDHPmtl8ket4LJ2OL9WwCdBWTsK5dhrLKfewIn7+lUrBhg8nwNT54lwoKP1S
	Ujw7OlE+848XSlGj/8TbVOgFR+O8u5ZaG5NhGRUtoTj7cD77KJs6hig5LaN3y+p0kjfl6cUxNQt
	ky87+IVeD2Eknx39KPjmbP/RM2qRcZbWYEIV2F8uekFE1EN7Kp0NYa95GuDhWRgFxPsQCPOhlt5
	SSSi7/BfkDPAE7cLKfIOpuk+aSSTmtH7iDnCFN+l6ErBna2OHUlBvJttHhdeBu2u4FT6um6P2DP
	eqahNR8WMo53VeJGd7R5K9nrzjDOjEMDhVsP39bfLnFPrR1ilJoAMpuN+HQjISuw32tMLAq0iqa
	VumYQi/6fMyfE+GnjJ/6t1f/yOCaRelTn842pZ4UxwHLqiC6/8PGG
X-Received: by 2002:a17:902:f60d:b0:2ae:5bee:f0fd with SMTP id d9443c01a7336-2aecac81c51mr139277465ad.51.1773659088513;
        Mon, 16 Mar 2026 04:04:48 -0700 (PDT)
X-Received: by 2002:a17:902:f60d:b0:2ae:5bee:f0fd with SMTP id d9443c01a7336-2aecac81c51mr139277275ad.51.1773659088059;
        Mon, 16 Mar 2026 04:04:48 -0700 (PDT)
Received: from [10.218.5.182] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece7ee1e3sm112165905ad.44.2026.03.16.04.04.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 04:04:47 -0700 (PDT)
Message-ID: <737eae95-1e86-4ee6-abec-5e313a18f078@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 16:34:41 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: milos: Add GX clock controller
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260306-milos-gxclkctl-v1-0-00b09ee159a7@fairphone.com>
 <20260306-milos-gxclkctl-v1-3-00b09ee159a7@fairphone.com>
Content-Language: en-US
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
In-Reply-To: <20260306-milos-gxclkctl-v1-3-00b09ee159a7@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: iBnj-92i1po3tK-JQsUwTjO7e3qcSoka
X-Authority-Analysis: v=2.4 cv=QOxlhwLL c=1 sm=1 tr=0 ts=69b7e3d3 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=fneQyfJuBaBqRE5tITMA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: iBnj-92i1po3tK-JQsUwTjO7e3qcSoka
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA4NCBTYWx0ZWRfX7fS/vXYr8jFy
 sqfkm7I1CqGhO3JcnaEOXplD2dDXXPbqec0fW+rcKLYlwiAqjDRcF5XSNK89S5O4lpKkt09ells
 8pHiV1OLxc/giqTmyMRJadXflvt5ufhg0e2m2dR5DnPQD+75GNuEX3LEWYlVUfip3sKoqspXCaB
 O0lzZ4xi8eNaVIhQXDILPmUThPg9z0TJ0hK4BhagaIkLFbta2R0hkukNYDGFogLtMC6ok9oyRjH
 aV/wzCoeYO2I7v11cOxORCYlvtDoFu7iW9ZeI72XlzhA9uQSru8l2rvaZ/IZsm37wPWiircp60f
 T43fOp5LSzTNuWJBAV/hoMrnrf57IIVq+0yjiLk0PGRVjG3pcx5imUHPTEiL73yPKOvZmYxTp35
 ES3hnFJmkMAmroMNC9QO7++bIXEnCI8e+dRX811UjwoAs7367gqq39PvsII0FGvb69xHIO8sd/O
 i3XPBQ0Zlfok29Qclow==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160084
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
	TAGGED_FROM(0.00)[bounces-276110-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:email,3d64000:email,3d90000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jagadeesh.kona@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B9B3629881C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/6/2026 7:18 PM, Luca Weiss wrote:
> Add a node for the GX clock controller, which provides a power domain to
> consumers.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/milos.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/milos.dtsi b/arch/arm64/boot/dts/qcom/milos.dtsi
> index e1a51d43943f..621f05820826 100644
> --- a/arch/arm64/boot/dts/qcom/milos.dtsi
> +++ b/arch/arm64/boot/dts/qcom/milos.dtsi
> @@ -1224,6 +1224,16 @@ lpass_ag_noc: interconnect@3c40000 {
>  			qcom,bcm-voters = <&apps_bcm_voter>;
>  		};
>  
> +		gxclkctl: clock-controller@3d64000 {
> +			compatible = "qcom,milos-gxclkctl";
> +			reg = <0x0 0x03d64000 0x0 0x6000>;
> +
> +			power-domains = <&rpmhpd RPMHPD_GFX>,
> +					<&gpucc GPU_CC_CX_GDSC>;
> +
> +			#power-domain-cells = <1>;
> +		};
> +


Reviewed-By: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>

Thanks,
Jagadeesh

>  		gpucc: clock-controller@3d90000 {
>  			compatible = "qcom,milos-gpucc";
>  			reg = <0x0 0x03d90000 0x0 0x9800>;
> 


