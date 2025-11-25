Return-Path: <devicetree+bounces-242051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 42468C85B45
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 16:13:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 264784EF990
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 15:08:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FE3D32A3D9;
	Tue, 25 Nov 2025 15:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HKSc0f55"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BA3327217
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 15:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764083209; cv=none; b=S+kpa90dAJCB3y6KtjvJhd6hEvXI8ffRs4k6ZHT1eyE9HWqOyzjk+WRCbbw53QcZuFsHlbSBSuIeEbscC64DNiiS7PwcU61lwRV9xPShNRpkwuMmmYvscwFmeVOvblgdQ1/uHKU3f9Uo1Qu9qB6r7nqdmwC8Gqr8gyeklahSGGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764083209; c=relaxed/simple;
	bh=xIPuy2AVoMcOuThGQUd2vsGav+08nP3KI7MIQ3gZGTc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CIp+KuWVXrPxQCC6uB0PRJXdhJKl8cOkon0ZAcJCDY/ETXdE/5zDEhZ5tEwCwN3cMhzsncUfc3VuD4aUgIbugzRMArzBnqb8ARNpGeQkUACEi7H4WypWbKKJAA6W9MSDCnuW7xCxzuCN5+eBk8/VLVoPjxmIUlSar1E0gm0V9+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HKSc0f55; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-477b1cc8fb4so32199835e9.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 07:06:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764083205; x=1764688005; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EoUcpPy/VhJlkw0mixzg7KI55t0x2bZGdTWh+eiAOlg=;
        b=HKSc0f55trZDx8pjRUSNalOe5SWBnTNzpxgZ8JA5lzZNRm9uiqk8/3y/HUr5WLXwoD
         IVgBwxB7w9qLF+Ccd+OSD3Vy0UGF2IrHoJGf+sRZcOtdq2dm/e5A42aaihOwvnvL4gBq
         tRloEs72ULcDzje5nTsF/E9flpZ9o3OZr+AQbaCbKSXOQXRAPoiPn1oEnP9wlOf1jq3K
         zumkN8BxsUUeiuj1Sw2Pm1oHqmMH1icIyoOe1q2dP1BSPeNSRnMSouS7L+5x9Ix5xUh1
         kqDS351wmHxV9fHjOcLAj81oEETCEpE0zdz5yp5owZitK0j0Oew+NqdP1ndGIHD/db5j
         d+SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764083205; x=1764688005;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EoUcpPy/VhJlkw0mixzg7KI55t0x2bZGdTWh+eiAOlg=;
        b=lFNBaGQSHJLoNiJOgorjOWs56qfRVG+Jifhp9SUJo6n2OsgELF8Xy6KPZG7BFa389B
         pyzfwKUSBg+Z4hsIe4ZYGGip+/q6Pr6VquEvDXSi//ABpVucLN0z5bRBgoFMr9oyGRMW
         QFnJfV1cyGLZjWH7viE15/ELu7E+6Yyz0UxMXxic/8Zq2sXNrC78KF55LK5yfno/uiJz
         gU9JDl+oCWRQyHkPTgxJKBSzQb5GtEf0Q+UIGwyvgey7qDPAgtealqTd+canr3K6RHR3
         JRP6Dj5WieqXqcDmIXDxI5Cv9G0B4sJSQIx/4d6FYdv9/6UMIpviPMKoyPke2i81a20u
         jGEw==
X-Forwarded-Encrypted: i=1; AJvYcCWGgb5jbLF0ePsi9fRwgxq8wLWi0MLZBTTo2xzKGh/WRp4HoH77Kc+piEJxFNknV6Bj8VA3r3UFeNvn@vger.kernel.org
X-Gm-Message-State: AOJu0YyPtfOhqLl/yazxCQ80CobzhWgUtRntEMGtru/1yeIMnm5BBBGa
	NRZjkPAe5jtaSY7hdNp7qrROiaOM0qfgXwa5q0xfmKEkRVd0yvBEI+3t
