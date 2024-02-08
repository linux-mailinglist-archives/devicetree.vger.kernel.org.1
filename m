Return-Path: <devicetree+bounces-39704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7263984DF45
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 12:06:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 917E11C28CBE
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 11:06:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4063082D74;
	Thu,  8 Feb 2024 10:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="NN/rQ+3d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2685C7A734
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 10:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707389922; cv=none; b=pkiQbP+0ua8obrx6qKHdGsDpL4j9huU5UOOk2GDXd3Rz6F31ZMDUaXZGAyBeKvEW8tppGwAhc2TyLPZ3l6caR3ufY18f5MCxJLw7y2R4WVDFstAuGD8oLoAix0s0IQxHdIg+nK0M6CRtvIn2Ja6xJ8p8toL4VT8w05w5VZJGQHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707389922; c=relaxed/simple;
	bh=2K3Cwwi3nzyAO+YWFU6/q3NYLf/V3H9IHhc7ZAVatRw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=uf8zZLjOHe73cuEz4PT+RG5wnD+MY6CGRqQohGEugbxSnVmjxMp7AdilOqN8/YxOellj+U6MrxVcXSD6hkjHMHa0u2x3Y7IhtYF9cLkyLXnSQelxGZIfQcpByY+1m07fdebD4HcIGoq/SKW1+lOM74FcHSviqRQLnnvFnk97x4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=NN/rQ+3d; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-33adec41b55so905630f8f.0
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 02:58:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1707389918; x=1707994718; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iGEHf4Q3xL5g/mk89j9HJsgcS30h6wmeJCOyaqs94O4=;
        b=NN/rQ+3d99//mWIeY8MZb+PgKDl2fv3HDQJrl7VN4aWLUFiAKTabb/dTNL4xxM3rVu
         n7iipnKgwBNFPusGdzWCUBTbilgEmJr74rkpnqSN7AB1nLf09lW6oz5ilMS2hPsH643T
         Xhon9gr+6oh2mQTu8TdivCVb36gHpUomahg571wAg4Z95Lg0eLIke3W1udJcL0AYmXRA
         FiGWc0f1CUnKtbHSE96dfrmNwgZCmyC+dwdzu5Azkm1oi6/ucFY+j0JHLR0x9CTHjVhz
         783eOSlPZveGfcM+9RttATae0g608MwicIZ+erPk10augrbVWD8T4aZVNsgonfUeqU/k
         PZ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707389918; x=1707994718;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iGEHf4Q3xL5g/mk89j9HJsgcS30h6wmeJCOyaqs94O4=;
        b=jtyObd+QppgrJrphWQSGdoSccfYuejFnte7110mzqdDJcTcStoIAgS4c0LPWFeAES/
         48ncmCMlPYoJrky0N2SkHcSjBlD0kuEDFh1vlIE9ENqi1gW5tpfIQphnd22SM+wmAQnL
         sAaYpRUDSh638DkUhuOtJut36bIo1tZkmCnijd3tjLDGNVlPEM3n9LIyrAINy80dStHd
         XtLvBV7JvzKeB5vARbe2906mgzXhsC11lq9TkogXeX+HZF8V76Re7hiYzE5DXmz3uUk8
         tyg8uka0s6t1FLhF9moN98u8xRKK6kAn7Aqc6ZD/EPqwsKXWmiNXcRdcuCnbFGLOE/kY
         GSwg==
X-Gm-Message-State: AOJu0YwZxEd9VeOhGmSIidNnbbqGyyVcivPUhVsJfj10pW/Pt2AjVGat
	LhPik7zCOmpkbRYxYlbPAhMw37C3cCzFAa3ZncGRdFJeESu93PLodWNN1QHqCzg=
X-Google-Smtp-Source: AGHT+IFC4EMwYVfwOd/+urdX227BjIEYlm3108+Jda3Mo5kqCgvte3O+tjoPbEcDHib8pdtBxg+B3w==
X-Received: by 2002:a5d:408a:0:b0:33a:ee47:8a3e with SMTP id o10-20020a5d408a000000b0033aee478a3emr4646572wrp.58.1707389918492;
        Thu, 08 Feb 2024 02:58:38 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWsQPIR01EMf3ScpMetoGnFkU3LCujZbXFI1orntMwhIHDNmFG52hnlBSzl6PPP061TyPUIozU2yYozrtEQLnW6UaJqtNESF3mQRl0W/ZyG/2IzYQTMTh6ZkxLHedNigBmaIx4XqQR7ZMo8HFXvB1fAtD4MMtxxFVLiJdv2wNXW5Hta99G8j0Mo2MWPV4YuCL43jesD//dM95EeITSQgjbVrt/M4R1OPkNoOegDMyMAZuB+gvfQ1tbU6eaBp5RaKjzlUuZ/wyMhfW/Sc3xYwiR8U6vMn+gqI23Q93WQKQa9uvAIy3s6Q248UG2waVFj1xK8qtoy/KH6IXxbYXytX6X6XMhMhHP3iEdf29mvzn376WUSONS8LqnbIMmZJRjVVZSdIKKzEYS/GOfNo1jy5pcIlvax3rWSoMB/0mkYm45vQfKsKpDzl5Yg3/FLuNAdEJTSmUJ9GJicNuG8iKAH4KLpENdmJ8v7ol9OIt++zHGyqmL3i72m9aUTyQe/p6bd8CfQDfAkY11hVi9odOyxLWxBSOj5nEk9MOcuC9R8vY9yg4ygQMk=
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.45])
        by smtp.gmail.com with ESMTPSA id a6-20020adffac6000000b0033b4a52bfbfsm3344153wrs.57.2024.02.08.02.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 02:58:38 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	biju.das.jz@bp.renesas.com
Cc: linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 9/9] dt-bindings: watchdog: renesas,wdt: Document RZ/G3S support
Date: Thu,  8 Feb 2024 12:58:17 +0200
Message-Id: <20240208105817.2619703-10-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240208105817.2619703-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240208105817.2619703-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Document the support for the watchdog IP available on RZ/G3S SoC. The
watchdog IP available on RZ/G3S SoC is identical to the one found on
RZ/G2L SoC.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---

Changes in v6:
- none

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- re-arranged the tags as my b4 am/shazam placed previously the
  Ab, Rb tags before the author's Sob

Changes in v2:
- collected tags
- s/G2UL/G2L in patch description

 Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
index 951a7d54135a..220763838df0 100644
--- a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
@@ -29,6 +29,7 @@ properties:
               - renesas,r9a07g043-wdt    # RZ/G2UL and RZ/Five
               - renesas,r9a07g044-wdt    # RZ/G2{L,LC}
               - renesas,r9a07g054-wdt    # RZ/V2L
+              - renesas,r9a08g045-wdt    # RZ/G3S
           - const: renesas,rzg2l-wdt
 
       - items:
-- 
2.39.2


