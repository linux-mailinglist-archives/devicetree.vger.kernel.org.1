Return-Path: <devicetree+bounces-161377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7557A73DE8
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 19:19:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 837857A7447
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 18:18:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FB3821A437;
	Thu, 27 Mar 2025 18:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cd80CeK4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8EA13D52F
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 18:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743099547; cv=none; b=pUAFdsKWImUkvq4HHjIpEE+SIYobToMxx+1nc5dHmRL713tzcYA2H6L4fs92kzx2EuBF3oYHz7o+ZffxwdIURWNPScntO0sFZjD6UI2DuC8QBQpfBLMDI2tP5wXtciaR06ZXYDUVzbuJaXS5a++KL4vFspCgIHMFpyHBfMns/uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743099547; c=relaxed/simple;
	bh=CtkyQX/z/n7HTPErWxPkS8b/i8dkWmEA6pxKr8hewiQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DI9l3LGcXTh/95p2FWBDcMEDJknQQtFMp3ZR2V0spCjV1M+6qqQV5CJSxJZT0UVJOgGGG5lLfbxnkbLyeXg1HPMpJSPUsEgCTyZmr2bmDhxCVP4JbKP78MVuV1rG296hmlkYtyraM9ofjHPLI75zqb3SbH8++6sT6uDspQynd1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cd80CeK4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52REeEgW012429
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 18:19:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aoTWrCFaTivid1BuHrnm332W
	Z/Dokh4BgKZtGbAUu1c=; b=cd80CeK4WxWfMcGL07XRq4yDvenoVRFLslM8W+Vn
	ckjms+fSPzqemUOUQJRtBxuctGNdVGO1L9BNQyLvjpPlfiXEyPkgokhR5H/dk/M5
	GLCVUWn6ZC6ZVq7nKeMYyS27XB0tuz19kRkUdAP18PUqM+DGSBhqSgynKfJvApde
	MPzikmpiF28SPpvhMMWpsvjN39fCYhTU+BcxFXSaW4H5woL5i4c7EuvZ6Cabs3hE
	+AmnrfpYbulqD5UqFEuEOgBM20wtvieOJD6JPMgqwwiYwfqv+ccSZpK+VOYg9M9n
	PpOF0SeYrINNTNMDxBfL1Gn4hydgk6nVrRE7lDo75n6iZA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45mmutkw96-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 18:19:04 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e8f6443ed5so41709216d6.1
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 11:19:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743099543; x=1743704343;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aoTWrCFaTivid1BuHrnm332WZ/Dokh4BgKZtGbAUu1c=;
        b=HInOKNQPIKoM5Fh8QuH2v7k9elpiWWtG2Gi7Y4hbpQxEsEpKOOTXoloxOzvj7LD4rL
         kBTmkC/n9b9apDFVvEGE8c5XYx3qgIKsGm5a2O+gFS6cioUjDJFAC8IIwiCOXSgYSdfO
         gJCbfibmq7SpIRPSQ4gPiN99zX3smxOmtNEHEBl+q/lxt3hRsh21F5wzooB7DiZ/Kz2T
         woKndx/aqP5tLSXOi9se3G6bICQPBv5P7sgE4uPOvvlp9a0Qo1RITma+rAiaI8CHeaZA
         QNfLixtRrtElRjy8AqDqwH7NSiTieqnfajcxjJn2ME8GMxdU9Mdp1kwNhlFXuImel+/6
         wNDw==
X-Forwarded-Encrypted: i=1; AJvYcCWP/u9r5Hpgkj94DYMvFyOpLSx8JxKe15OquI8JVL86fcy8dNbqboUZWVfg2DFROc46HzU8jayvoTF8@vger.kernel.org
X-Gm-Message-State: AOJu0YxwTIfRMi/IziFWLIF2Hr9wOJwj0dmbSLFZUxFOkRzVhlGBLpIS
	DprxHYBhnAcB/VhuoOZNaFa+BIktc3jErCCx41WapE8JOJmUV5ZXbj1YytLXpDrqUc+JA1n/0FC
	iLOF8ddWvCTHgL6LWAIkVAnR1WiAX5oM+tUu76KbS/fR3nXWTO6R+lSj6jfnO
X-Gm-Gg: ASbGncvdmFnWbx0umuAvnnzTybne7espkxXOkblMVxBYFS8TLxXE3V1bv1i+67C4vO3
	VnfeAwICbQaZMECJlepgiPAam15LWyr2yOMM90wm4RJYX18DNJPE3/2LOysfGNVs/zXSWbhhCjI
	Z7trNTaf/QNC9gh43ci1Y9BGTIl1YRya6UlAKSoAoVKpQTS3f41fp4803/8KNNB1Ua/+wkgghbX
	a0gETlE4qa5ktrsJWI6L47bzyeltb/gdBKr4HFmOrYfRv6c4UdslaQQU+YSglu4IvXupHtZ0Qw/
	f6G1idB0fCfSC0PbcWoLaqStdGlYSKWAdI0Mi7eBhC1q0dGmWaI4G0ZmM3tH/6rYIdOmJFS2DWE
	dsDY=
X-Received: by 2002:a05:6214:acf:b0:6e4:5a38:dd0f with SMTP id 6a1803df08f44-6eec7a1c135mr19080456d6.4.1743099543429;
        Thu, 27 Mar 2025 11:19:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9dDznt/s+L1U6PUheExCjDdx3yIKXC/gqQ9LPSRjyQx/jUB8el6fToX37owEQAfsVb1ktvA==
X-Received: by 2002:a05:6214:acf:b0:6e4:5a38:dd0f with SMTP id 6a1803df08f44-6eec7a1c135mr19079606d6.4.1743099542867;
        Thu, 27 Mar 2025 11:19:02 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30dd2aa891fsm329301fa.7.2025.03.27.11.18.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 11:19:01 -0700 (PDT)
Date: Thu, 27 Mar 2025 20:18:58 +0200
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
        Abel Vesa <abel.vesa@linaro.org>, devicetree@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: x1e78100-t14s: add hpd gpio to
 eDP panel
Message-ID: <72ku7mr3mhaeq75tbqnib5xqq3nectjf3mukznfnllbd5i5kpu@fdvvrvqj4stk>
References: <20250327-wip-obbardc-qcom-t14s-oled-panel-v3-0-45d5f2747398@linaro.org>
 <20250327-wip-obbardc-qcom-t14s-oled-panel-v3-1-45d5f2747398@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250327-wip-obbardc-qcom-t14s-oled-panel-v3-1-45d5f2747398@linaro.org>
X-Proofpoint-ORIG-GUID: zEyjknLaWDK9Pjheyv44bO0vi6uczVaK
X-Authority-Analysis: v=2.4 cv=MqlS63ae c=1 sm=1 tr=0 ts=67e59698 cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=sU2P-X2MzWrGebKF_qIA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: zEyjknLaWDK9Pjheyv44bO0vi6uczVaK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-27_03,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 mlxlogscore=937 mlxscore=0 bulkscore=0 adultscore=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 phishscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2503270125

On Thu, Mar 27, 2025 at 04:56:53PM +0000, Christopher Obbard wrote:
> The eDP panel has an HPD GPIO. Describe it in the device tree
> for the generic T14s model, as the HPD GPIO property is used in
> both the OLED and LCD models which inherit this device tree.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Christopher Obbard <christopher.obbard@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

