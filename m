Return-Path: <devicetree+bounces-250879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 94411CECC78
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 04:43:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D8DB43000B30
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 03:43:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74EB021B9C0;
	Thu,  1 Jan 2026 03:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b="UpAgZ8rv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A83451400C
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 03:43:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767239010; cv=none; b=H9Rk9vIQJr5F56VJWUIfguKXJmj0jHNZcW3mcyIZr+2wJzX8NHZQQHu07uUBXXKz3svXud3xm0PJ3MJzQXUixwzVtxX1o0cJKzmDXEJQDxkFv3XUXGUMhTdU/xvqKPald+uyuDun2hLDAs9X96q9n5V+igRBGvIFje14cdYKKEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767239010; c=relaxed/simple;
	bh=P4tIQDuoi7RdFtzK3GKr8sdQdPHzPste7wf/G3lesoM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Bz5eY2r5NmMqJrfd3xMcUgG+BgxIsrimqE4ZFWet6WEFG7+W5KQ2T0vSLb+4pyAqlACyYc2/q1xTgfBavW2eu/6iZ8YzJd9KHyzb98/Slpay8nq1HJ7CgfQ+nUnU7PjpB4aW/+NC1dAf6JletZM/59ELx/S+4gl9X+34LIn7AFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b=UpAgZ8rv; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-29f102b013fso140632715ad.2
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 19:43:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google; t=1767239008; x=1767843808; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=anwAdBjb+lU0KYvGjD1Jd+3iHfgqJI/N605hNnmQkb0=;
        b=UpAgZ8rvh7vSZknCs6ldHuh+CiTusneedfe7mKq6hcVXpv2I2Z9cGjmKAps7QyjmM+
         1AYNt8TB2QEM9K9ZRMPUrJDcPiTyuPjSiF5RGnRwVkXF9amxDQ3ePpOQcxP93h2y+DfT
         MivX0Io0kHHUYXf/mmeVr7ESvnzwMdyfR+zrw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767239008; x=1767843808;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=anwAdBjb+lU0KYvGjD1Jd+3iHfgqJI/N605hNnmQkb0=;
        b=UNRnKbOGxwm11sww6IaX/CqcMC5YnHAHwK/5DtSPhwhE1sYARnHJ4/GCnSzAs7Dyt+
         gtIETpiPjaoqVy8QvxiVL9mx/FrzAtL+MY0J5OzUJb+0fGse1lTIYX4LZeFhdoWNURiB
         yUn2zacTG0JSL75GF9pUIxwMJKEXU6qv4t7mAbphAEmC60veJu8n7YgmC8w/OzTIzV5i
         FxFNxbygFSbROg7KQF+sFuA6Qy5SisBpjiTHyNuV+7PpOkLUXMSdNpROdBvxGR4T2J+K
         HYef3hRYFgi0oCfw7/HLHYhW+4pKBsV7kxM6mkII6uPqTCZYykwFPUoRz6kv2yVhHuGr
         WsQw==
X-Gm-Message-State: AOJu0YxEk7qHamhYt6UdoWHea6+jvUSSmV1JsehnNyBZLmbexzRWWWme
	1sQRG6IO9BvqY1iTjo9WEDuW2TFZupvUnRu5MAeXR0d8l5bsAU9tz5mUwz3ys/LdQIs=
X-Gm-Gg: AY/fxX5IXZEC7qo5jjj4wcyXJ+AdozYNc5DbxQAHI8Pb7N6clhgkeIOOzRFT3jAWHai
	Fp4hBJr5HsqViBUc/6u7S4nT80VH5tD4QhP44Jajd6ONtPF7+CIyqWXM+uNu2s99rZC1MWUjogR
	vforb3e+x3RU5D8OGY8IIR6PnreBg1wkWh+vmIFmahFNro5J0xE//95Z/NfLfuN1wCyxkwyMg+9
	WckEkmNA/CH+Vl0SFh2d8oPrAAcxMCozx6ztr3FpX4VxLsp82E1ggKViN0SG5NzfLEIXdTZLxXf
	eBn5n+bl7WbGEGkDlY+CMkj/wZGkX3lEKjcsDdcvsQVdmwEEVxzy3qqF8zfVcxmsfWArgUR+lGA
	wQWkuaFyOO+ddRrRPxbAEFlo4ZV9nfJz493WWIB4dumCNrsYsoTUzxQcVf+wg40IymADMsHFGO3
	ovKQMsSTQHUD7BFDPdux12VqW0r1dd71D78g1gBdJ9YZjcUzKvBGhMRMEqO9jyXW8=
