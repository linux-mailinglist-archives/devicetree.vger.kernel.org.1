Return-Path: <devicetree+bounces-120128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 449F79C19CA
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 11:05:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C47C91F22A79
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 10:05:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0B671E230C;
	Fri,  8 Nov 2024 10:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="V2JzjlHe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9173F1DACA1
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 10:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731060328; cv=none; b=NhAWhIu6I1Q9MkzvpZ6yFbmzpydpSzbW086hu7xUu9moJCMEj5bj62CsPxPDcBIy6SrMNZbzD9Grlh7UeXdlNVqLtZZbSQjEQvHuLVqRTVGpHRtEYqENIMyKwsSjTvXM51sWLEAl4+ieagpqufJWO7yabQteVvKQxZOaTsvpIPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731060328; c=relaxed/simple;
	bh=MoiEayfj/UT4sKXcIMbQM1ehNea+yL0fmJc/mIJizOM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=sL/T0McEIZxp0TkawPiutyFITdGBrp9pB+k9nEEyJ4USmD5GY4mfk8fT+SAQ8LwDNr7Eb2WFdPu4LnJ0OjnwJjB58dGtZx9Pd2yCAq2YNbGGy+BGRiI5qH5eX9A0Neyf1uyNmNXm4rvZw9KY+u7CNUgxoKVXliFN0gGI8Oz7Ii4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=V2JzjlHe; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5c941623a5aso5276659a12.0
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 02:05:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1731060324; x=1731665124; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YAL+kPG7hjMLlYG3CXYUDbVL7KyCjm02rxkbC7MtBh8=;
        b=V2JzjlHeXAIkJraCy7xNnDKYVdjf4omzERSJmJ4rHqk977pqA26q8NKNnnEGKGdoKy
         Vzarlfb8qTfR0Q7557n9xRQbIwxm+tRQTkgrN1ZEwHxS7hW/n+F6OLtPZkEp49VY6FZS
         JMr+/Cd/EziTGyubF90TOHv1olVLokRjO3Wp9QvCFMz6ZC8lf3YRozSw8DYYn8N6ePVv
         3gjBMkJ3pLwyAVLE3Da4grqJ2oxxuG/AEyOyYPdQNApPVY0kUtENOtg23ghB7EhenqCQ
         gPA1x3ITy6KowQA9qFwqkg95K2pU5FHgJHSjC0EtWr+EG9a0W+SI0KWbvj+XA/SezW56
         v12A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731060324; x=1731665124;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YAL+kPG7hjMLlYG3CXYUDbVL7KyCjm02rxkbC7MtBh8=;
        b=ky8rzXBcobT3YJZcW+9yxJS7HHrFuEoQgYyQ+5roA2pTHofT6FwxULEjy27zJ33hUr
         zRKbXNJbhzAUweJcqWc38TrUE/X6+Y96iVf6VEeZ6OFxsF9G5uw1UwZ9WqumnDmtinIk
         7ikY2Ityp1Ce4E/+Kv0YxD+cufN1Jb+fiVej837DC6PpH9GaeIdDqVNEB8qwndWIdfnq
         StAa39l/HU1tKjmcVwzxuIaQT2miDCZHNucCXb5GzZrd5yNEXyQJtYJRqFNVOLjGTmoF
         n/0vMGAYXIUI/3JlxHxAzFRKUMKH2EJm0lJEU6UDumvroM72TDTbAZEWuQWWmJRteU8U
         k7eA==
X-Forwarded-Encrypted: i=1; AJvYcCXBldEvN0byMyUTo4vffQ4EtLNhZrltUDnY99NfGwHpuVeuIycU8jCZBJblPwFEaxBoEHNq3Qyl6GTr@vger.kernel.org
X-Gm-Message-State: AOJu0Ywcnxly5yTBs79islN3Rcn5J1nzDd+96hpkSGsJclIWjj4BPVvZ
	xz3aD1m4k10e0Ki1irYwCNfBharRnzyqwiBhXSTNg7pXX9N8FQxFVNm0Rg0hnOA=
X-Google-Smtp-Source: AGHT+IG2NrO+sM70OPw1AksJyK2vMcksl4JvBsYJxXbdWHnFOrPxekQAQy53PSFcnZw9polXCbL+5A==
X-Received: by 2002:a05:6402:274b:b0:5ce:dd82:1b15 with SMTP id 4fb4d7f45d1cf-5cf097371f0mr2586609a12.14.1731060323636;
        Fri, 08 Nov 2024 02:05:23 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cf03c4f0bdsm1775959a12.56.2024.11.08.02.05.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Nov 2024 02:05:23 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	magnus.damm@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	p.zabel@pengutronix.de,
	g.liakhovetski@gmx.de,
	lethal@linux-sh.org
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-serial@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 0/8] Add support for the rest of Renesas RZ/G3S serial interfaces
Date: Fri,  8 Nov 2024 12:05:05 +0200
Message-Id: <20241108100513.2814957-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

The Renesas RZ/G3S SoC has 6 serial interfaces. One of them is used
as debug console (and it is already enabled in the current code base).
Series adds support for the remaining ones.

Patches:
-    01/08 - adds clock, reset and power domain support for the serial
             interfaces
-    02/08 - serial driver fix patch identified while adding RZ/G3S
             support
-    03/08 - extends suspend to RAM support on the serial driver for
             the RZ/G3S SoC
- 04-08/08 - add device tree support

Merge strategy, if any:
- patch 01/08 can go through Renesas tree
- patches 02-03/08 can go through serial tree
- patches 04-08/08 can go through Renesas tree

Thank you,
Claudiu Beznea

Changes in v2:
- drop patch "serial: sh-sci: Clean sci_ports[0] after at earlycon exit"
  from v1 as it was already applied
- used bool instead of atomic_t in patch
  "serial: sh-sci: Check if TX data was written to device in .tx_empty()"

Claudiu Beznea (8):
  clk: renesas: r9a08g045: Add clock, reset and power domain for the
    remaining SCIFs
  serial: sh-sci: Check if TX data was written to device in .tx_empty()
  serial: sh-sci: Update the suspend/resume support
  arm64: dts: renesas: r9a08g045: Add the remaining SCIF interfaces
  arm64: dts: renesas: rzg3s-smarc: Fix the debug serial alias
  arm64: dts: renesas: rzg3s-smarc-switches: Add a header to describe
    different switches
  arm64: dts: renesas: rzg3s-smarc: Enable SCIF3
  arm64: dts: renesas: r9a08g045s33-smarc-pmod: Add overlay for SCIF1

 arch/arm64/boot/dts/renesas/Makefile          |  3 +
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    | 90 +++++++++++++++++++
 .../dts/renesas/r9a08g045s33-smarc-pmod.dtso  | 48 ++++++++++
 .../boot/dts/renesas/rzg3s-smarc-som.dtsi     | 25 +-----
 .../boot/dts/renesas/rzg3s-smarc-switches.h   | 32 +++++++
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi  | 25 +++++-
 drivers/clk/renesas/r9a08g045-cpg.c           | 20 +++++
 drivers/tty/serial/sh-sci.c                   | 64 +++++++++++--
 8 files changed, 273 insertions(+), 34 deletions(-)
 create mode 100644 arch/arm64/boot/dts/renesas/r9a08g045s33-smarc-pmod.dtso
 create mode 100644 arch/arm64/boot/dts/renesas/rzg3s-smarc-switches.h

-- 
2.39.2


