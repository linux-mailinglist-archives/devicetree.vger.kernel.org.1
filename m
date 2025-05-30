Return-Path: <devicetree+bounces-181844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C8209AC9305
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 18:08:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 409071C00FFF
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 16:08:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CEE32367BA;
	Fri, 30 May 2025 16:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="FPVDQ+RX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A8D230BD0
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 16:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748621280; cv=none; b=h037jLaJJ1MOJKOGvqA4cuWFzUbGGXzSNkXcOrYYtyhoR5RfKCdi7pSV+3tezGVxjfcdfN7DlhUV21HSK9M3vFICGyuCz17xO59/HzyD3q1KxRn16iTdN1MV+MpZyXknS6HnipcuSlr7rvWKLsIPGI1pBHO0Q0rQwShaixL7fgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748621280; c=relaxed/simple;
	bh=mH5Ygl5089WVcTFj/GthrjSoi47fh6ctH9y/5WjiSD0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bR9XXed3yy5f6s8C4rljmd9CTjRrOEfS3KDy26WjdpXtZRmAYwhXxDtZtviS4UJs+tcSPAjpi5UnyL2zvKknVS/pCmKRkHLORqofbayftjKmL92Wh/0JWe00Cnd5bhJfL/+U01sBO/EJUPHGdQKQsTdhBjJ4ulgEkBe0X6b+g8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=FPVDQ+RX; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4508287895dso18755425e9.1
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 09:07:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1748621277; x=1749226077; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dqMa9aZLLZglShF07YRRISx9samkcW63UdIOcTb+9f4=;
        b=FPVDQ+RXXEbOrW7MZ9nnfqn5M41bejF86sRQSeaLJQW9zWQpTZPAhvHiOBdQ1Wwnps
         DoUmaADr3w5wnOPYslikxAjgvfLrNfTXvXk8L3ZQtC9lzxYki6l3sNGh2C4GOKZWs43/
         h5VGNP5vG7XVoz+QFKgRNTbMc70sU4Yot52LY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748621277; x=1749226077;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dqMa9aZLLZglShF07YRRISx9samkcW63UdIOcTb+9f4=;
        b=DoRiU47DoPaAUdgZ/ijcpggnowrmt9ZUEMFwNC+TAMcp7S0VuH4RpQS2sit/C3NICA
         jifJ9dZWFs4SuUZaYkWovqfND0qgkeuFXTx+gpy8GmITBvZGBlk1eRBLgLe/pbhTxcev
         a5JHDPXduJcxHdPf+0TzOD++wbUyoFCBuBk365DR6Y/hoJJq6CLs9Bf4KqqjOAuP21tO
         V/As06bT1K7HzO7OlRUGZ/sDy9Y98sfFfgP8p4kaCO8YN1tPuWH522onNxdbchQXCpVa
         602S4GJr+6Fx3BHz6TvFKuYgwG+AQLYcARUDBByq+K6fwrmUFoVJWIod+BL08xZo2DjS
         Z5qg==
X-Forwarded-Encrypted: i=1; AJvYcCVyA//ULLrLZtLTBKOvwORCfQNu0Jk0LQ/5I8AicPFQkqbI7u0RtNYlA7XyylFz/jh+Mtw4Imqn4Gu2@vger.kernel.org
X-Gm-Message-State: AOJu0Yze95RMh12I35xbNswOiolhLVu2ki8yywW4ie4HAIxKk9lt0T3A
	ac3CkSI2eUWugyxS6CmelWQqNGNk7Vx2VM2npiky4CpkaCupUNgEtCbS3GVQJOAmZ3c=
X-Gm-Gg: ASbGncsp+X1Fpw3Upc8hX9Ncv60nHndhFG/5lSWscKhvM10iY48hHev1DsTJwaJqYu7
	4haNlUAOKJXU+UCIK/EM+cfRGnZspLnG93ju1H/DnN6zzkjbt7vradCu6HQjlc02jrJ9NNJ38Wo
	7i8uXRhFIwkA4zeG7UQFL0VDNYGOR2ZPjmSxN1pEqI40EwLPOg9BGakp8U6a95htP+l2lqiEkxn
	DZacbFveo3NT8YqiGP00H7qL6aH7oSKATPJ0MNX8CDHGIz7yCjSECIW68dFXc+fYP+Qvkz6q/20
	JEFCyQxaw4YySkaTAYFlR6TH+QynFMzjtnxEAuSYBVB5IVKqKEFukElpmBgb/boEed4Di0CSJfs
	2kXG7s25XCeNVH7ClyEq+Rqf9G0GhOiAJgg5BY7HO
X-Google-Smtp-Source: AGHT+IHmuBUc1HOBGfi1fMo9UepB/xlrFgTLLRVVChBOvFjYf3Ff7XCEd4unYE2huxbygIssnRT1IA==
X-Received: by 2002:a05:600c:8285:b0:442:f4a3:a2c0 with SMTP id 5b1f17b1804b1-450d6bb92ccmr41258895e9.13.1748621277548;
        Fri, 30 May 2025 09:07:57 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.43.33])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450dcc18a80sm9716365e9.38.2025.05.30.09.07.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 09:07:57 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	Frank Li <Frank.Li@nxp.com>,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Andreas Kemnade <andreas@kemnade.info>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@denx.de>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Heiko Schocher <hs@denx.de>,
	=?UTF-8?q?Jo=C3=A3o=20Paulo=20Gon=C3=A7alves?= <joao.goncalves@toradex.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org
Subject: [PATCH v5 3/6] dt-bindings: arm: fsl: add i.MX28 Amarula rmm board
Date: Fri, 30 May 2025 18:07:34 +0200
Message-ID: <20250530160748.2476088-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250530160748.2476088-1-dario.binacchi@amarulasolutions.com>
References: <20250530160748.2476088-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The board includes the following resources:
 - 256 Mbytes NAND Flash
 - 128 Mbytes DRAM DDR2
 - CAN
 - USB 2.0 high-speed/full-speed
 - Ethernet MAC

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>

---

(no changes since v3)

Changes in v3:
- Add Acked-by tag of Conor Dooley

 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 1b90870958a2..b67f0e71e4c8 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -89,6 +89,7 @@ properties:
       - description: i.MX28 based Boards
         items:
           - enum:
+              - amarula,imx28-rmm
               - armadeus,imx28-apf28      # APF28 SoM
               - bluegiga,apx4devkit       # Bluegiga APx4 SoM on dev board
               - crystalfontz,cfa10036     # Crystalfontz CFA-10036 SoM
-- 
2.43.0


