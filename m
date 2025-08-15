Return-Path: <devicetree+bounces-205251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C2946B28827
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 00:07:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 14AD71C80001
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 22:07:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBAE7225A4F;
	Fri, 15 Aug 2025 22:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hQbe3/TI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D4F28399
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 22:06:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755295618; cv=none; b=KNLcRS88rT5rItdK3Wb4mjB+BvB/PSJzNN3GqDt1577Bhnl2Z8+/4JKt9WvTODlR7g5R/ZvSNF4u7YJveRX00yCGzz3kt0JC+yvzymFMBBivaowc5BmaBmH96gTtZcsefsf+qpld5J53HDBPRzpxOXdK0e/frKJE6XzIqavzt80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755295618; c=relaxed/simple;
	bh=uNKzVkNJFpozNWtvy1jhRUT5jNUMWuz7qE+T0XvLyk4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O2WIqRBu2TX57LKPziR/lSnjQZjwAnTlxSZMF+v/g/3ClnpBxlCEs6vX2mR2TkhbUpmEufR7SgSjDgT2bpGHZtywP8oK0qL4gubSAOCTfjgepusnaqphJFHiZ0y50g3+xVQ7rAtpQGFMPPoAOqq/hDZm78AjzKLTl1ZWXSPsIVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hQbe3/TI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57FEIqrS017540
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 22:06:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VOBIKSyTfLYVpO5P26VZ5Tfy
	QvJf2A+s0orIIhlOTIw=; b=hQbe3/TIh+Lx92wl90eOtXPQKSM0HZOoEu4cJ4xR
	fpf8n/RoDtHl3iPO7262sn+6mMNyyJWrAju9JRRwXquA68rRhVLM4hGTy9x3IACn
	p5BGUOrJhGs7s82uXVo2hMh+8PsMKNrf47Vwmm9r0FNcSESzE7RfsNREJLu9iesa
	KpQbKBztmQDLZNuDJdwCaKpHgnrI3sX6oW4ETIHbKwe2X16d7u+njg9YlQphjDcY
	+WTPnGX+zhSySjSni3w7pcs78tkACQ3vrbBgD3CXXilaMxfKGQOlNhWyz6jsqrmN
	ajcIrilAo2hQtW69VBbWmpJCOPZkr6wPlWO0ahMo/s0JkA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48eqhxjfpy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 22:06:55 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70a88dd0193so51332746d6.0
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 15:06:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755295614; x=1755900414;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VOBIKSyTfLYVpO5P26VZ5TfyQvJf2A+s0orIIhlOTIw=;
        b=JO8zCQMHqzpDlmxyISCYif6LfysKf+C2lsFjKb0r61U3fuYhxcsN8W1oUBekmpNyLX
         7jyuqYetYHqxaA3BBjHJw3EoO9mNXplqS4ed78lQzvXHsuePHdejMSRhzlmezKae5aKq
         V0KSe4I6yPT++OyMq+XuT7o4V+JLVP/1OVeFthHzTLvrwbi+/LE+hETkeaYGWuVr9W/R
         yr+jk57CECbciB/Q058/cl3yljhKcDfxKDqW+hP08im+e/uHKX3D5LywfLR1Ck2adOF5
         j60sP9oUN5zt0QZWXZbMWgR8Pn8eWSBr2gPepO2ovVnu8NGiXb6x+UWpIDZ/LXZP/ML1
         +esw==
X-Forwarded-Encrypted: i=1; AJvYcCXIJ+PLEATg5nZLUOMp/f24spG8iBVLCjWQTkL0zFzmnx9WY9BH34BYqmvV8scQBVptyKJ4J8BeqMEf@vger.kernel.org
X-Gm-Message-State: AOJu0YxokE4EwtXIMlKMH7zMoy+EBjTG5+yRAcFEOCzUALe6w/QxAY0P
	TFSIvYRbKy3KuhIs5DZ6UqknSJzwin/aeyZpIAojRxTSRGH+TGiYswZwgj0DZNv6O2xFfCE5UcO
	f1M/5Pc+5N7jnNitOIxUY57qWtalEwXHzjkLTsKoI7tncddbFR8NGRRaCr2Wm6O+0
X-Gm-Gg: ASbGncsMPCLZx7ek+1oPECrWF2LetKMSYbggzmUNlvfQzKLb46pJrwWDLNK4WFLipJQ
	LKocOUy09rj1+v7B4CYem9nsMdW9MX7o1/bKuig0YE/ZJVk0huB8Upt69G6A++l2no32u0HHF1a
	/F6cBttfubDIAbNXHjQUtk1JM6a4A+rcXv9+NqMxF2tZ1I4XUttXEHGAMOQp8g5CKU9PMc0XmsZ
	dwkHAsuRCrhQ1mcIFxkTNCBkmo7XA2cd3DOJ66B+4mRB5Bp8uuj/UecWNTHk2knN4GAsIFFi7IA
	mUakgZQkDA5HmHxmmarPrZZGMlno2waU4ro+hZOGTmEsTltJgnkmCd6YYJ88js95m0VertvYsXt
	icrO8aMubXOt6CRLxe/Jynjk7N/GsbN87pHyziZwWjrpu0z59g7Tl
