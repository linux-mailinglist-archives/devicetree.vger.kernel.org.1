Return-Path: <devicetree+bounces-150536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC5FA429EE
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 18:35:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D32D169EAC
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 17:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 567042661B2;
	Mon, 24 Feb 2025 17:32:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="JtZNii9m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E46265CD2
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 17:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740418332; cv=none; b=h/iPJvZ5S1y/jYwIZTVgY4/6HEzDxfc2Cthx7dgIsWex245eEV1wr/sLEXT33QF3A9l54aa2I9FaFPZWn9P88TO+Jkv8xTjjy+dqMmQGc+SxgFJ+1+3Wb+ZA34gUel75cGXY1tgTdGNMPOnI0cHhtYkvsbqpFdt188/DI6dhjnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740418332; c=relaxed/simple;
	bh=oIB0SGCz6w/sdFWz/voO0kJ/tz/pNsc4Pe98Mbdlmuk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Q20YsxeC+FieesGTBOjegGl4lcXFoRJt3Fe2jbOLlI+VXw7QuI8e13Sbob0nYQBKymVX6WemC/AEWPKb3UX3tlMY2Q42NSG0wyEj4rSHiup7OqXYLqahrDw84WO+Ddm6hidmxBj5E2W8L7EypbwePrE6yb1NIUphgFiBGT0HqNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=JtZNii9m; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5e0939c6456so7460667a12.3
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 09:32:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1740418328; x=1741023128; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XhxXNmQS7HiqcndJwzB1tfncWGWAmFhTQNVTNzL+Iew=;
        b=JtZNii9m2CclQdlEmJ8tK24LCj6XEuU3LqkFARNKiLvFT61QPErlqVStQvrREXP40V
         w+A1L3lgCtrozH3xOhaRz66a1n7CuWOfjoHeiWEu3luJbKfzNwOfr1OIhEErPIJI2EyC
         q5nKLA5INTlnHUEjGqBiTJWOSeHI5KelLduYCL/YH+mEc83wq6wIHIOrcCqidREb5Jwq
         Q6VJ2VYZdt1UhkgD+Paq5iy8S6du0Fia9Bei5NSPsCWf6SoI6uQE10+SZoMgEX3ier1m
         tFXMgJlJI8TFO4Ov3gPVP/1aThmsFKPX5U6QEN2MHUxPERrfTffo1f/lhUGEW6Q8WZw6
         Cjyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740418328; x=1741023128;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XhxXNmQS7HiqcndJwzB1tfncWGWAmFhTQNVTNzL+Iew=;
        b=NiAP/KyoqiBq0wOMAtKqLNS0DhTNFN4E2roGLBIiYylG46D7WOGpucSh+88OfN4Vt3
         FGO21phH5+3W3foyyfkg9gMuFAh7ZpL50EW6Dv9dncRPwKbchIfB3HEPV2I6uo1EMzZi
         UyK/MYhlinKeytA71wLn390lENNNRPicDmAwsCl545LvkpW2DE3lUVS/6txbGZHjdb3K
         hIM9CSn0bnEcfrCUcVZWoupxvcE9QefJE/Qw9noV0WT50XCRcKlugLHV+8myc20f3mlt
         HJJiPpm84uTUMbXJIEQQlY332Sqdf9E9TOFy1pAx2FWaS3OTi7LQJF5eLvDbe42u9Afj
         W/pQ==
X-Forwarded-Encrypted: i=1; AJvYcCUk/jmN9gKnWyNVDn76M1XyOGe9Dp9vhB4hjvXQVvlvzAYyg3q7cyQvn6AhLjMRpE/W3hzVJpsDLFhN@vger.kernel.org
X-Gm-Message-State: AOJu0YziWV8ADti7vN3yN1xOdeQQoZtAPkC5oE9W4wU62wBfnTBs2OWQ
	Dt/rZDal+D3OfF0Xzm7ByMWkkKcW26COgNhf1iqN1Trl/EUMZY8uj/yCat4ecWw=
X-Gm-Gg: ASbGncuIyODnFD9yHY+aOoR28AsG+Q+lfYPU7G3NJrCeeko5uwcV0/KUHzKcD2LYPCQ
	r5j0wwybTSoa4kP74boTUtY60lsHxrJzg1IhIBebaByz+LbmzzvULJ5pIWhb2k7Y8i0PdAN+eTc
	Gzo1VkNPi5VKuNP2874GcwtnqBGjTbqfKFzQkZyRVVbZTWRdBAlzMVYt/gq4V0lWZi3nPPL9Ra5
	j/J5odONAu0z31afhQX6DMJZd3g3JuXRTEAqYdjx3C7PfW9LrtVoEHW0KUkCTsE4mKlxcOUJNar
	uUP4RnmyGPSbJ603hFwp3+fTW3MhJ6V3YiVa1wFt/rR0gGFLXdEbvf8=
X-Google-Smtp-Source: AGHT+IEOW8+Mti0kStIcH2NN1v3JN2p1VlS2xp8UH5KoJEBDGTjvf4FDX9S2JYf1r+OelyXxGOdoUA==
X-Received: by 2002:a17:907:970c:b0:abb:eec3:394c with SMTP id a640c23a62f3a-abc0d97e77amr1259252366b.5.1740418327678;
        Mon, 24 Feb 2025 09:32:07 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece270a7fsm18674357a12.58.2025.02.24.09.32.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 09:32:06 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: rafael@kernel.org,
	daniel.lezcano@linaro.org,
	rui.zhang@intel.com,
	lukasz.luba@arm.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 4/4] arm64: defconfig: Enable RZ/G3S thermal
Date: Mon, 24 Feb 2025 19:31:44 +0200
Message-ID: <20250224173144.1952801-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250224173144.1952801-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250224173144.1952801-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable the CONFIG_RZG3S_THERMAL flag for the RZ/G3S SoC.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- collected tags

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index a1cc3814b09b..c3336b1342c5 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -714,6 +714,7 @@ CONFIG_ROCKCHIP_THERMAL=m
 CONFIG_RCAR_THERMAL=y
 CONFIG_RCAR_GEN3_THERMAL=y
 CONFIG_RZG2L_THERMAL=y
+CONFIG_RZG3S_THERMAL=m
 CONFIG_ARMADA_THERMAL=y
 CONFIG_MTK_THERMAL=m
 CONFIG_MTK_LVTS_THERMAL=m
-- 
2.43.0


