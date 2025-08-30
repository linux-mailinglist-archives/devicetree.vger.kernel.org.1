Return-Path: <devicetree+bounces-210735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7518BB3CA6F
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 13:15:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2ADD53B0C9B
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 11:15:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F664231A55;
	Sat, 30 Aug 2025 11:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b="a0ecjl91"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5BB726AD9
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 11:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756552523; cv=none; b=ohAES9tzA04+oDrJXsXDXmtgMOVmUCZLOckkssF8khoh/IWqsgYCRJI/ciPXNCrcOhIHFqjxhvpYjNArdPDGWY2GFapi3n0136dqH1F1w56WeS0J+1ry7BIsnqCuQuBBIsz9ZbYQXxcRL209fSzkHzDyk/zHcqtAtxn2CLX8Os4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756552523; c=relaxed/simple;
	bh=FcS3lVango2lJ/7H1mnUAZSXYOc30orPYr2Ga4jvAh0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=JdniI1D20t0okTlCxZwbrJgfwOwxil3gGEBBJlwA/wd+BaDX81KapzZIRlsAWfF+BUAKhE8OqEAK7+nm5ULFcbF11FfXih1sua2ZgSeQ5Qx0Toc/ksdLfAHkTE7XqJD4drEqozPYt9M986M8o2WwED6L5SxeDfgyT51o16Bz+yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk; spf=pass smtp.mailfrom=pinefeat.co.uk; dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b=a0ecjl91; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pinefeat.co.uk
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3c98b309804so1818151f8f.1
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 04:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pinefeat.co.uk; s=google; t=1756552520; x=1757157320; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7sB8nLNw7OUCAbqYw05qQ79tpzJtdnEdFbZCz5X3kyU=;
        b=a0ecjl91O3ccYBO2BFFvDPwZnsOIdcxSla/MUN8yobkdlazpGcpLPt9o+pTZmPixqB
         kV0Ky5IbWg9TpmLdKXMk5kD01IioJD9DeAETtRxCKVF0QLvHR0NtEq9BNKo96ekosXoe
         yVJMgUeULT889TiYLTy6QYhvJIzt5cQ8j+A3xQPhCqvdvrpoesaMNkV3+RJ0upaK4goe
         DTgtE5VGpzepukBo+VuwDX+urXqNFvJpbpXzxApL+V7+D2cZIBLqtTFwxSA5Tqul/T2S
         QZicjc23z8+r2pUcFGBmlVY/bZLHgC7VD6nBFZMQbpYHkEZ6p9rtisspe9QX2vEBUELj
         +7QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756552520; x=1757157320;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7sB8nLNw7OUCAbqYw05qQ79tpzJtdnEdFbZCz5X3kyU=;
        b=f0eX4lIMCwI0Kmrzon6ZVyrvV7ZnF8/0VLkPSaHMpj8OcHPQIWSNBJHeakNZjV0fgw
         Xy6SlbSbs9ahgZIP+WQtYBXYAcsNXMp0QFizdPHgsaI5cnjP00sRKOhwYSiJ1x/9g1Fx
         cAjPQLSJsQvwKUkInBWzkltfrbnwz7kkjq90IepxK11THCcoORurDgMgdzkLZrpwYIh+
         XqyPKfPc3xc51qByj3k5F6CC5wxds9AgcGAta7KV1LwhJKOFJDqhHCqmF/fY5vtdzrkJ
         R8kK8/9nOksDXiyQRlCC9vWco08MMYy5/aoMMvc06Ywx9CInWmJEGMo0lk7t3rcnBRTU
         6t5A==
X-Gm-Message-State: AOJu0YxkzDfGvTzEha9OulDNKfA+SQJmYlsxZZxtK7l8fw7j22CwgwUh
	R0n6BnCLD7wSAJLrkqRDyJSOD+u6Q7/GeP9vyjtpZ47xHqrwsc+kNREnp5XosINgT8U=
X-Gm-Gg: ASbGnctJ0KpTWXEo3HXC/csAc2CcQ9ovd0M0GZMIB8Sbehc2dgNlnXp1ICPjGtOFoS9
	i4svCG3I3yLeoqQzGATmo1s/I+yGdW7UckIM+eV+V8mvtR5iO0uz4IKCzkNbpd2ROAbioJBtT3U
	hUkCrWjvGSxD0Fkx91EojHYHcDpAlIXKQB3YbUd9yLHNWHKUT7f1H0TT96aUhouhe/AD+z66jgu
	W00agca5xOpnAcjqFFSudHp3kAzN2/xKVTrkx4yf/jODwA9CMnfhB6CQ1ylrT1IpNCW/RYbma1k
	54qRmJUhIruE+6cJRHDKHyC0bTFVyupKoGkFuBm+zs4mY8QoG/Uz/uO0FB1gNCtadp1gqfEDSS7
	ZhsFBURUcjtujxVmN7a8DTD2tGYf6e/IvyIuPzXvA8VhnfQ7iBCNT
X-Google-Smtp-Source: AGHT+IGx677+6au987cfOlNk+fioFFj5OQLwe6obAylZPfiLfEVfCRdytUkq11pyEGu2h8sIc4QKzQ==
X-Received: by 2002:a05:6000:188e:b0:3c9:fc3c:3a8a with SMTP id ffacd0b85a97d-3d1df53b1bemr1345860f8f.61.1756552519895;
        Sat, 30 Aug 2025 04:15:19 -0700 (PDT)
Received: from asmirnov-G751JM.Home ([2a02:c7c:b28c:1f00:8714:ec04:28d3:3897])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf33fba9c4sm6713630f8f.48.2025.08.30.04.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 04:15:19 -0700 (PDT)
From: Aliaksandr Smirnou <asmirnou@pinefeat.co.uk>
To: jacopo.mondi@ideasonboard.com,
	hverkuil@xs4all.nl,
	mchehab@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Aliaksandr Smirnou <asmirnou@pinefeat.co.uk>
Subject: [PATCH v4 0/2] Pinefeat cef168 lens control board driver
Date: Sat, 30 Aug 2025 12:14:58 +0100
Message-Id: <20250830111500.53169-1-asmirnou@pinefeat.co.uk>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series adds support for the Pinefeat adapter, which interfaces
Canon EF and EF-S lenses to non-Canon camera bodies. The cef168 circuit
control board provides an I2C interface for electronic focus and aperture
control. The driver integrates with the V4L2 sub-device API.

For more information about the product, see:
https://github.com/pinefeat/cef168

Changes in v4:
 - removed driver mention from the hardware documentation;
 - added named email in commit signed-off-by;
 - added select CRC8 in Kconfig;
 - removed header file;
 - moved variable declaration at the beginning of the function;
 - removed kerneldoc from structures;
 - removed control id check as the core handles this for us;
 - removed Power Management Runtime (pm_runtime_*) calls as redundant;
 - reserved v4l2 controls in linux header file;

Link to v3: https://lore.kernel.org/all/20250817130549.7766-1-support@pinefeat.co.uk/

Patches:
  dt-bindings: Pinefeat cef168 lens control board
  media: i2c: Pinefeat cef168 lens control board driver

 .../bindings/media/i2c/pinefeat,cef168.yaml   |  47 +++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   7 +
 drivers/media/i2c/Kconfig                     |   9 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/cef168.c                    | 331 ++++++++++++++++++
 include/uapi/linux/v4l2-controls.h            |   6 +
 7 files changed, 403 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/pinefeat,cef168.yaml
 create mode 100644 drivers/media/i2c/cef168.c


base-commit: 2b38afce25c4e1b8f943ff4f0a2b51d6c40f2ed2
-- 
2.34.1