X-Gm-Gg: ASbGnctVEms+UXVdN8AVSdx+nfsDCnAHw6vEsHy5lsbhkDddE5WInbTNJRZaG/viCVI
	pUBNnuvyxc7ht7VVtEqdfH/4T4VSHr+pjLCsbSTjkhBhvXTZ2iGf10DuZgjXXAm7TXxkdkvv0a/
	RtqCiTWzknRvdkOIPnPwCgFJDwaIcMEV2gktgNkwkDpuhU2b+Mvqffdqb6mWZw4vX92ToghPvNf
	IHFClvDoQ+7MGsWVX3NQYDdO2L/snPsuVA+Dh1m/cW+A/7nIpDjnftJdal7/ZWjcqYExgHi/gg4
	q3VTxxu0KX6s3OUI/Tm8AWrydLDX4EwHTqlF43tAsr8fQ5KE3jl+egNBLU9vxxjcFSk4sPN+/Ls
	Z0KDagHYe/biM/2ke5UOdlyoiZDXwjaF8X2tpQqJi1egg1tKAGJGJppCwvpSU4JuCenUGUdnnM+
	441evNe5q2W3aJ+qYzfYq1adUmIqGpBIPsi3r1Uevnq+ev+7XjC40R9ZCG12EuwH4tgGFienRJ3
	y21MPtEP4GT
X-Google-Smtp-Source: AGHT+IFpusnzk4BRnri2FE8OMEBlx88fWJcmGapVeYq2gIFQvpFMinK+o5GyvlxplqNXxaWlj/0VUg==
X-Received: by 2002:a05:600c:1c0d:b0:477:9a28:b0a4 with SMTP id 5b1f17b1804b1-47904a6867fmr39604245e9.0.1764083204866;
        Tue, 25 Nov 2025 07:06:44 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fba201sm34797809f8f.32.2025.11.25.07.06.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 07:06:44 -0800 (PST)
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
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v4 13/16] serial: sh-sci: Make sci_scbrr_calc() public
Date: Tue, 25 Nov 2025 15:06:15 +0000
Message-ID: <20251125150632.299890-14-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251125150632.299890-1-biju.das.jz@bp.renesas.com>
References: <20251125150632.299890-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

Make the function sci_scbrr_calc() public for code reuse to support RZ/G3E
RSCI IP.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v3->v4:
 * Collected tag.
v2->v3:
 * No change.
v1->v2:
 * No change.
---
 drivers/tty/serial/sh-sci-common.h | 3 +++
 drivers/tty/serial/sh-sci.c        | 6 +++---
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/tty/serial/sh-sci-common.h b/drivers/tty/serial/sh-sci-common.h
index 5d30771278b4..976e394ab968 100644
--- a/drivers/tty/serial/sh-sci-common.h
+++ b/drivers/tty/serial/sh-sci-common.h
@@ -169,6 +169,9 @@ void sci_port_enable(struct sci_port *sci_port);
 int sci_startup(struct uart_port *port);
 void sci_shutdown(struct uart_port *port);
 
+int sci_scbrr_calc(struct sci_port *s, unsigned int bps, unsigned int *brr,
+		   unsigned int *srr, unsigned int *cks);
+
 #define min_sr(_port)		ffs((_port)->sampling_rate_mask)
 #define max_sr(_port)		fls((_port)->sampling_rate_mask)
 
diff --git a/drivers/tty/serial/sh-sci.c b/drivers/tty/serial/sh-sci.c
index d7c25635bb2a..0cdaed2e1b90 100644
--- a/drivers/tty/serial/sh-sci.c
+++ b/drivers/tty/serial/sh-sci.c
@@ -2573,9 +2573,8 @@ static int sci_brg_calc(struct sci_port *s, unsigned int bps,
 }
 
 /* calculate sample rate, BRR, and clock select */
-static int sci_scbrr_calc(struct sci_port *s, unsigned int bps,
-		   unsigned int *brr, unsigned int *srr,
-		   unsigned int *cks)
+int sci_scbrr_calc(struct sci_port *s, unsigned int bps, unsigned int *brr,
+		   unsigned int *srr, unsigned int *cks)
 {
 	unsigned long freq = s->clk_rates[SCI_FCK];
 	unsigned int sr, br, prediv, scrate, c;
@@ -2639,6 +2638,7 @@ static int sci_scbrr_calc(struct sci_port *s, unsigned int bps,
 		min_err, *brr, *srr + 1, *cks);
 	return min_err;
 }
+EXPORT_SYMBOL_NS_GPL(sci_scbrr_calc, "SH_SCI");
 
 static void sci_reset(struct uart_port *port)
 {
-- 
2.43.0


