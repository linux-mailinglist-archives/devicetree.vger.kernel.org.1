Return-Path: <devicetree+bounces-219701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B43ABB8DC32
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 15:34:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 733FC16DFE8
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 13:34:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C47612D63E5;
	Sun, 21 Sep 2025 13:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RhiS1r4B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141DA4A1A
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 13:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758461674; cv=none; b=F7QeueDmDSiAN+PjhJGx+7G1DYYy+2S0woarhZF08LMcoEb2bJ2SdALZZdwu1bZ3Adgfo6UFmHmyg7x8sI83kfgqQoXVvBin2aCOK0PkMZLpb4iedVPyTzJnrnYGUu9swx1I4P//+987VbFus1f6kc5edZRGK47z6w6sdeIsI6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758461674; c=relaxed/simple;
	bh=W+MdQviWUrHmllDXqPNcRT0Vif/KVaI54aJjs7g2kRw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SZlbh8Ulqeo3L9IHNMx2BW2ICvP8Aq1ofUV+61Q/Vmi9KoeBufYkgz8Rvo5OTt+zb3c1+pVUreQqleMfVvWdt7wVujsede1r1IHbPv7AQikZ1DNzY0a97lmUoD5m1ObFNFF46a9sIXgWZeQTHnUDzMIanQubEc1ZFHxXf9zIV7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RhiS1r4B; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3e9042021faso2767362f8f.3
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 06:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758461671; x=1759066471; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mMhhKCmyO0tkOfkSwmubre93MqE7/JLPoa9fLatUrvU=;
        b=RhiS1r4Bm5Ywpgny7F/7/ERcxFuVNZ1dLhJH7VxyiA2uQr8wjfbaiLOSVttpBRIWAe
         cNShyG7WMtyzga/baJiM31+ibBixPqsRJmuuRD5ZTi6uQTyuNj2ahWxj69PwhNfeCemG
         YBPYyq731QTmVexQrcZ/Er0KVuQafQ497ztt7+L5fX7920B/OYAAPPwBl3cz8WGu/Nch
         9/8OSHPk9fMS3INDh0MtZ6gsuBJ/pX/twCKP8Ie30TEPnoomVrysc9yjbVs6pJwx0dg9
         rIP7hmeY72SZv4Gtpybtt/TVLPJqI1yfqPqpX4XVHA0Yynz6Xc2JJHudVfPX+qjdALCy
         D6Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758461671; x=1759066471;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mMhhKCmyO0tkOfkSwmubre93MqE7/JLPoa9fLatUrvU=;
        b=g83GSrC4q/rD5eeT2viEIMwV8uG8lwlUBrSkom/2hEjPDjLhOUaJCO9qMkayKOblpg
         zEGvNl3TK6D90odYPf0LJkf50hg3rk9gMUp9EqFbAnmB2pQagHbv/f4OIRORbC5bBzS4
         m8Agrbf2nAA2kwae6OXucA1SE6HBGw/PRMFobx/afrgVlwcp0pe25yFS60ta56rpFuq3
         n5bgdm7iQmxYzd+PonGdcwt8Eni7vhTdz35gmDd/Q1EKqS7ObNpZr9W0y0aHau/a858f
         bnnxJhbMsAHmqcdAfCOxJ9mRl48wO4Az1PihoXpmM5D787lspKvLyI9lcP2hFpjoVqrt
         Z4CQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+oJMnTMhmjbtcPjjNvqqXUk4ZFro6Vz7aqKTJgLnCaqNlnzGKZqgDmbuCR95VAY2XOHVnfmMeRd6A@vger.kernel.org
X-Gm-Message-State: AOJu0YxN0Ye1F4wPc5lL1auZn42gk4cypV7zWXvilMwwtxrMs8M8+V0A
	3jfGNU5GdwFug6YAOxOAb36HZlaS4V8tJ2LR2yvyXt/CiJPbanH2a4KE
X-Gm-Gg: ASbGncvN2YaV62WOXLe6EPqQ0CvVp+z+JEgDVNCZTZ6dpWEszDz9g3NAsNcF365w1fa
	w0Y1yi9P3rGqdNdE4/wL4AbixobSDG1nBpLuBFvkn/2iooALJDjbCjp+fnwkCaR4LWZnYeD3Sml
	wAjfqiMky7WgERtLjw9sni2hLNB0yvQOMRUXlTqOxY3K+j5D+Aax8LUW8c9j5XEnhvD1wywEfNf
	PHZZaMRnUhmXEdWtwufc56fEwh5l0bdtuTny4ja9hKnc3WostUSFuNy24f7Rrs42ACLI4xZpw8p
	TVStfE+zFbb7+CP3tCfWp6bNbdsRNYM4i8xML+b6ZvTqdecFq11t7FbE+Va96PC/B6Xk0GiZU9I
	hWcdF7YwIMe1z42R7UvHnHkac++qSyY3QugGLbzjP
X-Google-Smtp-Source: AGHT+IEFtDhZUV//YELTB2p7puOk0cSYYIKzsLeyMKlfyOvsxg4B2DgsmNTjAlhUmPXeaySh7uGg9g==
X-Received: by 2002:a05:6000:2404:b0:3d5:d5ea:38d5 with SMTP id ffacd0b85a97d-3ee7e10616fmr8560965f8f.25.1758461671168;
        Sun, 21 Sep 2025 06:34:31 -0700 (PDT)
Received: from localhost.localdomain ([78.211.117.102])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee0fc00a92sm15910316f8f.63.2025.09.21.06.34.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 06:34:30 -0700 (PDT)
From: Antoni Pokusinski <apokusinski01@gmail.com>
To: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux@roeck-us.net,
	rodrigo.gobbi.7@gmail.com,
	naresh.solanki@9elements.com,
	michal.simek@amd.com,
	grantpeltier93@gmail.com,
	farouk.bouabid@cherry.de,
	marcelo.schmitt1@gmail.com,
	Antoni Pokusinski <apokusinski01@gmail.com>
Subject: [PATCH 0/3] iio: mpl3115: add support for DRDY interrupt
Date: Sun, 21 Sep 2025 15:33:25 +0200
Message-Id: <20250921133327.123726-1-apokusinski01@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,
This set of patches adds support for the DRDY interrupt in the MPL3115
pressure sensor. The device has 2 interrupt lines, hence the new
binding. I also added support for the sampling frequency which
determines the time interval between subsequent measurements (in the
continuous measurements mode) so it's obiously tied to the DRDY
interrupt feature.

Kind regards,
Antoni Pokusinski

Antoni Pokusinski (3):
  dt-bindings: iio: pressure: add binding for mpl3115
  iio: mpl3115: add support for DRDY interrupt
  iio: mpl3115: add support for sampling frequency

 .../bindings/iio/pressure/fsl,mpl3115.yaml    |  63 +++++
 .../devicetree/bindings/trivial-devices.yaml  |   2 -
 drivers/iio/pressure/mpl3115.c                | 247 +++++++++++++++++-
 3 files changed, 305 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/iio/pressure/fsl,mpl3115.yaml

-- 
2.25.1


