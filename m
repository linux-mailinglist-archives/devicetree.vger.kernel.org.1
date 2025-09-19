Return-Path: <devicetree+bounces-219196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 126A4B886B6
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 10:29:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C77A962816F
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 08:29:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0C322FB96F;
	Fri, 19 Sep 2025 08:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="aa0NPGEp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240132E3391
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 08:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758270571; cv=none; b=PHEG3ri4cmku90iCtfRpp62c1M5c5Gvq5PsXJSWxRd5tPxFd3qPJzK2+VjD2gCg6GOyXpMV8ssgz646aPq+VEX5TQwishDQFh/nmFrgI4kHYR9ukYb5Rxjgg5JOnSMQxihFzL2ajDzbFxhprj/QX26CoS2Uy8ToK0KQxSuhEdRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758270571; c=relaxed/simple;
	bh=As52a1nw65MeS2EVDNnOtJqa3+aKLFvzaeDu8JielLA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gIHsgyKV4WFEZttw0rhLovStx2k1UWLshRjlcqdpbUABGGI8KP5T/iWN5L8UYUVel2t5Dml2Erwp+1Xor6znq8xIB52FnXD81L57lM/4hIrQu/Mf0yjpGk/oEg2CnHYGZIm1InF9wZUPipmYfEyOCQc0OXzHz5wbQyiNTCqfnxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=aa0NPGEp; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3d118d8fa91so723413f8f.1
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 01:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1758270568; x=1758875368; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Iqorv+wUzYclI5plYgg5gZXidkIOyHodYIQisr+Wws=;
        b=aa0NPGEphQblj8Zl5Q6TZqM0/mrDmTaofSSu49Fa6bNBc1wNwtOyzaDHLO64zf0qYy
         mtE1f9Sp0NmpoRE3863a4uLeBIA2soa5Op22HsKdT2/hl5zinT5veg9L1AFI050USfeV
         AzJnAlDHftbdzid5tS+/p2mJArop+M6ey4T4fMT0VG8zMsPSMADRi0pE2OJ0MYZfzQ5S
         DagLo12TTQzp4zkaaIF1Y3kcBcKenJL598GRk+QM3KfrBMOYnjYV7kl9LsegzKZwG+4O
         shKi4aXd5lqwENETgU4xlb3rS3FnByhW4IEMwmaEv8BPrOpS0iTrlx2tqNj8vDnUTuRi
         qugg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758270568; x=1758875368;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Iqorv+wUzYclI5plYgg5gZXidkIOyHodYIQisr+Wws=;
        b=CqGZ/1Y5f7JRCJvWx+mcsK9FoM+HPjaaMPKa73O+TmO0W4R/e9EczLawITWp3fe1NL
         tF0voCdb1DLN3O+//mF7At+XDx7u5o38d+HVxThAeHcwpT16IYrbndqdwK/zzb7CK/4m
         aDPPjj5RBFmElI54+kFi571wuB2DTjfP0ZvdOp0Kqe/MArLOIXH+E0U2bNf4gkIvg/jJ
         uRZZ5UYQwMNnkdoGVQp59neTzjtPrJdv7P048yqpTZZnD9KOaC5hQujroNXfcWxbavoU
         nsCtHQNcHSpRqtXr3urbXhc3vN2owIsNzqeB8WBTyk+CmqDdvHAqdaioVEm7gyOUldIq
         l80A==
X-Forwarded-Encrypted: i=1; AJvYcCU0KboeI2qlrmkD2is8Fi//xYIJCoSMJBzla5u+F2B3MTG7ZnutDGH/t843kULEuR3DxV5suxf9XPdf@vger.kernel.org
X-Gm-Message-State: AOJu0YwFj+O8pkv0wGz16rLepl8Ia/1goOpxHBCcrli16/HAcbAPCA+B
	8/KzoVckxkN3AkjB4tpNOero8leLUi3RgT6DHIC7czQiUFoXoBVAtvabkZO6Is1PmfM=
X-Gm-Gg: ASbGncumaj3G2OW23M22C/a5zj00eY009bAExbEdYPHXiHW6Bc74U4qSAWtstsEl3ox
	OvhZbZEgrHNxvfZe5xZYh3BwcqJfPTQWhchGddm1UjSLpursCIpp6+kNkmKghbjPtQ4comgnBbn
	wL6BBPFGOxwabTvMqH20b8+UdsdBGA9E3wY5zwZ56Pje9ShVFA/jp1MVgd2XKKJLJ9+vdbH58nr
	yTQYmLPjl0Dhq7u5PoUssI5AwWtAgXyur2PbcsUWCk90ak92VSmlC8DnmSVYAoZ8NZxAu3m50Fd
	JZMR5q4v8pu/+8EWo3x7YdJD3KhVlJlTMDv3l5hvZ7UJEi21dfA0sTzQHbWk+XziLWk1pzldDeg
	6O0/qsy87PzIN2ikQXulSS2XqncPX8/GAV95lYiijPS5mZHPdkjK3Mey7l4U=
X-Google-Smtp-Source: AGHT+IEtW9bDEtW63n2FFQFrDqExocPHVGlNiU4ceV5mEcoaeM2txyi9xWtkdtxYtKJI6N9PvSedCA==
X-Received: by 2002:a5d:584f:0:b0:3e8:f67:894f with SMTP id ffacd0b85a97d-3ee1d504e20mr2552236f8f.26.1758270568481;
        Fri, 19 Sep 2025 01:29:28 -0700 (PDT)
Received: from fedora (cpe-109-60-83-189.zg3.cable.xnet.hr. [109.60.83.189])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3ee0740841dsm6771286f8f.23.2025.09.19.01.29.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 01:29:27 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
To: p.zabel@pengutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	steen.hegelund@microchip.com,
	lars.povlsen@microchip.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	daniel.machon@microchip.com
Cc: luka.perkov@sartura.hr,
	benjamin.ryzman@canonical.com,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v2 2/2] reset: sparx5: add LAN969x support
Date: Fri, 19 Sep 2025 10:28:39 +0200
Message-ID: <20250919082919.19864-2-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250919082919.19864-1-robert.marko@sartura.hr>
References: <20250919082919.19864-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LAN969x uses the same reset configuration as LAN966x, but we need to
allow compiling it when ARCH_LAN969X is selected.

A fallback compatible to LAN966x will be used.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
Changes in v2:
* Drop driver changes as we are now just using fallback compatible
 drivers/reset/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 78b7078478d4..59245cd0c393 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -170,7 +170,7 @@ config RESET_LPC18XX
 
 config RESET_MCHP_SPARX5
 	tristate "Microchip Sparx5 reset driver"
-	depends on ARCH_SPARX5 || SOC_LAN966 || MCHP_LAN966X_PCI || COMPILE_TEST
+	depends on ARCH_SPARX5 || ARCH_LAN969X || SOC_LAN966 || MCHP_LAN966X_PCI || COMPILE_TEST
 	default y if SPARX5_SWITCH
 	select MFD_SYSCON
 	help
-- 
2.51.0


