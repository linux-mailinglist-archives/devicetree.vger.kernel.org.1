Return-Path: <devicetree+bounces-228124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D59ABE849F
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 13:22:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 83D7E35C853
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 11:22:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE72B346A0F;
	Fri, 17 Oct 2025 11:21:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b1QS9txA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB7A43469EE
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 11:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760700116; cv=none; b=cSXfvY7N29zACKFnfvqxl10iT6lR1ykxPxzDG74sebvUKucfen6yBeurL4h4+/Je0ok0CR3hnxcxC0XRfBqP2ajLYZWr0Finz00KAWirfv0H8bWxINM+dxwUnh9iNd/sou+LeW3ldG3iRO/IP4ZdT7YvsbHyyvC7RhI03ciZLR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760700116; c=relaxed/simple;
	bh=GfD23YPZ5xlI6Cvd3J36u5HvRuzKaxr5uePf59R3rfA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pScNQrXWmlrC6y4WRYLhhURFP12YsB3zi7UX4vWEz4tlayBMYllnkfCHoJa+NI29PD/7dxFWFS+FTE7FTrJqSagMeMu/FQbLog/zUgCUgABaHnkcU0DfSLzR0fcGnL4vPDJ234mpJHlUBLNNtLPi5HkIOtWcoiGOM/gk83t/Rn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b1QS9txA; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-63c1006fdcfso3327511a12.2
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 04:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760700113; x=1761304913; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=szPuxr5/z40MS5Mlf+BY36YkQjXOaNb7HQ9L58rAhvk=;
        b=b1QS9txAOqHWz/L8n+5EFgUejs2xgLvYicWhCHCBcL78/XM0+qIcPXbmP/BvCnpLQZ
         X6kMDkPfX812O11iGjpr9W8i/sAf6tu/3+s0bQH3PtoblFYgutycTN/EEQ8S1SOeoiUl
         0GcvDePr4GZ2MfWBQyHXRLvjUhYTX1MCNPL9nyEFF1HxhTuQgqo3oxxEnHAeB6vaerh1
         FBpu682koFb2xPALKJHCbuiJy0Sao8TFKl6dBp6ZGwfXfS2uz7rV055EJ0hGQim/KFBC
         FCGReDWeOVKknH/ghTuOU4JGMhUoq92CD0NtsUl94DJNDz5abgf5FbLGCiZu/zYlb79R
         NLyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760700113; x=1761304913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=szPuxr5/z40MS5Mlf+BY36YkQjXOaNb7HQ9L58rAhvk=;
        b=wUCT139bOOrufFxMZmcp7VwHDHLz0XGeScW/dPPcNUUBfSmpTRh0uHVmyaYp7poNCl
         gJ+x7/IujUbxjGGRYKbhns5OqKJF8r3J5Ga9suJ0FY96J0HkrVX7DmCfUE55FhC3uPM+
         ue2szwyuP/YjrKO2UD0qZvVMBbSUmgwsMiSctcBtQYKhURpTuQQ+gi1J3OpPJrU7fqAJ
         Z03HQMVpUWP/59pwkVBumZneoLvCnmH3dcP3ULb31YxYZBKrY+P7Qf3uahPyGAPhtzY3
         6lTd3EiEzdPTFoNB4hzPcKzt43MxQgAEXB2W7mlggSEHXt291zswjqU8FLIlydh7lONu
         G5+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXhPg2rQ1Buw0Ny/l41IZ/zQ/UMP0b1R7gA8N787NsMxwLmQwD5vSgx5LsEYKSw52ouSUHZEL0sqaqG@vger.kernel.org
X-Gm-Message-State: AOJu0YyllZ1/Zn54osh5YbYC8prvjWRmAdql0/g1lC5m+B6nVaJHBIS2
	pzFEXsPxFwMpZvfWdLXYkTN9ydKOmd5kqbeFIIsH5psaPiTGR9cEGdC7
X-Gm-Gg: ASbGncu22GUcetw3KssNR64BYWn6vK0574tDK2vOuy9p2Ip3sb2BqRg5cnm64Oe9+XX
	25lUfWBDu4B8Ppk7pDlge0Dev6DPR9kvjToYCypR641k056qoFC8I9Zs04OjfgjVS2bIIYpaXvI
	NhBKAs7t3C5AKQ1n8tHh8uJY9U/748Y/jmnVE53BpQUT5egSOAVm16amo08DxASFJ2LSPglwtcC
	j0XNA2exVDF+hHv45yziFgmWBJUpOVwili7ZfE6TSB8JL4J87KHFxPoRMAeffurnfOmGmB4ATj+
	8st7PZmEPCgANyDnEjuOPlhzWXq5FjcCngWZRadYS9uz2kbKrF86eWe1VWvDX5nbhMiur5WeF3t
	CCnZCkLpATjvexpagYpS7p2Tt1BYj2JWuVWceyxmKfQTLYmXb59rme9BhzLetLvOZ9mlI0Albv5
	zjogPyPZVOhWdGSnc8mcpgW4vAfd4=
X-Google-Smtp-Source: AGHT+IFNwxALXcNX0FiT0aapuBu2Z9QWfQyDyDhYXyKBSinI4TH4m3Od7Om7Ykt8jQkZG5S9C0wOAQ==
X-Received: by 2002:a17:907:86a2:b0:b40:f7dd:f8ee with SMTP id a640c23a62f3a-b6473732c83mr382329766b.28.1760700113139;
        Fri, 17 Oct 2025 04:21:53 -0700 (PDT)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5ccd1af35fsm788256166b.60.2025.10.17.04.21.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 04:21:52 -0700 (PDT)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: linux-clk@vger.kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v2 4/8] reset: imx8mp-audiomix: Drop unneeded macros
Date: Fri, 17 Oct 2025 04:20:21 -0700
Message-ID: <20251017112025.11997-5-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251017112025.11997-1-laurentiumihalcea111@gmail.com>
References: <20251017112025.11997-1-laurentiumihalcea111@gmail.com>
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


