Return-Path: <devicetree+bounces-45961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB108867774
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 15:02:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 55B5229260E
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 14:02:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDD7F129A72;
	Mon, 26 Feb 2024 14:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="gsTSHnHc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71ABA1292F9
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 14:02:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708956130; cv=none; b=BhL+hF0LJDA1VcqKpptw+AMMEDmC1puP3v4V6RUZhMO2OKg3EjZx1KChr6y5umlwvOGHujk/Ptc4b0XPIwBi8uCvsrx7UM0WXxht33ZEE7Jwrm3DkT+J+t87hmRtXcZp1PhJhQexlD4jl3d1hgf+nK91zLtn3lt4OpQz0taiiNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708956130; c=relaxed/simple;
	bh=zP1cF1mgMLFjF9Qj79hddJ9+2MDw+VU8qnc4hJ6MA+c=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=b+7AAc9Ii/kuJvO926hlwEmVOeDbge5s4sXCnaKm6hxzc62Q/80hK7TYzSf6MVHGpZnt057GKNF4RJcwpH9O+9dcxurMmtq97qlEl9LLETW0THMjaABPz7bUUnP7jBhBMdzYEVjwDgmC/oKeXXnXAj7k+NM0dOuLPfwrVtvpkOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=gsTSHnHc; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4129ed6f514so11404005e9.1
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 06:02:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1708956127; x=1709560927; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1kXm5bhwE0RIFKLS+klmit5NTgkdIxAJX8Ps6s9DZUw=;
        b=gsTSHnHcq+yu63JFFV4z7mtKcWvZUv28sZy9gBgjJDadQx5q9/w3OI5Mil+3RXU0PG
         igRmp1hjri9W8Gtk7TxSss8IkkFeTMwE9seSZfeWxiO/MaXUzyk/Ce5rze6EXIbpu/aO
         ASvy3+0vgrx7/siV+SXpTRqK2jRoJ6zElz7vkxAoAPehOSMmdPZb3K1k15Jf21oPAMAh
         jsTm+zrGc/N47Rp/F1CDYuTdQZCHUEHoNe2YU2zQYQ7SqI2SZm6h9a88oGd76Qxldoz7
         u5u/MIXvririQX8StAiGf4ncj06j9du9yR4bLR/1UuVfUIQWl+EF52F/fZ+AEOa8BR3c
         6oxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708956127; x=1709560927;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1kXm5bhwE0RIFKLS+klmit5NTgkdIxAJX8Ps6s9DZUw=;
        b=onnSsQIV9uL7jnCpMdKjWmuw7hGpMv044Io5cOuEAJZjvjmCgRaNMDEBtyM0zRRbag
         nvF6cr1Cn809j8F4IhxiUfwMfGG+HOIXRqxlG3XiGi5kdOG3RvXpRJ7toKVowtvQgls7
         XDY6oRIc9F3H1FTpFKrxFo0HTtzlXgJWHLgfTcAvhv8A80G4pax77AXV4BuGJ7ITjEc6
         qc+qA9QeBA07/9eC0Re9uiHbL1laAHAt+YEBfKvNoXb3OacQFsO+4xFzrK8eIEp8J+uW
         3QzSKUE+RQSwWGeRZJ1x4RccgsweYKEi7Add1uzUfUFpqRq2lgJwMfwi77Omka2MHUnp
         UVnw==
X-Forwarded-Encrypted: i=1; AJvYcCU7jJLS6/W8ylLuj+Ugja4SclawMZ/wa2pV2kJD27fQX4AqhaLL5BW9e1bP2undn4ZyJ9izAV9lPaQ5o2HteUSy/Mf8jhkU2jtJ6w==
X-Gm-Message-State: AOJu0Yzzdq7XLTvg/bd4G8aZA0c11L3Jgi32s8e1HfxLOlLwtGWi5uvO
	48Yi0Xy4OO1GSfh1jz64y80EpOV1MPzrqzJ38NwNvlcGZfVoeO9x6fFqe5Quc38=
