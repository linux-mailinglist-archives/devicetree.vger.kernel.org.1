Return-Path: <devicetree+bounces-184237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC18AD35C0
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 14:13:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 10FF51739A3
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 12:13:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2AF928F537;
	Tue, 10 Jun 2025 12:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x2m+D85o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD4228F504
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 12:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749557585; cv=none; b=YoCZTJmgSrpS+dZ8T+wZZkIBCo9wLgA7eUYNmYQKEle3qR2KydI4tTMfBbPf1B8f8jdTn5/ZEKGH5mDNeptmge6vXYjfHQxWB2hLwGirUCJVJjwNmz0OgvHhXpa97NZsAexUx7d+UCnY5sbmR5sWe8XWp6KocrtabR2xlr9GAnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749557585; c=relaxed/simple;
	bh=YM5cOjvkImDluNeIECuvYCT7f/hhSLiCc5Z0btqYPAg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Hrqpr2IoK5Jy/5qwUaHYQXflxyeBNzQH5InR907CrWCoWWB882g3lDBHU2CcaqUuXkrzjva4GVQZ29qMpqY2SLcXsShSanBgapDX1RpvNasYOL9CdYmJNA1RSwyZGPd+jixAZyy6IWJnL0uO87UY6CLdTn2vCsLcp/7VE6L1YDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x2m+D85o; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3a5123c1533so3040582f8f.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 05:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749557582; x=1750162382; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=le0aK+IVPXNrNAOYji4i4jCtbavYpjFKQlnb+jNZ6sY=;
        b=x2m+D85o5mtbqj9hivPGRkbFqF5QWXuoSPsMrkKBN+37PYHH4HH+0WiMRdc5Sdwpg2
         aihTIiVrDPdj7qHT3K6zUY93z+JmcgBKTS4ZHcINXUeFKnGyecv5shwY0NTFqMVv20z8
         jLett9yX+W2QQCHtQnffVldSyyQiE8NJBY5FuOWqWKY5d91YqUuVmCJJ+jLR4R+AZLiv
         /yNvOcOlM3InpcAQyZT+xPoN1maNoo6BHgmuzSkjppkHKPFILvrWXUnrNUya0p13pima
         xJWLA2L6FkbJpXzittIcnKKiRhzVlDvR6tX1eXyIzBD15QNLDX3IUgt5R5WaEAOcLbF/
         9zLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749557582; x=1750162382;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=le0aK+IVPXNrNAOYji4i4jCtbavYpjFKQlnb+jNZ6sY=;
        b=CFLKjHNNehrhikU7sr71b/TLL2I/2FHxSWn75IaeKQOamG6IvZFmGoFnjlvzqMV4v5
         Sboq3x7u7actlHNCIvwLhsDCn3XqjB7xIegDPa3h5IczSRRZN7g1IKUI03PMYhYfG0+G
         GITFlYmmKm3crbIKe0VcX+WSA5ezPOcd6mGtWNNBA06UCp48LoZYNvlpNmhWJ/6t/Rmm
         ViIcQ4HhU9CnhosfGKsit/oj/5AIqZwerI/rNi6PoYIai2+vMkx4svOR2/HzgBHmd7KM
         eLx95olAjwHBP6RlcRQ5pNjmOQ84TdyZuYaFc/lvR4bnrbKTM2y9uj+rwPwHodO6QrCV
         JwGg==
X-Forwarded-Encrypted: i=1; AJvYcCX9rY7kE4WO0zSSLEh6dTRspEv34tbNkKPbZXKMbj3iqrk5ZxKw7UoY5fyQMkvZx74ucpTRROszyrqz@vger.kernel.org
X-Gm-Message-State: AOJu0YxmLYatv3nHiJ7l6Kuy/ZcRNBK39A2I9u2tJvZLrXb4MvlHrWWM
	fmweuycONLsqfmBmOpFSgCf0KO8EiR46yDIA7ANqTmoLKHqyEyjbx4l8XjX3eksuOpPCvy/kw0L
	2bBabM08=
X-Gm-Gg: ASbGncuWJSSU/6U7IIDi6ZDOsuVEu0x1IMiU3hYlDk6Kb72M1XCchqZPbEVY8/82VdD
	l1XlcbRM6MI/7XHxZeMwaObDW0q+9kAaYcBMjpPnckSRCa5JwYGpP9SQNGGdVk8S3flj4BVO3sn
	swqjtRK6SHahqWr1pVeXSNI4DdhhpHTh2iVBEX4ggSVzOivSOT4G7YWfoFkWW0mDhr19zGN6LMN
	WlwhqYG3T9ecMAoFfqt3XdbrbOn+OUam388e9nM9jJwQluW+M/Yg29pHyxeaNesHrSFk9sxHkRG
	Jrv05MOyXZ0+y9Jv6CY2DnSdScYSY1BbdnETfcPjCtd2yrglU59ARuuW6TLjCK2gB557TepGKPZ
	Cn323M6kCqU2Z2lz51A==
X-Google-Smtp-Source: AGHT+IHtuwgbAB28mjkjsgeLFZ8wDfI2Y2ogosy9kF1ck/rOXLBqv8pI/FyeIKnEC4hwL0TCuba0WA==
X-Received: by 2002:a05:6000:381:b0:3a4:d6ed:8df7 with SMTP id ffacd0b85a97d-3a531cf55d5mr15185230f8f.59.1749557582546;
        Tue, 10 Jun 2025 05:13:02 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4531fe85260sm9841035e9.0.2025.06.10.05.13.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 05:13:02 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: dri-devel@lists.freedesktop.org, 
 Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: Conor Dooley <conor+dt@kernel.org>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 David Airlie <airlied@gmail.com>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, 
 Simona Vetter <simona@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, 
 devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
In-Reply-To: <20250608142908.54121-1-marek.vasut+renesas@mailbox.org>
References: <20250608142908.54121-1-marek.vasut+renesas@mailbox.org>
Subject: Re: [PATCH 1/3] dt-bindings: ili9881c: Document 7" Raspberry Pi
 720x1280
Message-Id: <174955758192.1700488.11354565917020465872.b4-ty@linaro.org>
Date: Tue, 10 Jun 2025 14:13:01 +0200
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

On Sun, 08 Jun 2025 16:28:16 +0200, Marek Vasut wrote:
> Document the 7" Raspberry Pi 720x1280 DSI panel based on ili9881.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/3] dt-bindings: ili9881c: Document 7" Raspberry Pi 720x1280
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/808d26afdcbf1abe5176261afbf945825652b748
[2/3] drm/panel: ilitek-ili9881c: Allow configuration of the number of lanes
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/2f7e4a6997362a929419fc352ad8f424143ae482
[3/3] drm/panel: ilitek-ili9881c: Add configuration for 7" Raspberry Pi 720x1280
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/29a9b3a504c0d18bcc7f0547371409e9dcbc045e

-- 
Neil


