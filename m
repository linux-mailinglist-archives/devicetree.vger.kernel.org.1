Return-Path: <devicetree+bounces-243147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A9EC943B9
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 17:44:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 70361346E9A
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 16:44:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AA70310784;
	Sat, 29 Nov 2025 16:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O+Ine2No"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8047930FF10
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 16:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764434618; cv=none; b=hGy3VWuBSFWYNv16xCHFHSCRsxbL/82OskHkctMvCqYunNOz7k0NUV2rme9HyQraf6hVlaKiN8w1IK8kWFVTWCTRutiQmGx8+fHVxl5pYPiuv4Xr6mRQGw1x3VQLdelSCer41C5wAHGyoqwply8xsT10e9gVWOkmyai1gSqw2S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764434618; c=relaxed/simple;
	bh=rQpDIU6guW5TisAhVN1RrekmUcn6qvG4tAu7NY2Kzs4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pC8QSCNW3vC673yB/UakQDEaf4pm+LbNZQscMO8A3B+s31hPGMgNJrRt1GY9sUxcZya1i7KRa97kW9Z2jZU0TfBEKk2N3hp5r0lriim6CcwaI0xsGvtzP8LdK3Vu2+DXlcnrWoaX5EjYw6iPjYcR0j8hwEOlzyo2MaIWgrClGVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O+Ine2No; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4779d47be12so22077895e9.2
        for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 08:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764434613; x=1765039413; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EgwVwBYKZhPFgsmAEFQqqtyF7p4aZUluwhsWNQ7hNV8=;
        b=O+Ine2Noht1W7ImlGptacEUwwSbonkIWDqJUQOJ3YHOgrQz6nMszR3xOiSQH8cLuJO
         jhFK3Qkj6693Ie/oj05M6e3HfZKGydelsam7X419oHXNir4KY6M0aFOOIY8SZb8ha9lY
         qLmcrXXMNA8gMFOlh5WeNtCNzMcaH4hgtRewAFdCjLqnXMW2zEwxXvslluiMGNMFP+p5
         3TrfBmtIjn33t6u3arwcKkZ07edaXB5ycjg92pp5HNT1++dPVPtEY54wjjzsKfc1Q6wn
         GF09wVBQCOWOWcq/9Q2Fg3EIVPdFPHfzuf8UpCjIfj3QcUhajsgt6rO9/c+VAf9fDvSE
         mEZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764434613; x=1765039413;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EgwVwBYKZhPFgsmAEFQqqtyF7p4aZUluwhsWNQ7hNV8=;
        b=CGvrcasS0cHRkagx+ExaZ2XroB5jfbrrQ+g/c51YMWzUEJFp6Tc20TWa7UX4HaNR8J
         3w6wSTIErO8P8cD0+8nXIuQndWWP0Dhg2dHt9f2sXAZAUgsxM34QbnZyOyi2kmsGCuz8
         ZP9y12MhSwj3a1VVyHlANNVnHDlfU3HsUhn7JhggJWG3MZWxj+zOIEKZEH3JJFFAoQBn
         KMrHKIG+S47m9fkdIaR0C88Eu1DOWuSZABGs1AlFP6+siXop/CBf+7v5TIbegeh7lsHz
         TeZ205pS8nPpbv2+HKo/3lmbTJMLfbBSQvaeeVTVgStp5uvp3ecMNx+j8QLsZdS+7GUe
         GW8w==
X-Forwarded-Encrypted: i=1; AJvYcCXywDxKgZkTp/4vsx5M7A6epLVaAdXmqffIlDNzgnajoTE7szx2pF2JI2pKDl0YSPDBZh7VZup3IsEc@vger.kernel.org
X-Gm-Message-State: AOJu0Yy34TZXux1HCQTgIFYGjF9EewTz6FQHvIBXVwScB09YcjLP6lpl
	Cik/VO+QbiLffjIwgh9S4WV0aTBuo4i9s/L9gsF5mkdtvJdYxU3+69Cn
X-Gm-Gg: ASbGncu0MqCPtjCfMjasqcIIHpv4i0yMiVJsEVLggESr+dWURUwF4Hygi59VuiKmQDx
	ubYsbCga3rsFLin/0XjcdyLoG6Ee8+AVuz0t0tCD4CwoFJFVv+np4OocHu9yNjnx8kdzVpnvIbt
	2m1G2wrFCHleZHHjpojUFeujOhZSsXIl++kkgb4BH1wGuK02tPhtH/MZCDmePEVzcrVua2oOKkg
	tV02HVCs9FN5mn5nWY+gpPI/HB+FvGeVy75rqe+h0JvSMH41CzyHc+Cwpg111A9XiEvqMqCXxeI
	Ye0lrixtaeDwUxnZ1Nmm+/HRu444pp8d8LJzNL9k36KU4VPHTDv7ZbZHfq7+xa5pGccteFVWrQJ
	VUfos/Mdnxe74DkEIEdnLek5AoMx0/FLWdcUf5p/IXQEuHeB2J3ZjEo+KC9M705/iQ7+2RinM35
	0DsYned08U/0c+fgVIcvwiVxSv3hpiMnW7yUw/e42+uVYdAPqA080KY6DTLU7yo9JBkmANc8ARG
	ufMBnuUd+CfN62tzU6lCa0gkjY=
X-Google-Smtp-Source: AGHT+IGaZAREtl6NXRyEBHs3whc3cv9+Ie6xWn8QQTMCAIyc9I7Ia0lzjDPmCBCB7fkXaU5WpwDQ8A==
X-Received: by 2002:a05:600c:840f:b0:477:df3:1453 with SMTP id 5b1f17b1804b1-477c01eea66mr306351795e9.28.1764434613285;
        Sat, 29 Nov 2025 08:43:33 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1ca4078csm15970060f8f.29.2025.11.29.08.43.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Nov 2025 08:43:33 -0800 (PST)
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
Subject: [PATCH v5 07/17] serial: rsci: Drop unused macro DCR
Date: Sat, 29 Nov 2025 16:43:03 +0000
Message-ID: <20251129164325.209213-8-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251129164325.209213-1-biju.das.jz@bp.renesas.com>
References: <20251129164325.209213-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

Drop unused macro DCR and its bit definition.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v4->v5:
 * No change.
v3->v4:
 * Collected tag.
v2->v3:
 * No change.
v1->v2:
 * No change.
---
 drivers/tty/serial/rsci.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/tty/serial/rsci.c b/drivers/tty/serial/rsci.c
index 158173077c2f..15ed6cf5c6c5 100644
--- a/drivers/tty/serial/rsci.c
+++ b/drivers/tty/serial/rsci.c
@@ -24,7 +24,6 @@ MODULE_IMPORT_NS("SH_SCI");
 #define CCR3	0x14
 #define CCR4	0x18
 #define FCR	0x24
-#define DCR	0x30
 #define CSR	0x48
 #define FRSR	0x50
 #define FTSR	0x54
@@ -119,8 +118,6 @@ MODULE_IMPORT_NS("SH_SCI");
 /* FFCLR (FIFO Flag CLear Register) */
 #define FFCLR_DRC		BIT(0)	/* DR Clear */
 
-#define DCR_DEPOL		BIT(0)
-
 static u32 rsci_serial_in(struct uart_port *p, int offset)
 {
 	return readl(p->membase + offset);
-- 
2.43.0


