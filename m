Return-Path: <devicetree+bounces-228157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D43E2BE8FBE
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 15:46:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1FB5D19C6E8E
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 13:46:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C0D42E6CC6;
	Fri, 17 Oct 2025 13:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nLG6Go9g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2028D34AAEE
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 13:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760708783; cv=none; b=LsQpCUsLWxIIrewb3gSc2At/ZbcfTSAGaf1d3+DQU8wSRo/EVZDrWFvBIiyiZtYv9+y1XSwvrQN9w0P/pMKhd1vQPnOY8JnbuOIfLhPxUXjoUoxGvfJxKfxcuhHqIECSOAQswWv5fiY+giVgOKQAdaRKfANvywUj+PwJUV2P1CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760708783; c=relaxed/simple;
	bh=FrcUFbCjux8hx30xA1Y96H6s9eZe6s3XK6jOYQ+DQ0o=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pHzbISIJJCmB1UeCI/pLc/Q5wvYp6xrfyv6cczcSP7g8pb+MCYzh2XVF8DUkSqs14biMq4FXqxg8l69S22SmPORs4eT0ajKv1HUTkgyy24LpobQirVsLPBzH5d0HXGI827EJA5RwmPKgT6BSt1w5MGinwWYZxhWVABtHk3VfWKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nLG6Go9g; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-b55517e74e3so2129392a12.2
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 06:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760708781; x=1761313581; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F8wxeZ73zfPxZDqjOffcWW0zKOqaQGOLDGU9q6V4WVw=;
        b=nLG6Go9gJ8qnjiEfvPKJh1m+xs6qjopJWw2lnkUkn8aKTFNnzF+GRNS3kkvY6eCZwd
         46Ph/ejYSNg9gaDqTl5YN8eNOvp3+HzkQ4LVI6X3k3V/p8YWuf0Y9FfiUvvhVInVgsJa
         3cz4HoKCiFESVbbTmXt20Kvv/8KjTH6HzmnReM+oTzZA77FliWdrVWRblEonUfz56ZNQ
         ku0tXcKhGCLTs50diNHB+vQE+FqH+uOsIAKl5T6V+kI18KkT82+HoM5yW0H3EHHtYWK6
         MqoVpUrXGxZRSXJawgxaUkzzv/RbdRsUW2rfa4XRmoNsmyJERV4cZz52vSYTDC4w4CzP
         RPjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760708781; x=1761313581;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F8wxeZ73zfPxZDqjOffcWW0zKOqaQGOLDGU9q6V4WVw=;
        b=kd/4cPGeI7g0mgpeuIUSgd4AsjEPzo7a6t5qZBLcWUws7oiyQsnoNiKbetguhlOIPP
         VtJ0Xi0VaICOoaksbVoJnnDLz+UKVJtMYySJu0uveS71ybmVR3i+uhYMbdWCPtuGjD0C
         sdgRjxssMHXRy2zayLk6CZbQ6yGl29eE9RymBt5/FpdDglKCYlM0DqEjjCly5VfpjNJ3
         O9K6BGggynKBJkseRc3Y584J4H/sdMviLI7MJNODALfM3jXXGxrUcdqvbpTN1hurjsDn
         8kxt2p1o9FcceR6VYnCjeaP7+xyp+NTQV9AB2+B7NAyictGHDXS0JMak+9blg1atSn57
         nMpA==
X-Forwarded-Encrypted: i=1; AJvYcCWzTjg3DfclCO9F/Y1hpKGadX8WkQV3AjeGKgDqycHFzsz/kyyt9Yb/Zoth3ZOEq7xRUVuM+v2sDGll@vger.kernel.org
X-Gm-Message-State: AOJu0YzUNR/fnuZVGeKDzRjBPb5HKOdFOR+5LV+GH0ZsFgK5eAftoTYj
	gFKldFGLoYibJYiX0NOjwayaw2UoEf3C1/IVGxT4RKgxhMhpjBRg1hQwJf82q+ES
X-Gm-Gg: ASbGncsq5wsYoZqRHBZ9U0cetwPQLydgbl1fX2W18aaRfBqiZH11kKSjRlYjqLFULmC
	TlKjdy2XIp8XGDlUBBBRob1/Ax/bCTDfVKsLW9UkWTIVup3DIHhSe4GngT2FGo43oFoVEg/LPmJ
	RmZeDGzanD2axLbUqF8ePiOUwmbDdPQz7JIRhnibogik8GoE1NNaEJXkpcJlIkgZgVVgeMTrDD8
	6mc64YKCeQPUKJHth2+VhvjQKu3EZRRNbwRPSmIMqwMazigxVImKJmK9kkDMwsQ+ZRxgR6nM7lc
	v8Bjvzz7M7XmhL/TQfrZfhTwVnIl4v1bqb4LLSCcnmsNG3DbZUFaj8D5Y+reEMkVLYV92AOVwSX
	p+nPtEk1Hyj6wTX4EgV2tnwBPNV9FGp0v+cB5jqkrUN9BWP7e0DXVZrS8barBJHWTllxzz6LZfn
	51t/vFXnbpwitA4STHTM9V3xlx6j3Asne2qSZ4z7HbHURg/ap1U94n4RgH/sSSPAvv5n+LRJehh
	xLWbeb7CA==
X-Google-Smtp-Source: AGHT+IHEJriQOsCE072JGcgtKsQf1uKRAkkKtWjtVovvtEqRBoI600xoTijqLOXvNy4EBRqUN6GmcQ==
X-Received: by 2002:a17:903:19e5:b0:265:89c:251b with SMTP id d9443c01a7336-290caf8519dmr45137495ad.29.1760708781029;
        Fri, 17 Oct 2025 06:46:21 -0700 (PDT)
Received: from bu9-daniel.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29099afda1dsm64834695ad.108.2025.10.17.06.46.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 06:46:20 -0700 (PDT)
From: Daniel Hsu <d486250@gmail.com>
X-Google-Original-From: Daniel Hsu <Daniel-Hsu@quantatw.com>
To: joel@jms.id.au,
	andrew@codeconstruct.com.au
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	Daniel Hsu <Daniel-Hsu@quantatw.com>
Subject: [PATCH] ARM: dts: aspeed: harma: add fanboard presence sgpio
Date: Fri, 17 Oct 2025 21:44:02 +0800
Message-ID: <20251017134402.2073042-1-Daniel-Hsu@quantatw.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the SGPIO definition for detecting fanboard presence on the Harma
platform. This allows the BMC to determine whether the fanboard is
attached.

Signed-off-by: Daniel Hsu <Daniel-Hsu@quantatw.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
index b733efe31e8d..7983ae0bd3f3 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
@@ -814,9 +814,13 @@ &sgpiom0 {
 	"irq-pvddcore1-ocp-alert","",
 	"","",
 	/*O4-O7 line 232-239*/
-	"","","","","","","","",
+	"","","","",
+	"presence-lower-fanboard1","",
+	"presence-lower-fanboard2","",
 	/*P0-P3 line 240-247*/
-	"","","","","","","","",
+	"presence-upper-fanboard1","",
+	"presence-upper-fanboard2","",
+	"","","","",
 	/*P4-P7 line 248-255*/
 	"","","","","","","","";
 };
-- 
2.43.0


