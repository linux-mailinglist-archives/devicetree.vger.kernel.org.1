Return-Path: <devicetree+bounces-94198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF049544BF
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 10:48:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 736D91F23747
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 08:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF82513AA53;
	Fri, 16 Aug 2024 08:48:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zyNo1u68"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D9D1386BF
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 08:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723798106; cv=none; b=CvN3GzeTKjG5Mj9W8oDmNpDdIt46nQX6jnARBNAzVLwsNskYcrvrFUTYJhykQT4R/NYU+vjsOd/jFdS4k8mOnWQGQ6Tn9hnyvPjsnRRaAFXMit17cALRLVV0jt/Xg4WQQUyZIhhqcaZ6aRI5HbSGEcN37QDqEWyP+yi9M/3GiHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723798106; c=relaxed/simple;
	bh=5GDrt8Lzrjd+AR2vAAvvIuyq2HwfCThB1/LZluNapgU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=PeW/QiB2g2oRQV0MdkGKEJXBEiGLpQ9yVEgNyuG48svBfliGjCMBu84zFXD0BL8o9cYD6L9VjJA+FaMdKJV5PRb31KEBeK6uBhaE66c/11dKBR9xX1OpSVBGvFhN8tKGrhBXLfdUuqgVrEsniOdboB36pQYrghIBvFp8Zeq+TgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zyNo1u68; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-429e29933aaso11887585e9.0
        for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 01:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723798103; x=1724402903; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gzEKzZjStMCmeFHAsJP/R1JM2+6vJvnRZ4aYO0fFizU=;
        b=zyNo1u68sOxYFHn7GrarlDV2mRcAnNjLCjG3LV1xFrEO88b817I3d6QYAfTyo4G3GJ
         Ilx0KV3zj5BsR0RI02IFfNOObn2t//YvxwTNLXfXOtXJ3FHaMziaf7MwEVtXc3clazoh
         78nKnPsTjKfu+r4csvDfrY4T1J5jx6Zuicj7xwkup3XtNtY0zzXE3xBg8Y+PMNTM96Hb
         A6oouNkCvtuGrNyFHU3mXA/u8pm2Dpen4l3K9SH5AI9hAcFDjPHkWvvjhWltsS3ZRZup
         ETKmkiHbMCAZ9J149gVWRSVXeWuz6uc2PUANIywk7fpYkf/BFNj5bPMVaf67xFa2+xA1
         4cCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723798103; x=1724402903;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gzEKzZjStMCmeFHAsJP/R1JM2+6vJvnRZ4aYO0fFizU=;
        b=BdS5yJy6JNt1g7Elzyurz/os74yyoZ0Upg0xwAPy1Oa/F3YcU+UhO0V3zYVNrpCMyF
         rHmqXleIa3/A+e1PH2jL5MxawL0ZOJiKXwLOmQkYrltBeBRM9AnOM4dco5zoRESzM3dv
         u2in3wpGGyqlL6+6QOSdLCZDKabIG04QQkO2dNIjAINxyLjYDFPDW18ZWBZ+MnQ/YNq6
         Y4TjV4jCHTLY6eTxl4lF5YYHu0nP0RxhR8ITmJYkGWEt1x0UwAdYggXOtc2RhrBm2oF6
         /4MXfQbqhp7Qh2/EFmNdk43YBLk49k75T/JfzQ3KXD1kezBHVbRoFELSd3HYfJoJ7jok
         MbNg==
X-Forwarded-Encrypted: i=1; AJvYcCXl//FP4z7m5sp7EzCk/WXnaoGDGnJqAURceJs8m6vav7lARk/hTBBzDEA3pK8JvJKnuX+++o6hdT1yiQINJSFc/ByheWLd2vkBcQ==
X-Gm-Message-State: AOJu0YxWW3slj6Y3wS4jU8HORA6Z446EjdNWneRvBgiiDcp8Q/sYXK4a
	2Qm2rY68rU5dxW0cuMZvqQEmRLMU7/mNqd9cxwYGVre1fuH+3jVGbZsTf8z0XzyMv1uDFKBOZIN
	L
X-Google-Smtp-Source: AGHT+IFPv0yq6NX6L+cXWVvN2XvKmjQ+KJdc+y+gSJFqzCqOGbEFL3nruXs5RxgfKGmI/6SzaOhwkg==
X-Received: by 2002:adf:ea8c:0:b0:371:828a:741d with SMTP id ffacd0b85a97d-37194455f9emr1130106f8f.21.1723798102580;
        Fri, 16 Aug 2024 01:48:22 -0700 (PDT)
Received: from [192.168.68.116] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37189897034sm3160819f8f.67.2024.08.16.01.48.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Aug 2024 01:48:22 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Amol Maheshwari <amahesh@qti.qualcomm.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Jassi Brar <jassisinghbrar@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Arnd Bergmann <arnd@arndb.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-remoteproc@vger.kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 Tengfei Fan <quic_tengfan@quicinc.com>, Ling Xu <quic_lxu5@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20240805-topic-sa8775p-iot-remoteproc-v4-0-86affdc72c04@linaro.org>
References: <20240805-topic-sa8775p-iot-remoteproc-v4-0-86affdc72c04@linaro.org>
Subject: Re: (subset) [PATCH v4 0/6] arm64: qcom: sa8775p: enable
 remoteprocs - ADSP, CDSP and GPDSP
Message-Id: <172379810100.49056.9142213363913093777.b4-ty@linaro.org>
Date: Fri, 16 Aug 2024 09:48:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Mon, 05 Aug 2024 19:08:01 +0200, Bartosz Golaszewski wrote:
> Add DT bindings, relevant DT defines, DTS nodes and driver changes
> required to enable the remoteprocs on sa8775p.
> 
> To: Bjorn Andersson <andersson@kernel.org>
> To: Mathieu Poirier <mathieu.poirier@linaro.org>
> To: Rob Herring <robh@kernel.org>
> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
> To: Conor Dooley <conor+dt@kernel.org>
> To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> To: Jassi Brar <jassisinghbrar@gmail.com>
> To: Konrad Dybcio <konrad.dybcio@linaro.org>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: linux-remoteproc@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: misc: qcom,fastrpc: increase the max number of iommus
      commit: 42a21d00aac515fad1f9a10052c6e9710c6f7813
[4/6] misc: fastrpc: Add support for cdsp1 remoteproc
      commit: 590c42d9e278f8e6bf6d673f3101ac102369efc7

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


