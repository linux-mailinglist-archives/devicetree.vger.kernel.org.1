Return-Path: <devicetree+bounces-232576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC14C191BA
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:40:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 03575580808
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:29:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0507230FC2D;
	Wed, 29 Oct 2025 08:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g0HLRTty"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D02003128A9
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:21:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761726067; cv=none; b=bFAgG72PAXxUdJiAvdUNcCxnwMXWMerVKQRAF+EWZpnqm52dMUTPluquuy3F67ybCDXfrQZ5xvduYugDMDHWuW5k2eKzju9burGFkmTEm0vXCsLTj+hMdnakEssYNNzxJRKvgoeVWcdY6x2X57f6dNxmOJ5YUOkahpdF4hfHdHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761726067; c=relaxed/simple;
	bh=z4QNcF9Eyw4gYd86FpxSeDFA3Dt0WD6vaP2DFa/zU38=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ec8YZ+yhytDSBVN6965Bf6GvEE/bQaQHtLP2qQradUpVGsj3xxv+vKxmK3J5uTSeIO/1b1lliyizXiRo7WYBUeSWxLXd+RZDX6Tf5WNB0eXtaDWbHsZn5ZJrAn0xepW/IO1fQcmnUEaFEJW9JA9LwPZbbxhKYaIK/7DLj4W8KEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g0HLRTty; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-475e01db75aso30082765e9.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 01:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761726064; x=1762330864; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QS4cXKd9nHCeMiJrsvhtqK1LgpajA4mb3ahi9ySMK/o=;
        b=g0HLRTtyOyd/pRIoNTaXTJTZZFwHoiOyXgWilj8PYDHbzm1opaHhRCVAK6NWkwJYRL
         K22y3szhtgy9+feOF3dkV2KHj8vtNBZMGRZyCx6kSWH0FUUkLXPtxt8r/SNFofaHda7y
         M9DkJwGm8pWZQ99FYWOqWTJnYvfaflkHKqfbYEOPaGaQb8IPn0j6jADYZrsLPnx/tncT
         XQAqoEl9nE9PIZpn3AaRjtdOGitzpn9IIPj2mrzhsDAQnXAPwsD8iI9I00Ob1XG5iQ4x
         hkDDbEcWERb3r6QkPMCvf/QzrC10uKYQ+59haizha5CHroq4yfpNfz68Vsex7L5XYdyJ
         c8cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761726064; x=1762330864;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QS4cXKd9nHCeMiJrsvhtqK1LgpajA4mb3ahi9ySMK/o=;
        b=vhMoIUsolPIelziEb5NmwxVl3Y5F/jCz8kB12rZdOKJs5xz7+Y6GphxaSnr21ZSmI2
         iWk6l5VdNgPLkOMx7SwmfGCGPFiTttcCf5Ax0GxvwmFjico2ZaWzvEZ4cUOmvzYisi4L
         YGxpHeVmtN0PnMjGuan9UjFGyf+iVrhrbm5NUoxWADtF2DaEOxK5wCjlE/DdYUQdSVmT
         oIGQt3g2vo9w3FcIcqoIwz2yHVBNEys5/kOp+uFrpCxBesi7/p9m0k+BgZ5d/BUpemrB
         Oo03tyUqyYDbuB+bYgW9ecfUsPjl79LC7Rzvn0Qle64kzJthxBFmd3v9h+0va/jPAVW2
         ctGw==
X-Forwarded-Encrypted: i=1; AJvYcCXBsNzpMEhNciISN7m9xwKocaR1bHHBbEoErPgVbwZ8mACWSk03ytsFTnQ3dJTEwBWN19AtfrnWqgNj@vger.kernel.org
X-Gm-Message-State: AOJu0YyLh6wN/dQiBtf5yW+sX11XXH3SZypkftVxUFXEOBca1ZwRZvR2
	mg++Yptm3lDRNYGPGVsDTQDuUC97eVN8r7NqeHY0gXZ5Hk4WOv7GitbO
X-Gm-Gg: ASbGncveApomJxdFtl25JPo3uYwrMJ1a4Jelnmm3w1gi8ogZGQ2192ztuz6pR9r6w0R
	tINuTYdfXEzkdZPkkfc1FQkiHbdVP/++09ZBqUJFWVBRN7+SlmWrtZgBsE6YYYHvAXYp9ze0Ku/
	zSvXCXL3UdMj9b9MfFM1/0gxltQGUiu8dglh6mdqGWt0wG4LwAtThGufnawy+p9B/MhJbPEMyON
	BJNjrRyx8mq0j7GwappmYB4FWv6Cz3LyZK1elj4UsRqvJ3WYnWRejl7RJ4tZkqST/e1zu0qyy55
	PlCEFSOPOj3WZtWAM/WjxElYho4Og/CFduHViJeX5MxDPX6auAYHlWeMy3ttBd/+o3RGqU6znHl
	wP+i5DclARxw17fGB8iQEoVzWpgB/ZCRA4ovrxOELPxGGgF/g+WitL2t959P2h0gfC5J17Ii2T6
	6PjeiYULonovStNQsKhZ103VfyM4zSGCHRTL7HE5DD44OZ+6/DdzXr94tdZYN1
X-Google-Smtp-Source: AGHT+IGpz04tUrXPPdzvPALWiB03f2PPa2ldKep1ogo1wBz96/Sv/MlNxLIMNVL8/snHnNzdUBSogQ==
X-Received: by 2002:a05:600d:8389:b0:475:da13:256b with SMTP id 5b1f17b1804b1-4771e3cb77cmr9172205e9.38.1761726064072;
        Wed, 29 Oct 2025 01:21:04 -0700 (PDT)
Received: from biju.lan (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e196a22sm35191915e9.5.2025.10.29.01.21.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 01:21:03 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>,
	stable@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/2] dt-bindings: serial: rsci: Drop "uart-has-rtscts: false"
Date: Wed, 29 Oct 2025 08:20:56 +0000
Message-ID: <20251029082101.92156-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251029082101.92156-1-biju.das.jz@bp.renesas.com>
References: <20251029082101.92156-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

Drop "uart-has-rtscts: false" from binding as the IP supports hardware
flow control on all SoCs.

Cc: stable@kernel.org
Fixes: 25422e8f46c1 ("dt-bindings: serial: Add compatible for Renesas RZ/T2H SoC in sci")
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * Updated commit message to make it clear that hardware flow control
   supported on all SoC
 * Added Ack from Conor
 * Added fixes tag
---
 Documentation/devicetree/bindings/serial/renesas,rsci.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/serial/renesas,rsci.yaml b/Documentation/devicetree/bindings/serial/renesas,rsci.yaml
index f50d8e02f476..6b1f827a335b 100644
--- a/Documentation/devicetree/bindings/serial/renesas,rsci.yaml
+++ b/Documentation/devicetree/bindings/serial/renesas,rsci.yaml
@@ -54,8 +54,6 @@ properties:
   power-domains:
     maxItems: 1
 
-  uart-has-rtscts: false
-
 required:
   - compatible
   - reg
-- 
2.43.0


