Return-Path: <devicetree+bounces-221507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 208F0BA058F
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 17:33:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 186041885F98
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:28:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3B372E4279;
	Thu, 25 Sep 2025 15:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dB032AgS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE6052E3B10
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 15:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758814100; cv=none; b=I5bN0F2lKvTPHq8X+UUZhkX64wjObarNNXorvAMl//SeSx9WaXudAkpF/QU4ygpwlrFnd3M7qDXt5zjE0m+u/m/kBsn+WoXzvJ3PPC7zF2Vxm/ZLrvoXQh7kSBttVmUCRR0vRNfWnOdhpfyVuRm5K4+NNibJ904Mnu9xPrzppnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758814100; c=relaxed/simple;
	bh=R+wFbRH8+5hnaBVtC0tbh4Cq5Xw/tKS5WxUE9yvqlX4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FyGbeewzyARQYTr1Ju1BSysWUP3h8wwrUDqJobrbo1MgXca+TmjLbGBE93cJCJRvd/VGLOxh9dlJ7N9tkdyDFri5w3FetVe37KeCmW/OxJAeBU2YdohJgRh3IZKYIPGUNWDmG1tfyInCAHEGAK1gyZvKDs4PBhCciax52l9PCTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dB032AgS; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-36a448c8aa2so9454381fa.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758814097; x=1759418897; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8/ajMaAZHsmNftCRY3dTAxu5sXZqeX7gjwGITMB/lcA=;
        b=dB032AgSlJ8ThaULwwEgjoiOYmrqXpCAxvKftPWOAzdtgdrRF1fbZi1OxBZRs00BVu
         lLj3NWBl3HtXrZTn3idh0EYnGcIRQ0hJhcVwEjJcaYhom3iEaZFO6lqxT4Qb/CQQNVBF
         JokNd5wW8jSSZNnLqau8pIMoMVze22RlCA9+DqOJ4O37i67q+6F8XdZUfl8xL7RWzQrr
         ZrTox9tfuDbEQKpNNolCzXss++RvWQpFqSzQfoFa2GRY747K9+6ICUhVfRe2SiSw8j28
         Xlcd/yjHEd2fU5+sYumU1Q9u107i9KaiZ+9rwFgNPfROZNs2uxqnDxBu3bcs69MGzaIt
         +IwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758814097; x=1759418897;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8/ajMaAZHsmNftCRY3dTAxu5sXZqeX7gjwGITMB/lcA=;
        b=aSv1E7UqTS81FvA7eB0flV6wQnbzmGJD0BdOGKzt+NtqJ5ObR2/lPo6pOl9gYY7bSs
         D18mFxk0ODxO8OJJdzsQkp7IanlnGB+/RzrK6tdG6VndOh074g8eGhqQK3J4nheFkfv1
         l5IGZrnS9PsGNfxk3m7bkbTA6abOJDIrwydA0TzPVs+NvOhptDJzx47SKMoE7hNCWzhM
         XMjFSnm+K3RbTdChmIVIn3MoaBUPqJ7b9xzoTZFAkGzS0qLiTagO1dsSFn94CfubTD+n
         jnk/F2C6Gu9jx6KmEMUe8+6xlL2wA48yY/j7xqeDpRLxbclmzGbMzaWN+icN8G/NsKnZ
         wErQ==
X-Forwarded-Encrypted: i=1; AJvYcCXrlUCEPCUQ1BBrGlwUg8KVC0W5UqGWUf612MzcPsCJHmzfBPpC97gw7Kq7rANP04JidOS7DTO/CZQy@vger.kernel.org
X-Gm-Message-State: AOJu0YwDYd4beyqAlnE+xJOzwtEAmB5H2R+xTnUXBy76tj10kT7Nxnkh
	GHUQDUmQJgF9uMEr69mqSaLZR75IHnnuvH4iXlHywDa7kh/6pc1/+lTu
X-Gm-Gg: ASbGncvuzj3JqIx366qhHcFCnuEXy/h+U66v+xZJlRJePBZjHMENEm0Oj7HWStEfEII
	dSTGRMtiXxbM0Oa8e+2wIzh/7ZnCDZ7uK+Cyk8Dpe2ZiWC4qYKZpZCVJntD/Ks0qUQ74J6VJcvG
	7JXsaaTdPJSPY2Mw+T+NnIr25/JZMEjSErxjZRFjysQrSkbLaCInSDqplwDvFy1C+0S9uKJoozM
	OmqRFARC+ONxE2ClM6lanTktQ72kkBKe1JoiEagh7kyN3RbU6fgSVOiiNX90DTc9aoRDa7wp3Zi
	d1yiZWbeLbYBuW/DNICj+6gqUKaub20MNeJ4M29Tta+MG8Th1IrjlSE5p1mW0q9qNgWfcgnjPRq
	IDYsJtjP29xYWuQJsv+rJFhtu
X-Google-Smtp-Source: AGHT+IEjLl7C6LVh+5ZGIR/Naf8q0lU9twFamYJR/oaj9RedlrpgokXUd1VkW4REFITzmwWy5TLJdg==
X-Received: by 2002:a2e:a10e:0:b0:361:774b:8b45 with SMTP id 38308e7fff4ca-36f8020b691mr13255001fa.37.1758814096768;
        Thu, 25 Sep 2025 08:28:16 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb4772c8asm6347801fa.4.2025.09.25.08.28.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 08:28:16 -0700 (PDT)
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
	Heimir Thor Sverrisson <heimir.sverrisson@gmail.com>,
	Jingjing Xiong <jingjing.xiong@intel.com>
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] media: i2c: add Sony IMX111 CMOS camera sensor driver
Date: Thu, 25 Sep 2025 18:28:04 +0300
Message-ID: <20250925152806.80386-1-clamor95@gmail.com>
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


