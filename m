Return-Path: <devicetree+bounces-84815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2400E92DC8A
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 01:19:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 477B21C225AA
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 23:19:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 706F21527BB;
	Wed, 10 Jul 2024 23:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OvwzKFX0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0140E14A0AD
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 23:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720653586; cv=none; b=Gdt942x0TzaL6QInf0pxOk+FRoYG6txi4VisdSe2Q/JalXw0HI0Gde25cGaEg/ckc0MdsxqFLDOgadzPhBJ3LtKxKYnoMJ+kZeDSMbue/g+bguwatCPdiWJnTYsRiUn7vXhR6Qe+Y1blgmC3OJUtVdXTLZRkS/o6U+gpIHdnMiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720653586; c=relaxed/simple;
	bh=oEZGVSpKAL9LQyHy179I5iFvzv2SL9qCVoa5cIYUU6Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZPcG6j8fPLbvX4x/qB6NYB9eM4gKlmzXYbGwDKimbd6a98QIm7/nvXjVuYT/DDYzvzZ6CZG7vdDr2TkcHqfIYeYps564+7g6fMUdneyMmJK0Vb7ph75toeXn3j6abt6CwTOalGtdCaE2VKx/jyYGSNyfd7FK8FRUKZATVUaekAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OvwzKFX0; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-70847d0cb1fso20878a34.3
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 16:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720653584; x=1721258384; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+tCloSSGf2ls5vVphG1Qx4UWE9Y/t0QcbBLIGFUGZYQ=;
        b=OvwzKFX02TxpoAA47zE2/FbpD/9CSaoUYE2dKimMRIJ+NhciI/0DSv4Wc5NNGSbJy9
         7trny2cHKNPY97ABFpUOqonB/9Z+C/bvis1bjuOcSPsY1qDaZRbzeXk+OpkQ4vNdAro2
         JWl9EZckOybCHEB9WGdxDO/mIMaZ45QONZJdeb6mm36hVIHGTyR1R2dTD/oZa9RYjvi/
         ox5+lprxDxXU0kukeHrGr7RP+8S9iopvMfi2zfRWeKLaGULfigT/hu4C4qSzsQ0RjNwh
         gVPfUEN0z/e7o9OM17ksO1sNIMiAPbdVR23TO8r8F2PG1dv0UWInXMv7k3yMP2YkhIw4
         Rytw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720653584; x=1721258384;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+tCloSSGf2ls5vVphG1Qx4UWE9Y/t0QcbBLIGFUGZYQ=;
        b=wnWStzmIEDMBxTmXeJkPk5aZ9x0lKB7DrUHgRTe3hupPeJSMGA3MlJVG+CA/QAuX/t
         i92NKlJBlAoOzOm7g/6vgZnqryXu+ErI9ZdUIDiT8LerNVCt9xh5s9+2a5IVW7ccY9Va
         KZAGom+WCXnDKajx3yVzW4Jr1Kz3pyyrM3hiA0eAdoi6lH2xE3Dg4Cn8Ttb3hYfGX3U+
         3hJTBGKliGYVmtTrFrQ/QBj05nlkiU8fMeb/HCyt0UEl1odGJgt7k6z1HjBeQlwM06t6
         QY+LvCg5x8TjA25yuQw8vaH2Y7GrOM8f818+77/e8LMlhSH4sLg7GE0Zc4udulFtn9Pm
         T5tA==
X-Gm-Message-State: AOJu0YzkxBrmmnV0AERIxn1UOxrRxtcVGqTLG/O/xUZ/Mv6gXY1IPAeY
	6QKnwwO566NtK8i+4dwBZBP884wT+KztqPc5U4N0zs795NvGV/n1lqsErg==
X-Google-Smtp-Source: AGHT+IFYxw6VoIwFGGtKRJcW5v01T7CcTW+LMSmlydp5CzuJSogizqt/Ee+DvP9E6cclPQQdVyX1JA==
X-Received: by 2002:a05:6830:3498:b0:703:6d21:5dfa with SMTP id 46e09a7af769-70375b411bdmr8117969a34.32.1720653584148;
        Wed, 10 Jul 2024 16:19:44 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70374fcbf30sm1040207a34.65.2024.07.10.16.19.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 16:19:43 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	ryan@testtoast.com,
	andre.przywara@arm.com,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 3/4] arm64: dts: allwinner: h616: Change RG35XX Series from r_rsb to r_i2c
Date: Wed, 10 Jul 2024 18:17:17 -0500
Message-Id: <20240710231718.106894-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240710231718.106894-1-macroalpha82@gmail.com>
References: <20240710231718.106894-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Change the Anbernic RG35XX series to use the r_i2c bus for the PMIC
instead of the r_rsb bus. This is to keep the device tree consistent
as there are at least 3 devices (the RG35XX-SP, RG28XX, and RG40XX-H)
that have an external RTC on the r_i2c bus.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
index ee30584b6ad7..e2bbd22bd80a 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
@@ -201,12 +201,12 @@ &pio {
 	vcc-pi-supply = <&reg_cldo3>;
 };
 
-&r_rsb {
+&r_i2c {
 	status = "okay";
 
-	axp717: pmic@3a3 {
+	axp717: pmic@34 {
 		compatible = "x-powers,axp717";
-		reg = <0x3a3>;
+		reg = <0x34>;
 		interrupt-controller;
 		#interrupt-cells = <1>;
 		interrupt-parent = <&nmi_intc>;
-- 
2.34.1


