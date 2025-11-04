Return-Path: <devicetree+bounces-234871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA0BC31ACB
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 16:00:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C7D2134A7AF
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 15:00:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E36C3346A9;
	Tue,  4 Nov 2025 14:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NH3KqUC4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B711233469C
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 14:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762268310; cv=none; b=eGdlf7tofhqyPsYw9NMerbHaq6DwhU3xhrwKqOTafRLa3ZMwZ1+KbBFBH8Q6FIr4jWZ2FvEEWMercf8Eb1VHwuBVhmQK9C/zBIt0faWRWhbxgjXynXu/2ywYFZ1lyfJ32lJ44SeLMKAm75OBgzWt1qi2fW+PT3oABVs5krc532M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762268310; c=relaxed/simple;
	bh=jofWWnwmoG4Nrm+u2R6rEX8xNv7yEnOjBBXdOGfBxTY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=tB+DLKVbhMgH7LCynjpcptggwWNYaE7brrIB+ShEHJT5w72OO0v/jrkKtwRfjkztKRzYWFuVSbolCY9n9rlP9dgjuypk6tH/wmecQ4NphbZT3TN72QHlFHBCqElsmqF8TrEKDKsA528yXyd6oegYjnHP7Ji9fMtbv8p37czVU/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NH3KqUC4; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-640f0f82da9so916768a12.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 06:58:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762268305; x=1762873105; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4pEYynqLlf97tqquz7gBzDn5fbpmeV4yt44zAz5u1qM=;
        b=NH3KqUC4M5jMP9sD0dDu3QZfAqYyRwTUrw2F0b7M8T3N1likkpBoRiPByQfMTbX+fx
         iQZ5bNrzTeqk9+DbNb4m/7efA6EcrkW9MiSSWHdQ73FEsJzspwFNsEnY7JsawFnoYibK
         4ISwSW+wSJW78DOYpG6V2avuFGY+mcNM5qJ0RzsqfzmQgprDBNBWPfnziBYKfdMhlU5t
         c8x3jn6nI3EqpF+qhe/KULm+L2IOQ8ragVRy9Xp+gZqKa3jHVkm4E61Y4N0l9TImSbrF
         qpzaFYWS/XgpUAjICj1fAJNkBSAxLxpivbyLrSNsw2GNjCdKPS1UGhz3OpCsflW2kxMi
         etOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762268305; x=1762873105;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4pEYynqLlf97tqquz7gBzDn5fbpmeV4yt44zAz5u1qM=;
        b=rsZ7j/sNIMAtUm1pAbLfvKAtYZpUNi3LIKYiAnthV1071vDXR8mCV0A9zd25/IqhIV
         RI619WlJ+ev52FhoJC9HL1qLPFu9Md60Z6i+leDJss48QVSfa65X6h3RwdhoV5ggzZ9A
         ml7mw48XV1d40er06/QaRRhKDlCxhkJvkprPC6mdMzmzcAZWsao4WB/tJcJVQltJ+Q1W
         h2B+5HkK3hCP5jtA9OW+YWrKXHyvGYcaKazmXJna/v01fZPMJLl7k7q7/qXOBySEPFi8
         kQ1wpcPFQObJ+sAujM7mpDxONnGJPRBUJ3mImj2xtOn4H1AuTDrp4MAxNq+5YOSUjNzl
         tKCQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+KkxhCW6YnDJ/pNuHCOHMT18nUqh7HSZHU3NOhxp+sfdlhNHY5wk+1gqXxdpYDFcVc993d8iqkvTE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8CnxInKDt8BawkSZRJzmATudXZhzx+Y9xt9zrIHx/Og0GEBRD
	AX/qHZHc2to1zUI4lxvy2ESP38ZU8ApzA7fWmiD/A4zOIMRkEDKoYuMG
