Return-Path: <devicetree+bounces-252716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBD5D022DB
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:45:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E94DD30021C5
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 10:45:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C03AB38BDBB;
	Thu,  8 Jan 2026 09:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T+JoVAKr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 778C2451DE8
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 09:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767866253; cv=none; b=ruLr2weKm/bH10+M+oxBiU9xJFFzo46+uuDhIy8t+8hgeiIDx1Q0rSpdo4rGO70d611c0YdOrkSjQ4NOEx2i4Qctthhb8N0DsWhfXP/NoiI9FanBkKl1aWMdCC8bjVZl+3hQcruxASxr3RvGfkcJOieRP0z7tNOyDb6FsxMc9vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767866253; c=relaxed/simple;
	bh=F+HI9weCrGvZqZdvGzT41fozcChUp0aiMuJIzq7Twlk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MH2ihbh3DekcHpwxaAZcCExILnBe3cV57TinikRzFTN9NXRN5sr5Y9NEuqal4OaC957bz2HxgzpOtGsmVQsL2+t0EVosKhbZnnjCXEEH5uuDne/B5XY4JEDVL2e8DkBpbHXwcQphmZ51LOwxrp0gPbxSEduzY1HUvyz6KF2RPeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T+JoVAKr; arc=none smtp.client-ip=209.85.217.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-5dbde7f4341so1408514137.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 01:57:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767866245; x=1768471045; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mNWaW5uyJY39Ee5wA6GOpA1sGvgkAjuELUOx96wJt9s=;
        b=T+JoVAKrb20L9hukfjfXzFloH+HfyGdN1Y7dMMLWbhci2rzPvp8h/tyIJ01DNNMLwH
         snKTEKkrx8/lxqeflHCOnpXafRuOUVKafKsdebO2uLlBiTd+q3BOith1ho9W42ZrgWrf
         XLJuuSu3SbMB2AeEcNXJ+WxJl9PANhlzMv8irN2VDNEFR/DzT+rbdE3eqWtyt4AdRhpf
         TQA8BXul+xaZ/EtU1FYRePUyNh4xojj05gIrJBDPAqUyxfHkeDQBBndkYpMFl59WK875
         fv/w0NuxmJXZLOMI0Ku5TzrkyD7G6XRN+zOlq37ZBQbcjvC+xBMF/53oEijYjGyVclcJ
         bu0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767866245; x=1768471045;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mNWaW5uyJY39Ee5wA6GOpA1sGvgkAjuELUOx96wJt9s=;
        b=UUEEi7l5jiNjUVH9FAJBqTmUJPtgRvIBJeWF39KSQH/HEYhBK37USGh9cxwwewSbS6
         mAbT/XnCzzWliT1tYKRNWMuJvSr2Ud/0k7TSpRccMSd12n+UNvifEJBAonl6LqeGjVEs
         FIj3K/PKmC4eDWF3YZ3SXTu+WNqNAIIN47+Tm9+579p9EORnncoytT8zahpyo+x/M9O4
         z15tEb5T7swXf1sdwIfXMuJj4mwb+82+z//ZUJif3nJbsJDNCUgP27R0c8waCwC1Fd1B
         j7Epbr2VbcKxTh/yJdlimjaF5qeZzy0tsiJB6ZEIbiHYzyQgBZZMFKsfNFPGI3Fq95CA
         yRaw==
X-Forwarded-Encrypted: i=1; AJvYcCVJoxpKBoBOIB/cyz2QfTwQ/x8ntJFc0zhlSwVRHIXVGVu9L2XhMcQ8VL62gy8cWh/1Ny9wqoCj+ifJ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywd1TdMcuhHfJQ02b0bPCGFqbYP8PCO8g0K/YSpixlPTzs7uggM
	k4fxm1UVi9Rq7E81fQvh+0RsLRbtWDFAIVeRqfbf0sWI0nt2thrV6nFErpfAxg==
X-Gm-Gg: AY/fxX4ShRpTfeFdrQ+0erUpIbn1KpTCcHhBgQtg+hjr0uzZL54+5ajlcVA11E3j4qA
	+bnbO1VoDOwvqRSN9R9YWq1Wu4ZEiTuTnjzeRqCu27ilL/OQSqiVGYXv5h36ts10xAUhfgHWHB1
	7VRp0HIPB5TtH5pY5PMsp2c+ianjUoFlKLLkHjmhxrOpHzanMGO6EJ9V73dgrmMsgs2jeg+GKKy
	GQIkHIxrGjHWmrO8Un5NjKOZfUblft8RkRfaFNRcLmyOr91YCkwQq0Zkuvnm6KICOFQK2+46Y6D
	Wl1FSBb+bjLvWWbEitlhBLsThBc9vl0oxo3eCSUCNVUfz+ejchA655ubfqGI99/vyCA8vEa4rHi
	fpbtbmI1ElFe4XqtL07L7eGGX7fFlsE9/mKjF56e/HyK13J31MsxHPzMaxSo/yZ4xNoem4RxV7d
	+LhzQqtFDT6XLx6A1O84xZNDjIJBUfLhodM+dXHFylM4Sf08+peNL5GJrgTp0bfhQTwNDZU1QF3
	vp/rUEvYdHK6cQyr9Kd2BZIcQFi8+0z
X-Google-Smtp-Source: AGHT+IHWNlnOIQoHRnNghuP/KuzB06upezljxGJd8aibyns6gUrJ5zRj9QVDAk4WOeIpJQ1oogEYew==
X-Received: by 2002:a17:90b:314a:b0:343:3898:e7c9 with SMTP id 98e67ed59e1d1-34f5f831c74mr8109800a91.2.1767859745886;
        Thu, 08 Jan 2026 00:09:05 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe991dsm6900582b3a.16.2026.01.08.00.09.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 00:09:05 -0800 (PST)
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
	krzysztof.kozlowski@oss.qualcomm.com,
	Kuan-Wei Chiu <visitorckw@gmail.com>
Subject: [PATCH v2 0/6] dt-bindings: goldfish: Convert to DT schema
Date: Thu,  8 Jan 2026 08:08:30 +0000
Message-ID: <20260108080836.3777829-1-visitorckw@gmail.com>
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
Changes in v2:
- Add references to generic subsystem schemas (serial, input,
  power-supply) where applicable.
- Update property validation to use 'unevaluatedProperties: false' for
  schemas referencing generic bindings.

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