X-Received: by 2002:ad4:5bca:0:b0:709:c997:a81c with SMTP id 6a1803df08f44-70ba7a9a7e9mr46893146d6.17.1755295613515;
        Fri, 15 Aug 2025 15:06:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9G6CXo1SoIyR7ep7jAxw2tGGksasdF1FtsJDXuZig6dOv6C+t0MATUifhC4YEo48+4WrwAA==
X-Received: by 2002:ad4:5bca:0:b0:709:c997:a81c with SMTP id 6a1803df08f44-70ba7a9a7e9mr46892696d6.17.1755295612991;
        Fri, 15 Aug 2025 15:06:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3cc6a3sm517416e87.102.2025.08.15.15.06.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Aug 2025 15:06:52 -0700 (PDT)
Date: Sat, 16 Aug 2025 01:06:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        Abel Vesa <abel.vesa@linaro.org>, Xilin Wu <wuxilin123@gmail.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Srinivas Kandagatla <srini@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>,
        Christopher Obbard <christopher.obbard@linaro.org>
Subject: Re: [PATCH 1/9] arm64: dts: qcom: x1-asus-zenbook-a14: Add missing
 pinctrl for eDP HPD
Message-ID: <pmhy2ogyorelllgandehtzlen64tzegp5pc6fkg7al7xzjcb2h@lq4lpaaavr6j>
References: <20250814-x1e80100-add-edp-hpd-v1-0-a52804db53f6@linaro.org>
 <20250814-x1e80100-add-edp-hpd-v1-1-a52804db53f6@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250814-x1e80100-add-edp-hpd-v1-1-a52804db53f6@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEwMDA1NyBTYWx0ZWRfX0lKhHW9bgfh3
 ATIg6CMr04+iZcm+1HTtAVlc/BjpiH94VA4iU4mcR1oz3zsha/hiPAbY926NklxjRGU161e36ih
 zocMIJSPQ+urr8bjFoSluqwN9j6VNVAp1qfndWBMkwx+QveYvD9k2Mgg4Jvj6qnHvPNls6M2U/k
 k0mDwvVN8ZP8tnmWB6spP2gNeS20y3l1fqbJCNv6emM72MA1udBhZlQ7unhBckc2KTshpqFhPlg
 CejOtz/3Z0xtPlpCruJHMOVSrlJD7mgh15N+iMW4N2aUhuJplabwFkrfXG7+ggzkOCcpN7pGq+E
 qeuwpKZoY4/YCTjLLW1enuvw9VU4OUl3JBiBSp1fLW9MfdF8lSQaoz5nPlTJLC0p+H4mjC8s37y
 I0fSfOIS
X-Proofpoint-GUID: Dhoh7490kxEAAcoiFZw-ImLEdz_KH1WO
X-Authority-Analysis: v=2.4 cv=aYNhnQot c=1 sm=1 tr=0 ts=689faf7f cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=18jjl7SCHLW6QrnkuXEA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: Dhoh7490kxEAAcoiFZw-ImLEdz_KH1WO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_08,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508100057

On Thu, Aug 14, 2025 at 03:30:28PM +0200, Stephan Gerhold wrote:
> At the moment, we indirectly rely on the boot firmware to set up the
> pinctrl for the eDP HPD line coming from the internal display. If the boot
> firmware does not configure the display (e.g. because a different display
> is selected for output in the UEFI settings), then the display fails to
> come up and there are several errors in the kernel log:
> 
>  [drm:dpu_encoder_phys_vid_wait_for_commit_done:544] [dpu error]vblank timeout: 80020041
>  [drm:dpu_kms_wait_for_commit_done:524] [dpu error]wait for commit done returned -110
>  [drm:dpu_encoder_frame_done_timeout:2715] [dpu error]enc40 frame done timeout
>  ...
> 
> Fix this by adding the missing pinctrl for gpio119 (func1/edp0_hot and
> bias-disable according to the ACPI DSDT).
> 
> Fixes: 6516961352a1 ("arm64: dts: qcom: Add support for X1-based Asus Zenbook A14")
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi b/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
> index 16d045cf64c08c02c420787e000f4f45cfc2c6ff..613c675aac296f931293a1ba3d8506c6663bad21 100644
> --- a/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
> @@ -1001,6 +1001,9 @@ &mdss_dp1_out {
>  &mdss_dp3 {
>  	/delete-property/ #sound-dai-cells;
>  
> +	pinctrl-0 = <&edp_hpd_default>;
> +	pinctrl-names = "default";
> +
>  	status = "okay";
>  
>  	aux-bus {
> @@ -1236,6 +1239,12 @@ cam_indicator_en: cam-indicator-en-state {
>  		bias-disable;
>  	};
>  
> +	edp_hpd_default: edp-hpd-default-state {
> +		pins = "gpio119";
> +		function = "edp0_hot";
> +		bias-disable;
> +	};

I think this is common enough. Let's maybe push this into the SoC dtsi
instead of copying it to all devices?

> +
>  	edp_reg_en: edp-reg-en-state {
>  		pins = "gpio70";
>  		function = "gpio";
> 
> -- 
> 2.50.1
> 

-- 
With best wishes
Dmitry

