Return-Path: <devicetree+bounces-250614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 365F0CEA6E0
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:10:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 481A83016349
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:10:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8724A32D43B;
	Tue, 30 Dec 2025 18:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jRzCiLdG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB12626E719
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:10:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767118250; cv=none; b=oBawbYhSWnXH4O2MrcMvJo+nVWfMj0EUqoZgSR0jt4epT1ZaNd5PkiPWus1tLIamdoXKDf/wVjn0jDF2UqY9s2t4WuUXSfC+nkp3FlTR2gmKVL3SjxMytrlIKYqB3NUTk527Nc3PLodAqWfBFIhgvzlUWKt3c0o9bvVM+14rgqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767118250; c=relaxed/simple;
	bh=FgJuNpgaVD0m6yaXMmc2AfRGD+fA194iC5P4RORcRWk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Vw57ZO+LP9rz+5RL4WK7ihK80cCo/STbR2ej5xCXCN83Pn9ouhtbe4yC4Knn1Y0T1Oh7DOuQlMAw5E1+qaFfgmSFOaRZP2Qv9Ui/nB3XSA+xS6PFNIh6UiWSYJAgtXavSKLl6o1dsdTO3OGjXaNL6HEsXedWcjzTLDB0Y4e6zfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jRzCiLdG; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-7b9387df58cso16351826b3a.3
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 10:10:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767118248; x=1767723048; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=U4o2F4BeHSek0PRiyhvtGksMp+wv7OaL4BHi8U8EOKo=;
        b=jRzCiLdGMBSfGpEhCtHyr/JU/LptiDCZJEfmCo3lyH4ZesMzZhDixX+HxuZEFyPObA
         ZDvpl/Gxs1yfacsLRce18+COii2z9dVuDBajN4FRNV78pFxUkv235fbCPaJq4XQg9O6n
         j1CPpchgDgEKuoLO6HeY1VlDvlyTMlGtBrkuuMf02sobB+f7Fex4MrA/cgfJxIAvRD0Q
         cPlPgIPQviFjZavRoU2bCBZ8o6bk67sLSC4lDj2emB4fzAV4YxoZQj8R3buNGfYso0s7
         8OYHmLp5igt5IcVWyeK1rJLulTvO9gGkS60xrtl5lNH0d556kwNYk4hz0L93gmf+YsQe
         R9xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767118248; x=1767723048;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U4o2F4BeHSek0PRiyhvtGksMp+wv7OaL4BHi8U8EOKo=;
        b=Jf6zysrF02hthT23k9+s98glQDy4jy/U0qKsxO4EtrfrZ23ORk4C/tdfmCE+h0gdH+
         pRLtVM5XcGXpWjeVYamq/SL/b9e2nd9oipwCGpk4X6Q0lgwcPW9UT1KigYx8pcA9yMo+
         QxojbOZfynYfonGgUkmb2aqQAQtzaAeXF2AHbZaQMDnDkVonXncNFLAOjreyMirbjIcW
         Sg7wBkZUm3L/odCY4D+HzQu0R5FA7zzzg+QkjGC1C+NK+TWuHvtgutDHINIU+qHKbXc/
         X44dFiXrSpf6q0PlwLVO/h3ACwOQ3QrqKWbD8tPDOXR5L5NHh9Z3bSkJI6GSWm7uTaub
         Zm3w==
X-Forwarded-Encrypted: i=1; AJvYcCX757zVGRZvO5+Sx5uNI3X9uJ7SRsdQx2YDlH6AqtVxGf/O67TTTZlwOKhptlBi6ua+yHK/NRdW5Of3@vger.kernel.org
X-Gm-Message-State: AOJu0YweYtUkZRX7Eoc4uY9EApFCapG6ZF5/o6DLx8YdyQkzvxF3fIob
	Keun/QZ7Fs0aQHn1oIodzI6LwNedgX2f+3rNfESBdZkHCeLFSCO1RqFt
