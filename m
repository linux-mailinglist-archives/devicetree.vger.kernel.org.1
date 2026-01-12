Return-Path: <devicetree+bounces-254182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E612D153B1
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 21:32:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BC466300349C
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 20:32:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B07E63385B1;
	Mon, 12 Jan 2026 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aeFK+4+A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499683019B2
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 20:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768249973; cv=none; b=I+3hStux/vqaaX63Y8vy7k1l5DYtSrCMyKZaLo4WpmNBOs7Ex3LFUdqlBz/2PeyC37m2ISxn17WzSOrhQRF7LYoIIcD/pbd6Ljwp85Jl/jf3GTJc5P8MCCEU17Ng1xZfQLo9uFWhZMUA5QhS22vKprbjXKhtbvFH8oX4yflhmUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768249973; c=relaxed/simple;
	bh=qpCaq6TACL6eqM1utYs6sRZYduBCrJkOLynbCIHDvqY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CA+T8hXcmYBvFh0SAGA8cRqTmU2WXek/E9cE3uA7PXTJKykhoxdgN82Wlmt6Prn/5OmuaTLdJ/o1IQo2LCR5pahdIa5dH2EP35FMgdM3JKJG+HA8Jnl3EZGkrnFr2V2ZjA832ISJyzqluuWw27853e/Kegzync+qTKDZf8bW/kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aeFK+4+A; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-8b2a4b6876fso1047329185a.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 12:32:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768249971; x=1768854771; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CUq04sqpfNThT7kS3bI999/FPk05t6O1xEOGrVfWKpU=;
        b=aeFK+4+AnoNyBcCJhNDzgnr5eYmwr8jOdHoV4lGAUb9GIEL9GfVEKZ1uu4352b/tCf
         T9ljvaaIJplhyuMH7OKqhuqW9T2R+0iddch6FRM2Wnm9j9zPXl3DbGbgqDjHbz1cr/YK
         0hJgWQ7eCPXl2nz/OxfFHRwkcpCRCwHsuKtj1B8y8OpjPNad3n9g9M/CHkgK2rQnFblC
         lWcq+w95rCa6Z3yfONn9LJvg3FA/Du8U8cYDPPIopmBE4M5ClyrEutGYdaw9eWyajHqD
         Zk061Spscus1HWOnbCZ9vT+Co6Fr+ynb9PDMhEBGV2OcCPUEqVI6t004UFg1s/7jN35z
         aXrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768249971; x=1768854771;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CUq04sqpfNThT7kS3bI999/FPk05t6O1xEOGrVfWKpU=;
        b=e+8VUDkLM2bxCgn1Sx975bJowwwgEDgoT0rO0FN4JZmqy5QtV3GC5WG4lmZ5S6Larw
         /c4KwnqXewlG/54kXhAEn1IFtG31NCO/gLASB7r45Z1SeFt9gdW/j+HNy2xLK+QNnSWe
         RQ+0EKohftdsckvOnlXGQ7f5Ytxtzz6/1Uh+l0UU3PlV8N36CRvvzg0/iW+IuPV3LxG7
         knxR9N3g1IP71x84XpqiXVV76F4nO5Q96Lcophx8Z8PSRsLO/Wyxjl0EpujoEzL4uOyx
         VexgckQyhdAOE8Y5xk4gDNLxNJhXPvEZZhZCq63HzNMCdzShek0565SsHnKjvvinaTbE
         SPOA==
X-Forwarded-Encrypted: i=1; AJvYcCXLeO0J7oT0+T2plqNdgKaccTDNmywvloabOxo684CNVoWxukmxNGFoc3D+uj/8eLSbymO6fcRqVPwi@vger.kernel.org
X-Gm-Message-State: AOJu0YysyXOaEr9IQ6+pE6kJVXVpMx3waDu9Mq+OsKeFuXHtzwg4qOPa
	nOrnPOzPdFA7ImxGhM9tF/CIGkBt89VTVzB2NW2We4JxSdcgjkHflaZZ6RTE1A==
X-Gm-Gg: AY/fxX62hgoY4i/FXd3ChhoE+dGa621KfLtWMUeGK7RZmENJdSmkuf32TAAu+xD3l5c
	Sp9YX29vQkKEwxjIncqXjo5ee7UyN5ngGGlE3jiZAzRCWjwU1NbGtaX9XlfPAm7VVPUOKOif5ov
	hXC8AB08wETw+SyZ9vsulZjOJxLEX9FnuxC15331npg1FDk2XDiyYyjw+0XuyApnCzom9vlM/v3
	aNFdtxwGOm/absSaejyE62asE/HXKbJ0dsXAwqqM8Dja2FEpicb8+QQ3xiTxcD0o+MXBBD0kutK
	iDvzOZjnOxdkeRn3lscGjNhbzICnG2GcSvzi/jhCDaPwVHKCNQ7PKgntyrZY0lr9EjTu2C2Z5/x
	BoL7+EqZnDE2O6AscS9rLpgNivLHTgsAq2ia3wy1ZGl3rRhkrJ73/LOOHsG7AbJTAYzm1eNSYGf
	SdeYsf1HtIAxDHIntl91XJpD20sVQnL5fnh0xIQjUFjuyicRyMnefCOKzV1CGBGyMVnUsLek2Oz
	EzH+TeFBECDkw2MKGwMag==
