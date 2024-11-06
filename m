Return-Path: <devicetree+bounces-119334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A93B9BE047
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 09:20:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 628F5283407
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 08:20:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F7B01D7E3D;
	Wed,  6 Nov 2024 08:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="QpL55cpF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97301D63F3
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 08:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730881165; cv=none; b=Yu502QOJ/nT8tTmoQ+q3KuIVoKfMdQy/FD5SmZHV3GpvrOrkmEjNvutmnV/vKTusZ5JFPqY6V8XvE1HoY4Wia9zAjNCnSjYn6l534kUUjP6Nu/TbQhMI6PmugMLDFFxQ/Y1NIoCzN/1qql6K9i4OwDvuTvlxSAeIUmwdmAWg5cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730881165; c=relaxed/simple;
	bh=aRX29E4lFpfoVBdRaBaUhYu+Y9s8yOIoYHf5qgiRldU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZwPq0zjZ+iuF18D1VE05SEbp2GBKisYsZB0xc/3OZOM0Lm2RxMwKYLPmowvPqLXKMVojvo139k2vFDgv2fMwU2sOSrKdevQs5HOBA8Be90ZD+hKntTKnsMsEC8ZPn/Ngh35fshoRYLh42uGWy+wpLf+m9/ijzxHpKvQvKhOm+NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=QpL55cpF; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a9a0f198d38so1080271066b.1
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 00:19:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730881162; x=1731485962; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VmaSAqfAey17H9KOZ4IxzkTTETUnwlhuWoRwxR1p7EQ=;
        b=QpL55cpFeo7pSrW7bESvITUkYcnMrubEctve8+8kMWrWa/fUsv2kDuQc1ICVaCgzpL
         9nbxlCGDP126wsiTHhPT84n8BVcDDiEmjsyQVH+YqT+pmrhuZP/tbIDkwuwRbmR+Hm05
         Q1vAj3bXH8gXNhf6VHDFXdX8gRYtbvfs/6wbCGC88JC2TXvhpjwW3eVxVo+JZxjcyoLj
         KQ8qnf7PvFJ5Pr0tdhWoKBhi//jh6ch2g4wr7LCKZky6YmKGxZSN2RiYda4xgsk0xvLR
         uVgqr+muW39reZZO6ag3XWdYwhCfI+85LAQr/53jy3VZvd6gBPIY+06xbCD+exKqW4EV
         gFdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730881162; x=1731485962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VmaSAqfAey17H9KOZ4IxzkTTETUnwlhuWoRwxR1p7EQ=;
        b=b0J0AfoWPwfef+An7mePlsC0t+PX5N0zcj75VGnvqO65CCG2pP3AWbl4jLdUjS9jjY
         An0kmdDV2UBNQpjuZWequ88jK5Anc8Bp+ML6GZbvskFP2x1K6OKpqPHm/Ij1Mc1lzaFn
         kD3+qhg8j2v/o5IZreSSvQLbY6BeRdR9HLjD2EaRofGT070rh2OVNJw3qWVvXnxkkNSG
         le0daKbgvdAOnnoEMKnlhppTzT6tpix80R8ng2mczRu8d1xUrUZIwMRHujlY7rQJIT0y
         wwKVMIsgl6aAC1MtSiJ1JpksISFaXQlItH8I+96v/IRCtpFlgILzwLq4qwLNFHp7Wwgn
         7LLQ==
X-Forwarded-Encrypted: i=1; AJvYcCXSsWa5lCp6DQQfBsjuVBDpL5AJSdFo4t0+cFsUHHaD1KGYzolVMAi9z1AZxanO03k9nhS/2V5v95NO@vger.kernel.org
X-Gm-Message-State: AOJu0YybbPNRWlBx+FxEfMBIoqPwyjVkVtIejgEM2oQKsSQLb6bMEbeu
	VH5bip0/r2XtnY7TweXmDwPImydX0SIRSpeQkB0zJMGsJfT0UXbjZUIVdTzHmco=
X-Google-Smtp-Source: AGHT+IGZyy0CCXuwkU0iaqtdLQ1EgHJrS5/HGfBZU7Q+GJRe3ohTVjIvWXQ75Q1Kv98dFpRjMl/0Dg==
X-Received: by 2002:a17:907:8693:b0:a7a:9f0f:ab18 with SMTP id a640c23a62f3a-a9e654cec9dmr1921914066b.20.1730881162079;
        Wed, 06 Nov 2024 00:19:22 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9eb16a2dbcsm241369766b.40.2024.11.06.00.19.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 00:19:21 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	biju.das.jz@bp.renesas.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	linus.walleij@linaro.org,
	support.opensource@diasemi.com,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de,
	Adam.Thomson.Opensource@diasemi.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 03/31] dt-bindings: clock: versaclock3: Document 5L35023 Versa3 clock generator
Date: Wed,  6 Nov 2024 10:17:58 +0200
Message-Id: <20241106081826.1211088-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241106081826.1211088-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241106081826.1211088-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

There are some differences b/w 5L35023 and 5P35023 Versa3 clock
generator variants but the same driver could be used with minimal
adjustments. The identified differences are PLL2 Fvco, the clock sel
bit for SE2 clock and different default values for some registers.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 Documentation/devicetree/bindings/clock/renesas,5p35023.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/renesas,5p35023.yaml b/Documentation/devicetree/bindings/clock/renesas,5p35023.yaml
index 42b6f80613f3..162d38035188 100644
--- a/Documentation/devicetree/bindings/clock/renesas,5p35023.yaml
+++ b/Documentation/devicetree/bindings/clock/renesas,5p35023.yaml
@@ -31,6 +31,7 @@ description: |
 properties:
   compatible:
     enum:
+      - renesas,5l35023
       - renesas,5p35023
 
   reg:
-- 
2.39.2