X-Gm-Gg: ASbGncspA7LiXFvUgg61CynWi2TqeTcqz/WUQn01h2SvpO+dB3Maq98sa0Ut7r5M8it
	J20PfVQ4jdxGQtQGmjIyXiufK+mpoSScL5M6alSmp/BSa7jappAQmAdK0Vr1yVWs+dzptp7mp1a
	ltbdP54JcnzmP7ItXjn0dMvyf5gmJ++JGWU7ELPdueD53igGWZ/CEfwI/lLUvNpnZqQph9W5/4Z
	ydxmEJmExc5mdGDJFAEalQ6XvJMGs2XVxmSMwHzcN2GVNrXaNmwuSTwzDlZ/swQvpHdLoOmRJQS
	tE53D1RxULCWUqqHG4uHAkzwKz3QwKKod4giTAcV9Nza8S8TALKFXXy32TKiFv1MgBu1AR0RqoS
	SABmXavTcqWf1EY7tOPY0dPbWgh5GSmfW+CUj0M3EG+kJjn2G++Gl4/YqouOPsG5gcMcb2DwErZ
	/tswk5/wUylPMlkVkyXA13Rgee/3Cjt0RaHRxK8lUc/UwqJC8=
X-Google-Smtp-Source: AGHT+IFCrq3nCnD3LeMjo88kUj+iYOsaxz83hK9DRyJQvnnXwEepxp0u4Czy8i8uiy1jj1mUE1acXQ==
X-Received: by 2002:a05:6402:5114:b0:640:f041:c7c6 with SMTP id 4fb4d7f45d1cf-640f041ca48mr1477907a12.21.1762268304776;
        Tue, 04 Nov 2025 06:58:24 -0800 (PST)
Received: from tablet.my.domain (83.21.17.47.ipv4.supernova.orange.pl. [83.21.17.47])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-640e6a7fcd7sm2288874a12.37.2025.11.04.06.58.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 06:58:24 -0800 (PST)
From: Artur Weber <aweber.kernel@gmail.com>
Subject: [PATCH RESEND v7 0/7] clk: bcm: kona: Add bus clock support, bus
 clocks for BCM21664/BCM281xx
Date: Tue, 04 Nov 2025 15:58:18 +0100
Message-Id: <20251104-kona-bus-clock-v7-0-071002062659@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Alex Elder <elder@kernel.org>, 
 Stanislav Jakubek <stano.jakubek@gmail.com>, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, linux-arm-kernel@lists.infradead.org, 
 phone-devel@vger.kernel.org, Artur Weber <aweber.kernel@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Alex Elder <elder@riscstar.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3090;
 i=aweber.kernel@gmail.com; h=from:subject:message-id;
 bh=jofWWnwmoG4Nrm+u2R6rEX8xNv7yEnOjBBXdOGfBxTY=;
 b=owEBbQKS/ZANAwAKAbO7+KEToFFoAcsmYgBpChSNG1jE7pGayE9k2YeIEYEceIZhdRQbjRVvf
 c+4M2DM7p2JAjMEAAEKAB0WIQTmYwAOrB3szWrSiQ2zu/ihE6BRaAUCaQoUjQAKCRCzu/ihE6BR
 aDg2EACPQfLq3G9R87y8E6cISkzuRCn0I42CEz+TaLiFTXrXAIRNojHo/LdGDTz/kRnGRi0WpYn
 0cCm5clirUWqzMJ9c+ifTT6OOs6412rzwPIZfBrDikH/jQDNQml0N2BMkws4yT5Q0D7chgtzgzt
 jpDz6oIHJ6kIv50ZEewPZn+/ufxFnmIn6JCElW8WN6/NBT/01FTbafOUzNqikpZw82IvP3qH0HQ
 7sNz7f79BaBFE88LN03h0eze5i0AQ4FoYyQfLUs2zJtFWinTfzglhfRxgAWO34meuiSt5M0O/lQ
 h+xQhlR4mQ+5QiwOjikfQUuzhUlipswVgraOCfbgq4gchs8wTMr9leseDbZQPGL+pqEhjOtGKEQ
 sfbHEC34K7ycd3gUUm/H5rojBylUXJ9avCQWCDXaFDqqD0RAbxnsiWYoTbgjCNExH6WaLCDwyRb
 X5fkDnPxnWO9RGifbFG3kgCYqqZDQFEDMFxUbdlKAWTzgLAzaIQRH8PvbSf0u9cNw3I8gI+s9lT
 vHWI6tgOesxEfXfHSQrxTmV3QQyieWoCLfsB/B3a5+qxZF0or/1FVG31aJaubgFGTnJCSGCoz4M
 UPKMvKuyAg54i6hS4MK0LiCPzwI83mbS8RyIhBrSZTFSO7OpzVGORzx2zT7ceRHBvdpfrcXODts
 7i3OXHOAZld/E6Q==