X-Google-Smtp-Source: AGHT+IEj1k7cb2fd0Uhwg3rDL/Jbgy35/7F5lChJPW1hzU6BQQa/0pFpWI+28ikvSEYQSgMkRmokRA==
X-Received: by 2002:a05:6a20:7287:b0:35d:d477:a7f1 with SMTP id adf61e73a8af0-3898f99146bmr17183198637.43.1768243906956;
        Mon, 12 Jan 2026 10:51:46 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cca06b16fsm18874197a12.31.2026.01.12.10.51.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 10:51:46 -0800 (PST)
From: Kuan-Wei Chiu <visitorckw@gmail.com>
To: airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dmitry.torokhov@gmail.com,
	sre@kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org
Cc: jserv@ccns.ncku.edu.tw,
	eleanor15x@gmail.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-sound@vger.kernel.org,
	Kuan-Wei Chiu <visitorckw@gmail.com>
Subject: [PATCH v3 0/6] dt-bindings: goldfish: Convert to DT schema
Date: Mon, 12 Jan 2026 18:50:38 +0000
Message-ID: <20260112185044.1865605-1-visitorckw@gmail.com>
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the Android Goldfish emulator platform bindings from text
format to DT schema.

Most of these bindings are currently located in
Documentation/devicetree/bindings/goldfish/. Move them to the
appropriate subsystem directories (serial, input, power, sound, misc)
to align with the kernel directory structure.

Update the examples to use generic node names (e.g., 'serial' instead
of 'goldfish_tty') and fix minor inconsistencies in the original
documentation to comply with current DT specifications.
---
Changes in v3:
- Update 'interrupts' property in examples to use decimal values where
  appropriate, replacing hex values.

Changes in v2:
- Add references to generic subsystem schemas (serial, input,
  power-supply) where applicable.
- Update property validation to use 'unevaluatedProperties: false' for
  schemas referencing generic bindings.

v2: https://lore.kernel.org/lkml/20260108080836.3777829-1-visitorckw@gmail.com/
v1: https://lore.kernel.org/lkml/20251230181031.3191565-1-visitorckw@gmail.com/

Kuan-Wei Chiu (6):
  dt-bindings: serial: google,goldfish-tty: Convert to DT schema
  dt-bindings: misc: google,android-pipe: Convert to DT schema
  dt-bindings: input: google,goldfish-events-keypad: Convert to DT
    schema
  dt-bindings: power: supply: google,goldfish-battery: Convert to DT
    schema
  dt-bindings: sound: google,goldfish-audio: Convert to DT schema
  dt-bindings: display: google,goldfish-fb: Convert to DT schema

 .../bindings/display/google,goldfish-fb.txt   | 17 --------
 .../bindings/display/google,goldfish-fb.yaml  | 38 +++++++++++++++++
 .../devicetree/bindings/goldfish/audio.txt    | 17 --------
 .../devicetree/bindings/goldfish/battery.txt  | 17 --------
 .../devicetree/bindings/goldfish/events.txt   | 17 --------
 .../devicetree/bindings/goldfish/pipe.txt     | 17 --------
 .../devicetree/bindings/goldfish/tty.txt      | 17 --------
 .../input/google,goldfish-events-keypad.yaml  | 41 +++++++++++++++++++
 .../bindings/misc/google,android-pipe.yaml    | 38 +++++++++++++++++
 .../power/supply/google,goldfish-battery.yaml | 41 +++++++++++++++++++
 .../bindings/serial/google,goldfish-tty.yaml  | 41 +++++++++++++++++++
 .../bindings/sound/google,goldfish-audio.yaml | 38 +++++++++++++++++
 12 files changed, 237 insertions(+), 102 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/google,goldfish-fb.txt
 create mode 100644 Documentation/devicetree/bindings/display/google,goldfish-fb.yaml
 delete mode 100644 Documentation/devicetree/bindings/goldfish/audio.txt
 delete mode 100644 Documentation/devicetree/bindings/goldfish/battery.txt
 delete mode 100644 Documentation/devicetree/bindings/goldfish/events.txt
 delete mode 100644 Documentation/devicetree/bindings/goldfish/pipe.txt
 delete mode 100644 Documentation/devicetree/bindings/goldfish/tty.txt
 create mode 100644 Documentation/devicetree/bindings/input/google,goldfish-events-keypad.yaml
 create mode 100644 Documentation/devicetree/bindings/misc/google,android-pipe.yaml
 create mode 100644 Documentation/devicetree/bindings/power/supply/google,goldfish-battery.yaml
 create mode 100644 Documentation/devicetree/bindings/serial/google,goldfish-tty.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/google,goldfish-audio.yaml

-- 
2.52.0.457.g6b5491de43-goog


