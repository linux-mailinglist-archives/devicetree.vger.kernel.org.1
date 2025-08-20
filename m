Return-Path: <devicetree+bounces-207108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9803EB2E843
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 00:46:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 53D41A07D92
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 22:46:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E32092D24A8;
	Wed, 20 Aug 2025 22:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kxevNaGH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E4E229B2A
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 22:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755730012; cv=none; b=qtp92HN8jNtEd4LufEKZf8mWxbDyeBhCv2UH7hupcgIGTHhvF1Ak8P8UDSagGLVlKeU/PWjhbl46eJMuSi8bG3Cnull8Lm+cX8GiX65ZyO8XzRh1lSV8P/to7Mb+7fk5458WuqBC/RipAxO/Y5WNAQx6mkN1svX6r4Vssjmx9Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755730012; c=relaxed/simple;
	bh=KU3FTthwRowVMTVaTyLmf4pD6LnJDA7ySyBmSeT38Y0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fof3z0iM/zmwnO0rdIQK5coqdOdRgIMy82FJXlSg6c84XFIQf31ZAH+zL2eD8J0bce7/VGqitJ9xJ+nVxbWiLB8oBscHgERTmgXUJzogvWj9ovxXWZcyfrSRClwmhiw8GfQOqyVI4qUVPC0eWEmF11+RJp4kpDWXZ4fA/AXAX5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kxevNaGH; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-333f8d25d33so623321fa.0
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 15:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755730009; x=1756334809; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JEosG5JItKWGRoBCSGIzX/Bvhweg8i99hxt52TxZk8k=;
        b=kxevNaGH75PbvLtEkntRKNAaWZRzS4lcxyZbtcWUSJ/rChis/VcJSb0IVx9+vG3C5R
         SQ+eW1dhvMd4qjJDE3YlqFYRwt6bVkEQBOhVQSrvKejfCGK9TgYazD1IIwJjqJENbAA5
         gVqcphsa3w1SPCuR6YhtTm/Hl2IOQQeuwOmCg7gFjzoD4UcM0QenrsE4+az+oshMyc/M
         QZ4V+3bRunjRl6u4kab8TBiHb+tjHDFxT4fLA4CflPgAuA9vUbtaylPxz9PTm9L9t9sS
         9VczcZ2oCUk45PHNHYl6vPQMFsaGSKrMV8rW4YqBPqAZfK/HgWK0OHJ4WLA9TWTO+T0o
         8ntg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755730009; x=1756334809;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JEosG5JItKWGRoBCSGIzX/Bvhweg8i99hxt52TxZk8k=;
        b=nzHeGYcMrR+JN9H+9cQA2G6ka6u3do3U7Jvk5G3Mc/bJvnazbeDhKm/X+gEdf77fKR
         r/odJ2+5fl4mpCVYzrJbu3gLiar0Ya7BTlrO3QW2YbmkUkUjUF6dPafU3AK3PXTqr967
         DQTBde//Y167O3L30USSn7e4N9f5WWfZx0L2XVMNc4VPYG+oZ2eNQ/ufAGZcpUA2X7sa
         R7D45J1kWgv38OmSKTGMkAR8jImEkLN1Y63uQ432nNAJdY0dSpKDpGxksoP94A3sv0jF
         VJvOo7jgpkY/FjFpxiLnI0si9OngUFsRbJg7iL2H6QTqEqiHPfqpt/sBwnAukaIAgSxI
         7s3g==
X-Forwarded-Encrypted: i=1; AJvYcCWLZq9aMbQAKE6O5djA8BqJM+v2pDhujWbhOT//ugcri2OW8CY+HKmXzkzNtuL5m5pjmWQbv5B6/vQH@vger.kernel.org
X-Gm-Message-State: AOJu0YyRnv3vAkkwUHIWc4T2tURS4mMRMQqwBfjtG+Y+XBVSSAeUzIBf
	c74PBJiGp9tmOC0o41vrQc3cAx9SP9afodR50xt4WeGkN0oOJzlVz1K4A9ghoEMqQzs=
X-Gm-Gg: ASbGncvO4M7CCEf70Fz0JffFpZMwoT+Xbu1DQPbV98mW/OXqE5SmJpTvL4eJ9olW0xG
	TBc72UImeNCYMpmIJ5Kn5A2w1yhxUwZD0+VqowXfieJKPczC7giYjS5FwtDylmK3PeQ5RC/MiKU
	uhXQyLJG03f2KAmcEY4XUqTdcGTRFFdIGeqhGxDtmRf/FdmV+dZ+EHDx77GE8SDfxHh6wmrjNFL
	BLOQmSbnUcemaY6kLOe/fJyK3RXHwZO3SCtD4lnxRSeZ2TCmUi8TPArXYJYWVaASGdJO1tQ6Eys
	/jpjDaB1aFZ7ZPPF0yYtvYxfxozm7Z9L8L8183eWin69/Q+WPlRe4Fm4aHOMB6C3Z813SPUiVoM
	kUu8FQKAT7jkinAESx07noBflbS6IHjXmhIQhkTwsctfDHJimnBoxZVx4FDrMjyfNoJERb7M=
X-Google-Smtp-Source: AGHT+IHXwVv5e7hzXq6+sGxxAKQk4+ePGsrd92r27XTXWqW9kMRIUHXYKHdxw00pG61HTVR8I7yJkQ==
X-Received: by 2002:a05:6512:3d22:b0:55b:8260:3011 with SMTP id 2adb3069b0e04-55e0d5ae669mr84533e87.7.1755730009405;
        Wed, 20 Aug 2025 15:46:49 -0700 (PDT)
Received: from thyme.local (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3ccdfesm2841413e87.91.2025.08.20.15.46.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 15:46:49 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Rob Herring <robh@kernel.org>,
	Tarang Raval <tarang.raval@siliconsignals.io>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/2] media: i2c: Add OmniVision OG0VE1B image sensor driver
Date: Thu, 21 Aug 2025 01:46:44 +0300
Message-ID: <20250820224646.130270-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

OmniVision OG0VE1B is a monochrome image sensor, which produces frames
in 8/10-bit raw output format and supports 640x480, 400x400, 200x200
and 100x100 output image resolution modes.

At the moment the only supported resolution in the device driver is
640x480@120fps (Y8).

The driver version is based on top of media/master, which contains a new
devm_v4l2_sensor_clk_get() helper function.

Vladimir Zapolskiy (2):
  dt-bindings: media: i2c: Add OmniVision OG0VE1B camera sensor
  media: i2c: Add OmniVision OG0VE1B camera sensor

 .../bindings/media/i2c/ovti,og0ve1b.yaml      |  97 ++
 MAINTAINERS                                   |   8 +
 drivers/media/i2c/Kconfig                     |  10 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/og0ve1b.c                   | 858 ++++++++++++++++++
 5 files changed, 974 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,og0ve1b.yaml
 create mode 100644 drivers/media/i2c/og0ve1b.c

-- 
2.49.0


