Return-Path: <devicetree+bounces-240903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 82570C77797
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 06:53:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id ABDFB34CCD2
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 05:51:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 365A82F998D;
	Fri, 21 Nov 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WkXzaY90"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F051226541
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 05:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763703953; cv=none; b=Zxf2poC7DnfaDPywrfrLwrQ/kHWKll0RUNzKYaWhqwGY9rjQBPw4GhDTsK35+r0EfSpDJ8QlOqAC3cxGoSAOpAWY0kWj3BiSdjqLYrAkvD9FG4hHMOQDJhHKnqJ5tZy1T1DpAXaor9MDGUjBcU3dwsnXWV+vOPtinFn6K7uCy1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763703953; c=relaxed/simple;
	bh=6yaCyE/J7ah65HyMivs7ztqv+3PsPYnDamRQJkcEcY8=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=X5CCFI/pN3Xo3aP7pE81IMWURXdSwYhKWzB267y+I/YWbv1NIsp7aUZ9lbapI51/SLL3csSKJWqZ8b4rJs91F6boOIGFG8i3vcHpysc7mzLez5fOm4w40bzU3AdPhXPbPgqF8ZUBNIdgAsiOiPyh8BHhm4XunLDiWnv+b5aN2nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WkXzaY90; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42b387483bbso1064422f8f.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 21:45:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763703949; x=1764308749; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=uJbxIqEiqm1f8qF16st2qXQheMIfNt3xVg34Igpt82U=;
        b=WkXzaY907MXiJsH5tkMKuGPEKHtuCTspPYWWzXSM/uKPz8PgdIE3Iedu7QR8KeRw6h
         B3khp3nANwXj0MzaIEvzcfg+QmRF7eZ/k2UI3DuvzpM6SibO3S7gKGIzKIAwhO+cncgJ
         8pEYdZjjGRz4uiXTGgF+csiwTESOw1ZMhPNkU7gDhpXcoMtoJSjcTswC9KEpWBj5Zk4z
         hJYo2k6zCaydE6okuPLKwAAqa8E7ig4aeXgY7fgRBI05/JpCvSGmB/Rkx2cCtaY8vulp
         7QmuSJ6Zus+B2tL6N6Zy+Dd3f2i6iGt9a75/cHn0YdI/3tCv7pfRi2AHJrYdjbDRebaV
         RC6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763703949; x=1764308749;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uJbxIqEiqm1f8qF16st2qXQheMIfNt3xVg34Igpt82U=;
        b=fzW+sIbWbZHCM7+xNXkgsbrxtnz106/ifZ9AilqJWPTJwV7LniVcgM14s6U7btzdGc
         G5JugFRu+rh+InKk7dbAg5fjII7TrbEJs0A4ewsavpo8yLT43h6RC7JBYL71VgT3fe9s
         dX4dOtcx29PFcxnI1ZqWD6Skju/yvOGlg2w5veg1TCyVWdxsI9JY/RiVhu7hOWatkNci
         Lk6vDhyKL6ODqpAEBVLiBiPo6yUOgj813KfJ5InKq5+IAC/IIWOypIBQrItaNbQLeUrO
         eL0dPKuV/5K5o2z2/r8SPdQxg7jYseZdtQ8TFzwY5P8AZaIB9AfDMPUse3CoJCnuPQUs
         QAfQ==
X-Forwarded-Encrypted: i=1; AJvYcCUU7xIsbcU/q5PgH9tDCHskn7N8JuNI/Nk66UaFkRkC03ICdKMzfVUzSZ/MZ/3mtcovNNCHv8uZd6hA@vger.kernel.org
X-Gm-Message-State: AOJu0YxBrWueECNsqbkkTq3IvH/F3LcuPehbliS5WrPtHStuSZHa1ofv
	8ISPqXxwLuD10u4thB2gKAM+41k4NZS5NRTXVRxJEpZIY+Bk/ppzdtQ9
