Return-Path: <devicetree+bounces-249987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE298CE5582
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 19:23:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 814C2300983A
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 18:23:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5819622A4E1;
	Sun, 28 Dec 2025 18:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AMSqfDnt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B798322157E
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 18:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766946204; cv=none; b=FyHEVkzBk5rZcUJ7FOTMl6RyLziFyRRKiz5Z66zMBem6P4k7fyf0yox16wB3QGnyx6eRJqk6pFs1T86sMnbYyitJtnr0OSkOQ/iWQ2fWAcobD9c0oLI/fAHi2CB7yYBBDyhogmWE7y14af/W5jTWnnH2tQPKwGR8kNdJ8AGmssI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766946204; c=relaxed/simple;
	bh=GNdsGhLWAjPtHybVUZwNwUls+lSmwION9C+FutEVaAI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=YrKU21RWqWlrycxQGCOhIzWAJcOCpF4nqma8RfJlDkD1+9hrDSqavEthEec4lvQfv5f23kzdphhv5jrazQNbgpCOk/qRB6njZ3mj2ZcO743iiJWROBOKtwb4O6syxXqeJX0aFdeq3bvKE+J1K67TtZtDW/ewqLSPpA0KQUoD+PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AMSqfDnt; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7b852bb31d9so9978419b3a.0
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 10:23:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766946202; x=1767551002; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QeDSdNZFPeVa6HDvCoOYO+9p7A0DV8ybWdKjNHOp+qw=;
        b=AMSqfDntx3g7C/lkR7ohfvpLOE83iJS33XKuRvNS2GZBWlnrNpqZk1qC5FxzVZ/XLB
         +GHWfsOa1cqXhBe7ZsN+Rtl+6Tw1urosXFNYH6B6FBL9rlTb0ZU+UH8rHcmXQ1BSlUw4
         x8R8fLe4LRs54/eU9NE+Op6yxk7QZvi4WEfDsHAnJwBw1EvDSj7e0F7q0nypM/8Coae7
         9uNO21t4l5f7NLZU7278ccRplsMQSSKTiqijn9dZKpM8si18hQaMY2LXvKj3yFsg4s6a
         CnAov95MQtreSpUtGAeyfro9gSROprt2dZ5duxUQ3sWAwClgnZDsTXoApkvBgnd0kqbv
         4+KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766946202; x=1767551002;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QeDSdNZFPeVa6HDvCoOYO+9p7A0DV8ybWdKjNHOp+qw=;
        b=hojcAhIx+U2yrlt8uuV32vSMnw7Oj+5u+nrcYtpmvlHWOD4vr68/hLz8RmrU64J8aw
         /m/S4eY22vrpRCQuUB4AWi0Gl481Vr0C3XTSncfapE900WBxz/1udgKxa8n51an4dpVJ
         VTN/i00QY3pD4bF23wfjRsXmYywhYM/FE/JXsNHCLkV1/zrHAEbgJxaCKoRsSLRwIkX5
         rhQhBdul97gH8OH/DG1cV6aFD/1XnVeYo9E21P0JsaaWgntuEz4jA1YX8bxELctNEtU3
         QVNlPkHKoQRC08tHFGAsP85dBJHiJ0InQNp+eYaVBNBgpQdUXizJpoflUQ/6ugT799zO
         CYwg==
X-Gm-Message-State: AOJu0Yz1gjDmidiceV4ozgFj7ngyyRpSfM4Pr6JgNPnavp8Aa6YiQtoO
	P1o7AWiTsrLzDV0Hie8cByhRPj6Ya4giM9Yx+t7j7OJ7s2BsUpqb8TVb
X-Gm-Gg: AY/fxX5MLZXAKnR5KSn9jSEWbTtLuo+98NYHVgSX/LkWbbOe2llgdnhQTmpDyMTp/Bo
	kIRWgMw6KkUYB0UTMP20iqlfbUTYx+CT7VlIukTHWNfB3ik5V8DJ7StXyyr+WTnJZHT3fcydXd8
	TXF3M3HHa8QTHfEL85Ve4/4lsvGFOe5SloPy36Hk4eOtkwkO3A+7wBn9s80712Oawwm9fFW7bha
	ccG5niz2V3O5dkxKGMb2SvnLiwXe54dkx+oh+ZfoaJ6SPIcxDHPl3yshRAqgqD/CqjX28LwDG41
	EeRj+470LaydTQ9BaL1nIxiRc2QAnPQW0yknsTIPH5kENCLyqtjYULDTo8CwZId+gC/NtpMC17r
	EOiOOnF/mfZpwKjVjJEAVQEPJEUceFEvxWLvTrin/GAZjyorkrBeelrobgXp4JYbHyA8Id8L9F9
	8ibp88XSFmponrvM/Z57D0tNAVAUX9/XqiGTQ3pAylzwY=
