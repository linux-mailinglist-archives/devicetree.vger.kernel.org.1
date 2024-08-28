Return-Path: <devicetree+bounces-97701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CACA963164
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 22:03:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F3A31C214B5
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 20:03:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0670F1AB522;
	Wed, 28 Aug 2024 20:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fDWHNlE/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9912A3AC2B
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 20:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724875384; cv=none; b=B7G+hrrlJFNOlu/8dYpeFz0RV1OM4CtXRp1eAFXsYs74ntQ46FUeKos2KZm/EEzpc/BX2COqjn2h7+s0fWcb0MUgzyXCP8WXuKnK7tccYt+gB2GmpTijf54Vh980S1TSHhEE4ZEaaUFqt/OdTbRbTJ7amO8x30tz+nVQcHKB5LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724875384; c=relaxed/simple;
	bh=j8kNF7YL/nusaWWcdpRGCthsJGgSojwrkskB3Rydhpg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Hak/NO/EMY3iVTSeFYau7IEnPh7v31/ym/jQ1wTZpuQU6PGb/Mxo3TKQKmMqmJAaMGal1sji9zFL0gslWQILlSf1/AKfoKRCDmBxGUeRpp1/eeqj4kCvR4YV1OlkNTtCAmLVFhKLu7Er/Dkr76z73wRkYBxCPPLzf5H+IrqfJog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fDWHNlE/; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-201f7fb09f6so62315805ad.2
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 13:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724875383; x=1725480183; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4w24HRcPqeEG5Mc/+Tw2b2BCkp/Q3wxjAMnZ1H8zI9Q=;
        b=fDWHNlE/HBw/K4P1vJHzr+1x7O8rX7mme2OVVE1Y4vtwFV8dj4p4+ArOZZ8eALFExZ
         dYKJ2yh/oZUVFdvG87ervOt6uspS5eN3OLAiFnvXnec1DcRJq6vLSJPMWomFMLH6Yc3z
         b+patCcO3eds9k5agxWkwLUxqFADzpNCHGE3d3yItTSZXGwSm6TijRkNjiTuH+9wHfvk
         YjC11HRoBPC98HnKjl0USu4JdJzbZ/M3HhlLNInYoOzu+D10odnNDHJROaN1wDWb1pR6
         4QkPe3C2oVCMLPUgiW58MdEM7zBNtqLTvrovpCgEGjIlmThj17diqxctqqCtbEv4HuYB
         kLYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724875383; x=1725480183;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4w24HRcPqeEG5Mc/+Tw2b2BCkp/Q3wxjAMnZ1H8zI9Q=;
        b=DVH3ENDVr0iBg+tvfZmpdUtJjJlWNJ1cVMX3ao1zLmHEWVKbuMLaXx9pWxyzTe8NEY
         KjFRqKj+I156qH7e6Mr4cMXFi8opQK3DIIJTGqcEFqguqTxmYfRHJ/xwq9QocPRpu9od
         1Wh6FBjHJT4T89p27K/Y5Sl86PXsV8sQFyqW1JMK+OIfcvyg3vJgbGiF+vXRvyOe8iVu
         +bL0QntTBu5IZ2bCxHCen/95hoD7jFFxMvE7KZ7FwCdX/gsSVAMTvsQMvUBGL2q7ltB4
         s1TCV17Hjechit2FFm2HdlTqar+tMia9NcDwubVplXp4vOjVbSxP1uAvkV+A2K0lGvIN
         u6cw==
X-Forwarded-Encrypted: i=1; AJvYcCXsbq6LE89c4dNrBlCS/0W4SXusI1R1bq3JMSNKuZYjm9yXYOF6ZfppORXU4ncASHubFwWL8CXCgf0e@vger.kernel.org
X-Gm-Message-State: AOJu0YwKsnesU7iyfXfa1BrItKosLscf3gePO1IE9dOGXTQ9GGGcKxVn
	VYahpiAuT1JzRg0/ljllTWf0aNHYmhCgpQk93IjQgRVKsPB3e3PPKoODQQ==
X-Google-Smtp-Source: AGHT+IGIruGEvnXjHN5dgt/jXX/ML/G+0uE3bFnRyicXtzd6HxCy648odjjPoy66a3M4h8aprNhS/A==
X-Received: by 2002:a17:902:dacd:b0:202:1548:5017 with SMTP id d9443c01a7336-2050c34d8e6mr5720825ad.28.1724875382657;
        Wed, 28 Aug 2024 13:03:02 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:4b3a:557e:6b5b:dbdc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2038560e4f6sm102310085ad.193.2024.08.28.13.03.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 13:03:02 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx28-apx4devkit: Fix the rtc compatible
Date: Wed, 28 Aug 2024 17:02:54 -0300
Message-Id: <20240828200254.3196260-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

"phg,pcf8563" is not a valid compatible string.

Use the documented ""nxp,pcf8563" instead.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/mxs/imx28-apx4devkit.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/mxs/imx28-apx4devkit.dts b/arch/arm/boot/dts/nxp/mxs/imx28-apx4devkit.dts
index f9bf40d96568..40e81ea4a6f6 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx28-apx4devkit.dts
+++ b/arch/arm/boot/dts/nxp/mxs/imx28-apx4devkit.dts
@@ -122,7 +122,7 @@ sgtl5000: codec@a {
 	};
 
 	pcf8563: rtc@51 {
-		compatible = "phg,pcf8563";
+		compatible = "nxp,pcf8563";
 		reg = <0x51>;
 	};
 };
-- 
2.34.1


