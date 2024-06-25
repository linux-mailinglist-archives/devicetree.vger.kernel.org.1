Return-Path: <devicetree+bounces-79761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2EC916B49
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 16:57:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 477B6283A05
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 14:57:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 617AC17083B;
	Tue, 25 Jun 2024 14:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jurz5huX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A9DE16FF3D
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 14:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719327406; cv=none; b=ej+uHB7Z3inJ5kz8xGqlHCJEndToaI8oOkHZey+kkZ38k22t4blKtoAZ9eJVC4rp+tv5uVogvErgaMSafL6U0XPgA7t7gj01RDI2AmLeXLE/huzeUAvdnWUeClE05WBWUA1DIX7sGuTaOLH90fJRpUmacQ6R1EyOm44KjOe0RJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719327406; c=relaxed/simple;
	bh=02g7vk5T0e5Z8v8ECJYlSOWilAyou2KtRz8Usdht4A4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hBj/K97rTc9GtT2uh4vgNTkj7wHJghqrL50LXlOLSfwVN0z5WCEbST06/YRYqXK08SO4247zw7iDoK8AeYYfjyHhmnfhRw3g7DqZkDFDnatnM5ijne+fqhRyuUKtk0fMuI7osF0Yi7/MbGWS5Wn3RtzN7To/DJFKVWwZJK5MoCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jurz5huX; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52cdb0d8107so5016077e87.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 07:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719327403; x=1719932203; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YoReR8WhxNYuufCEGKkuq94jgMfndxltW+YaaMCsVj4=;
        b=Jurz5huXlVavTgzwnPoRxb1Vdd98CJ+o81snlBedO1GEHXHC4IqIc4FlF1Pqm7t9XK
         nXP/G+69srDmRgHGjZPja5SWx0MYnge4/omm0j1h8YPF41wKhTkUOKZM+AE/022wMhgw
         B+YjwEWFT7BwIEQAN4p5I5GXH3I7/Q/HZxenDXtGG+BogDWaAyeG/rHajDcBl/2EzdAM
         JBPHkOwsq4XWuUks70ZvXa3C//3egqt61yeKNrgWyBnvN+BxvkO7y81D1f8P2UboSroS
         Bv6KYpFjfB5+QZwaod94jiqEdSgTL7tVh/U1TsntUCNo5VR/weCvdvpbvhCkqCqAKrBE
         uPcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719327403; x=1719932203;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YoReR8WhxNYuufCEGKkuq94jgMfndxltW+YaaMCsVj4=;
        b=Y71Ws/bLU29UrUOSVvHvXtr+McA6e6pYuVcZvLCX4L0WFRcQzSNcDe+ChdCWclbaUw
         rrCb1KAbL3AeC+94WwG5w6EWKOyxFXPe+26tZOK0HAkuPor0Nd4NWWKLBBqthXg5WHYY
         dW/9mXDqVBdLjOIKdtcjGvuFmzAjUY0ZJr+6+3YFc6XZ4r6yLyr30ZXqAr8RMXHfnX8N
         FwsDGO5N+ard7zFj8C495rffxX7QRKRn7vhUir5A16NY7iCP7CkvmK6+41zquNqhbxqG
         Q7Ot8JOovki+I34BReXAAlQYxfNLPg1HtjD4AlH17QoqQhT/aeuvf5CI72TA9VWoasvo
         1kfw==
X-Forwarded-Encrypted: i=1; AJvYcCWn58ZpBkUbQ7VI2cbEyoYYXkJM5oX8vxDOWoete5NC9d5q1mQNPbYYL2MPNXDXnslelNADkk7qAUALigjq8iq0y0YgZWEabpZ/QA==
X-Gm-Message-State: AOJu0YwAX/dcUIfRMjGT8wleOsWZPukvDodHoIDBImXHwGLsLOOfwbwS
	EE9hL+Tw6TkCljY3kGmNHqb+FI2IzSvXT9jLYh59HaMbXr6A1RW4JEKQkFU5ewc=
X-Google-Smtp-Source: AGHT+IFXgEFFBEekYez/olxWlhZlgktM2joEiS7S4E8YauuUuTtTSsmoGuQvl2CGNP1XEWUsmnVA2Q==
X-Received: by 2002:a05:6512:3c82:b0:52c:dbe6:f5f9 with SMTP id 2adb3069b0e04-52cdf7e6735mr7608853e87.12.1719327401997;
        Tue, 25 Jun 2024 07:56:41 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cd641f655sm1257321e87.162.2024.06.25.07.56.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 07:56:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krishna Manikandan <quic_mkrishn@quicinc.com>,
	=?UTF-8?q?Barnab=C3=A1s=20Cz=C3=A9m=C3=A1n?= <trabarni@gmail.com>
Cc: linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	phone-devel@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Daniil Titov <daniilt971@gmail.com>
Subject: Re: [PATCH v2 0/4] MSM8937 MDP/DSI PHY enablement
Date: Tue, 25 Jun 2024 17:56:39 +0300
Message-Id: <171932736812.1437673.1282826360877883479.b4-ty@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240623-dsi-v2-0-a0ca70fb4846@gmail.com>
References: <20240623-dsi-v2-0-a0ca70fb4846@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 23 Jun 2024 22:30:35 +0200, Barnabás Czémán wrote:
> This patch series adds support for the MDP and DSI PHY as found on the
> MSM8937 platform.
> 
> 

Applied, thanks!

[1/4] dt-bindings: display/msm: qcom, mdp5: Add msm8937 compatible
      https://gitlab.freedesktop.org/lumag/msm/-/commit/c94dc5feb494
[2/4] drm/msm/mdp5: Add MDP5 configuration for MSM8937
      https://gitlab.freedesktop.org/lumag/msm/-/commit/13099cb03f98
[3/4] dt-bindings: msm: dsi-phy-28nm: Document msm8937 compatible
      https://gitlab.freedesktop.org/lumag/msm/-/commit/60bdbaaf1220
[4/4] drm/msm/dsi: Add phy configuration for MSM8937
      https://gitlab.freedesktop.org/lumag/msm/-/commit/2df0161959d1

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

