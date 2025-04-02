Return-Path: <devicetree+bounces-162621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6504FA7910A
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 16:22:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 030EA16A2C0
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 14:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5317B2397A4;
	Wed,  2 Apr 2025 14:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="itjJPuQF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E4E20E00B
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 14:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743603651; cv=none; b=lzH2cbnfV3Qy6ADVUszQXHOeLujjumlh8Clzdbmh3upz6yu1jEudOJ3N+kaj9+syXVYsPG+MO/jlOkBqfQpHyd+CnxUQzvNgBejxfDBi7YLn5bJZMVx/FIEZ4hTcgtg0y7HHwSPWEH0RGb6dUXhjHyI39CGFYt4ksQxz8CExsTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743603651; c=relaxed/simple;
	bh=bwZUef00wpGMrqe0rSGaCa+Xd59yzeiRmQPFDmHTlF0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=andFEVNMVEURQ07hSvM9fbTQnxkir5MnznFfOIxSdcAniRTD4i95qGkAMSu9/lew4mWsYoMEGi2yJ93wR3pjoxY0UhOPsv1O9DhNmO5lAGFIG2acMdDX0fMWchdx0Wh07YIA9vW8cidQq/oA+azzJhkxqFp6AUphnE3UcT9GxMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=itjJPuQF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53293V9w031218
	for <devicetree@vger.kernel.org>; Wed, 2 Apr 2025 14:20:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=QaHBoCu2plE0M+UFuQVndI6v
	xXKN8hJXQP76uM4bYAA=; b=itjJPuQF6B3qUNo7Dx81DozIs8xtaYSW0kC135JA
	SNbtWuVtK3hiUWqU7G/eeiX6BWxd0GwCoaDks75zRubQzo2PqRfc0w4fwoLseoHm
	U+REuRT5Tajl4lurMi0x22mZbe0o2Co7mcd3zA4FkTs437zxYpzpEOTa8eRPtsmf
	4IH01QkNeXRnFoieyDLagMCoahKlgiqU1rIPa2T3vK+qw9DER+JTEHEfLLAMfdqM
	3VPDQW/zZeU0YaZ2A7bbrUVSOaLQd+4/1XSloXIgdDC1E8gbIwmcwc/96kkGGY6K
	J0YRlkSdxU1eO9dH1LqEdiFfreCgAc8XtlMH+fBVm659Bg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45recpm191-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 14:20:48 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5cd0f8961so1360907285a.1
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 07:20:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743603647; x=1744208447;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QaHBoCu2plE0M+UFuQVndI6vxXKN8hJXQP76uM4bYAA=;
        b=nvyY2oIXpf+y82YWgCtjVg7WOBcwnvhsVcF1RQEZTRt94tMShCKUIj1s01DIY51okU
         YLjk3DJLtnpMQAqeY8Q/ewTEjnQYVs5ZazVyVaub4JUOiW8mDSf6Yrms4tDP3MnXgDXo
         Sjv2o/RBUvbrlvrYLOnq3s+Jrt3okF4SSh+ryDt5SKuYquuVucBnOv14YkgQpC371ka0
         q1cr+11ojDIKU1E7pWPSu7HBqMrSwXLiGOripNZ4mwNuFGixFlRsAcjGZS54F8RheWbN
         d1SofYd7VqITlD0vrFwPGIWETJe18j4VkReesD2jcbII4PruWx79i4Ce9le+LCupRIcp
         VF+A==
X-Forwarded-Encrypted: i=1; AJvYcCW1WJG2zdBCGswsMeM4RZWv2kW6FdF5Bn+m+XoUtizvb+lzQM8rFxxm5Z/4ibfonisDxobcwqEfMUpC@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4sUMOUgA3O1k/Nr+2qE4YRVynGGcbGKG5ZCvNX2m2mxcNTmHI
	IARn5FY3paTDW/xrba6GXLT3zr8hjaqn36lqRXPbHZC9JCAxOauqe5ay9BWhVHvfJqGGfVWNtuH
	0SFAjUZHiryBF3bqh6BZpCBvkCm9lYTmafCawvdcS5CiIOCP+Su04oC3DmHh6
