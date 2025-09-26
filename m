Return-Path: <devicetree+bounces-221912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E0155BA3FAA
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:55:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1747F189C7EC
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:56:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A56C82F7ABA;
	Fri, 26 Sep 2025 13:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q6lo/YR9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7DB199FAB
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758894838; cv=none; b=WV3b/6RVTfhjLVxW48K2ZUqAI93aGuOOuZzTZoHD5TnoVn/GvfaOb4RSz+XTtokC5d7PfUQai1TEZ4bf35FXKZs0yvGXU+1D5ZFR0Usr3nyplREW0DadENzmqNfuXnH7IgsScmAiv1svbHXhVw7HqzrA19iISlm7SC95Zxetskc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758894838; c=relaxed/simple;
	bh=Yxg7XGt5rPC+H81WWueLAVNGB2r99E4KrZvcInmqOII=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WVv0YpPpR0gycdlFdcMSk/eBT87cptaDYaHb2eyPVCcZ1BqbZ1AJTUxxHTIWsh08PjzBkyR07san0CXOMlcvwfAHClZ8f0eD4sQs64qB0nTtnFFFfjx59sLXPxvSNUjtk3/G9YQOoP3aXpHUtGYNAzOZuh4hj/Ht4l27cKzYxaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q6lo/YR9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58QBZv00032515
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:53:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Yi4YzfqCRhtpYtMSpi4c2pxv
	l7JbhY/mvPEjH/nHU/A=; b=Q6lo/YR9Xww7cyAqG2tiisx9896ylw2lmlhsi1kw
	ohTR9fLm5V8++Jwg6DlKftwyxU8ebwyPmtw3soLo+vY4/F9ttxvcrhDtHQNxZ2zY
	nbsGvln+/gULtI4PVzp+1z1xvWszL4ArwaJhGIUSWfkhjZAvyEloNWQ0bXyvoF1F
	p1+byedn7jC34PreGn9bOlTEB7B6jNgKG1/D7nuBuhNbwUxKtz00Qp/5gplFufs5
	z8aApQK0vHd7+PtPeKCTAKwjEX4rXbLvb4Yl3sIlnJuMdLNJQPnTowtr5VoJxVEa
	bKXXNrTASPK+FmJZNFw9VXEY7nQ5LNP0umsD/SUtD6VNcw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49dt3g8b0r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:53:55 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4de23c3b40aso12407001cf.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:53:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758894835; x=1759499635;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yi4YzfqCRhtpYtMSpi4c2pxvl7JbhY/mvPEjH/nHU/A=;
        b=qvVhfo4ZqfhHVaeRYdaVSEMX8i4eCawQ3LDeVKh+vr16lS9uu58kzBVa6SGbCIvcAM
         ce65Fy6OzBfl+roQJsGcAGueuQN+0TXPEN0MxHD/tutHASgJ73WO1egG2OXH/HsIuywT
         Py3CikdMmIvZIrdtSmJuygkJ3UlgbqDk0BoYRHDTuFxmTYZjyOO9da+q5RW3UjfqcWDu
         HFlhoVSioyGJIGt2jhri5W+GFs0Vvjen7/5MOmLDiSSXkTCusbG5B4QJKfD6y+Vms/Oy
         qrMmwmA9It4LLX2yjqvpT7utVAlD0te54tY43JlF6B/U1M3Xu2f1ik/qMiWmokufCIOK
         h1vg==
X-Forwarded-Encrypted: i=1; AJvYcCVwz5rXENWryTi1p9bYiZ3N7tVZIrF1INZCPJM11jcMwLMD5HOAuHoB+v4d11hcYKE6NGfLsetfXtd2@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8XqQs2nsklUCWH4G3pXiX65llddaTSGw4dlNuPUs37Sy9mW0j
	kokrtbQpFZCAntmoFh8zm6XPizUmqoSTTPKvcivht7jilMNnTKWTT24qvEWZqwfYS5ZQKjXpCZj
	15yDi5tCJcgd3J/lB5e94ZMcqH5eveyFewt+FqoEtf6VIlq10duSpYnnKm6oFArzO
