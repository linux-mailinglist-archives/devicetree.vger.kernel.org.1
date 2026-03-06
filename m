Return-Path: <devicetree+bounces-271945-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4F+DD7Oiqml6UwEAu9opvQ
	(envelope-from <devicetree+bounces-271945-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:47:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD0821E318
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:47:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 01DCE30B0A7C
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 09:42:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BCAF346E78;
	Fri,  6 Mar 2026 09:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ci4e57cD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LpkSIobB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191F1346A1F
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 09:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772790141; cv=none; b=eAa8fbENYGexBmEumJ+UUq4MaB0LNi70Q3Ra8rCJ0RrGkLYLTo2U05TDsyi5+TWvMhrX6odaoMGFHt0gQFWxhmRRcyp9Fd67aR5ysgiXhJPvYMgckl4u1PqsRXry7o59bJe6/SMuKmZRHPX2mVNPIhKIr8qFCA9qOwBDINQlZ14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772790141; c=relaxed/simple;
	bh=Ba68yWy5dr1kzrzzbJuqaw37mZYPkH/B1bIv+NNdfxw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jpjZunU3cAqRDs73tJWVbYZnUOwxZJkenkH3IVYyOKB+SJARlwFqnG9a3WYa5MdPb1Yd6+Mll+2UAYBrQ7Xl+V3dKgqRGgElM0d+ScPnMTptNE++ZtB/LkRfYu1t7m5VtgTO5pvMIfXBArDlaZWQQXX7jJdFpHVSQcZQ8QpyQrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ci4e57cD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LpkSIobB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6264afEA265849
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 09:42:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pzwPQTHuxnVdoT18Uo0xga7o35yqXSFkdotlJjxSh6w=; b=ci4e57cDrxDto26I
	RlZq3vb/GGOCTC09T/ZVOovWBzIZzCcWGLu+yYNIMOlDmXrqa7Zc+Uio4TAEHyGu
	7bgQDCNk+rPf/HmVuh7GYN6DqKFSoT0N9FjU7CecQh6TCpC3X7uU/+134TYNgCsN
	GyU9+MKf8TYQrRjAMvuO5OEFS1yRxE+Ic17RYWQTMLYcV7+rQhKDyUjj+/dHbM/L
	Z2bUzGPF7wFx7lwHgbYOtt3Q4UoaurlWS/oprf4wsXfZee6uPno9VBd/LUG3kZWD
	CMSbNd6rF1S8DjKgybBLV+k5CstCVqEvusiravCNXUy1CK33fbO4o8IkHgFVpX7b
	kRrIkQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqdvku1tn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 09:42:19 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-824b3532298so3509273b3a.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 01:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772790138; x=1773394938; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pzwPQTHuxnVdoT18Uo0xga7o35yqXSFkdotlJjxSh6w=;
        b=LpkSIobBJQ3T0ZdwHmvNxqoV/GjHIdj/uLYHOoIHkZ5B4dFmrlewrpMGH0xSE0TdMe
         NjiS19BBTuStNjSkxBHHMll5Izm4bMePewq29no2Gs4J4TCvXEggfolg93iSYWlsZ3sw
         HbCwntXS4cFDbRMTRIW1a1E/4TyIU0WfNoFK/yQHlHQL0PHjS2TKLRQStWE2sY7iVs35
         IJ7GuuGQkpAvOIkD7hLSTvoB6dR0Pt1SFvfnLq0W6naMPbjR47+5YSmHHoLuqvtgx/7S
         fbM9boRIC4sQuznG3Pg0s/KD1W6EF1jC6fuh4vfAawkxyOQG6tLj559uzfGh+IjC3NY8
         /7Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772790138; x=1773394938;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pzwPQTHuxnVdoT18Uo0xga7o35yqXSFkdotlJjxSh6w=;
        b=DH0e8cHaU06jcvbLhfmsUi26neThzURw3ri8+/bs2cxa4p3oaGNpMlJtnswpynUOWP
         Pz8VJ+NXy0v2HWxVdmAoRk91g7uOCSPsNOuOWgexEWagFrFAnryuaesR8avcYcjoFk6o
         jJheaKQ7Wd3ydMZ2pVibYyp9RClBy1y492ejVNNDopWsAFwBBLStCziiKIq0juV0oObq
         QFRESpfsiaeOHvJspTEgqlXeOwOuNAwNkou4W58gVn9IxX3lM49jPV7rBWXCn0sDRApe
         ABx7AuE1V3ggUua/QDuj4h7957u4oEy/NxkElAy4oTT5F5YiuyzEHvtz4KnTHd4tG093
         E8gA==
X-Forwarded-Encrypted: i=1; AJvYcCWsL9e7kcFQ+QXNo9fivsnROSy6YQJI0LxfIQdC7CnU3R9hyZF0ZYgeirndIuY+uibgjJa+ha5zRh7t@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9sf1UkgfALm4iXh2CcZ4lTByZGVJGixe2l/WY6onmJSI1tqGg
	empxLGDOCpntcZ6Xy7y8V8LAbGiKOD+x964fRNbZjXZxwtFK6DLyXpwN53De4DlmsymrdNxs+RF
	MX7C/FQQpcbILFfbkmKlW5+QPOszkAk7Qlap6BH4f/3BziSEbbRrLAqMSRxI1Hsq8
X-Gm-Gg: ATEYQzydNQgIaItZZDDebCAjJDor/2oVITyM69FmyHvckPPOdn/ufZIOEf+NpZas28N
	1NMnJgZ+LVfuwQ+pmxi46E73b32QyL6yCv8zw6grGlCSjvMycsYomcrFmpugvtW3v0n/GFjU/xK
	AnYUaUKNTP2lvEIPs2jgqJ93UOXKYB/VceZ0BuQCmucbrvO0fq5KyP/nnRht9iARjojGKlZt/xB
	wInAOfs6HBZ4Yk5ShmZav1PwBGEGfj8z90h6VrXOm89+HuX6uuxr+wVOhKoBgGRnA+f5JRXo8Uj
	Cy7dUJoryquyI/x3qdmkPfg9TKnkbByBPHEhlOcKSHfejy/6hNBDJI/AXPkXnOyKoGcNWL3n1Xm
	81juiEyamJJwT0sDRF5JLVr79tcegGeC3PkpliGNIkug0Xw==
X-Received: by 2002:a05:6a00:b908:b0:827:32de:d197 with SMTP id d2e1a72fcca58-829a2f4a13amr1306328b3a.40.1772790138533;
        Fri, 06 Mar 2026 01:42:18 -0800 (PST)
X-Received: by 2002:a05:6a00:b908:b0:827:32de:d197 with SMTP id d2e1a72fcca58-829a2f4a13amr1306300b3a.40.1772790138033;
        Fri, 06 Mar 2026 01:42:18 -0800 (PST)
Received: from [192.168.1.11] ([106.222.228.80])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a4657a10sm1096879b3a.21.2026.03.06.01.42.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 01:42:17 -0800 (PST)
Message-ID: <d313f7de-4531-42b8-b8df-ce8ffdeffb4f@oss.qualcomm.com>
Date: Fri, 6 Mar 2026 15:12:12 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: Add support for MM clock
 controllers for Glymur
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio
 <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <20260303-glymur_mmcc_dt_config_v2-v2-0-da9ded08c26f@oss.qualcomm.com>
 <20260303-glymur_mmcc_dt_config_v2-v2-1-da9ded08c26f@oss.qualcomm.com>
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20260303-glymur_mmcc_dt_config_v2-v2-1-da9ded08c26f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=M7xA6iws c=1 sm=1 tr=0 ts=69aaa17b cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=uL+hpB4jSAN/g3a/thif0w==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=P36qcxhMMR4eMPYwPxAA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA5MSBTYWx0ZWRfX4u65fK7OtgHF
 etkltzNwWsbe1sniqu0pAk0TiCSmiUFg8B9dEnZIfu0hPjuPJBpapl3oYbEz0hdCtLAicuwGgit
 uJuvycTErR2ouH8P/Sazjya2+1i1crDMgVfA1zd8af0A5rRDvSubXEYQaSF936QSKAc3vdqZs0s
 JD7ZJ4eS+6PEPzaEhNz/mnFneWHUt0gst9cFClLEjVkHmVgk+it9CPxXTTHnPcSkePyMuaJ+Zqu
 pP7XyDz81RfRAJ4iqZWhTBkzF+bsq0ZJE6re5CS+aY/Jr6FJmME+e7Pt6o7QnshdidRHfbpmxLK
 71fkdWOE9w8IBgbkRQv02PXuhq2SYEi4pLuuZx/30bt7jUQPMNjAOfrSnFb40TJPN48RVNxUGy7
 O4L71PKz7JBCd8un0TEnkluRP0/UWVIPwm8UdFeBAzXeMxI4F0VcREuinx4bOWHCGhvcD1Uw/I/
 cVzb64dgiUwzqw6GDdg==
X-Proofpoint-GUID: z2Gzq56HyQjJZxh4yl6B_q9nuiOp-nED
X-Proofpoint-ORIG-GUID: z2Gzq56HyQjJZxh4yl6B_q9nuiOp-nED
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_03,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060091
X-Rspamd-Queue-Id: 8FD0821E318
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271945-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilpo@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/3/2026 11:22 PM, Taniya Das wrote:
> Add the device nodes for the multimedia clock controllers videocc, gpucc
> and gxclkctl.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 42 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> index e269cec7942c85447892c0661f83171eded94f3b..d9c37f43397f11a527279ee778769a2f09745bd5 100644
> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> @@ -5,7 +5,10 @@
>  
>  #include <dt-bindings/clock/qcom,glymur-dispcc.h>
>  #include <dt-bindings/clock/qcom,glymur-gcc.h>
> +#include <dt-bindings/clock/qcom,glymur-gpucc.h>
>  #include <dt-bindings/clock/qcom,glymur-tcsr.h>
> +#include <dt-bindings/clock/qcom,glymur-videocc.h>
> +#include <dt-bindings/clock/qcom,kaanapali-gxclkctl.h>
>  #include <dt-bindings/clock/qcom,rpmh.h>
>  #include <dt-bindings/dma/qcom-gpi.h>
>  #include <dt-bindings/gpio/gpio.h>
> @@ -3335,6 +3338,29 @@ hsc_noc: interconnect@2000000 {
>  			#interconnect-cells = <2>;
>  		};
>  
> +		gxclkctl: clock-controller@3d64000 {
> +			compatible = "qcom,glymur-gxclkctl";
> +			reg = <0x0 0x03d64000 0x0 0x6000>;
> +
> +			power-domains = <&rpmhpd RPMHPD_GFX>,
> +					<&rpmhpd RPMHPD_GMXC>,
> +					<&gpucc GPU_CC_CX_GDSC>;
> +
> +			#power-domain-cells = <1>;
> +		};
> +
> +		gpucc: clock-controller@3d90000 {
> +			compatible = "qcom,glymur-gpucc";
> +			reg = <0x0 0x03d90000 0x0 0x9800>;
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				<&gcc GCC_GPU_GPLL0_CLK_SRC>,
> +				<&gcc GCC_GPU_GPLL0_DIV_CLK_SRC>;
> +

Missing power-domains and required-opp properties here.

-Akhil

> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +			#power-domain-cells = <1>;
> +		};
> +
>  		ipcc: mailbox@3e04000 {
>  			compatible = "qcom,glymur-ipcc", "qcom,ipcc";
>  			reg = <0x0 0x03e04000 0x0 0x1000>;
> @@ -3367,6 +3393,22 @@ lpass_ag_noc: interconnect@7e40000 {
>  			#interconnect-cells = <2>;
>  		};
>  
> +		videocc: clock-controller@aaf0000 {
> +			compatible = "qcom,glymur-videocc";
> +			reg = <0x0 0x0aaf0000 0x0 0x10000>;
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK_A>;
> +
> +			power-domains = <&rpmhpd RPMHPD_MMCX>,
> +					<&rpmhpd RPMHPD_MXC>;
> +			required-opps = <&rpmhpd_opp_low_svs>,
> +					<&rpmhpd_opp_low_svs>;
> +
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +			#power-domain-cells = <1>;
> +		};
> +
>  		dispcc: clock-controller@af00000 {
>  			compatible = "qcom,glymur-dispcc";
>  			reg = <0x0 0x0af00000 0x0 0x20000>;
> 


