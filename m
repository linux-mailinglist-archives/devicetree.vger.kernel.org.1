Return-Path: <devicetree+bounces-124557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D909D9420
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 10:21:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4221B168E0B
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 09:21:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E97A1C4A2C;
	Tue, 26 Nov 2024 09:21:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="FxVeUVkd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C771BD00C
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 09:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732612874; cv=none; b=Il8rVk31bxs2bl8T38TQrAHhuzRadzpzIBi3yy+CzRg7kaWzuKA+u813VPQpCcxCzuH3P24Jat2K1MeSO1ec9OtaXGKE14KHiNzrpmcIuTmqrS/hM7X04ouheLye+7vw0Yejm4ipyqrymp7B45TR2UpGWlSvLmDPIte6tH1PT1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732612874; c=relaxed/simple;
	bh=L3W0t3Ndk3P8WFZClVN2UXeegBaVgcbm+UbE0rvxIiE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nPKAD8imq11xigyN2fHYUh09LqDhQxWG9YTiD3aUVX1SX/OFOdipyrrp8Lnpe5k777e59WzB7bhes7JPVViMcXk6pTZWLPBAPakiz5xoFBHBI6zSmr8x00lk9PXbmf9LpiSdBS4m+pPFAEhW4+5TID8VKo0UxZN3KP5wHo/eDAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=FxVeUVkd; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4315abed18aso47741635e9.2
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 01:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612871; x=1733217671; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rHg/UpXu0kAmh5cmR42CQBOhisgGmi+P1vH8bY184Vc=;
        b=FxVeUVkdWtHtY+sPUI6sqE21pehNBnfcBSO5Fe1XNeyDBtjrbLY3RCNlA9/TolWQID
         Li6rQ/qS3Qh6mPiK7z9ApvT8z9JjymMMtd+NjW2aisnUHkJu/OsDe2JbsoL+qrGxcDyk
         CucYUv9Ww06tLU/VIw/gNdOyMI5aYZoAGSBuhu8/SF4RZynySUvU4YTf7CrqB/iyiGdt
         m2DnCMY/tP4KoUn3LROhr7lKQerMxxcN/EVyGCfBSGZUa1bGP329cqKM9Ijwy9eIK3Fy
         eP2rPHYrwecpEiSyGDpz6s7hEvgSOjXqhNKs51pqZBZSG+PIxckU5X50yuAjDBkpJuVm
         ue2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612871; x=1733217671;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rHg/UpXu0kAmh5cmR42CQBOhisgGmi+P1vH8bY184Vc=;
        b=P+wU1+mYjsLlNj9uwUQh4IAiJvAhgzbBk4aOZAPj+oF6KGt24W23zceH/pQV85LFt5
         kKkjETmo355EaWcVw8BOOg9hw8+G8vuc2iC+NDhnzR0dGV3QsoaWTqTBz+JkvmZ8wMr7
         gVXSdPzQFjoCFvl0zfssJPp0MrCbRV7VUxWDKKl1O0f17xJ2djHv/o9bjnODZ6fAI81X
         U62QP4OeRY1AlM8vqHufTUdLhCgf/r7LFacTi30B060SukHqso1C/c5yZ8UYbtbUhh32
         4ekNKKICPJz+8VxkpIcOmD1dQh3lcXrqERF252B5bGv+nicSrbMdukeIWsqnfB06et4d
         +hEw==
X-Forwarded-Encrypted: i=1; AJvYcCXFqnZdlGgmWL982xHYL8O7TUAYSh8qPX3XZ5jCCZ/PCXzKWEXrsCme9+A1hXPM5LdooAndp3h/Tegm@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/cUgXtQCBV1cc/VMF/GoMQjjSdsH0FDOf6JQGx9mIXeJ6behG
	vq2KM4RpJad+8t7oGR3Zs5F5C5CcbTKqY/2au5hIkdYGUYo8L35szwoO1Mns+8I=
X-Gm-Gg: ASbGncvolWsTo9IRZnkbkQ+P8kxBpLaKh55QVlFpifSOyohWHVsEXDnWYeByaxzGnUQ
	f/vFYOsb+mZjWtsIl97hkTcwL9bs5WiGLA4oa4wx/8k8KyiPIlCLIBHNobRkETO1LuSNPifOeCK
	BBwnO3eqgH/Ws/Spua+uTeZQwQn7wno/UMz6pq+BRZGBVpnZqQJEq785vJXfR2melJidSqYM+CK
	iJCvV9Soc9Mz80wmuhvFf8Mktj/QODbnKpFV9NbgESVXrRW5j3nlWWG40fWMWMPbn9OJohf2pM/
	D0M=
X-Google-Smtp-Source: AGHT+IHWio7klIaUm9lWwgg66sT0uRqFvChifk0YrFUVIwja8OlGoGemJIscbif1ZB71H5mZ9kHl7w==
X-Received: by 2002:a5d:5849:0:b0:382:4ce5:f8a4 with SMTP id ffacd0b85a97d-38260be54f9mr11141729f8f.53.1732612870798;
        Tue, 26 Nov 2024 01:21:10 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:10 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 03/15] soc: renesas: rz-sysc: Enable SYSC driver for RZ/G3S
Date: Tue, 26 Nov 2024 11:20:38 +0200
Message-Id: <20241126092050.1825607-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable SYSC driver for RZ/G3S. This is necessary for USB support.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none; this patch is new

 drivers/soc/renesas/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/renesas/Kconfig b/drivers/soc/renesas/Kconfig
index 0686c3ad9e27..c8065f25ee53 100644
--- a/drivers/soc/renesas/Kconfig
+++ b/drivers/soc/renesas/Kconfig
@@ -334,6 +334,7 @@ config ARCH_R9A07G054
 config ARCH_R9A08G045
 	bool "ARM64 Platform support for RZ/G3S"
 	select ARCH_RZG2L
+	select SYSC_R9A08G045
 	help
 	  This enables support for the Renesas RZ/G3S SoC variants.
 
-- 
2.39.2


