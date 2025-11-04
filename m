Return-Path: <devicetree+bounces-234797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AAAC30DFF
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 13:05:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B2E4F18C3B07
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 12:05:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5053E2F39AF;
	Tue,  4 Nov 2025 12:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SEREGphu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDF82F39C1
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 12:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762257847; cv=none; b=qQ60gAfKJzG+5f6Lz0I8mA4054og9PA8J6/HzouXhigeeWxGq8hwNWtAxyXpPyKi5+pgz39KM3C0Y6XxF5Q4vk5Om8tyaI/qBIuBtkV45dTK76J7F1Ef9Ynt2cZ2pOfaENz3yH47lckRtNb/jmuyJQDXConSosPfSCoaqvhfL1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762257847; c=relaxed/simple;
	bh=TgTd1HpIl/XZJoNIxl/sF6YycwPbOWbZcWt7SX51N6Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pGj66COdKOsz/kaE8gCXWb+Hgf4T2/xH+pidDfODhTf83fyBv/BI1iFItCM0Evu/VWbtkzmYvq9kD/1BecMOMNt8rF85hgVbuOb0oVVrj3Si5+YmVAARboxBKJu3hecILbFvJ1LohWkQVQlNmeH9i7jCFdN69VzxL82gyMPC0aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SEREGphu; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b7260435287so1567266b.3
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 04:04:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762257844; x=1762862644; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MONqpZUeZWIIjN6d114EqSMuX3Td/c118reK/5knf7I=;
        b=SEREGphuW7G4f/PD7getzsGEd/9jYb3YmPdN/Ewequmz744g/e/votmfzVoG6ae3pX
         d0IVVhzQxwREjburiCjVaDIacufOhfE6ZuKRRkPNUAe9lpRqVUGS1uKgxzGJAFMp9Pl1
         FlKdhxVTuBAkeGXfgfyJHm2uyynPSjTVOIO4IHPS5Zorgi00BnMukY/h36VpbHzrvurI
         /aYhGoyARczJGZbXnTOv643J6oU23SKDA97SFQ60w1kgMZFBG1wa+IYMxP5T2MCVsFbE
         36FR45TcQk3orfzAEiOiRJW6ZmsmLExHaJlnV0ADSIuZiIZtz7F15/39NpRG5cbOn0JL
         63bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762257844; x=1762862644;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MONqpZUeZWIIjN6d114EqSMuX3Td/c118reK/5knf7I=;
        b=Yx3H8Iz256yYfK4btjf2VkmCA/T76/+TMdw6x4a/LKzlvA7ea/rc9DloqEUZz2OS1E
         4XbbWgte5Gerx2zbjqMV9pehxS8y3iOcc6UUrinOPAXOyiMrJWniaICxAY+ilUbsCEwi
         wtsRuo+pPzF+BVJbLSslEV2J1df7SkQBo3DXQboCWw7GYK+P4qx6bBQXrQmaV936H0mS
         6j+GoNI8Qcbt5L3bMWX17qI5YLoHpLVbNCk3JTyD3ex6f5IghN/migd4bpg5163vAaIe
         /yMTB+5EiTo47iqwMRlf3KTyJEc0Ab0OodXVVqgyyakjREQvZLperHf1FBCW93uh56/Y
         eKDw==
X-Forwarded-Encrypted: i=1; AJvYcCVyrMKt3vn2SuRVLXXIrNMOWJu9+UOVYkfx6BTsC5ip07zoZtNurPfKH2K2ipEuqLLL6n4Uij5qzdS3@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4CQ8Tx0im/wlo/4ViOXYNdklJ+1chWhofaBS5qsvPTdQ1chnM
	jTQfdnEVg+00wsNPSbuenSdZkzbhuCbIBKm/0xYVrnegXcmBTdIS7qed