X-Google-Smtp-Source: AGHT+IEBmx+ZQ/eW4AZPhKidcqGxynp7l2P+gbNiDxUTbC7O06/aJ5TszwOGLh7AoxEwnSSyhb9L0w==
X-Received: by 2002:a17:902:fc48:b0:295:2276:6704 with SMTP id d9443c01a7336-2a2f2a4f6acmr310394615ad.51.1767239007827;
        Wed, 31 Dec 2025 19:43:27 -0800 (PST)
Received: from shiro (p1536247-ipxg00c01sizuokaden.shizuoka.ocn.ne.jp. [122.26.212.247])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a2f3c8286esm340437965ad.33.2025.12.31.19.43.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 19:43:27 -0800 (PST)
From: Daniel Palmer <daniel@0x0f.com>
To: krzk+dt@kernel.org,
	romain.perier@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 0/8] Sigmastar DT warnings fixing
Date: Thu,  1 Jan 2026 12:42:58 +0900
Message-ID: <20260101034306.1233091-1-daniel@0x0f.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

v2 heads up: I didn't ignore Krzysztof's request to squash some commits,
I wasn't sure what to squash and I thought since I've fixed everything now
it was better to send a v2 sooner than later.

I've now fixed all of the warnings except one remaining one that seems to
need a change in dt-schema itself to cleanup:

serial@221000 (ns16550a): reg-shift: 3 is not one of [0, 1, 2]
        from schema $id: http://devicetree.org/schemas/reg.yaml

The way registers are connected in these chips is weird. I think
they took their peripheral block from an 8051 microcontroller
and jammed it onto 32bit CPUs so all of the registers have
weird spacing and it really does need reg-shift == 3.

v1 blurb:
    
I saw a slide at LPC that had sigmastar in the "hall of shame"
for DT warnings. I finally got some time to look at this so
I have fixed the ones that are obvious and quick to fix.

I'll fix the rest but they might take a bit longer i.e. one
of them is about the register shift for the UART registers,
that'll need the binding to be updated I think?

FWIW this platform isn't dead and I have been rebasing all
of the out of tree stuff that make it useful (Audio support,
display, hardware video decoding etc) but its basically stuck
on rewriting the clock driver so that it is mainline-able.

Some other people have taken the limited support in mainline
and my out of tree stuff and made it run on old MStar MIPS
machines too..

change log:

v2:
 - Fix the regulator names as suggested by Krzysztof
 - Adjust the opp table name                
 - Add a commit to fix the cpupll binding and clean up the         
   warnings for that
 - Add a commit to fix the memory node in the infinity2m 
   dtsi to fix up the warnings about that.
 - Add a commit to switch the default led trigger on breadbee
   from the undocumented activity to cpu to fix up the
   warnings for the that.

Daniel Palmer (8):
  dt-bindings: clk: mstar msc313 cpupll: Correct clock-cells value
  arm: dts: mstar: breadbee: Correct regulator names
  arm: dts: mstar: breadbee: Correct LED names
  arm: dts: mstar: breadbee: Switch from "activity" led trigger to "cpu"
  arm: dts: mstar: infinity: Correct opp table name
  arm: dts: mstar: infinity2m: ssd202d: Correct memory node name
  arm: dts: mstar: v7: Move the reboot node
  arm: dts: mstar: v7: Add sizes and ranges to sram

 .../bindings/clock/mstar,msc313-cpupll.yaml     |  5 ++---
 .../mstar-infinity-breadbee-common.dtsi         | 12 ++++++------
 arch/arm/boot/dts/sigmastar/mstar-infinity.dtsi |  2 +-
 .../dts/sigmastar/mstar-infinity2m-ssd202d.dtsi |  2 +-
 arch/arm/boot/dts/sigmastar/mstar-v7.dtsi       | 17 ++++++++++-------
 5 files changed, 20 insertions(+), 18 deletions(-)

-- 
2.51.0