X-Gm-Gg: ASbGnctbGKyPDqxPHRPc1pyrPaidtjJYmlajEVXj+aQ8g3SuoGAI0WiSFPWXgxRD2ok
	cddxQ8LopHdrORbVNkwtPGfUE8l14/ostx2KMUPTFjrEk7pPG8efiofJjnmdaGLOfD6nEHZNE/r
	zIXgu7Hzz0EBA0sB/U/elpFngD723jU2RVDhtPt7aCkLw/q+dPHRTEWHrvxnDxPL4Rrf9scx0oF
	OBPD2/ecqg9+3SlO/MNcQlsoOgZ0xLJNQgQIVgTB3F9hdhQ49SeP02zlS00+FB6y6X2oF7wbNXD
	kKoJTgo3cQ3QyS8nOuv0wCKZ0ndrir7aQfyyNyUfPNX8m0yjMFaXwnvMgI246ni+pfDjGOLJPY6
	vI/8=
X-Received: by 2002:a05:620a:2685:b0:7c5:3b9d:61fa with SMTP id af79cd13be357-7c69072a6ffmr2301576285a.26.1743603647700;
        Wed, 02 Apr 2025 07:20:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IER6WrRBqjM3x6rtOW5O3fmd1tFkam6VMOs9xv543bktN2RGF5eKxROMpj0zYvG2nH7flGq/A==
X-Received: by 2002:a05:620a:2685:b0:7c5:3b9d:61fa with SMTP id af79cd13be357-7c69072a6ffmr2301572085a.26.1743603647316;
        Wed, 02 Apr 2025 07:20:47 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b0957fd8asm1639781e87.134.2025.04.02.07.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 07:20:46 -0700 (PDT)
Date: Wed, 2 Apr 2025 17:20:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Christopher Obbard <christopher.obbard@linaro.org>
Cc: Douglas Anderson <dianders@chromium.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Johan Hovold <johan@kernel.org>,
        Rui Miguel Silva <rui.silva@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 1/2] arm64: dts: qcom: x1e78100-t14s: add hpd gpio to
 dp controller
Message-ID: <qaihakhkbsgij7fvuutimfl6g3wgyt2nmrmrudef4q3oe4kluq@o5yeimais3dt>
References: <20250402-wip-obbardc-qcom-t14s-oled-panel-v4-0-41ba3f3739d0@linaro.org>
 <20250402-wip-obbardc-qcom-t14s-oled-panel-v4-1-41ba3f3739d0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250402-wip-obbardc-qcom-t14s-oled-panel-v4-1-41ba3f3739d0@linaro.org>
X-Proofpoint-GUID: _GhdH4fLri7k1vtPFnrBxZ6ZKh0MwfGk
X-Proofpoint-ORIG-GUID: _GhdH4fLri7k1vtPFnrBxZ6ZKh0MwfGk
X-Authority-Analysis: v=2.4 cv=J4Sq7BnS c=1 sm=1 tr=0 ts=67ed47c0 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=3v6bRUsi6CVysc_G3k4A:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-02_05,2025-04-02_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 clxscore=1015 bulkscore=0 mlxlogscore=935 malwarescore=0 mlxscore=0
 spamscore=0 phishscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504020090

On Wed, Apr 02, 2025 at 10:58:32AM +0100, Christopher Obbard wrote:
> The eDP controller has an HPD GPIO. Describe it in the device tree
> for the generic T14s model, as the HPD GPIO is used in both the
> OLED and LCD models which inherit this device tree.
> 
> Signed-off-by: Christopher Obbard <christopher.obbard@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> index 962fb050c55c4fd33f480a21a8c47a484d0c82b8..b0dbe4eaa77e5a6f862fd0db2a3c91db2aab5030 100644
> --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> @@ -975,6 +975,9 @@ &mdss_dp3 {
>  	compatible = "qcom,x1e80100-dp";
>  	/delete-property/ #sound-dai-cells;
>  
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&edp_hpd_active>;
> +
>  	status = "okay";
>  
>  	aux-bus {
> @@ -1215,6 +1218,11 @@ &tlmm {
>  			       <72 2>, /* Secure EC I2C connection (?) */
>  			       <238 1>; /* UFS Reset */
>  
> +	edp_hpd_active: edp-hpd-active-state {
> +		pins = "gpio119";
> +		function = "edp_hot";
> +	};

This looks generic enough and can go into the SoC dtsi.

> +
>  	eusb3_reset_n: eusb3-reset-n-state {
>  		pins = "gpio6";
>  		function = "gpio";
> 
> -- 
> 2.49.0
> 

-- 
With best wishes
Dmitry