X-Google-Smtp-Source: AGHT+IFKng9YDxqymUd0O4EhoC70dKkY7AKl9HVF4EIAvoDTwUAlP6lo1Cv0UYS8JhxRaysQ/FVv4g==
X-Received: by 2002:a05:6a00:278b:b0:782:7052:5167 with SMTP id d2e1a72fcca58-7ff650c7fe1mr26251152b3a.6.1766946201986;
        Sun, 28 Dec 2025 10:23:21 -0800 (PST)
Received: from MRSPARKLE.localdomain ([150.228.155.85])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e48f3d7sm27399695b3a.51.2025.12.28.10.23.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 10:23:21 -0800 (PST)
From: Jonathan Brophy <professorjonny98@gmail.com>
To: lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Andriy Shevencho <andriy.shevchenko@linux.intel.com>,
	Jonathan Brophy <professor_jonny@hotmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [RFC PATCH 0/2] leds: Add optional instance identifier for deterministic naming
Date: Mon, 29 Dec 2025 07:22:43 +1300
Message-ID: <20251228182252.1550173-1-professorjonny98@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit

From: Jonathan Brophy <professor_jonny@hotmail.com>

This patch series introduces an optional "led-instance" device tree property
to address non-deterministic LED naming when multiple LEDs share the same
function and color.

Currently, the LED core appends numerical suffixes (_1, _2, etc.) based on
registration order when duplicate function:color combinations exist. This
creates several problems:

1. **Non-deterministic naming**: Registration order determines suffix values,
   which can change across boots due to probe ordering, async initialization,
   or module load order.

2. **Non-semantic identifiers**: Names like "lan:green_23" provide no
   indication of which physical LED or subsystem they represent.

3. **Breaks userspace automation**: Network management tools, LED control
   daemons, and hardware monitoring cannot reliably identify LEDs.

4. **Ambiguous numbering**: "lan:green_23" could be mistaken for LAN port 23
   when it may actually be the 23rd registered LED of any port.

5. **Namespace pollution**: The alternative of adding vendor-specific function
   names (LED_FUNCTION_LAN_PORT0, LED_FUNCTION_LAN_PORT1...) pollutes the
   function namespace. The instance identifier keeps standard functions clean
   while allowing contextual differentiation.

6. **Breaks naming convention**: The _1, _2 suffix was intended only as a
   collision avoidance workaround, but has become the de facto standard for
   hardware with multiple identical LEDs.

**Example: 48-port network switch**

Current behavior (non-deterministic):
  /sys/class/leds/lan:green      ← Port 0? Unknown
  /sys/class/leds/lan:green_1    ← Could be any port
  /sys/class/leds/lan:green_2    ← Could be any port
  ...
  /sys/class/leds/lan:green_47   ← Could be port 1 due to probe order

Proposed behavior (deterministic):
  /sys/class/leds/lan:green:port0   ← Always port 0
  /sys/class/leds/lan:green:port1   ← Always port 1
  /sys/class/leds/lan:green:port2   ← Always port 2
  ...
  /sys/class/leds/lan:green:port47  ← Always port 47

**Example: Multi-domain power indicators**

Current behavior (non-deterministic):
  /sys/class/leds/power:red      ← Which power source?
  /sys/class/leds/power:red_1    ← Which power source?
  /sys/class/leds/power:red_2    ← Which power source?

Proposed behavior (deterministic):
  /sys/class/leds/power:red:mains    ← Mains power indicator
  /sys/class/leds/power:red:battery  ← Battery power indicator
  /sys/class/leds/power:red:usb      ← USB power indicator

**Design principles:**

- Backward compatible: Instance identifier is optional
- Extends existing convention: function:color becomes function:color:instance
- Follows kernel precedent: Similar to eth0/eth1, gpio0/gpio1 naming patterns
- Ignored with deprecated "label" property: Avoids conflicts with legacy code

**Alternative solutions considered:**

1. function-enumerator: Only supports numbers (0, 1, 2), producing names like
   "lan:green-0" which are still non-semantic. The 48-port switch needs "port0"
   to match physical port labels.

2. Deprecated "label" property: Being actively removed from LED bindings. New
   code should not rely on deprecated APIs.

3. Different function names: LED_FUNCTION_LAN_PORT0, LED_FUNCTION_LAN_PORT1...
   This pollutes the function namespace with hardware-specific combinations.

This RFC seeks feedback on:
- Property naming: "led-instance" vs "led-subsystem" vs "led-context"
- Implementation approach
- Additional use cases to document

Jonathan Brophy (2):
  leds: core: Add support for led-instance property
  dt-bindings: leds: common: Add led-instance property

 .../devicetree/bindings/leds/common.yaml      | 93 +++++++++++++++++++
 drivers/leds/led-core.c                       | 43 +++++++--
 2 files changed, 126 insertions(+), 10 deletions(-)

--
2.43.0

