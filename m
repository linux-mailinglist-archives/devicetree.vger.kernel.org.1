Return-Path: <devicetree+bounces-254476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F12D18681
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:17:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A00853006458
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:17:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 786A3320CD1;
	Tue, 13 Jan 2026 11:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PIb7FsDh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f178.google.com (mail-dy1-f178.google.com [74.125.82.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B88034EEF4
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768303030; cv=none; b=PyP+lSSK40HXTnp+05SkI9ePtyOqARGHi7/PwC3le/bvPwqlfM2Orh3NyjIoqg7/ucBO2qgODvmrARLojT/AiBIgJqdx4+bWckCqHbtmrsI6UyNAPY1KNP8YTwyKQ1p6PauqE4F8i10Se6jCI2K8Jl8PoOrHSerpoOkkkK6Kl5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768303030; c=relaxed/simple;
	bh=BxQThXKC8yeHVSgVuMqaQwxA6jCxwJIGPEfZiSybX3c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cYuXzbG6d++h7Z5OJ+mDw/Gn6bkjT1JgJpG4VpHWVGL7fU0Msn0Ay4ztzycGlxuZjS9LkAW6p4hEiYi4uVk+Gkw7mFJb1KThkS4wNmCI0e9sCWar9rNDCAdKXmZVmQBIyTeaoHpkcMSAxEH7y9WtqKIzXhHVMCm4tQP5Ma4F458=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PIb7FsDh; arc=none smtp.client-ip=74.125.82.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f178.google.com with SMTP id 5a478bee46e88-2ae2eb49b4bso9548812eec.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 03:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768303028; x=1768907828; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3Sop77tdlghLGqlW2lD54uYlYaNgTrSImbZcSm1W050=;
        b=PIb7FsDh+seA7hrkuLzTDmTNMKQZEk61biqzq/VAq14N2kAsZ/NNTQfBP3nQ2nmHEY
         9kqJ/7Gnpz9zhTAFqmV7BjSWM4L2vrfN3ETgqyNt5mZRsg+sk94O4SL2kasIzBweQ06M
         184eMYW+Lop3rmdp6EckmvfFL5p4An0jHGaADqbAUOXg2+Msc9PM61ROwokDgAUXf55s
         LhRVO+xREhiB/IaGoiWwNZTMCbW4dc1jTEPevoJD4llAq5wy6Rq5R35rHtTY93IL4MsK
         uq3+TopGc89+b1FyiuDHAKepTKbCPq6+M7/krw07ys0kwVAB0OEpPMQXw3SPizTTwXv8
         1YIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768303028; x=1768907828;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Sop77tdlghLGqlW2lD54uYlYaNgTrSImbZcSm1W050=;
        b=VakZL74EaVoITZ/MuHj9Rf57+N2RKCU3fhMhOyKMNUbM8FbnPDbohm/u9UXqgZ5eI5
         2qXU0Io5Gc9Z5CR/1LxJDdm7GCKfTqawtX9SRE/VdWclgk4Bzhccldq2lIT0zl/slqxe
         iGMAx82Rzi4YPj7vsg8DON/kjSAbUFEoJdf0Q5B3zsoMRuN5g1GCE79+XulHxKIl191h
         fncqk4pfz6tfKhdyaS3FwQ+pZWSfVzSqcRNGBI5Shsrd+pQozyzECLa/4MLpSwa9dlaJ
         2VPEj+ENn86dNmlR7H0VsoMS9kAJP3DW/ZDqqc8hGUa8BCDg/CdX6rTbguN0YADSuvxL
         Ft1A==
X-Forwarded-Encrypted: i=1; AJvYcCX8ab6ZxqjCi4lLjH1bbg/ubbd+WdSZVOgN7wk3JijJh+lAcAE1gk97gi/s3Iiom85FN4qY7sNqtscZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzwW4+US8dJIDl0Uo1YbKsf8k31slvL2FxklwPSAW8TF1weNYmD
	Vz2aF0tY07LOnqmPSVWlpO65z8kJsBUEGX7fBG7K2e4dL/ZLQf//8NWVqhSxiQ==
X-Gm-Gg: AY/fxX4y8zKvSmzyxuGHUVlw27urtLtSZZirl+nrAfDN5hnTUeMdmbOOGA+Kmyp/B7C
	u+XuwhWYuZ4hKcIHjQqjSLno90ouXdxQY3MPefMrBd3lCSHm13lPh6C6qmBQMQONz8WWh/YW8bb
	yns0vCbA02T5XZVjQ4jZ3u0WyV4wvVXYg6ZYdzQafO1W8H8mgG1uTOgfzjsw+uzpcAoKcvWwIbj
	h97PxJXtsBvpMq6VnahfOdRiAFuqqd3WRNFsFbW3GKALrVzaAb9CeieadrGDPmboty9fTuqaMzh
	pZVEeG632ASQHtukfCH1PZJFn8dfh6xhxQvdbaNBevCrLWpWAuBHQZDvEduI08H1TnguKweXOx9
	2kIBmV2kXbNu/eFmC+9e3PU3+Fp92nT3Hw1gUEYE2vSElvEPMiNZERSo96u/CztWR2OFYZti7wn
	lJNY/BWP9eAZBXMZaoj4ucZg0O7OP6WB+9fhnCXVGWfQVET8bVWnG7cv1TDPn6sdyq9aaGbSDc0
	PN58Upk/51aN71BpHGdhw==
X-Google-Smtp-Source: AGHT+IFDZv7qvFhhROPl5N9K7peOOsuOQ4CyM9RhLyedWdWjF2fUf/8J4j0bRoJff45OX+N60FkOeg==
X-Received: by 2002:a05:6a20:9193:b0:35d:3523:c90d with SMTP id adf61e73a8af0-3898f757a29mr19808618637.0.1768296379649;
        Tue, 13 Jan 2026 01:26:19 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f8b0f67sm19483200a91.15.2026.01.13.01.26.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 01:26:19 -0800 (PST)
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
Subject: [PATCH v4 0/6] dt-bindings: goldfish: Convert to DT schema
Date: Tue, 13 Jan 2026 09:25:56 +0000
Message-ID: <20260113092602.3197681-1-visitorckw@gmail.com>
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
Changes in v4:
- Update 'interrupts' property in examples to use decimal values where
  appropriate, replacing hex values.

Changes in v3:
- Update 'interrupts' property in examples to use decimal values where
  appropriate, replacing hex values.

Changes in v2:
- Add references to generic subsystem schemas (serial, input,
  power-supply) where applicable.
- Update property validation to use 'unevaluatedProperties: false' for
  schemas referencing generic bindings.

v3: https://lore.kernel.org/lkml/20260112185044.1865605-1-visitorckw@gmail.com/
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