X-Gm-Gg: AY/fxX5QW1jYpFKRZsP7yLGtXBmowcNhB6YlWD19oUgLpg/Iy1mxidiewJXkgwVpqPJ
	hbIpKR2+3tIe9T8onAz1vXI6uJ8xDYDbaEh21UQGP9bCf0vracud5+jLgrRc6ucmdNv0pEYuVqb
	7qogyQTVCtz/XNG6Bet1Pu1gvpO5PSnVZXvzINwpSPFzLS7jqUZMlEamNQcrn5CjAb5jbqoND4s
	PWzkKiRRvzdyzBE/iqI+tyRdW30p5ELYLVkNKGiHBOWP1ZiCLDC7rM8gVpGAbwH80/W08PmBH9w
	lU6PDlQ00MygshE/o+OBXE5HbBwteWy9OuVlB+BwgiZiLD9rrocG+ui7TR56UUVDtxDPztpCGi/
	yXoocXxMFTwfniEQOybTrgDn2z8LrER/RQu9LBb6HSEvgX5mnhxY80JCTjnH0TKpmm+mb40Z+pm
	xTI/+P3LQoxzdFNSCy5An3nl5no6uWcKLT8dYjw/VtNc9b8tkyS0yGDmnVOhgU3UPOboqfy0mX9
	KAl0r36jRs2JUAfMnQxOetDNqGf1sL8
X-Google-Smtp-Source: AGHT+IF7WV9lO2SRprnaSS6rXcXG+rahUOdxgA9XI3QZjssiw/UqNuh+1y3CwU7o6es14BggMVW//A==
X-Received: by 2002:a05:6a00:420e:b0:7e8:450c:61ae with SMTP id d2e1a72fcca58-7ff67063910mr30261999b3a.69.1767118248003;
        Tue, 30 Dec 2025 10:10:48 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7bc69728sm29598278a12.19.2025.12.30.10.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 10:10:47 -0800 (PST)
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
Subject: [PATCH 0/6] dt-bindings: goldfish: Convert to DT schema
Date: Tue, 30 Dec 2025 18:10:25 +0000
Message-ID: <20251230181031.3191565-1-visitorckw@gmail.com>
X-Mailer: git-send-email 2.52.0.358.g0dd7633a29-goog
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

Kuan-Wei Chiu (6):
  dt-bindings: serial: google,goldfish-tty: Convert to DT schema
  dt-bindings: misc: google,android-pipe: Convert to DT schema
  dt-bindings: input: google,goldfish-events-keypad: Convert to DT
    schema
  dt-bindings: power: supply: google,goldfish-battery: Convert to DT
    schema
  dt-bindings: sound: google,goldfish-audio: Convert to DT schema
  dt-bindings: display: google,goldfish-fb: Convert to DT schema

 .../bindings/display/google,goldfish-fb.txt   | 17 ---------
 .../bindings/display/google,goldfish-fb.yaml  | 38 +++++++++++++++++++
 .../devicetree/bindings/goldfish/audio.txt    | 17 ---------
 .../devicetree/bindings/goldfish/battery.txt  | 17 ---------
 .../devicetree/bindings/goldfish/events.txt   | 17 ---------
 .../devicetree/bindings/goldfish/pipe.txt     | 17 ---------
 .../devicetree/bindings/goldfish/tty.txt      | 17 ---------
 .../input/google,goldfish-events-keypad.yaml  | 38 +++++++++++++++++++
 .../bindings/misc/google,android-pipe.yaml    | 38 +++++++++++++++++++
 .../power/supply/google,goldfish-battery.yaml | 38 +++++++++++++++++++
 .../bindings/serial/google,goldfish-tty.yaml  | 38 +++++++++++++++++++
 .../bindings/sound/google,goldfish-audio.yaml | 38 +++++++++++++++++++
 12 files changed, 228 insertions(+), 102 deletions(-)
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
2.52.0.358.g0dd7633a29-goog


