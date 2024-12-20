Return-Path: <devicetree+bounces-133033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 247449F90EB
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 12:08:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 83211160BD8
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 11:08:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D78BB1C54BB;
	Fri, 20 Dec 2024 11:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ujXj5g1y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDE71C3F06
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 11:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734692907; cv=none; b=N6d6CX8Z5+3omLmIh4i2+v25zCe3buzarpuHn0JDP1ozQCqQx08BC/+j5ejg6G4msZdQAmP23vLeY+DLDooNZhbTIQFIdPBG7YH63ld8QHe76YOIMiAWDmI2f/rewI1fbAXC6xZtmZ9nYayBSWWF4Gu6E6XVswNj+fh0xRB76iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734692907; c=relaxed/simple;
	bh=yhLaGKykZ00Q+mn2A/nwp/yghbBH5xrl/kyUiRoi5BQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=BXNEcnt9CkCOTWv6FrWcfs/+Lil897U4S24ktmoGWFng1X+7a2OtN06R3OE6Io/UbmEtFGTfxWIV8vGJvP3lU22ng8cWZpGkPeo8nm/7E2rIVtGsOumgQnZnt+/gSj7VYRWq8ahIb1jjTDFfRX3+NnAhKhVNMfQRk8CTbJJqOp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ujXj5g1y; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-435f8f29f8aso12890625e9.2
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 03:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734692904; x=1735297704; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RRlKZM9qNPWGnJDtOfs4An0xeCPtJ9CUcGhq8wuSQ8o=;
        b=ujXj5g1yJ3ROqd8l8B4GPP/AMUBMYfFjohJw60bSoz8AWw0Ab6KWS9NsIjWlHHVK/+
         VqJ9amF+5pamk//aoJsXhrOamduPyyxnUYdIQDuU612r5ksXLshQEbxjjfru2av+Ha8m
         b2vhH36JDSKaDbXGwM8uw+gf8lU59QmP56iXHo832wOONR1bhxRTLzGBi8QD3XH+Lz4W
         j7lQkcYug3WmWOWm0QL6KteJDefp5UG4CGxOCwrOxRqA76MKI5ZFIXQ4Gipw20ztjEwY
         mc7ZZCEKvXdcjFKyxMDnEG59zn+JTr42BLJu3qoZ22gwHS0QcuVZAKnn81JzkwKnVS9l
         8KPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734692904; x=1735297704;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RRlKZM9qNPWGnJDtOfs4An0xeCPtJ9CUcGhq8wuSQ8o=;
        b=R3eX95Hm22dGknr3/btiUwbgmXbPHh3BiT9rvJL+P6uB8GPtg1rD2dQ1HTZVsoSgGO
         GrSwz66LmBMxsRXByiQPoj6++K89V7VckG5X6J+DCb9c9mgZJNNIkJpGxvpjsMxA2xcs
         qxT/KoxubTKVIvVzseOktW59mXmrkrhOQVfi1DfZUKN4IdEUB9as9MUp9VkkjR6S8hi4
         sRWBYtfmSkgxYHkMCRFcEzFmhp72S3oQT8CeFAi/bjP6+FFWy6MvOVTu1WsxydfNNV/9
         psZeSVLc9U6H+k739kj8+gpxnDuYe/HMwxNmSYfdzr9go4A2EPjs1ddzNQnasx62hbv+
         oF7A==
X-Gm-Message-State: AOJu0YwD5PVrMl8grniXemmJJ/aLYhlaFPEBP03VW0UtDpWm5Rtr+QQf
	FZ+Sxuzx7JAqRntefe7LJUa3Mv8JC633hphQ4vRXGjYVsuCzllaMkeVESk7ecYY=
X-Gm-Gg: ASbGncvwLXiBcBoIUtmYYNKk7qBtf63S/Wiedm4KAq+ea+LsoA4kEqTNEUkKx+pSjrf
	sRjCBr7dX341FbjwwU3MEdkWyDsjA355Cx2OQnnnEISyyi68v0sNrmE+FXGrUEWWtyz9T7QiZnL
	omJrlqWeNAldKbxMt7NC+XRctZqviRai0CFx3IpXte4Hng0YWecoJK0t3Li7UGIp61hhh18vjtb
	iv8SeWZhAIcvcqnbQfLYM2a+r2BEiWHR0qP4PN3atbOmLDzcnhA2rYSlkEHMCpkyr3fx9PkSkpr
	Pw==
X-Google-Smtp-Source: AGHT+IGTAF/pSzj3LXM93cmPXKO8xYXLPXZ1OltvUVzzoFgW0rtLniEfWzrVq23Ex/thwwxNlcSF1w==
X-Received: by 2002:a05:600c:46ce:b0:431:55c1:f440 with SMTP id 5b1f17b1804b1-43668b7a2cfmr21846865e9.30.1734692904262;
        Fri, 20 Dec 2024 03:08:24 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c8474b6sm3790616f8f.51.2024.12.20.03.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 03:08:23 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, kernel@pengutronix.de
In-Reply-To: <20241218-topland-tian-g07017-v1-0-d5e411c199e3@pengutronix.de>
References: <20241218-topland-tian-g07017-v1-0-d5e411c199e3@pengutronix.de>
Subject: Re: [PATCH 0/3] drm: panel-simple: support TOPLAND TIAN G07017 LCD
 panel
Message-Id: <173469290291.3312755.5329965308965600351.b4-ty@linaro.org>
Date: Fri, 20 Dec 2024 12:08:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Wed, 18 Dec 2024 20:44:57 +0100, Ahmad Fatoum wrote:
> The TIAN-G07017-01 is a 7" TFT-LCD module by TOPLAND ELECTRONICS (H.K).
> The panel features 1024x600 24-bit RGB pixels driven over LVDS as well
> as a PWM backlight and I2C-connected  ft5506-compatible capacitive touch.
> 
> This series adds DT binding and Linux driver support for this panel.
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/3] dt-bindings: vendor-prefixes: add prefix for Topland Electronics (H.K)
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/bd2f80c16f33f5d2abde1e23bfc06dc637259a56
[2/3] dt-bindings: display: panel-simple: Document Topland TIAN-G07017-01
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/3e743df4722c24f021143977335649a0f2e1311e
[3/3] drm: panel-simple: support TOPLAND TIAN G07017 LCD panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/652be03b54e042d229fde7d086655c24b7146924

-- 
Neil