X-Google-Smtp-Source: AGHT+IGxhQkl9Xqk2as1WdZDuKZznJImfUbVUhJLg9Dl69bLd0mMxQOlNl7tJbZdZSMC2T0clhx0uA==
X-Received: by 2002:a7b:c459:0:b0:412:817c:364e with SMTP id l25-20020a7bc459000000b00412817c364emr4917841wmi.36.1708956126570;
        Mon, 26 Feb 2024 06:02:06 -0800 (PST)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id d33-20020a05600c4c2100b004129f87a2c6sm2838475wmp.1.2024.02.26.06.02.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 06:02:06 -0800 (PST)
From: Alexandre Mergnat <amergnat@baylibre.com>
Subject: [PATCH 00/18] Add audio support for the MediaTek Genio 350-evk
 board
Date: Mon, 26 Feb 2024 15:01:38 +0100
Message-Id: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMOZ3GUC/x3NQQqDMBBA0avIrJuapEZCryKljMlUB9ookyoF8
 e6NLv/i8TfIJEwZ7tUGQitnnlIJc6kgjJgGUhxLg9W20da2CpfIk+Kb06ohYyJq78k5KKDHTKo
 XTGE8CH5IhoTfem2vXkkw9Wmf4U2YlvkQs9CLf+e+e+z7H1s9ilOOAAAA
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, 
 Alexandre Mergnat <amergnat@baylibre.com>, 
 Nicolas Belin <nbelin@baylibre.com>, Fabien Parent <fparent@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3544; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=zP1cF1mgMLFjF9Qj79hddJ9+2MDw+VU8qnc4hJ6MA+c=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBl3JnboXUAMF+d1Pz/oxJlDp69tLo702vaeLTtEvz3
 Zs54U5iJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZdyZ2wAKCRArRkmdfjHURf7dEA
 CMc6/wfi/2TzT8m4kxe9uHkWXnmfVn8cMY1YQ/FMS4X65BJAh4PE5cSprnuKt+voatzOKr85v3ee7w
 cVEroPkVPySozdENDx/SoDfTd5A4upnm10iuMq6gccPYG/Aah23WwOXsuaKqtNjrkdeEmfyFoTxfu6
 jk+Grduq0B8+5hMC8OKKu6Vd33+oEblbSK5/0mvmtK3ztTt6wWq6TDBF/0KkBeVGXIQKy/1C3jHV8I
 vlIqSfEmHOT4vaUunm9J11XyRb6fIiVJ6cndJ+vi/FbBH6okKqufmwFuBuL1TdxSZyQkU0BY6M6BDY
 fZDD3k0Kgoux87c4tgFJJISAVFLCqbKyWTpvLc0lYNphbICyl50RnLyXrDOiOd7rJK7gfy5Gmgg6Qy
 DJxUROkZF0nCvpncUQFPBNVbrIBNbXNAV25DDG+b2BiZeBwnkRsT4b1ehNK8cqg8lpkJylY28Y3msl
 rD+88VGE2PDXtuOlfan1IGfcwOAXyJLB2lYbc6sty2yWMaNM0uVctSwHvsRKReA4EOvUxnQyGaauqg
 Y0q3s/vBKUORMb0RUABnpUoTSC2v875meO3LhXRrlqw3HFt5TJM1YtP4BlyIRTPyIucWiJTTqJKHAe
 U3GiLPL+dK3MeZIBisMzUY3gT3jDvsIuQJ7fco/aWeWkwUpWEYfZ+LVdlnNA==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

This serie aim to add the following audio support for the Genio 350-evk:
- Playback
  - 2ch Headset Jack (Earphone)
  - 1ch Line-out Jack (Speaker)
  - 8ch HDMI Tx
- Capture
  - 1ch DMIC (On-board Digital Microphone)
  - 1ch AMIC (On-board Analogic Microphone)
  - 1ch Headset Jack (External Analogic Microphone) 

