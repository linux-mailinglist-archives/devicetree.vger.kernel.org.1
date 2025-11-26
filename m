Return-Path: <devicetree+bounces-242481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9C3C8AC93
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 17:00:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B38AE4E5361
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 15:59:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15B6133BBD9;
	Wed, 26 Nov 2025 15:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SeHRMm7h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AC8A33B974
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 15:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764172758; cv=none; b=tEOVE7iLrbQyzk7Jxghvme8CyDEFAaeUYwrYIfcNJ2hWbZFIEECSR+qZP5CrjvsXWE+rUHIM8bD3medTefSsrkDZOE1gVuEpTTObJuh/UUt+0fo/vQdpqjFfa/hmyTNh6wheoU89rMjy307oVxqzndRebxPUUdpH7rgXkGEyOeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764172758; c=relaxed/simple;
	bh=ERKv6BJ7samXRoCYS1XzO4dixkxXVYyT22KVc2Mdd5k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=e1Ukyp2Yz3FS9cYE0srGSkhIlP6nNTZZnUtztxPsQNhoCML11pdtakFEManOk6ULY791b0WW7KuILcefpnv0IkKGzsQo722CfxC7oRrR0X40c1daad3Sfo1yCjR8cqKPkm5t7MEH76kOOMhew9+NaMfP4hAGnINstioii/PLUGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SeHRMm7h; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-42b3b0d76fcso4287254f8f.3
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 07:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764172754; x=1764777554; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9ESZxS3g/bI8A7c471R+dv7haNkg67ON3Q/C+bV3xdk=;
        b=SeHRMm7hfvMEXVXEfOnKUhKaAePC6hNhnY4/XeHHz4gqZ6H7RtLnD20uEIoIEG4vXL
         peiK/ExCLXzJyB6QbazqMCZM/cOBRsXmLWrhA88uINaD/Lo6Alomxj+0NETkteaXYuaS
         vsItktNkjDnZCKvoecT6Wqj4Dkr6d0ycwQ3KpcIGsWGZ54pLjze/aOQodkr5IieCbzRg
         6A9+hMroH1+hZTQq7TG981eB/fQu1kUonyncfrEUr5trqdtqQqcdchfz8Xs9IlOogdeh
         mwTRWl13zyR6rDrILdSYSkp0Wbxhfk0pBDYyVDrbM+pKLseEJxBPWFO5ha3Ueb5djyXx
         Ocbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764172754; x=1764777554;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9ESZxS3g/bI8A7c471R+dv7haNkg67ON3Q/C+bV3xdk=;
        b=Kb3JAvcSoRfTjx8adYcqsF8IgLp63Z1Tz/H8y/0gcXcLco9PY5WGLwshqh7wYe5F3u
         sgnANF/mMYVJRzkcqAW7ClB8DEqTBWodJHBLzazq2lhpK9TEM429uivw5Li3tdbIMWz9
         nItI0P0X2AVOwlLKtZtKmcLDhnVRR42+PgVTDRGUXaU6vIaxSskdWBqxUkCpQGPNjPgL
         XFixffjHZQJ+32R1ekftcrJYQrzeyn/f8PjwRwsRjeqPbdus5zTPGHN5LhgKIoo0UFOy
         FosCZ6PgmI6QoNlSOIA15buOuArrY9E33WGH8sasOB86Zzgl0YAkE3GotyK4J2lN9OR1
         fA7A==
X-Forwarded-Encrypted: i=1; AJvYcCWGiUoWi433XxDFX86xqJFvJB4yl3XAtMwVr4vsmevrVtpsBl04wkSZmN/qqWpniUr9uL3PoMrw0wR/@vger.kernel.org
X-Gm-Message-State: AOJu0YxV/WsNcQ+69xhaf/Gc8afkrAw4kzn3tvTmBnsOk6PFYEC3NbCQ
	po33VZhxoKOuF1JarT1v9rVEocOTc6tW6CfMijgddHYDaJTZ6ECjLLpC
X-Gm-Gg: ASbGnct62/9oQxDObGB6Dzb4EfiY990yvqp9iqcrJQmSBwNfhs4v/yhNBqeS+amE5Go
	DPsHfzz82BEL1JHR6MjLdW/fklC23YV0jFLiRug66CuGICqMiy41q36DGsnz9LZzbXlwswsE3fp
	Z1/+eC8URyB4wfIwIcvwpjlOGq9TZkN3rZOQVeM/viaHdT77f1dr32Zh6u54qLnija+0Xn8fPcl
	MVFp7mQ6sP8JH2sPxeG2iyQ4/RCoHHksLSRf7aqHBACtGgnuowP4R6HYY7GbhmkVpEkYB1Df+fY
	/W5XcurWqgJgO+IFwSniaa6KRUrlqtL3rLNVwW7vtUpIbItB25bbXi0fxrXE1IHRRS7YqW8CtDg
	JAgay2hqoaLLQiDFBb6c0aVvJ8djGiuisP+pcHE0of3G97mXoqncj+eY1LeUyTqwAwUZzxDJ1Xo
	9hCRBOXKUU1KG47y3BungzzemY9+dliFQ3obNQE8K/ExKgXA78YAB5751sQ/SiDO5+JEFLJVg=
