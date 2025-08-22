Return-Path: <devicetree+bounces-207985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BF99FB31421
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:51:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F5675C729F
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:47:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 704612F60DF;
	Fri, 22 Aug 2025 09:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TRSmB/xr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA2E02F069A
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755855610; cv=none; b=fDIgT6OiRk0plwAt/fWvWDIPS7zBcxaWEXkxqEFeYyiBpsQGCnONAUIkQFum/MMlrsDqGN7+QLZTs1sct8lC7DauSvKkPEdcBnphHqsy5rX4ubUK7Ho7QhmZ7hhzLNFGwPStgWLOWH2UbrNiXMEb7b9L2Grbl9/oWx56lvzBPp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755855610; c=relaxed/simple;
	bh=lIUkbswluaNGEOmoCj8P6as4N+Tbky1oBgaIwtQGQPw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bhHwvKmkPki4GGyqLe/Dmck/9AcenMeU366LCz9IQhwoidYOcoAEEVqED13YsZgccQS3bjGcn2nYu79KbXA1OmiAj+h9Z0estdu3FiUbiYnVZ2i+XWs8WH5uozb+mEkC09wDjS7GjyGMAK7n1w3GEY/Or1pw4CKJ/f9RXruDAdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TRSmB/xr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UNJE020900
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:40:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VV7HnwUdWb8prCBSAo17ohhZ
	8QKgiCBcGSc4d+rF/hM=; b=TRSmB/xrAXBqB4KJmfM/PN9j0xjMrJyvkDh8szGo
	nodzoV8yfW8YY3Zg1d0WqkKjIGc+lKmgFmT/qzCNHDHyIiBzIMz+a1RWN26Qlsgj
	0FPCOfm20ozp6AYTPV1l8kStgfSoVH92KtQ50oEJY9ttaGef+EtqL09OM4gc+A1Y
	WW35SJUa72OOzmYfD8bLdanWysEcMmaHlSTphSE3b6JaRg4TxxGdSVaxU92vJnlF
	2G/TDs1nE3w3LW8Wj3wVGbwUyIi/EoINOhWuJ1X90wEFtMPtbuW/QFJOkGamYN+3
	f+tgUaSsUS/IFqv4JUVdJo//ZsNmxABxS680fIIPmxFgPA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n5290rcw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:40:07 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70ba7aa13dbso46296846d6.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:40:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755855607; x=1756460407;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VV7HnwUdWb8prCBSAo17ohhZ8QKgiCBcGSc4d+rF/hM=;
        b=Z9UDyzpQP0ShCAX5ztTIxzvoabgVB57p2Ad7xCQNNyMZwFUhviD7aohx8WM9nr7P+p
         RHC7aIT83TgC1e/spc9PGY0Ajj7yPoY67RYXQpxh7sPMTyIpDo/A1fzyloRi2ApAVMz7
         hBlgg4bSyBkEbnvdtcIe+EbVzBU4GH7sskKZBy8EZ0MMmjsgQrZFvQaXz9pf8GQpjtV7
         qC1QtEeayZxB5ru7I03qJJwTnXINUYMfCfL5u4EWDQYTq0xgYvfQT5942RA1uBpmZ8dX
         jd/pbI3WfkXVuPynkVxBXkOr4zF80Gi2fPTPOjw8KAJa1KfQbAJB757HTGOtjWKFHP2r
         WsTA==
X-Forwarded-Encrypted: i=1; AJvYcCU7PqHXPIbmUZLUA00NDLdFkndiohinWQoIW/63k09EHro9PLumUSvq8KO5O9noDoYJYQkZ8qOcx9YZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzJe27HxeKbYf9QgRry6f0INvyKu2CQMs7YEGNYCXLbDu2Vovsq
	m4TzeVw6wBmwRM1QPxZ5vPKoFBXXgZQQcNYLiWnHgAbP9PJeBaOqo/rr0wUamKa6gm85qDvhbfx
	8mIMjtDQwrrGlodmVozlRZVMppnB8E81v+K+9pp81i1qHVWgNqp1TUbCsUKOn1zvM
