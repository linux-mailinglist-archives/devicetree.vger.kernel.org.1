Return-Path: <devicetree+bounces-237908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A975C5598C
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 04:54:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B0CFA4E457F
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 03:50:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44F17295DA6;
	Thu, 13 Nov 2025 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e3SxdEh0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZDj5KVIi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A35BF1552FD
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 03:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763005834; cv=none; b=ZoV6iySdia27WXGtIDd66pCP/XMI/rgaxTGgzu6o4uNcnSS2jZpI66dG57Kq7aGmTmVRbFb558L9P5fGuMw3zx9zV96CP2+BxEs9cgH6PEXUEpgZ2XN19S4gkXOnpEU/JSMalaX2wfEXDG9rm5iT5kJPDzuXO1E0Av3OyfrP9c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763005834; c=relaxed/simple;
	bh=ApgxYi86HOjwkB9t8ICvCXOaL9Z0Rzqi6CJ+ls2Guvk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dK54eDNFynQoGUN9Y+eVaJGtJ42JB9EFfQbrygZf9ewMBVkgvc92q3QvSlXY4Ka4FHHIfV1TTktglLrjHPSxqn+FdBMotmCNCTyH4kFD96414rdOuVSC1NniKRkh7IeWarExbhNWRp77JnrMHqUmU0bW0qCFPv+bU8al4/3c/mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e3SxdEh0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZDj5KVIi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD11MJX2962633
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 03:50:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vvTqxjY0uLJN26zmCg4YTJ3J
	aEBP3xx+24biRA8g7d4=; b=e3SxdEh0gDpU6yvFyLiqUqbzbes9FGIhbT4bkFQx
	fMIeMHr6gYnLHCeF01oujCjTjL33vBreqhl8viou8Xe+uY0A9pXxNzuo06w87C0f
	XdNrKrpc6SWaJBYdU07k84CnS37e/n7Ne/ja2dz+wMAQh8T8Pw5pxTcPDkQvFmhh
	Y8WwR+mkV8vi1v1LJq6iZxPi5Az/SjxontYJz04vId/J2oyOBBhJ3729p2yoFDvW
	CNyS2fEu31KMpYxsekXnFbA4btzdNvmc+LP/WUeHs96r/s3s0vslX+8+BAqpofCc
	qJgqdDvXgCqiq4AMqK99O9T8FKkJsNhyWhbZZm1jxLwVNg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acwbpt00d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 03:50:31 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edb35b1147so10465191cf.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 19:50:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763005831; x=1763610631; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vvTqxjY0uLJN26zmCg4YTJ3JaEBP3xx+24biRA8g7d4=;
        b=ZDj5KVIiURJVlbfBQsktV96eiPcO2PrlEBb/MvcV4UPoIUlg/jUVbpDrQfC01tLFsY
         VQTx4U7MB4KYqCMrfmy810Ub49QjUao85WC+H1JJss9MEqJtvP4c18mQ0hVNkdZn/v/j
         dDyT3S8K+690M/UjVsQJCvILxluH69ghrOhi2v8zOzG6BOEvD3tL7NISLiUrt6OHnoTG
         4u4aAhJJm7p62q1r1eWbOnydXkFGVnf8yAylNH8jxP/SW6YelZgQCdZBCvOzR1nkzFLE
         E4qiWHa8tP3LmzC/gmlky8HoIpI796ekCsXmB1E8NxkdRGyWjRVLrqzBn82Oh1culwq8
         zXCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763005831; x=1763610631;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vvTqxjY0uLJN26zmCg4YTJ3JaEBP3xx+24biRA8g7d4=;
        b=wz7o0nHFGF04Zfq80DGLNSaBEcZjOHGgt+C9tqLBCALbZ6nKqp/fulsG+if90UL+mm
         rEOTnGCcqzhXRZnfsrddba+ssEOchQy0GMN2/bbgvqr6E+Fku08wUujU5YTUtouM9aiQ
         JDRNOGjGKDp8TyrirI8LpGnDtOnlc+g1ODO+W73AXe59/H+SN33vwI4iwiLvjn3f/mDG
         qHjBXLcZqbqOh/41uJbJbXQ4LQTyaObicjtQKto5NFww6tAAhhpR5ncUkl3NoYMUvHV7
         yrdEeQcOBf5E+f2uRUMp9VIuaOdOUdBoTm4rMud/urmrymjHSFHt02Nwx+r+R+DbQjlI
         dJDQ==
X-Forwarded-Encrypted: i=1; AJvYcCVqh1+A0vK5usyrWnz7/q/5Md27RJzRRbrJCTo6unUdNpAUEBJllJQMS6jNPBATz9HIMrrP/VdFILk3@vger.kernel.org
X-Gm-Message-State: AOJu0YzowmOs6MIz/0uIgNgmNXDnmqLYfIL9JJu7sRLtuSYosN0A7NU/
	wRX1pnHsZv4XM+8NqyxG9O0Dc1BFRSdeZIOsby6DLosf+sSTv973CKvt4jfZXWAA3ozDk80uqg0
	x5kzf5rlU8kvlgDcEjbsf4oECg1L2wuH+/+hOo9LuIlB+nhlzhiWKm+ful6/QBFNE
