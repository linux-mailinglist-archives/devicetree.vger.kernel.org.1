Return-Path: <devicetree+bounces-169689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50168A97E91
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 08:04:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76A3A3A6175
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 06:04:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D92C264638;
	Wed, 23 Apr 2025 06:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Qim0qUA3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36857267728
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 06:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745388193; cv=none; b=BSKXjqXYHd5BvlN50h+01YFn82YWn5T0c/pT4K3ableicd1IWuaD5TU6MqL0noUVpc1llW9q6K9Oqec+qTyGm+7q9wlPG7a2z1HicyLgzAT6s6ZDlrS8dreI+dDjMvyjTUXYHTygX/fYvio6jSIzBXO6uiHYCEh4zSl7QD+5d40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745388193; c=relaxed/simple;
	bh=vc25/TFqvg0Ekr2Sm4G/VkkviBdPeMF5e7FdTWNCvAE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=svNDBJoIcYnIZhOG7u0l1vtfLDfUybQKS0cGmP3TCSpCT/735Q6sUQfP5yfM7BvlTiLoDUqQgW0ZOG0wNc+R4724nst3yHHbJXPDfiram/2empS4D+QdhHMdxvsa0GI3bjUehxlGovs71Q6jD1h+iGtEsqjpdepvTs6XeOAanwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Qim0qUA3; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-acbb85ce788so440649666b.3
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 23:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745388189; x=1745992989; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BHj8xJJDjB/nn7+FV+WNgNcGZHPneQlK/63TZumKERk=;
        b=Qim0qUA33AOILkI9Ncp8BSemheH6i/CLgpGapCfVoLjcb74psfpkcEoIdJmGo2kSpD
         5cG23jZzVZhoLS21DYXZgEkziqQPwtoeK/NaP5eFs6/RPFM59hwgF/kJk8I2iS38HtvZ
         mvSyUVjyrBp12WIGTIgVJvYNCU1TpzL4vbsx0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745388189; x=1745992989;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BHj8xJJDjB/nn7+FV+WNgNcGZHPneQlK/63TZumKERk=;
        b=YvO80lP3aQmVaFeY9OYbEn2P84VWXihUgY8q6g3FLF3/RbUREVyYBpzvDkibxi81b8
         bjz/R3zTx6DUE8ONgB/d4C5mfjqHlFgKgicdV/lII5NT7ZcBMWCPWP2eeicsS9DAV0Cp
         BSYiOmbWVPTJZPx449e4HAfRblopl9t87tf671VOpERQHhS2kRkRLtLbFgP1f/1Mv53E
         UTqhcqFgmvC1UBproY/DQtLJZr+tt6VNV9tKMT8bxWXwmqLzrojbKa9H0Ixf/bEPH7rr
         66zy45Db1jlOt2Z/dObpthN6FuW1mXdOhzax4zDiNyi+o9/e6ToKKndeYEQVC459qYz4
         GnHA==
X-Forwarded-Encrypted: i=1; AJvYcCU7PUZal/9wRWq5hTI/m63H4UHLcEfppcMcAcUOFu8SFdciSm7GWYPPSFaSjOuSx8UosAQbQDRHQ3Iu@vger.kernel.org
X-Gm-Message-State: AOJu0YwwRNEp/pt0QxoW2FEsXoeOyyZuhohl0JX/wKfdaO9jr5BRjp7H
	JMqwzlIgIxBGWAnsdNt33q58c9HjJJ4KMrfVQlcz5ZeNDPZOurp5eDRWPXY5z80=
X-Gm-Gg: ASbGnctxAPAsyzh6qOnvE4iMUfMm/vBqDzRz4VVMZg5gh1ZDPlktuUvHT4SSJm6KB85
	lzPPP24UYlrs845yRCJg8HxZ2Xb5LlHIhBmAeMeVjm9nmDFSK1CGjARmvBb/0Rf/WFeYWAWzON7
	0G4Cn49pRbAmuetqDyDpMrQFxwDX46fyX8Q6klLlP+9SPOlzO375XW1QqDFTHl3lUy48pNAEhwa
	fdO4mqM05D5t3JcuxdwosLvwca84c4R/ej8NT13eRTofkW/9yDmDbpfGIPl1bDzeJqd+vrnRIrv
	GKJvxbHiuuDDu3EjIhXzT9o8ln5aE9gd7Vp4uUGMVsC9lewB6vaKFXxCKrovPu0fHrSxHbon3l0
	wgjjS
X-Google-Smtp-Source: AGHT+IGJfBUmSx7xpArhxmxiAbzE5ABneyuLMS1Ivt2d0nKwCtdMFf2EWGfW8vDplA2S4cAk4a6aow==
X-Received: by 2002:a17:907:f496:b0:ace:3a3d:7e35 with SMTP id a640c23a62f3a-ace3a3d808bmr240038966b.53.1745388189491;
        Tue, 22 Apr 2025 23:03:09 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.29])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ef9e7e6sm745234366b.162.2025.04.22.23.03.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 23:03:09 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v11 09/18] arm64: dts: imx8mq: add anatop clocks
Date: Wed, 23 Apr 2025 08:02:26 +0200
Message-ID: <20250423060241.95521-10-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250423060241.95521-1-dario.binacchi@amarulasolutions.com>
References: <20250423060241.95521-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clocks to anatop node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index d51de8d899b2..1d1424a136f0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -817,6 +817,8 @@ anatop: clock-controller@30360000 {
 				reg = <0x30360000 0x10000>;
 				interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
+				clocks = <&ckil>, <&osc_25m>, <&osc_27m>;
+				clock-names = "ckil", "osc_25m", "osc_27m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


