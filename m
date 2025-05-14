Return-Path: <devicetree+bounces-177095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A454AB66CC
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 11:05:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 928791B6503D
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 09:05:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D68922577D;
	Wed, 14 May 2025 09:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Iz2+4r4E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676122222DE
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 09:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747213469; cv=none; b=A97uPj0E6p2LMM8f34a3KpnJ62+1jkOcMnCn+wD5UwbWQ9gSN/3V9IFpMGaU1u2mQ60M7CtR/KdOZlZGnUuwKijvEuCVuXEAxvavsgzJCtHSR0i2CYU4duCV4e/C5Z2Bsgq1CAaPUpXDzzfguBeml58z9loatJ9HEN2I3UP9VnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747213469; c=relaxed/simple;
	bh=z+fJpQEL5tFLNSD56mZ7hzkqnnnTts2E8ZIBSo41csY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=C7ecC6b+DdBnu6Dc+jg9C/ohDL3PnTlDtH4UIrmhUhnpcUB9X/hR+skYAABQR36PoMgmFrZBz4ImdmJXGZNWoKrGFUGEk0BBwQSBbm65ltYq590/q3v7w1+cfv0qO/hFb5BiVbWg+PoiEwyTpcccbD5Borpf19xur2IVlvfqojk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Iz2+4r4E; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3a0b6773f8dso5360580f8f.1
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 02:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747213465; x=1747818265; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0z4P+OmufwJtvHe7VRG9Qw6SM4vHtxH+ac7R9RSX0Wc=;
        b=Iz2+4r4Eu5V/lFqPnHj4frmkf/324unyRDZJJaUygSEgSf2AOhtmGF0WsEkriLFWqk
         kJMDOMO1beyR4oZOMhDHdH30r6GRzJcdnXlvfy5pGSsXOMPXM172ThBUg6wnNlw78EgC
         7UqvrCoJ+aTwAgkh65S0xVH2pSH8DftaiCnJmKeu41pSd1y970jDd6bTh34hHmB/sHoa
         2EKTzeA57MfSqFwH9rk2UOkFPlAhBadcGYk2vBSyuT9c6LJ+us1VjybBI2oPa89EfMhh
         3kbN9CRQPvMrLuMjG/+D+VVnIfMMe7r4hR9D4AvmbGYyBXjzNqf9oVJ9rrcr7AFyBVE8
         9uFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747213465; x=1747818265;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0z4P+OmufwJtvHe7VRG9Qw6SM4vHtxH+ac7R9RSX0Wc=;
        b=tqUDxADTPkMeatg9fNG9fEsm4iCTsTIUocIZAM6wOUho/FtiUFHXzBvm+Y8GAoNYek
         GtYXAGkHsk17ltsw8wWywjH52q/xwWudIJJb2FWBK7MQdXqI64tZtohYj/FoYabcHgs7
         5yFxjK9QFLZgpRS1yuaE1Pgt/7ii4iya0T/XoBgsdOwgU6Lbw482pdoETu+Vi8bWRYEe
         f8iP5KfbgGiJnhB6lhBjywcHtZzxNK7J4BnCXZnGE/q/4/hEjLJufC+7s6Lpbamq0Hd6
         EvosqsO3WLvZy4djJ+U8k6/Zr9F8hC0zVQkrAIpaGemgMqL81NF9k7h33a2BSJrGgiXY
         W+Rw==
X-Forwarded-Encrypted: i=1; AJvYcCX6CxYR4XWd3Tp8FeDHFt5fbcAE/DR8W+2HPbG4X6WA61dlfnZ470lTsIedD5UEqhqtkKVHf+vwRDOV@vger.kernel.org
X-Gm-Message-State: AOJu0Yxrlz+RH3AKukqtj1mRhLMx3++DgSQk55KRlcEA5i4IZi7j5HoD
	dG3i/kGozy3AlZTf09/Cz33UuxQWJw4cOzXqHG1nvZegXqu29a6pg0wshykKlis=
X-Gm-Gg: ASbGncsgg4TvGwTePNyNx2Z3CGWmbtSM7kdDS6qk7pMiCL19NHeiJejZGjobZaVFfNU
	ctUzGgAqwD8gYpJBWW8L6SXQab2Qt21EvrM4JDuZutO2+tGvmhB8Z8ogW+IcBSuU39TAqWUZpRX
	q3axdk3iDC4o+a5JKonxCMU3+Q2wG/AyR2LXrR3vvo1jCzhNgFDENvg0so6uHVtUIagMngJyjc6
	guD5rFQYStNSoB6Cg+xMnFdIQNFEBNbztJkKn+q/yR0JS4n4PLjHfy8NBgSkODj+/ST0Za0vgLh
	EppKLBhOZMk1i7UFI5VWqDgmor3HuRWonkU0PYkzDJhOa04nkfQEZ+AKEto/FtQEDsfCvrpJEGt
	S61p7
X-Google-Smtp-Source: AGHT+IH/xnJf8OhD2UyddPs9fn8NZYZRYKnhkQGnPGNMx5KbE3arsLz1J4F7/4sXv5p5DqIDl26u5w==
X-Received: by 2002:a05:6000:381:b0:3a2:229:2a4d with SMTP id ffacd0b85a97d-3a3496a49fdmr1851225f8f.22.1747213464674;
        Wed, 14 May 2025 02:04:24 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f57ddfbesm19286561f8f.10.2025.05.14.02.04.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 02:04:24 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	magnus.damm@gmail.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 2/8] clk: renesas: rzg2l-cpg: Move pointers after hw member
Date: Wed, 14 May 2025 12:04:09 +0300
Message-ID: <20250514090415.4098534-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250514090415.4098534-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250514090415.4098534-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Reorder the pointer members in struct mstp_clock so they appear immediately
after the hw member. This helps avoid potential padding and eliminates the
need for any calculations in the to_mod_clock() macro. As struct clk_hw
currently contains only pointers, placing it first also avoids padding.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- moved pointers after hw member
- updated the patch title and description to reflect the new approach
- collected tags

 drivers/clk/renesas/rzg2l-cpg.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg2l-cpg.c
index c87ad5a972b7..767da288b0f7 100644
--- a/drivers/clk/renesas/rzg2l-cpg.c
+++ b/drivers/clk/renesas/rzg2l-cpg.c
@@ -1185,19 +1185,19 @@ rzg2l_cpg_register_core_clk(const struct cpg_core_clk *core,
  * struct mstp_clock - MSTP gating clock
  *
  * @hw: handle between common and hardware-specific interfaces
+ * @priv: CPG/MSTP private data
+ * @sibling: pointer to the other coupled clock
  * @off: register offset
  * @bit: ON/MON bit
  * @enabled: soft state of the clock, if it is coupled with another clock
- * @priv: CPG/MSTP private data
- * @sibling: pointer to the other coupled clock
  */
 struct mstp_clock {
 	struct clk_hw hw;
+	struct rzg2l_cpg_priv *priv;
+	struct mstp_clock *sibling;
 	u16 off;
 	u8 bit;
 	bool enabled;
-	struct rzg2l_cpg_priv *priv;
-	struct mstp_clock *sibling;
 };
 
 #define to_mod_clock(_hw) container_of(_hw, struct mstp_clock, hw)
-- 
2.43.0