X-Gm-Gg: ASbGncvH1bGw+igp+DMjEi/TRcSTm8DCW++zAa5L0aeLwfrP5UaH8UUaQy0RsXBWUWr
	ntqgns/PCzvCQJR1U/L958fGsOO03hoMmO7f6zmyGIVwHGV7nlv8kRvzhmzJHRvsGCvY/Q1MrL0
	ZqXyVMSo2488Zq+WnyIVDZK9GKtMKXJA65WtrIoWawUtI9da6I7c3KpsBSXzSMYdYHO5zeQpuh3
	XC9rC+sM69RQir6Q1Mu+C6ggHzzagwS6dwAvNo+i7a25rVqgJ6XNYnSGv3fxUTfFpLV/f2rTjik
	2bfjoywGLgkXxdKE13D0eeSwrCjYviobBdLUjGUsimDXwOd5Cd/rW0XS0CY111xR8PPqjqWm76K
	diypI7ieumAEmOQhLfOmddswIFsyNPIvbCDi3UwCKj36pa16swMFZkqwYvUK0Op8csIbaBsYVpP
	U1a65piJwpQOH9
X-Received: by 2002:a05:622a:130d:b0:4ed:6032:f644 with SMTP id d75a77b69052e-4eddbe5441cmr73815621cf.79.1763005830890;
        Wed, 12 Nov 2025 19:50:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEAdMc9Ms5ogZyKy+9znvlX5hIpbU9lzUUxY9/KHe0/crxn4EPl2IH8EBglGLkj0bpwcY8HrA==
X-Received: by 2002:a05:622a:130d:b0:4ed:6032:f644 with SMTP id d75a77b69052e-4eddbe5441cmr73815491cf.79.1763005830480;
        Wed, 12 Nov 2025 19:50:30 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595804057b0sm123940e87.85.2025.11.12.19.50.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 19:50:29 -0800 (PST)
Date: Thu, 13 Nov 2025 05:50:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jessica Zhang <jesszhan@quicinc.com>,
        Abhinav Kumar <abhinavk@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] arm64: dts: qcom: sm8750-mtp: Enable display
Message-ID: <knfknl26as6becjwg2noedxklty65i6bdixx4vxwusyswppdsk@vstzkn5xivnv>
References: <20251112-sm8750-display-dts-v2-0-d1567c583821@linaro.org>
 <20251112-sm8750-display-dts-v2-2-d1567c583821@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251112-sm8750-display-dts-v2-2-d1567c583821@linaro.org>
X-Authority-Analysis: v=2.4 cv=NvjcssdJ c=1 sm=1 tr=0 ts=69155587 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=ZB6lwbF0aVbjLvXVTRgA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: i03Eg3vvuD75isFm7na8uDU8X61v1jvU
X-Proofpoint-ORIG-GUID: i03Eg3vvuD75isFm7na8uDU8X61v1jvU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDAyMyBTYWx0ZWRfX+2z6wHpeBJG6
 9dl91Pgeot0LRqzDPkfxFpGThZD4/B1eAIog1qyGacPGwxaXmdosRg4N8qqEpT0mWqtvFThATlk
 UlOTPfAL2bHMhlw06ig5GWSIWp1q25gvDtNCObj0sWcanw6+xXJIU/4ewBotT8wE+zb102hzvFr
 gA2MEaaqWITKlyNXO+X5skJCI38R70tn/GofQecj0D/MTBFhajJROTSTe2VqzzY6ljGgMwl5nlW
 cIEbLPJ2OHvRbZI8mPLJctM3kBGGg5Ap/RoyKHuDUTeakdEe2aSxlr+D3xcIN4pU7p0NiAQksIs
 4OqRp6aeiTqfWWSa2sd5Fn79a8huuj3AoFmpzfAE4FpkJJSXuifoREVObqskt0srskr0nlPAkhs
 +ZuYnHQowwjUd5alpy7rHeswb55KRQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_06,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 bulkscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511130023

On Wed, Nov 12, 2025 at 04:02:39PM +0100, Krzysztof Kozlowski wrote:
> Enable display on MTP8750 board with Novatek NT37801 panel.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 70 +++++++++++++++++++++++++++++++++
>  1 file changed, 70 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> index c8cb521b4c26..68644eccdbff 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> @@ -933,6 +933,48 @@ &lpass_vamacro {
>  	qcom,dmic-sample-rate = <4800000>;
>  };
>  
> +&mdss {
> +	status = "okay";
> +};
> +
> +&mdss_dsi0 {
> +	vdda-supply = <&vreg_l3g_1p2>;
> +
> +	status = "okay";
> +
> +	panel@0 {
> +		compatible = "novatek,nt37801";
> +		reg = <0>;
> +
> +		reset-gpios = <&tlmm 98 GPIO_ACTIVE_LOW>;
> +
> +		vddio-supply = <&vreg_l12b_1p8>;
> +		vci-supply = <&vreg_l13b_3p0>;
> +		vdd-supply = <&vreg_l11b_1p0>;
> +
> +		pinctrl-0 = <&disp0_reset_n_active>, <&mdp_vsync_active>;
> +		pinctrl-1 = <&disp0_reset_n_suspend>, <&mdp_vsync_suspend>;

Nit: Is the VSYNC pin a pinctrl for the panel? I think it's a pin used
by DSI controller or by the DPU.

Other than that:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

