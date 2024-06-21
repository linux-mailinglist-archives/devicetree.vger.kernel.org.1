Return-Path: <devicetree+bounces-78415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 513DF91237A
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 13:27:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 826351C25052
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 11:27:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E52EE17B503;
	Fri, 21 Jun 2024 11:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="e8GGMkk+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8B017B43F
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 11:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718969024; cv=none; b=GZPYQsssbQB+8pte0SXlZJOSF9nm96wBAywg45RX+Rt2i7k+ioxeXzrmllCArQN2MsvMViazzBrG+EK6q28lAcMsb/kdYZTu8dbPGoI+aNGMsA+W5Bn6SspUjYTPWmUN1RYnwxbqjOdsX2aLFAlCVF3GGARHN1g5FGbsFef4LhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718969024; c=relaxed/simple;
	bh=n02VnI1z3Lo/vCVvdYX3gNJ/na1w3LKQu6cqOd+GMII=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cxMqy4NeIH81GQZUu5Vz6YgiaibWDztA5S4tUgkuoZD4BDdaGvL9cOg4P9nwKYspe+3UtEqkE4ikpwdqUUurke31V4cNbHXJ+Cyp745VV8mRrmOO4JLKWgRQh0M+PWbg/cuOORjB87f658YA0uUJ4q6orzzBbP0My02nRHWGUE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=e8GGMkk+; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a6f1da33826so239061966b.0
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 04:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1718969021; x=1719573821; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=veIrjSKIW0msyP1BPKwCOv7rRYyO3ebgm2ScapHwacw=;
        b=e8GGMkk+MEXMMx8ecWdrmUcnfitLVwhwuDlqjvGYpUyGhaWvRXyN5hdsYkLxR7tuV1
         IuxOuTN7n8C/W6q8+nERUdyT7V/jcGADm4gRzAneS+IkzEAxyJSSciw2rwOxAi3LmpzY
         ajVubbLI+apSF3iG7ocIzwYsbcVXO9EB1er0xxTY/3JmfhNZQYeGC5yEUZGQJffmVGI4
         3Ymvez3WGcJ1juZQ0TVoJI/ywBLAmc508wv2kQE0naQuF1ni/bTnnCRYx+NcpnGHaHj6
         AlqSrHwEmsKSxrXxk+caxlBNtZAO8qJPJgJL5mKPq9kypOiiK7xqbY2H5MVCSy43L9NN
         cOaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718969021; x=1719573821;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=veIrjSKIW0msyP1BPKwCOv7rRYyO3ebgm2ScapHwacw=;
        b=t36QwHa8dPDKKbg9kTA+OQ9CTMK4YfXle9B3ZjqrEtan0l96yYMOPiz1nje4D1hNFZ
         krSk9Hz6oLBRF5JzqxsDVTn+yaNDl1qdYNKEDHMKCnkvXV69t3/Mh5D+7+Umd/avZZ2w
         d5gC5eydabaVcgVpiQgoOzlL6O0gsCAYwshEj89PRnnPXvorPK+VeFoNoexbkUfQFoR/
         0u+Dw07E5XNsj1X6kkYH5k+q9RJpaSUIME4/l8oushi65L3hUOU4176f2ry6f7tdLc7K
         z5nGTDpnF4JPJ8mbbWxhLJPUFjKCkFsgvQUn5Z4CwjKXDstzVNPI+TOSRxJod0PUbg6a
         h1aQ==
X-Forwarded-Encrypted: i=1; AJvYcCWq0LTmnlCvvxiIafvUcuTTF1pAAotELY9/HB1KyOKtJxhA7IqRsHhSLw233qywGtYIxRVxmY24+9Iv8L8BadP7KK3UfAeUcQn/2w==
X-Gm-Message-State: AOJu0Yxj0K2cSJpDJ1bSEZ+5BcIZrm1y+OVwe9mf4n8TxylozWt/zcfm
	OMXLsN3dbwXRaEZ0yVmuLXyMdlJA0CpE3qlBtpg7YLkZTkql2LXNuW98IJBhQb4=
X-Google-Smtp-Source: AGHT+IEEH1uXQ9SWBQpZ3LT5PHwfn4wvDC947Dj2o3fom2F9AP5MXqF9KQPaa6c5ngH5rqOd6vpGow==
X-Received: by 2002:a17:907:ca1b:b0:a63:49d3:e1c5 with SMTP id a640c23a62f3a-a6fab7d6a8emr476914666b.64.1718969021696;
        Fri, 21 Jun 2024 04:23:41 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.70])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fd0838345sm64498466b.99.2024.06.21.04.23.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 04:23:41 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: chris.brandt@renesas.com,
	andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	wsa+renesas@sang-engineering.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 12/12] arm64: dts: renesas: rzg3s-smarc-som: Enable i2c1 node
Date: Fri, 21 Jun 2024 14:23:03 +0300
Message-Id: <20240621112303.1607621-13-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240621112303.1607621-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240621112303.1607621-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable i2c1 node.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 8a3d302f1535..21bfa4e03972 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -32,6 +32,7 @@ / {
 	compatible = "renesas,rzg3s-smarcm", "renesas,r9a08g045s33", "renesas,r9a08g045";
 
 	aliases {
+		i2c1 = &i2c1;
 		mmc0 = &sdhi0;
 #if SW_CONFIG3 == SW_OFF
 		mmc2 = &sdhi2;
@@ -150,6 +151,10 @@ &extal_clk {
 	clock-frequency = <24000000>;
 };
 
+&i2c1 {
+	status = "okay";
+};
+
 #if SW_CONFIG2 == SW_ON
 /* SD0 slot */
 &sdhi0 {
-- 
2.39.2