X-Gm-Gg: ASbGnctwwgmPDKCoKOnVV7FoaQmxB+Uu3DDzLl6zRLLSTCxNeY9WylSq3qw4e9S3mdM
	iwoWbLKI7Oy2WLRsIGOip90dPt80dFyP78KbzpqNJZ7tHpRN4izR4MfQdLFLdufejuEK+aImtdx
	ew+MbMORU6j5nzCJ5R0bUUTgN4Jwn63XY7kX+evQI3vIvu6u6cHnNvCAM07L3Ui2SIaIWuvf6Iq
	bUhmsyYEA9Kxw1PjhI+G5J1UXm6i/ojRFbcovkwBeruNYLEVKDjfJ75dujyQdX4d83V8zvxDjK9
	i9DnLjDMMAmbEMwJ+5gV0+h0E+DKRLvyKAFZHClLl0eZv5N0ycsmBG8wD24fBxKxMtCsY59NZ/p
	DQRjlnJt0RFQnBtiXjjSJgogsK6w3oqPclyeyX00QG6BAUj53jf6KTY7g2mSAZliNDYR4J3nz9C
	Njz8Mw6fkBkG75IhLFc85szRMT0Q==
X-Google-Smtp-Source: AGHT+IHRrE0o2sdiIAqRFi5TYM4KHbBFm9RA/54j9UR13Jtqc+5S0hJxSBlIU42MxJbJO58DHC9lVA==
X-Received: by 2002:a17:907:3da7:b0:b4b:e419:9af9 with SMTP id a640c23a62f3a-b707018cfa3mr1722945866b.23.1762257843561;
        Tue, 04 Nov 2025 04:04:03 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723fa038e0sm200894166b.54.2025.11.04.04.04.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 04:04:03 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Abel Vesa <abelvesa@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Frank Li <Frank.Li@nxp.com>
Cc: linux-clk@vger.kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v4 4/8] reset: imx8mp-audiomix: Drop unneeded macros
Date: Tue,  4 Nov 2025 04:02:57 -0800
Message-ID: <20251104120301.913-5-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251104120301.913-1-laurentiumihalcea111@gmail.com>
References: <20251104120301.913-1-laurentiumihalcea111@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

The macros defining the mask values for the EARC, EARC PHY resets,
and the DSP RUN_STALL signal can be dropped as they are not and will
not be used anywhere else except to set the value of the "mask" field
from "struct imx8mp_reset_map". In this particular case, based on the
name of the "mask" field, you can already deduce what these values are
for, which is why defining macros for them doesn't offer any new
information, nor does it help with the code readability.

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 drivers/reset/reset-imx8mp-audiomix.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/reset/reset-imx8mp-audiomix.c b/drivers/reset/reset-imx8mp-audiomix.c
index eceb37ff5dc5..e9643365a62c 100644
--- a/drivers/reset/reset-imx8mp-audiomix.c
+++ b/drivers/reset/reset-imx8mp-audiomix.c
@@ -14,11 +14,7 @@
 #include <linux/reset-controller.h>
 
 #define IMX8MP_AUDIOMIX_EARC_RESET_OFFSET	0x200
-#define IMX8MP_AUDIOMIX_EARC_RESET_MASK		BIT(0)
-#define IMX8MP_AUDIOMIX_EARC_PHY_RESET_MASK	BIT(1)
-
 #define IMX8MP_AUDIOMIX_DSP_RUNSTALL_OFFSET	0x108
-#define IMX8MP_AUDIOMIX_DSP_RUNSTALL_MASK	BIT(5)
 
 struct imx8mp_reset_map {
 	unsigned int offset;
@@ -29,17 +25,17 @@ struct imx8mp_reset_map {
 static const struct imx8mp_reset_map reset_map[] = {
 	[IMX8MP_AUDIOMIX_EARC_RESET] = {
 		.offset	= IMX8MP_AUDIOMIX_EARC_RESET_OFFSET,
-		.mask	= IMX8MP_AUDIOMIX_EARC_RESET_MASK,
+		.mask = BIT(0),
 		.active_low = true,
 	},
 	[IMX8MP_AUDIOMIX_EARC_PHY_RESET] = {
 		.offset	= IMX8MP_AUDIOMIX_EARC_RESET_OFFSET,
-		.mask	= IMX8MP_AUDIOMIX_EARC_PHY_RESET_MASK,
+		.mask = BIT(1),
 		.active_low = true,
 	},
 	[IMX8MP_AUDIOMIX_DSP_RUNSTALL] = {
 		.offset	= IMX8MP_AUDIOMIX_DSP_RUNSTALL_OFFSET,
-		.mask	= IMX8MP_AUDIOMIX_DSP_RUNSTALL_MASK,
+		.mask = BIT(5),
 		.active_low = false,
 	},
 };
-- 
2.43.0


