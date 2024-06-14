Return-Path: <devicetree+bounces-75662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DA1908490
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 09:22:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A709E1C24BB4
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 07:22:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86A07188CAF;
	Fri, 14 Jun 2024 07:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Ha4MDP2v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C353B187567
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 07:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718349619; cv=none; b=BMt3Sa4myma53YzZzIcWS3kE+rKIWDBKmGoRf/DWMg9oWCqLqC9Q1N0eiGKEP7TiujoODLpvaxj7fJ6cCt2TJOvCmM28LkNukYWhQLmuiuTRkVszFzoSA6O0lLVzmI3CgdwtbUbHt/+tNDYpbnG9qVm1t6I8sxRbvG6TwuSKtOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718349619; c=relaxed/simple;
	bh=IpLUG766k09WvJhc+aQ2V6g2kms7np+GuxaR8CPa+T4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fWVI1/kRbui3oGszVSR9BO7r6VFdwpXQ8qdR9KRtcUn6veHn6R/twlUXi1vk9ZD3J91wPn7PCibC6GPSu3Y4jI2rDfEXeihh/VBRiL1cJU5XxCQKKc21hH9KcvptmUgTE75CRnxXB34oG6hpwN1y+oM6ALq6Ljfhv8pPBQmYmv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Ha4MDP2v; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52bc3130ae6so2098112e87.3
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 00:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1718349616; x=1718954416; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yLVszOBXKdCsK5qaPuAoiXu9R/5md9OnkOvi6MZ6Vqw=;
        b=Ha4MDP2vI4Mq+10X40LO7bC8rY/fmhrlqss89nOVRzxWXVx2quhGE7vAY5nb+gm67U
         PS1h5jSaVbD0/I0d7LCEU4S/Xubj71OmH0utFEdOmnPYBqfDOQthsCyrPFYLxY/nXI5r
         PpBf2uIhAEQWCkGJH2oVNYnjj0kvQWm6j22OQ0TcuQUgMvQdoOQDWv6enQTNDcYC5cKF
         HOpT0qp27rz8cuhUQRRvGqyMgvkiaL4k7No0atObYAeSvTaMSRYspq5tjmY4nag0xavL
         97TTUAeO929Gsl+Y4ZmLm0kRDTGsj71fuD2m/zYjQeQ8ytSAp+ODSz16h0fz5GPrutZZ
         uNUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718349616; x=1718954416;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yLVszOBXKdCsK5qaPuAoiXu9R/5md9OnkOvi6MZ6Vqw=;
        b=OFVz84FfxOuUE4Zr3rEYb219l4HJyxTs+91a7eLJfkj4hU366KWyOFTOY7HwbjzljH
         yy/t/ZvUL7Nfh/kjJ1FsFjmtgknIfEkGE64FWHA0FuRNIO+ulimmdUaKfFb4qhP1hcYx
         4V7Fzlxphn4LbvlZ2sagrJEOiJLbgTXlLdCwi6BtqoCIreFQqJ5iYw8HRW4Cv6YG4tAU
         8i8nYHO62ozc3q2rVKaF9TPhQ2lO953NFJGSJl9xl/7K9jauQn25YBUgQRD5d0sM4wkE
         k3DXjTT1COkyIWqreWA+QlmSZ5bzXjLjOaAXj3Y5TC5vUhDz2HQLOppAcQbN+C6jW/30
         1dew==
X-Forwarded-Encrypted: i=1; AJvYcCV/aBYufu0e6MYP0ykjJs9/EhhLTOU9tMExr3J6uvQhCk37YBHeUqOOVaUZZFZdrdZeRtc+mdB2slgc5+hff9YMcHFUULowbAU57g==
X-Gm-Message-State: AOJu0YyUFip6eyEtAPji49OqMj3d+2IFaM3rZR+7vf9yMDqX7Y6iXj0z
	9USJqBX20C93F3RLLPs3mk7zkQJjwYFa5eOepx9LJmlie0k4gv9myd76xVEoGNw=
X-Google-Smtp-Source: AGHT+IElxpc841rHD2Xiu2oaf6mrTuypBvT7Rrfq0KAuW6+UruOfjHi/qGNE1rhY2ZoG24NezULOsQ==
X-Received: by 2002:ac2:4181:0:b0:516:d219:3779 with SMTP id 2adb3069b0e04-52ca6e99397mr1027545e87.58.1718349616181;
        Fri, 14 Jun 2024 00:20:16 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.189])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42286eef9eesm87272555e9.9.2024.06.14.00.20.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 00:20:15 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	lee@kernel.org,
	alexandre.belloni@bootlin.com,
	magnus.damm@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 12/12] arm64: defconfig: Enable Renesas RTCA-3 flag
Date: Fri, 14 Jun 2024 10:19:32 +0300
Message-Id: <20240614071932.1014067-13-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240614071932.1014067-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240614071932.1014067-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable Renesas RTCA-3 flag for the Renesas RZ/G3S SoC.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index fcb0c7ee8769..86e74da7a9c9 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1202,6 +1202,7 @@ CONFIG_RTC_DRV_IMX_SC=m
 CONFIG_RTC_DRV_MT6397=m
 CONFIG_RTC_DRV_XGENE=y
 CONFIG_RTC_DRV_TI_K3=m
+CONFIG_RTC_DRV_RENESAS_RTCA3=y
 CONFIG_DMADEVICES=y
 CONFIG_DMA_BCM2835=y
 CONFIG_DMA_SUN6I=m
-- 
2.39.2


