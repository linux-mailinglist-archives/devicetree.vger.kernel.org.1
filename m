Return-Path: <devicetree+bounces-171268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 66526A9E086
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 09:44:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 884E4460C90
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 07:44:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C458C248871;
	Sun, 27 Apr 2025 07:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Tk02Lb9q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AB324728F
	for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 07:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745739854; cv=none; b=R723c8WMC9E2jlk0uErGKN9d1C6U5CYNDTPqzhrVVg8kgK4V/nlUSv6ZUJo7aLvP4zOnpMk7li4EIQFxg5gN51HzodnvNAC68PdErgjKPapp3dNjY/gmI2DUuuL2NLbzkJFU5BzWt3bpbfoEMJh+wj103Gi05/aWiyrjWWKbZOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745739854; c=relaxed/simple;
	bh=5/ognVn2gV4roYlrwA3n7Saujcjw7zfVtgoIux2q/NA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bzycs4c3tsrms8yRFeYPID9VdSr1gyXLEU8L3qVAL0WdW8wmuiQCD3dfoSIpPBeW5oYrel+3u7gDMBNaG3QxWL4xjHplH1HEcNZX3Sec+jXmBYBxkvoPLRbkQnO79Caj7uWN52UhJfASBJ9XMzwYg01yNFZS7lNpiQZfPZxtzI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Tk02Lb9q; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43ea40a6e98so35675125e9.1
        for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 00:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745739851; x=1746344651; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FpQyYzT4X9HKnHUwrDxKtpV4uiqgR6fRfhBMNjhjrS0=;
        b=Tk02Lb9qYJpXx4zzkppFNH7YLliR84aoVIlxUIKBJkisBMZCS2MNljI6pFctsTYNWQ
         iYLu1UWJrf2ZB1Rjg3DDYsfKn7fq2lukPZuDDb9UkDmMKbueIGtyqqigkiXFE3B7O10e
         QLxvPwm66I52gp5NFjNnHpY0nFzdhLLL1ptrs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745739851; x=1746344651;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FpQyYzT4X9HKnHUwrDxKtpV4uiqgR6fRfhBMNjhjrS0=;
        b=kEs8sKBD2Ezwg20gYROJckGKZMtgleKlkbb2SpWV/0ODrPluxL+TSkV678vYMEvwqX
         FH787MckLJhOn2oNqVGjMrxYXOqk7bfPy2ThwvPnCk6/66lrdm6dqX9c7hQPWGpE7T5t
         DSVm3+vLEKVcpEgGE6Iv8XUoPgNcYA9UGIVkrsigX+hX/BaF0se4hmt4a/d4zbolRs86
         gL+1HV3FJ7vdzbnMBtxz7G2YWVQvleH29/kJJAZmbABqMzGI6r8KOHSbt9deQTf7g4V7
         6LGi9DVt7liL5sbaFEQX2SMhmoVgu9YQ17IBtQTTedJCqBGn3a3ijo9Go72YZYjlHRuY
         SySQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2G5KpB3T+HgQeDTbZwneDo/sgTMVjUcTYfyhyMo0WOFy6+M53z8F6nuZfie5Q/MTgE9P57cEO+npR@vger.kernel.org
X-Gm-Message-State: AOJu0YwySDxd42ZdmCz30Ksm3O9D/QcuN9zDS4+gNm1Ivofj/kilnX3m
	f3SW6mbeoBay37Zss/GC1MpUQiRfJHno6QNRxX6pBSmUlOFXjmHAgQZec/qL+gs=
X-Gm-Gg: ASbGncsPYukHMrjjXaaSXfEbzqpzVr4jNmfo6wDeQngsTKNKkuU4dA9oG6QgPF6nwFf
	vNLrmVO+mleQjaNATyFDbhUywR4UONnCMj9jwKM28GblU1WRMUFIJpnfL49Ibc2DqZzGukfbmDb
	0Q7Zq3ugwL1Wa5nCHAD0l+z2BWOrepOq2uZOqf5Kww860KwH312C0MhtAXkcfdTxOvay/pLG2dK
	H1lCLCRXAsD0t5UZjM2cqckpxoy/Df0XAzm4Tth9vaQmnnAeyJgcc6Vyx/QukmpwioU4ICiBHN1
	3dXTJD4l2RiU/g7F4RA38JznXGgmOuViJkMZ3ZHijm+Z5H9ITKz+h4gKOs59LpUVqeqOkGSfK/5
	AgANrnA==
X-Google-Smtp-Source: AGHT+IHnx27fFK0oDHbVYzNEsRJgFRPiklQgqUZhae0lH9ygvIp4VX+fSkkY91P89JAIMZaLdkoxOQ==
X-Received: by 2002:a05:600c:a15:b0:439:9e13:2dd7 with SMTP id 5b1f17b1804b1-440a64c159cmr74150165e9.2.1745739851229;
        Sun, 27 Apr 2025 00:44:11 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.180])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-440a52f8915sm87682015e9.7.2025.04.27.00.44.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Apr 2025 00:44:10 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Amelie Delaunay <amelie.delaunay@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	=?UTF-8?q?Leonard=20G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Marek Vasut <marex@denx.de>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Oleksij Rempel <o.rempel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 2/8] dt-bindings: arm: stm32: add compatible for stm32h747i-disco board
Date: Sun, 27 Apr 2025 09:43:21 +0200
Message-ID: <20250427074404.3278732-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250427074404.3278732-1-dario.binacchi@amarulasolutions.com>
References: <20250427074404.3278732-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The board includes an STM32H747XI SoC with the following resources:
 - 2 Mbytes Flash
 - 1 MByte SRAM
 - LCD-TFT controller
 - MIPI-DSI interface
 - FD-CAN
 - USB 2.0 high-speed/full-speed
 - Ethernet MAC
 - camera interface

Detailed information can be found at:
https://www.st.com/en/evaluation-tools/stm32h747i-disco.html

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index 5fee2f38ff25..75ef877530f9 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -42,6 +42,10 @@ properties:
               - st,stm32h743i-disco
               - st,stm32h743i-eval
           - const: st,stm32h743
+      - items:
+          - enum:
+              - st,stm32h747i-disco
+          - const: st,stm32h747
       - items:
           - enum:
               - st,stm32h750i-art-pi
-- 
2.43.0


