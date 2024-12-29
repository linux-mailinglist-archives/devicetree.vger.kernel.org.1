Return-Path: <devicetree+bounces-134597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 136629FE037
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 19:44:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C3B661619CF
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 18:44:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2535197A7F;
	Sun, 29 Dec 2024 18:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OIIAs1Ke"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09441197558
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 18:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735497853; cv=none; b=JW9E/jTa675/azat6tp1eZR7tneQZgGwETaamSkLnUHCXyMtaoaILJJLRTU3pAMI1NsQBEl7JCemcO75eq9l2Xp9LZI/Rjpr7jdNM2MyX6Bx5ul7sfMqlBHpVMrVrOkMgOYYyqgNDfieKCn5xDEiyleiTL0dLmaLuAF5detyX30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735497853; c=relaxed/simple;
	bh=sneoKYbk2+BCZOEsHOlNEalt5Vr1F2uXYyBlsT1UmA4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=P0K6vMKfh5Bky+2OZN2Kx2lBR00rzQAa5BUJ/gO8hNgxc+DzgvJ9nKDfz2H1xvdxWMcJUqdlcLpq7mJmUilb0ykrFgouFsULaUzfRjp/nRdwoZqxOQd+5cwaqqADwaifPgfLW37jJiysUd1fU4nW7CE+Wc8nLabuUuX+gPAIINk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OIIAs1Ke; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-71deb3745easo1679500a34.3
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 10:44:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735497851; x=1736102651; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7zcYlsUzO0vGDNcLCnF4KdwOB7P4WtjzUTN//CHxhAU=;
        b=OIIAs1KenpGdNQFVUF4/K23W2TrEakZl09hVY8Khlw1Usvc+QzNTUUuQZtf09FxXVz
         wqQt4VJeWsrbMgOpzVjtQP1SdZ/yKJtPpB5Oa4UCtew4BttoekrT5X9ylX0fuEJw3Y7k
         f6t4bCjFcEch5f6Gfmy+G5PiDnF1UThBygMhSjVNsJpwncDgSTgSlsTKOmPEJgU2iWJ5
         IJdGFaWwIzhePZ2vSwdH5EOcWe1y1JRzVLtezWwrqJI7rUAYzQpDm3bsFSrqIauwNuTr
         AS50zBqAEFSqyWR2EctDHeSTobqYT61g3raxGS0tTxvNWsZeRLDGy4/0V9qLutBrrT8W
         dX9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735497851; x=1736102651;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7zcYlsUzO0vGDNcLCnF4KdwOB7P4WtjzUTN//CHxhAU=;
        b=nIeFaB9gWgDnO9ZNBhn1A+nOpalMoncVLC5Ut+YPjJlfSGUyt823Wqb4Q182oES6hT
         1sef7kQMHcqLXyl1zgJrXyVMc6Wa4EekMGlDI/siDx87/p5FuqpYWXmEXneejfqwFCsj
         VE/fF8rcvuos1hkEGP5XY+bHOrW2r6+3frFeGvAN58Iz52604lCAf0oIuIUUfQzmr58W
         2yzfOmvz85IIMo72WqhhXkJK5N4th52qL6otwQpNXeo0xZYG3xgspinf4GwT9DJt7yFe
         gmjsMU7KB2xv/2qr3S8RGmPH0LTnSS9BOTWPUzvRXB0las+JD5rtOysGwn2oIvc1isOT
         LcdA==
X-Forwarded-Encrypted: i=1; AJvYcCVp5Axm4StLpntJsK42BW18KTWnLr9W7UnTmsjvsGcOZPuqsNPYYicscagRtExUi3/D6BrNOAdiDVP3@vger.kernel.org
X-Gm-Message-State: AOJu0YxCcp7Nu+RC6G4RCmXlklZRDr7dg1pelqRCLB3NrQ1fZEye1dfR
	Gc10US+9js6ZAj72OdT8kjkKBiL0lRGPbQtJklI6as9geOsrc+PG
X-Gm-Gg: ASbGnctbVOKvy3uTLMvysyppavp/3pJGCyKPc+MY4XmUoQ3HO/6vUUOVycikQDxUBiB
	HDXfhjoYI7z6OU3ysdPPdUH+YIH0Z3J0u26fGfYqYKoJxZ9q541+gK9/NIAVQAaW2LwvdO16Wq3
	rLWO+QTzxKIUQBRIqMypveu9WBiIw8O6B7qhlyzIMbmwZ8GeCqZxyHY5qIfTDBK5dTUegqxumqN
	ov7J0t0kErHJeygcFpEDlz3FQR7z5BG8LofLJ58N1WnAljEXkdDjrl3Tja+WGlP
X-Google-Smtp-Source: AGHT+IHcOvw4X/mURfyMbYbaw9HI7UAEZMSk8SYcZJoXJXIdCfuyH++j/uv2ZWP/3V4lKKq1MCLQ4w==
X-Received: by 2002:a05:6830:4422:b0:718:123e:922d with SMTP id 46e09a7af769-720ff801918mr17728569a34.18.1735497851231;
        Sun, 29 Dec 2024 10:44:11 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:e765:a49c:5c4:1103])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71fc97d6fafsm5515645a34.31.2024.12.29.10.44.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 10:44:10 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/7] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Max
Date: Sun, 29 Dec 2024 12:41:27 -0600
Message-ID: <20241229184256.1870-4-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241229184256.1870-2-honyuenkwun@gmail.com>
References: <20241229184256.1870-2-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree binding for the Xunlong Orange Pi 5 Max board.

The Orange Pi 5 Max is a single board computer powered by the Rockchip
RK3588 similar to the Orange Pi 5 Plus.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923..2a141d99c533 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1075,9 +1075,11 @@ properties:
           - const: xunlong,orangepi-3b
           - const: rockchip,rk3566
 
-      - description: Xunlong Orange Pi 5 Plus
+      - description: Xunlong Orange Pi 5 Max/Plus
         items:
-          - const: xunlong,orangepi-5-plus
+          - enum:
+              - xunlong,orangepi-5-max
+              - xunlong,orangepi-5-plus
           - const: rockchip,rk3588
 
       - description: Xunlong Orange Pi R1 Plus / LTS
-- 
2.47.1