X-Gm-Gg: ASbGncts7ssOjQObE158NC5L/0LqUguGs6QEJrSxQkfcs11WSYxElC/bs1sqwpRhdra
	7s/sSdiV17kh6Y7ne/1Czkt9VNLqjaMXYTOmC+JEcAyEn/+C2r4dLP5GCmGRDqu8oocIjM8QDG8
	nNEWG9nh/Z6zqyUHCh0FUtyVD8LlgqLkhV9KDuqblBSqCSg6IpjsfIU31w/LnPue6hmxZMy2smT
	4i3ou6wIW2eajJnxhsH8F/JBMGI1yuKjhrAUKzTQtHBSYA/o4cRRK5Kd1uWCnoXFdJa1LwEIa2F
	HW4ZKTyPtmv/7qYezQgCU4uTrgrdVuVXEnU+dO/uThGfPHT9u9aml1IuQrUsl7pPsTxIBy+R70l
	yg5JPjRffULzXAoBnSz5mFJV262oC5akzim6AbgY0J624NWwBGAK3
X-Received: by 2002:a05:622a:189c:b0:4aa:9393:7b5b with SMTP id d75a77b69052e-4b2aab040a2mr25803331cf.41.1755855606669;
        Fri, 22 Aug 2025 02:40:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH53o6I0qmMpe1oyUujgaG5094XRKhCUXHnIq2XRcCeX9iOx8jJKUM9cGhJutqPObJLZCzwig==
X-Received: by 2002:a05:622a:189c:b0:4aa:9393:7b5b with SMTP id d75a77b69052e-4b2aab040a2mr25802981cf.41.1755855606100;
        Fri, 22 Aug 2025 02:40:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3cc6a3sm3532145e87.102.2025.08.22.02.40.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:40:05 -0700 (PDT)
Date: Fri, 22 Aug 2025 12:40:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        Abel Vesa <abel.vesa@linaro.org>, Xilin Wu <wuxilin123@gmail.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Srinivas Kandagatla <srini@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH v2 01/10] arm64: dts: qcom: x1e80100: Add pinctrl
 template for eDP0 HPD
Message-ID: <kpacd6jtwlf6nklisn4yboc7dp2vxwuo5udmqkyhuovbn6sfzp@o4bldflclwdu>
References: <20250822-x1e80100-add-edp-hpd-v2-0-6310176239a6@linaro.org>
 <20250822-x1e80100-add-edp-hpd-v2-1-6310176239a6@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250822-x1e80100-add-edp-hpd-v2-1-6310176239a6@linaro.org>
X-Authority-Analysis: v=2.4 cv=I4c8hNgg c=1 sm=1 tr=0 ts=68a83af7 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=A2_dyhv4GGI_orQju9gA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: MwOfRzvUwuF_uF8DpHYU6t6-A7b7MtFp
X-Proofpoint-ORIG-GUID: MwOfRzvUwuF_uF8DpHYU6t6-A7b7MtFp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXx22sx4OJYGxF
 hHC15PafIFWYPs2YQyIxIZtrjp5OC4BGIvkNlLd/fnrLJxXVMmCIpc7Q6vAd4YmYyeGxr8bhdbl
 /m78eDH6sBVN43oTRAi53+GCC9hNxjXbqYA/NV+AWk0EG1bNfSrOd/EytyGceJHx0FpzsbKg3On
 Yb7g9CUvt7E0jVPN6xX/LRX6O19NFIQurpMXs9CsVdhK+RonOMdDVgcHE0v5I/jbvPfZMEy4gcA
 hGWsRnCiVJgeZy3y8RJzqa1jKgvsy46RUTQxNyLe+E0lMeYWsCNGNKZelXMAsHRICfBmJ5L9j90
 7FNvieLl2PPBoccLOM2LMYBzXxykW6BoXN0iNsDM2xfomvvLSl4uqFfpG9r6oMwjIdyLpu6VYRS
 oL6Wj2oLIcZFufaKcdC3WFLjSgkpbw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Fri, Aug 22, 2025 at 11:28:52AM +0200, Stephan Gerhold wrote:
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
> Add a new &edp0_hpd_default pinctrl template that can be used by boards to
> set up the eDP HPD pin correctly. All boards upstream so far need the same
> configuration; if a board needs a different configuration it can just avoid
> using this template and define a custom one in the board DT.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