X-Google-Smtp-Source: AGHT+IH7UdPYYyTxG5Pih2eonGUNBGlykwZfMhHzrTZlGeBNNpxXs0Z36wXzLdlDBoBQwu9XGSaSKA==
X-Received: by 2002:a05:6000:612:b0:429:d4e1:cb9d with SMTP id ffacd0b85a97d-42cc1cd8f84mr19353425f8f.8.1764172753491;
        Wed, 26 Nov 2025 07:59:13 -0800 (PST)
Received: from biju.lan (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cbd764dbesm38197188f8f.27.2025.11.26.07.59.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 07:59:13 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	linux-can@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v4 0/2] Add FD-Only mode support for R-Car CANFD
Date: Wed, 26 Nov 2025 15:59:05 +0000
Message-ID: <20251126155911.320563-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

The RZ/{G2L,G3E} and R-Car Gen4 SoCs support additional CAN FD mode called
FD-only mode. In this mode, communication in Classical CAN frame format is
disabled. Update binding/driver to support this mode.

v3->v4:
 * Dropped the node added in example for just testing.
 * Dropped the dependencies from covering letter.
v2->v3:
 * Added check to disallow the usage of both fd-only and no-can-fd.
v1->v2:
 * Added conditional check to disallow fd-only mode for R-Car Gen3 in
   bindings.
 * Dropped has_fd_only_mode variable from the struct rcar_canfd_hw_info
   as it is checked by the dt schema validation.

Logs:
root@smarc-rzg3e:~# /cip-test-scripts/canfd_validation.sh FD-ONLY
[   13.914196] rcar_canfd 12440000.can: global operational state (canfd clk, fd-only mode)
FD-ONLY
 [INFO] Testing can0<->can1 with bitrate 1000000 and dbitrate 4000000
 [INFO] Bringing down can0 can1
 [INFO] Bringing up can0 can1
 [INFO] Testing can1 as producer and can0 as consumer
 [INFO] Testing can0 as producer and can1 as consumer
FD-ONLY
 [INFO] Testing can0<->can1 with bitrate 500000 and dbitrate 2000000
 [INFO] Bringing down can0 can1
 [INFO] Bringing up can0 can1
 [INFO] Testing can1 as producer and can0 as consumer
 [INFO] Testing can0 as producer and can1 as consumer
FD-ONLY
 [INFO] Testing can0<->can1 with bitrate 250000 and dbitrate 1000000
 [INFO] Bringing down can0 can1
 [INFO] Bringing up can0 can1
 [INFO] Testing can1 as producer and can0 as consumer
 [INFO] Testing can0 as producer and can1 as consumer

EXIT|PASS|canfd_validation.sh|[00:00:19] ||

root@smarc-rzg3e:~# /cip-test-scripts/canfd_validation.sh CANFD
[   13.914196] rcar_canfd 12440000.can: global operational state (canfd clk, fd-only mode)
CANFD
 [INFO] Testing can0<->can1 with bitrate 1000000 and dbitrate 4000000
 [INFO] Bringing down can0 can1
 [INFO] Bringing up can0 can1
 [INFO] Testing can1 as producer and can0 as consumer
[   37.246104] can: controller area network core
[   37.250607] NET: Registered PF_CAN protocol family
[   37.291606] can: raw protocol

EXIT|FAIL|canfd_validation.sh|[00:00:04] Problems while producing data from can1 and consuming from can0||

root@smarc-rzg3e:~# /cip-test-scripts/canfd_validation.sh CAN
[   13.914196] rcar_canfd 12440000.can: global operational state (canfd clk, fd-only mode)
CAN
 [INFO] Testing can0<->can1 with bitrate 1000000
 [INFO] Bringing down can0 can1
 [INFO] Bringing up can0 can1
 [INFO] Testing can1 as producer and can0 as consumer

EXIT|FAIL|canfd_validation.sh|[00:00:03] Problems sending data from can1 to can0||

root@smarc-rzg3e:~#

Biju Das (2):
  dt-bindings: can: renesas,rcar-canfd: Document renesas,fd-only
    property
  can: rcar_canfd: Add support for FD-Only mode

 .../bindings/net/can/renesas,rcar-canfd.yaml  | 38 +++++++++++++++++--
 drivers/net/can/rcar/rcar_canfd.c             | 14 ++++++-
 2 files changed, 48 insertions(+), 4 deletions(-)

-- 
2.43.0


