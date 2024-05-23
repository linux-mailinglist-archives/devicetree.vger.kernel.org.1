Return-Path: <devicetree+bounces-68582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7AC8CCD6D
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 09:55:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 53D941C21C02
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 07:55:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3925E13D517;
	Thu, 23 May 2024 07:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="a7U+SFq8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A7513D297
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 07:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716450873; cv=none; b=s/J/asXD8Jd22VQZueXwQo7ZLHxwghtKigB2SxTKHn1vKGNjBfFfBEmZ8VUs8BPEr984URhFr9r57dAWz5b8GYTS7yJxG+5GKGezCPXIBX+nSD7ug2/+YZw1nLg7PxFa0pZfPJ3NyP5No8+OED7f1oF0BHBhyHDPhCN5acMymYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716450873; c=relaxed/simple;
	bh=DngWa9LT+PzowW87sl0GHtPfWYWe/9KucU6S0ZmKJWk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tVmkM+wXDvs8j3LJ2DYoTV6p+Po5qWvu2Fbvd4Mr3vdNFngDbzZVFQwi/VjOmgrhVF5yoY90hOhtU5d1saBd1F+3sTiRtxfBgb1zdcNjQ4GAAAGyUwzVjDagL2Jj2jFG8dPQHs/Ny84AkipBZCM9aIg5+qRXp14GR076WPH6OcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=a7U+SFq8; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-41fe54cb0e3so47365885e9.2
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 00:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716450870; x=1717055670; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8qHm5wPDHErIfonoFh9yf6yEDNagx5CpABpNxxmsHN0=;
        b=a7U+SFq8keObSAYi5uFnacKH9CbbtzuJbmVurqBclXdMdOhsG4kkZ5fMtaoZE/7kLF
         x4G7nYvQlnd0tnzg6L4bhzS8PiWb6QXpwWPcENhD4xLZcVr5+F03xT5Fv8Hhn7/x/Jds
         MY+cJcvsgHBZpwcK+CY6TlWM8dQKWU3Dya5MdHGLGts6I9abltphXZLWjXkcHQP3Rs/F
         Yi7nyrxgJOX893cRmJm2HWC9GV686/EUlSKKuM++J9KXZBytfCkLcoEBDk6uKy9BnVr0
         mpnCB67zhK7u+1jC/5sxG2YnlRAfIXWjJBVraeg2aRuzvBCVlkJFwIytE1w2BCF3epjc
         JCqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716450870; x=1717055670;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8qHm5wPDHErIfonoFh9yf6yEDNagx5CpABpNxxmsHN0=;
        b=eKkjn3A4EfOcGa70k3yOkRn+fIs9HRBbaiYeIgZJuVe+fMQQASygv9EsSHBVnopwps
         L5c3qi2H8oLklGahHFuFRVAJ4rljJncCY3MmN2i0uzBL4lXDuWT58YQ2iwEgbOOHdee7
         eDaBQXOj+UXwEHmrkbSb/WRuxFTKsIQ25uj+0pwmsEz0R38t6IHoRHNf2oAh1JEhokJo
         X99WPdGY3Dx34m3+D4ubiSEsJ9NNFt5ZCiAvQQpI1Eo3svSAaHxZX/Sfu20IOUZ51g8t
         YbCj2+gE4m6udVMGgLRKVPBaVBifcXix0eXN9SxzS24AkwQBJNjWmdEy7UHI90X6qO4R
         9JKA==
X-Forwarded-Encrypted: i=1; AJvYcCVNYjp3hiPvsw7PtHjP5k/w5SHGrJNlzQl/Bot0kStjdNLFM03wM1hTwwUrPnzHgZZBC+R6gMY+VsA+NSEl8EH8zIsTBq4TJ69NJQ==
X-Gm-Message-State: AOJu0YxH7FG9omef75DvXIR70PEHE+VhmZxSYCIWY01Cms9osc8EiXtM
	nxMv+IuGs0jrKng6qZMSgaiIezPV1ePWTR3P2wHEUhEDvXwIm5ZDFPTGruwb21A=
X-Google-Smtp-Source: AGHT+IF3OTnggc31210qX3nKdWOjfDLXrGQ5B7znh/oclKD116v3X2b9ljcQKfSkLFzr8iQgUqYRQg==
X-Received: by 2002:a05:600c:54e6:b0:41f:fca0:8c09 with SMTP id 5b1f17b1804b1-420fd385d61mr24859455e9.40.1716450869666;
        Thu, 23 May 2024 00:54:29 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a246:821e:6f3b:6b50:4762:8343])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502baad074sm36501833f8f.70.2024.05.23.00.54.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 00:54:29 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Chandrasekar Ramakrishnan <rcsekar@samsung.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>
Cc: Vibhore Vardhan <vibhore@ti.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Dhruva Gole <d-gole@ti.com>,
	=?UTF-8?q?Martin=20Hundeb=C3=B8ll?= <martin@geanix.com>,
	Simon Horman <horms@kernel.org>,
	linux-can@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH 5/7] arm64: dts: ti: k3-am62: Mark mcu_mcan0/1 as wakeup-source
Date: Thu, 23 May 2024 09:53:45 +0200
Message-ID: <20240523075347.1282395-6-msp@baylibre.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240523075347.1282395-1-msp@baylibre.com>
References: <20240523075347.1282395-1-msp@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

mcu_mcan0 and mcu_mcan1 can be wakeup sources for the SoC. Mark them
accordingly in the devicetree.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi
index e66d486ef1f2..56a40b641667 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi
@@ -159,6 +159,7 @@ mcu_mcan0: can@4e08000 {
 		clocks = <&k3_clks 188 6>, <&k3_clks 188 1>;
 		clock-names = "hclk", "cclk";
 		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
+		wakeup-source;
 		status = "disabled";
 	};
 
@@ -171,6 +172,7 @@ mcu_mcan1: can@4e18000 {
 		clocks = <&k3_clks 189 6>, <&k3_clks 189 1>;
 		clock-names = "hclk", "cclk";
 		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
+		wakeup-source;
 		status = "disabled";
 	};
 };
-- 
2.43.0