Of course, HDMI playback need the MT8365 display patches [1] and a DTS
change documented in "mediatek,mt8365-mt6357.yaml".

[1]: https://lore.kernel.org/all/20231023-display-support-v1-0-5c860ed5c33b@baylibre.com/

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
Alexandre Mergnat (15):
      ASoC: dt-bindings: mediatek,mt8365-afe: Add audio afe document
      ASoC: dt-bindings: mediatek,mt8365-mt6357: Add audio sound card document
      dt-bindings: mfd: mediatek: Add codec property for MT6357 PMIC
      ASoC: mediatek: mt8365: Add common header
      SoC: mediatek: mt8365: support audio clock control
      ASoC: mediatek: mt8365: Add I2S DAI support
      ASoC: mediatek: mt8365: Add ADDA DAI support
      ASoC: mediatek: mt8365: Add DMIC DAI support
      ASoC: mediatek: mt8365: Add PCM DAI support
      ASoC: mediatek: mt8365: Add platform driver
      ASoC: mediatek: Add MT8365 support
      arm64: defconfig: enable mt8365 sound
      arm64: dts: mediatek: add mt6357 audio codec support
      arm64: dts: mediatek: add afe support for mt8365 SoC
      arm64: dts: mediatek: add audio support for mt8365-evk

Fabien Parent (1):
      mfd: mt6397-core: register mt6357 sound codec

Nicolas Belin (2):
      ASoc: mediatek: mt8365: Add a specific soundcard for EVK
      ASoC: codecs: mt6357: add MT6357 codec

 .../devicetree/bindings/mfd/mediatek,mt6357.yaml   |   11 +
 .../bindings/sound/mediatek,mt8365-afe.yaml        |  164 ++
 .../bindings/sound/mediatek,mt8365-mt6357.yaml     |  127 ++
 arch/arm64/boot/dts/mediatek/mt6357.dtsi           |    6 +-
 arch/arm64/boot/dts/mediatek/mt8365-evk.dts        |   95 +-
 arch/arm64/boot/dts/mediatek/mt8365.dtsi           |   47 +-
 arch/arm64/configs/defconfig                       |    2 +
 drivers/mfd/mt6397-core.c                          |    3 +
 sound/soc/codecs/Kconfig                           |    7 +
 sound/soc/codecs/Makefile                          |    2 +
 sound/soc/codecs/mt6357.c                          | 1805 +++++++++++++++
 sound/soc/codecs/mt6357.h                          |  674 ++++++
 sound/soc/mediatek/Kconfig                         |   20 +
 sound/soc/mediatek/Makefile                        |    1 +
 sound/soc/mediatek/mt8365/Makefile                 |   15 +
 sound/soc/mediatek/mt8365/mt8365-afe-clk.c         |  455 ++++
 sound/soc/mediatek/mt8365/mt8365-afe-clk.h         |   55 +
 sound/soc/mediatek/mt8365/mt8365-afe-common.h      |  495 +++++
 sound/soc/mediatek/mt8365/mt8365-afe-pcm.c         | 2347 ++++++++++++++++++++
 sound/soc/mediatek/mt8365/mt8365-dai-adda.c        |  355 +++
 sound/soc/mediatek/mt8365/mt8365-dai-dmic.c        |  475 ++++
 sound/soc/mediatek/mt8365/mt8365-dai-i2s.c         |  901 ++++++++
 sound/soc/mediatek/mt8365/mt8365-dai-pcm.c         |  298 +++
 sound/soc/mediatek/mt8365/mt8365-mt6357.c          |  379 ++++
 sound/soc/mediatek/mt8365/mt8365-reg.h             |  987 ++++++++
 25 files changed, 9718 insertions(+), 8 deletions(-)
---
base-commit: 6613476e225e090cc9aad49be7fa504e290dd33d
change-id: 20240226-audio-i350-4e11da088e55

Best regards,
-- 
Alexandre Mergnat <amergnat@baylibre.com>


