Return-Path: <devicetree+bounces-131182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C597C9F2420
	for <lists+devicetree@lfdr.de>; Sun, 15 Dec 2024 14:11:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A5145165686
	for <lists+devicetree@lfdr.de>; Sun, 15 Dec 2024 13:11:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A0561922F8;
	Sun, 15 Dec 2024 13:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JGolfYKd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9587C191F7C
	for <devicetree@vger.kernel.org>; Sun, 15 Dec 2024 13:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734268256; cv=none; b=sz+zbV/SYKcZ5cZI/+CibZwDCNokaXlP+rqp1n6aYPIA9AKJ6N+Es5Vfb8fUsikM3qwczQEbY2Xgf2oYBk6OfhiPfOUjcsPNNuSDomtPUcvli038yvlHAwuuVHcU0CS/rIFq40MwPGx0suNwU8BfJsbR/ZJqkoLLlzsm0OFkTNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734268256; c=relaxed/simple;
	bh=U03dIrrAWHFMBB0BUbdkuumkA4W+flzASCUPJglUjTw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mXPJlIACz46AFMEdJmt9Y7weJt+mCuUq227y8d+eI42hZ3t8ZgAACgQ7ztNYUnKeQ/uKZ+FRwEDdekn763KFjDOYkJRZAHfVThO7SVYmjXMJ7eBgl1z1uDme09pI1SV7c1MhLzCq8wbiqwfbQetaIdRJ1HBMOEk4AK/tv50mFrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JGolfYKd; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-540218726d5so3369815e87.2
        for <devicetree@vger.kernel.org>; Sun, 15 Dec 2024 05:10:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734268253; x=1734873053; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i6RCpuSvue4hpoUhHcSyfcYpwTRHbw1RA0jucyvWPrY=;
        b=JGolfYKdSo8hVENDsAQNlZ0ySr0kVBgVgIKezZ3wztArdoT8Q9Vpo3PWvUi0vfdfFQ
         hDUffQCADARvxNkYft47d6gr7r4dETjE85TXC2Zn7zhGmXRqp4yr+vJI3cqjenvZtCwM
         3TIndKMZpNhL5M6uTLah0If6OvfP3QhIhfHuDTOAyHZDcbx4Ew+3inUC5cto/H6b8vuc
         CvcjfLHwEJWLabWPCVSNnLZMsQe3wOrSjgDotQ76XZj2AO7mLRIbfa1tk9LvWLb43Mtm
         L89HTQZtw7oYemRB5v22ErV3PjWj6xcesl+P3SNmyjFQODvQ3no7RSSc+h6khA1RXTRp
         Iz6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734268253; x=1734873053;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i6RCpuSvue4hpoUhHcSyfcYpwTRHbw1RA0jucyvWPrY=;
        b=T5WuFCy0eXae7Th00TsV403HxU0BCgkd6JpIddR5mPo5gHZc3zFzW/xC2OQuWYHAYT
         kugL2apEi+ztfdGR8LsEITreMDKaIQtAN608LhKrz+7x9SBVaNF2+gmv/FpD0rGK2j3e
         s2mE/eJjDtKTtFqk10EF+vEZtc55TP77Za3DCbQMrjE7hGnj3FXOKVor9asQIktM5XOY
         1Nw3D4fOtABBkXXSASzOWyODzTesRU19rHMtLJh7Xf/3QUeL3nJmZiwQjE7xDdeLKmP8
         D7+c/UO48njXujjHBpa1tdUPJWjvVO4GARKJSu1f4kulep9mmJWYjOnlzDvcq3RQPsdV
         5IcA==
X-Forwarded-Encrypted: i=1; AJvYcCV2xpYgY/LKA4mK8B4aDB7VMu7jmdNWo7tYUzpF/+N8AU5NBH9sFbkKtma4e6cousMTnnw0bTiusxcQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxDfCZJ0HGA/hPsUZDqI7bteywT/rb3wZ+BzkKO6PQPQHmsYNMC
	SSRbYC1+ljnWWrExRcMkk5U1YUrt1v83UhQ44kwpv1qdL9jh4ePDEkqnR1zibr8=
X-Gm-Gg: ASbGncvpj2JrcZdtUFkJoE+TlfCYfKwaGo3cm2UVzDVUga6SF60eMVakETj77A6fqhN
	gGM46mM/wJd3iuHojKjdb6OeiIczU4w1WzHgtcIYVrK3CwiMlHM6pE8rjGAVUUiHBCzKgpapbFm
	zDCFt5pY8uNln5CblWE2aBdshMy4nZHx/VFN2ce9k4Z/GLwiKpvCqi3PbgV+a1MP8vOGnH3T2n2
	HtY8ucoKRO5380N3h4dlxY3hv6n57cbL54X4ieHyTQ33iXRfMmhrxAH9ofSvjbBQME8vASR
X-Google-Smtp-Source: AGHT+IFU6V2+HMrRfVLaoWmqetk6W+EYxrP0DXnFOAt11x2SZ8DShJ5hEQO+8CJ4IDumWl61VcxjJw==
X-Received: by 2002:a05:6512:308f:b0:540:1b2d:8ef3 with SMTP id 2adb3069b0e04-54099b6d7c4mr2590910e87.52.1734268252758;
        Sun, 15 Dec 2024 05:10:52 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120c00262sm496316e87.138.2024.12.15.05.10.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Dec 2024 05:10:51 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krishna Manikandan <quic_mkrishn@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Liu Li <quic_lliu6@quicinc.com>,
	Xiangxu Yin <quic_xiangxuy@quicinc.com>,
	Fange Zhang <quic_fangez@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 0/9] Add display support for QCS615 platform
Date: Sun, 15 Dec 2024 15:10:42 +0200
Message-Id: <173426667308.2196979.11322859869026651489.b4-ty@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241210-add-display-support-for-qcs615-platform-v4-0-2d875a67602d@quicinc.com>
References: <20241210-add-display-support-for-qcs615-platform-v4-0-2d875a67602d@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 10 Dec 2024 14:53:51 +0800, Fange Zhang wrote:
> This series aims to enable display on the QCS615 platform
> 
> 1.Add MDSS & DPU support for QCS615
> 2.Add DSI support for QCS615
> 
> QCS615 platform supports DisplayPort, and this feature will be added in a future patch
> 
> [...]

Applied, thanks!

[1/9] dt-bindings: display/msm: Add SM6150 DSI phy
      https://gitlab.freedesktop.org/lumag/msm/-/commit/5902cd2212eb
[2/9] dt-bindings: display/msm: dsi-controller-main: Document SM6150
      https://gitlab.freedesktop.org/lumag/msm/-/commit/e9280f124b3c
[3/9] dt-bindings: display/msm: Add SM6150 MDSS & DPU
      https://gitlab.freedesktop.org/lumag/msm/-/commit/701da2861cbc
[4/9] drm/msm: mdss: Add SM6150 support
      https://gitlab.freedesktop.org/lumag/msm/-/commit/b8871563eb96
[5/9] drm/msm/dpu: Add SM6150 support
      https://gitlab.freedesktop.org/lumag/msm/-/commit/cb2f9144693b
[6/9] drm/msm/dsi: Add dsi phy support for SM6150
      https://gitlab.freedesktop.org/lumag/msm/-/commit/fbf937a89ad2
[7/9] drm/msm/dsi: Add support for SM6150
      https://gitlab.freedesktop.org/lumag/msm/-/commit/8a570c93fb67

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