X-Gm-Gg: ASbGnctGSINHjJL8YyE+XFERx8M+r7kJ1xuUukGEBhQxf2hVW0T7NJJLemvL90Hg7iO
	lMdjT/7NODYe5sgTbdCeT3SmUQQHUJcvfuoiC6z0SMo19kWPZzi0BzlLiPB5+k/k5S+ockp+yrE
	pJW2m4k9/7nzud8XEjvWkf+Rs0N1xZyw8KK0vYbrjjtodEuD0cgmcLdKLKQ8WJXPg0gDw648oiW
	xsS8Fmou3NAP2Vp7R0qIN8m+WAABB0y2L4imxSPx9SynbNX5mewEchCaxHCkdNE15Ui0T/Rzrns
	L72XCzX6Y4mntgD7c7vOnxnsOpHmKcM6go62L44Syu/6TP6REiRfYToYNXXuGtYo/DJBh5yS/Ho
	aslte0OzbgAzj+Ew6asjs//EfKiuh4JhJYM/wRjLIkBooB50BWhnbnhVo19vS0L927mwdMLOr+M
	ycGMuUVGDbcQzHdQ7wVonFE/MQKvWqxXXMN91uq9q5
X-Google-Smtp-Source: AGHT+IHRFaiUyVpXiQGxAycMp6yKMdInYPmebcx1lHdJv0Jzj9BEBBTmyVen82ZvCHfumXjJ/rAv0A==
X-Received: by 2002:a05:6000:2004:b0:42b:5406:f289 with SMTP id ffacd0b85a97d-42cc1cd8f27mr741379f8f.3.1763703948284;
        Thu, 20 Nov 2025 21:45:48 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42cb7fb9190sm9239273f8f.33.2025.11.20.21.45.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 21:45:47 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Cyril Chao <Cyril.Chao@mediatek.com>,
	Arnd Bergmann <arnd@arndb.de>,
	=?UTF-8?q?N=C3=ADcolas=20F=2E=20R=2E=20A=2E=20Prado?= <nfraprado@collabora.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	upstream@airoha.com
Subject: [PATCH v2 0/3] ASoC: Add support for Airoha AN7581
Date: Fri, 21 Nov 2025 06:44:58 +0100
Message-ID: <20251121054537.25796-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add all the patch and documentation to support Airoha AN7581
sound driver.

The card follows similar implementation with Mediatek with
the codec present on i2c but with a simplified implementation
register wise and additional frequency supported.

Changes v2:
- Fix wrong edit in MAINTAINERS file

Christian Marangi (3):
  ASoC: dt-bindings: Add Airoha AN7581 with WM8960 YAML
  ASoC: dt-bindings: Add Airoha AN7581 AFE YAML
  ASoC: airoha: Add AFE and machine driver for Airoha AN7581

 .../bindings/sound/airoha,an7581-afe.yaml     |  41 ++
 .../bindings/sound/airoha,an7581-wm8960.yaml  |  67 +++
 MAINTAINERS                                   |   8 +
 sound/soc/mediatek/Kconfig                    |  20 +
 sound/soc/mediatek/Makefile                   |   1 +
 sound/soc/mediatek/an7581/Makefile            |   9 +
 sound/soc/mediatek/an7581/an7581-afe-common.h |  39 ++
 sound/soc/mediatek/an7581/an7581-afe-pcm.c    | 456 ++++++++++++++++++
 sound/soc/mediatek/an7581/an7581-dai-etdm.c   | 371 ++++++++++++++
 sound/soc/mediatek/an7581/an7581-reg.h        |  61 +++
 sound/soc/mediatek/an7581/an7581-wm8960.c     | 170 +++++++
 11 files changed, 1243 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/airoha,an7581-afe.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/airoha,an7581-wm8960.yaml
 create mode 100644 sound/soc/mediatek/an7581/Makefile
 create mode 100644 sound/soc/mediatek/an7581/an7581-afe-common.h
 create mode 100644 sound/soc/mediatek/an7581/an7581-afe-pcm.c
 create mode 100644 sound/soc/mediatek/an7581/an7581-dai-etdm.c
 create mode 100644 sound/soc/mediatek/an7581/an7581-reg.h
 create mode 100644 sound/soc/mediatek/an7581/an7581-wm8960.c

-- 
2.51.0


