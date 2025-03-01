Return-Path: <devicetree+bounces-152938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB66A4AAD5
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 12:51:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5255A1896A7F
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 11:51:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABA9D1DE3CF;
	Sat,  1 Mar 2025 11:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="SMj5dZzr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E615923F383
	for <devicetree@vger.kernel.org>; Sat,  1 Mar 2025 11:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740829885; cv=none; b=KjEnOj2Krh+5mMiTxFtm1Q0RxXTU9ASPwJMIr4iyRBOCbq9m389ArZbHtH9a5khTbuODS7YizUQiWcfPHERdGjn6muNb/IVaMKdIf7YoD/EGXdCZtITu+UiRJXSHBWMJXNI3nGkgz4ioDv0MaMEuEELGhTZdoWbqGodSraHit40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740829885; c=relaxed/simple;
	bh=MauIs/YOHxA/fbRsi/ga9gpR3qWx7c1ccfDZObnWkYs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=c/WGeJ8H8klSSieqBagUWaMpub9ZOTiImKPiSpntPmS94+LKQVLJszK1nA7I/aW+/OgZxTe1QWfiAxf/xf1rJL+an94q6PnuO8a/XXxRnnLaUKHKoSN+qeAXd7Cna7Sf834elYk8M0cacELjXCJEfS80Nd5R0elvyjpmkp2Moz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=SMj5dZzr; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5e51e3274f1so718870a12.0
        for <devicetree@vger.kernel.org>; Sat, 01 Mar 2025 03:51:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1740829882; x=1741434682; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NdjO+gXNbFswOlU5mvEFI+zF9XideHYOKEcG+ZI2j5U=;
        b=SMj5dZzrKdEBcHTS50/xlfiuWXPsi/bIsTx5SP+4vTQPrWAqBg+ltM2bbt+JxE/x+a
         4KtRssv3WblAGk3OGjCg5xJzlaOTI1nLuSTBoHNEPLXFq0ROYf3bZGfZ778lbcNwxZkQ
         IZa42tIodheplbYqyhDeoI/aEtALAS/KX9t0Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740829882; x=1741434682;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NdjO+gXNbFswOlU5mvEFI+zF9XideHYOKEcG+ZI2j5U=;
        b=RzDg/Ou13tblY1CD9GveaPeXT94iq/TJ9gnmUbx7MBKiGr6KEVIcWEkwDvJ/vmZvL6
         3UzMjuRZxi/EnumUdaDQXjqKvMprTxPlQECGSDLVVuCnbSgrxwBDadhmz6cAfh2Ruh1I
         +ibTsXqnGVCBXIdIM8FkHhcznHKW3JrCoPfo4rZ9Z73m2ZASNZK0Yl3u/5ZTD5rDkQkQ
         tTpR4xHfaO12BIwDS2RpcljCSj3YRlZ9/w8TcvGUvF2SQ5RBI5keYp5MAbTlz5amO/BP
         GyD0i013NLZqcIFufIZEZRyGM3kJXd89tJm/GxNZvtF9D+cQfp6KZlp5qG1uE8SVMX4D
         YohA==
X-Forwarded-Encrypted: i=1; AJvYcCXNUoHDe7qoG4ZMXyzr8ahOiKfewZnX61xgXJEbbu3VGFvanO8FsTb/ZOLfvnSjWcVJ2amEa2wPVxXd@vger.kernel.org
X-Gm-Message-State: AOJu0YzI3P4jE3LvVbCjkKt+94XPS5N5BsYAQaU82Lu6uhtSjnZXyLvf
	0GRCtBUkEctueNs/BgTrpejITws5rx8Dq8ewxBzDbLAQfnqYpRd6xZsuFQsteBL/JZ4wHta/Crh
	I
X-Gm-Gg: ASbGnctquES8ruQRKQQzu1R0f27NtDqkVM1Who4Mu5T6u7c8qgAHIrnzMUFvZf92Uld
	iXbNiZjk7jw0IxI2m8GnlwMU7j1aeVinTve7DyeIAUYD4diEdMj+r3+F6qSAv4Zlp7QMw7QZtxB
	VurRm0IFijkmPxPd87AUfjdbHDs01WQGdA8a5j17jYW1GQlGzjkcOUclMOwlsQqonw+o4JPuIrF
	Ftb6dDp+p4jTef1Q/ZT81wcxTxFcGtMjrWoimGVdHOtkeBidRlPQwZKsZV9m8t3GRSf69o1CWu+
	yY7Ub3WdzmAy9yziJ6eQIqDbG04Eeg+BOSp4k4xG8xJTDKuaHqxeJW0jVCTlLDytFCYS/ZF0O8l
	fYQz0aQiT2twtc9y+CBfBcuBOflKKb6mJOoJioGna4asNagynURz2g+fl1yZBxVT4Tvwmm0JKBP
	zICgWcMVlrbDjK2A==
X-Google-Smtp-Source: AGHT+IFx+Y86kAQg3tCp+lkyRYenJ1ns51tOtXrb2wDfJ/ON7EhmhRzo9A+jgX7mXFnhM4YOd6kA8g==
X-Received: by 2002:a17:907:96a2:b0:abe:eebf:ae54 with SMTP id a640c23a62f3a-abf25fdbdb3mr715780466b.20.1740829881379;
        Sat, 01 Mar 2025 03:51:21 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-25-102-201.retail.telecomitalia.it. [79.25.102.201])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c75d8e8sm460994866b.146.2025.03.01.03.51.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Mar 2025 03:51:20 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] ARM: dts: stm32: use IRQ_TYPE_EDGE_FALLING on stm32mp157c-dk2
Date: Sat,  1 Mar 2025 12:51:09 +0100
Message-ID: <20250301115116.2862353-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace the number 2 with the appropriate numerical constant defined in
dt-bindings/interrupt-controller/irq.h.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

 arch/arm/boot/dts/st/stm32mp157c-dk2.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/st/stm32mp157c-dk2.dts b/arch/arm/boot/dts/st/stm32mp157c-dk2.dts
index 5f9c0160a9c4..dcf17c493022 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-dk2.dts
+++ b/arch/arm/boot/dts/st/stm32mp157c-dk2.dts
@@ -11,6 +11,7 @@
 #include "stm32mp15-pinctrl.dtsi"
 #include "stm32mp15xxac-pinctrl.dtsi"
 #include "stm32mp15xx-dkx.dtsi"
+#include <dt-bindings/interrupt-controller/irq.h>
 
 / {
 	model = "STMicroelectronics STM32MP157C-DK2 Discovery Board";
@@ -67,7 +68,7 @@ &i2c1 {
 	touchscreen@38 {
 		compatible = "focaltech,ft6236";
 		reg = <0x38>;
-		interrupts = <2 2>;
+		interrupts = <2 IRQ_TYPE_EDGE_FALLING>;
 		interrupt-parent = <&gpiof>;
 		touchscreen-size-x = <480>;
 		touchscreen-size-y = <800>;
-- 
2.43.0


