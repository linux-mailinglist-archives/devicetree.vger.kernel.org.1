Return-Path: <devicetree+bounces-232027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDE6C13C8C
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 10:26:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E82523B5A20
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 09:22:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4E152FE578;
	Tue, 28 Oct 2025 09:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Bnk1hMxP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC9F620010A
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:22:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761643351; cv=none; b=rRe8Nn3WCllJDosBzNWz5ranHlj4VYLhIqQUEKrvtNk3U+9s2IGnYe2G9iqzKLe7iA54rM4I7XkDd7GZYbvlZzoQeM7KfWF5/u1nRiVTTBDMh2kAcVjUyP87CQ6N68zqMGYMufkyRGbe6qQmjt0nIR5YAavl0HO4VdHh1Myq1ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761643351; c=relaxed/simple;
	bh=R+wFbRH8+5hnaBVtC0tbh4Cq5Xw/tKS5WxUE9yvqlX4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VhHLHUwVlrs2ox05N409OwKJw3cauvxzWofpUpjSHAP5s548wgkB6kJSnOZQYcAHunxTOYKQQi7S1MPAgHxGA9Jn01mc9k7mr1rq01Ufc5Iu3T12kwboGX8rUgpDxNURQzg4ITfJlr7pVklnA3VKSRSMwc1/a9Wvggd/4s2Zm94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Bnk1hMxP; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-475dbc3c9efso22871165e9.0
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 02:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761643348; x=1762248148; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8/ajMaAZHsmNftCRY3dTAxu5sXZqeX7gjwGITMB/lcA=;
        b=Bnk1hMxPrtgk9OeNLJjQgG6U/DhzLanDfYurXHkoyGWA4SmRzkSxMN21g6EsqIKlY9
         Sz+HQhmWSLbUDFFGuvl23DCz4To/3RNIutR8dowYv+o7mp9z4/RZB6JkopB7RaAWd3r2
         6Ce5itf9HtH8g2HnR6McG2r+4vI9u93jjZwBXjzTWy6yz8HeI4XKIzKTiw8R+RAqWW7p
         0xNRs9rAqedP9ebBNk2h9avVkImsRXS5tlrzxUbmbBi0HPgw/Cn+GMG9t+GfGkPqWofS
         2ffAMzrNcYqe7pJYoVdRaqmv65ODbfOBJWdb5FVUjnqP7xt0xYaLxFCOCbVmcq8KQQ+i
         +kdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761643348; x=1762248148;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8/ajMaAZHsmNftCRY3dTAxu5sXZqeX7gjwGITMB/lcA=;
        b=X1gtqmnM9cElvCfBcefaemHNxBsbd6yF2vSWALjQJ1yf+cosqhSq8eZCgdAP3HGQ6+
         X3xOQi+Vs+vvDyD6VD1oBsw5k1OsZGzq+LhRsBhAfOStnXh5zxNo6Bgq5QXY7KuoUSIn
         cdRJGL6PxFz62yX0+WoSVANCRsAK/nBs78aJCZE6OLs4KEcGXlsa0/M0OuaGm9TE5Nvd
         WLDxBi/rTFq3mJBKpMxfeeB9UjF+XDwfnFKvnMIXU7Or1jW8ftidLFPizDbjojhfpXEV
         mgiqYdoOTicqbrbj/lJYwxtSFsCG9b0MTfN1Wl5+NNlRu/aghDy0+ffzldgcXHSWoa5p
         RtPw==
X-Forwarded-Encrypted: i=1; AJvYcCXMw4e0S+FtYxYJKgAsCfjXtLtzkmkdXINclYZ/6XonbBTqao5j+gfniL0lxP9R2Agfz+u1GAKlumRz@vger.kernel.org
X-Gm-Message-State: AOJu0YwPK6sa8OskmFm1nM5KtIpVhIZ4ZO2Khzi4KlqiAoddQ9qwjsTo
	pOLBFa0bVXK6kuVv8dTdtG5Xr6tR2jWdLKwS6KsTqh6jLmmUXNMBvUIp
X-Gm-Gg: ASbGncsm7W92jLq78zywxQCbAWkCX05TX/ybq5UVD6XK9ibs/BPN1hI6uoi0XrKRgl7
	VQ2ETUi/VUanoZgh0OqOpv7UmH6EtfnxXbuSoqplmaTRaeGn2FU0C8ekCYSQbNkkVkz+shZyHOS
	8eZ6fvDm3dwRLhbNqbPB3l9ZAdyoJfCoHvbuXo6oKr4MpyzYejQrYEAiZDzKgw7ZXGqNF3BPiIL
	bU6Prg+Z27SMiv0u5F9marNWfycIKvnRca5KISH0HArkNW5Og40pwGBgxtmrRCDIAd3KyqPcOd3
	L4JEHGnIsrNFEkqtON0kpQGSeq95MzsvlVbCguVUTShxvgoPGq0m8cEkuP98Ds0/440sDDVpyjx
	OzbL+bAslQysqvz/NL9XphhEO/e0T3urvPcd6LAlxO/nxZID6zavvkbCn5GKDcrYq2ts=
X-Google-Smtp-Source: AGHT+IEPdT6/6UarQf1IlNikxH1wAf27KbmBRaKKvq0yRjb3e4DQIQ5NuvT9CjVOR1W2NXEEMUyxKw==
X-Received: by 2002:a05:600c:1911:b0:471:734:53c3 with SMTP id 5b1f17b1804b1-47717e3233dmr18078085e9.24.1761643347963;
        Tue, 28 Oct 2025 02:22:27 -0700 (PDT)
Received: from xeon.. ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952b7b22sm19162525f8f.9.2025.10.28.02.22.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 02:22:27 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Hans de Goede <hansg@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Dongcheng Yan <dongcheng.yan@intel.com>,
	=?UTF-8?q?Andr=C3=A9=20Apitzsch?= <git@apitzsch.eu>,
	Sylvain Petinot <sylvain.petinot@foss.st.com>,
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
	Heimir Thor Sverrisson <heimir.sverrisson@gmail.com>
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2 RESEND] media: i2c: add Sony IMX111 CMOS camera sensor driver
Date: Tue, 28 Oct 2025 11:21:58 +0200
Message-ID: <20251028092200.7003-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add driver for Sony IMX111 CMOS sensor found in LG Optimus 4X and Vu
smartphones.

---
Changes in v2:
- added nvmem-consumer and dropped eeprom
- switched to unevaluatedProperties
- dropped flash-leds, lens-focus, orientation and rotation since they are
  inherited from video-interface-devices by unevaluatedProperties
- dropped assigned-clock* props
- improved code style
- adjusted colorspace definitions
---

Svyatoslav Ryhel (2):
  dt-bindings: media: i2c: document Sony IMX111 CMOS sensor
  media: i2c: add Sony IMX111 CMOS camera sensor driver

 .../bindings/media/i2c/sony,imx111.yaml       |  112 ++
 drivers/media/i2c/Kconfig                     |   10 +
 drivers/media/i2c/Makefile                    |    1 +
 drivers/media/i2c/imx111.c                    | 1614 +++++++++++++++++
 4 files changed, 1737 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/sony,imx111.yaml
 create mode 100644 drivers/media/i2c/imx111.c

-- 
2.48.1