X-Gm-Gg: ASbGnctmy87L722wYzCSTEo9pmg7c2HAeWz5etV1QAlCEgkHwaiO96jUEaORpFlyIcp
	rfCq/1WF9aJyW0r/7VluncYALfGap+aP8SSyJrUz8UuMyNT7T502Ui3dAeehuX+Wc0JVM/0vXjF
	9Ig5qqpxR/kd6/msJasc5cHtREdqgjMfAo9uZ0hjWn4HblL5Xq4RITSV8jXBqTQmYI63b5ntIh5
	+i0aj1Vpixii2ADQ63AFjIXLuuOl61yMXlww81aHQYLZd279tcBhyA1MQf38/tkt5RSo6L62uwB
	PS33wzN8qnH8ycav2bdoSRK0rIZZeD6oRk/2U9FaTM2F3XNDoQZZnaMdNaJeUuaIJVDyhqsTGuC
	B1v9aZcSCXlpU6IS9NOCR2ySiKbJG2rRlEyGIWq2ffvwDga7MWgUI
X-Received: by 2002:a05:622a:4a8e:b0:4c8:79b4:93a0 with SMTP id d75a77b69052e-4da4b1406e7mr95494541cf.47.1758894834841;
        Fri, 26 Sep 2025 06:53:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGOQIkyN74txiM9v6NI3108EID0DXdgO7j0P2wRzxlXTBsHtrmHH2UgL3y0BBRZ8yy0boNzTA==
X-Received: by 2002:a05:622a:4a8e:b0:4c8:79b4:93a0 with SMTP id d75a77b69052e-4da4b1406e7mr95493941cf.47.1758894834250;
        Fri, 26 Sep 2025 06:53:54 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583173d1c08sm1814560e87.147.2025.09.26.06.53.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 06:53:53 -0700 (PDT)
Date: Fri, 26 Sep 2025 16:53:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
Cc: marijn.suijten@somainline.org, swboyd@chromium.org, mripard@kernel.org,
        abel.vesa@linaro.org, andersson@kernel.org, konradybcio@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        robin.clark@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        abhinav.kumar@linux.dev, sean@poorly.run, airlied@gmail.com,
        simona@ffwll.ch, alex.vinarskis@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_riteshk@quicnic.com, quic_amitsi@quicnic.com
Subject: Re: [PATCH 3/4] arm64: dts: qcom: lemans-ride: Enable dispcc1
Message-ID: <v4b35cmwbkoosdgs3d6ftml4yvdkyh27q65ssqojplb7uyniwp@wuxbeof7cikr>
References: <20250926085956.2346179-1-quic_mkuntuma@quicinc.com>
 <20250926085956.2346179-4-quic_mkuntuma@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250926085956.2346179-4-quic_mkuntuma@quicinc.com>
X-Authority-Analysis: v=2.4 cv=df6NHHXe c=1 sm=1 tr=0 ts=68d69af3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=bQGRJ9mVl6_deHTFyO4A:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 6qRnOy7SxwysJTSEVRSBKcElqg_gE9C4
X-Proofpoint-GUID: 6qRnOy7SxwysJTSEVRSBKcElqg_gE9C4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI2MDEwNiBTYWx0ZWRfX7yjZLG8s0lSF
 jvbchljXfx0RbALzaDFrznO8DIoUVoH6JXx/Uv48u64PztfBYKnQNBgLZLOZpuDVwqsSKUPjtoQ
 jNEo7XCblWDISFXhbKN4d1A+hKLphRxtd73cg1vw37x+Wiy4Aq/VvjIqWNx7i+0dqsLN0J2/zre
 ljbw/e3d36RZtxKt1EsXeSiTnYw/y1v9brxjzGlzm9G1nTDrsM/VrI4+wFdLTsO2b58Kv1q7O4e
 smK1zVNpmsRCFHLGOJCQDNPU2AJByY108Gh2JooQeWPzwEcJTpMo/gNicx3rgw6CbGXOaYFsu++
 AtsqkB2/14akR4esyden8HGgD9zRUL2xjnqp6+JkVlpbPWF6279SbCTzfpAc93KAIBbk9HNX7Ye
 KiWyqgQe3B9jIq5JlXQ6BqOmKZfHSg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_04,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509260106

On Fri, Sep 26, 2025 at 02:29:55PM +0530, Mani Chandana Ballary Kuntumalla wrote:
> This change enables display1 clock controller.
> 
> Signed-off-by: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
> index c69aa2f41ce2..d4436bc473ba 100644
> --- a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
> @@ -436,6 +436,10 @@ vreg_l8e: ldo8 {
>  	};
>  };
>  
> +&dispcc1 {
> +	status = "okay";

I think this one should be enabled by default. Unless Konrad or Bjorn
disagrees, please fix lemans.dtsi.

> +};
> +
>  &i2c11 {
>  	clock-frequency = <400000>;
>  	status = "okay";
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