X-Developer-Key: i=aweber.kernel@gmail.com; a=openpgp;
 fpr=E663000EAC1DECCD6AD2890DB3BBF8A113A05168

This patchset does the following:

- Introduce support for bus clocks. These are fairly similar to
  peripheral clocks, but only implement policy, gate and hyst.

- Add matching bus clocks for BCM21664 and BCM281xx peripheral clocks
  and update device tree bindings to match.

Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
Changes in v7:
- Drop DTS patches to make merging into the clock tree easier. They will be re-sent
  in a subsequent patchset.
- Link to v6: https://lore.kernel.org/r/20250813-kona-bus-clock-v6-0-f5a63d4920a4@gmail.com

Changes in v6:
- Rebase on v6.16
- Make kona_bus_clk_ops const, add a new commit to make kona_peri_clk_ops const as well
- Link to v5: https://lore.kernel.org/r/20250430-kona-bus-clock-v5-0-46766b28b93a@gmail.com/

Changes in v5:
- Pick up Reviewed-by trailer from Krzysztof on patch 3
- Rebase on v6.14
- No code changes since v4
- Link to v4: https://lore.kernel.org/r/20250318-kona-bus-clock-v4-0-f54416e8328f@gmail.com

Changes in v4:
- Rename moved CLOCK_COUNT defines to CLK_COUNT to avoid redefinition
- Squash BCM21664/BCM281xx bus clock DT bindings commits together
- Link to v3: https://lore.kernel.org/r/20250308-kona-bus-clock-v3-0-d6fb5bfc3b67@gmail.com

Changes in v3:
- Fix DT schema example in BCM281xx bus clock bindings
- Move CLOCK_COUNT defines from dt-bindings header to the driver
- Fix BCM21664 UARTBx_APB IDs being out of order compared to clock
  driver
- Link to v2: https://lore.kernel.org/r/20250303-kona-bus-clock-v2-0-a363c6a6b798@gmail.com

Changes in v2:
- Drop prerequisite clock patch
- Move clock/bcm21664.h dt-bindings header change to dt-bindings patch
- Add BCM281xx bus clocks
- Link to v1: https://lore.kernel.org/r/20250216-kona-bus-clock-v1-0-e8779d77a6f2@gmail.com

---
Artur Weber (7):
      clk: bcm: kona: Move CLOCK_COUNT defines into the driver
      dt-bindings: clock: brcm,kona-ccu: Drop CLOCK_COUNT defines from DT headers
      dt-bindings: clock: brcm,kona-ccu: Add BCM21664 and BCM281xx bus clocks
      clk: bcm: kona: Make kona_peri_clk_ops const
      clk: bcm: kona: Add support for bus clocks
      clk: bcm21664: Add corresponding bus clocks for peripheral clocks
      clk: bcm281xx: Add corresponding bus clocks for peripheral clocks

 .../devicetree/bindings/clock/brcm,kona-ccu.yaml   |  49 ++++++-
 drivers/clk/bcm/clk-bcm21664.c                     |  99 ++++++++++++++-
 drivers/clk/bcm/clk-bcm281xx.c                     | 141 ++++++++++++++++++++-
 drivers/clk/bcm/clk-kona-setup.c                   | 116 +++++++++++++++++
 drivers/clk/bcm/clk-kona.c                         |  64 +++++++++-
 drivers/clk/bcm/clk-kona.h                         |  14 +-
 include/dt-bindings/clock/bcm21664.h               |  17 ++-
 include/dt-bindings/clock/bcm281xx.h               |  24 +++-
 8 files changed, 499 insertions(+), 25 deletions(-)
---
base-commit: 038d61fd642278bab63ee8ef722c50d10ab01e8f
change-id: 20250212-kona-bus-clock-4297eefae940

Best regards,
-- 
Artur Weber <aweber.kernel@gmail.com>


