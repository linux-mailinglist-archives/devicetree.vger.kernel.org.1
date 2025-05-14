Return-Path: <devicetree+bounces-177014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB66AB63C0
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 09:06:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D8FBB173A55
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 07:06:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D6A7205AA8;
	Wed, 14 May 2025 07:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="pAxIH8SZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9BB1FC7D2
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 07:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747206354; cv=none; b=KetVw3VORQf/XgOZCoGHMXUEenNLQc0PG9/jV47AMfmX8SXWrr3gSAJumXmtNFiiFptXEeu8U2IiBe6WLv6dxzjA8ZAKSOhRLHI9Y6BL6hKitw9UhuBKeO3cOwDR5+Dz0DC61jHo2Erq195bObvlz9HWT+jYMP1jIuB2Wm9Xo7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747206354; c=relaxed/simple;
	bh=MlAwe0KDim9lB2A+cl+ofBu26pMokRaTACOI/0YspYI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YnaGCWCqAgc/Syt8e9sWNDhTO8R7PAEdZJ+TBfit7WclFNLua7oaFbcpdJGWCOT/wsnztEHrI5q0aDmH688lovJ0hQlL7wnBcGt1F8F2bS9IozH4TjRd87X1kdq1OX/QJMMt0+HSfCdXEeQdhs7Oa3NB4q2h8wMbcscqwzuq0RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=pAxIH8SZ; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-442f4a3a4d6so1556445e9.0
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 00:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1747206351; x=1747811151; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LnMERAkqxqmioTW1rVTb8VFktf28RT8bmo3e4/AkA8s=;
        b=pAxIH8SZlpQHcqx36hWzzOWk8qd2X1gG+NxcDWK81rPA2C/Jq2i9PCAQ9XZgoc/vdU
         lWlwSiJqK8sGAoNKPJI7tHLgwMZ7HgxlokEUbujwl2Hk+prseJHDKc+LxVYCL1/MPs9b
         ixafcOGKcq7YDE46C4tqFTr2qZy75qNgEhf2A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747206351; x=1747811151;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LnMERAkqxqmioTW1rVTb8VFktf28RT8bmo3e4/AkA8s=;
        b=mu2pm8HxZi8A+VQN8njfaspyZK3QUcpX2tjSsISyOlSCOGDvGDravQrMNwYnwgZ3oS
         A1YW4TZ/zuk8saB6R3FqeAtsFtOryugtJ5qlej3LEVILR5mDrfHYaF7MHbpNIsKVnzwz
         Tl1XgYp+SB4w6k7of9OGsdaRbi7wuJakE3Lt3iTTbLZDJf41KAJ9v366nMVMKJ3RLUuV
         C1dAjDQ7BukFV75q3znmq1fRLg0xdhVsR4KkN2vsVMN+OIDzgDLarJrwMFIMScqmK0qv
         0jlhpPZnU4/LNvlsQI17Am3FcSY+UtQ519ACcr2sWgR6EusG7QKKlXdh4E7d6gen2Fii
         BqZA==
X-Forwarded-Encrypted: i=1; AJvYcCUeUa+P3icAvoU7ZmvFkDJc1OoCc55/JCMdS6hS2DA5k+9gvtg+QGploEra3W/0QlKZDx41VM3Mqx9T@vger.kernel.org
X-Gm-Message-State: AOJu0YzhPMsDOX1xhFP/2COVLrQMP2dda8laDq2Kd964mvqi8GRwaASj
	xMXRE/3ydLp61b/l6tFBtyzh2hdT9NYZ+0cNiWA5H/SoaorW1jPTsPMBqMODHm8=
X-Gm-Gg: ASbGncuBVvep7l4bfmADoKXgxbnuwN1dCZmD+P/hYHUkN6CGxyQNZ6E6DfneOJ6jS4T
	6fx7tAEQv2rWWfvlS+BzXDgwzEy8a9Pcr9mdiHxFLukEpUuqHSolmOsRwaj+IDeRE4mRH1g+HO9
	dj1JaaJzqvTeuZkZ+0bov4zJtTZhtudE23yVrBg3Rvz73VlkmvqHgaUvp+3IjaRVPP1Vv9+Z7BR
	O6o2pxPMPJfm3H/QmkAGrH9Z7h+wY18jtC6mv88+QfrXi+sMmitYheljMzCw+nnB3Ib4yo/owLA
	Ekph/pTxAjhmOV03dyDCiZSQhqcaiiWG6oEg9XbXQacWsep9mt3h6ethqfM5hBZzW6476xgbFO8
	nFcMR/A5hKtmLVa/e4liigAtg+mzCTX+FB2ljjlccwRg=
X-Google-Smtp-Source: AGHT+IFJLzZyKmbngWgI+TzCZIEKEd11d7XNg6HIx4Hnb5kwZoKuTMfo+AMd0dF9M5np+Fv1sDDtKg==
X-Received: by 2002:a05:600c:37c7:b0:442:d9fb:d9a5 with SMTP id 5b1f17b1804b1-442f1a428a5mr20748315e9.9.1747206350998;
        Wed, 14 May 2025 00:05:50 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.client.m3-hotspots.de ([46.189.28.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f396c052sm16688175e9.29.2025.05.14.00.05.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 00:05:50 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Wolfgang Birkner <wolfgang.birkner@bshg.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] ARM: dts: imx6ulz-bsh-smm-m2: Enable uart2
Date: Wed, 14 May 2025 09:05:34 +0200
Message-ID: <20250514070545.1868850-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250514070545.1868850-1-dario.binacchi@amarulasolutions.com>
References: <20250514070545.1868850-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wolfgang Birkner <wolfgang.birkner@bshg.com>

uart2 is used as wake up source.

Signed-off-by: Wolfgang Birkner <wolfgang.birkner@bshg.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts b/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts
index 5c32d1e3675c..fff21f28c552 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts
@@ -37,6 +37,10 @@ &snvs_poweroff {
 	status = "okay";
 };
 
+&uart2 {
+	status = "okay";
+};
+
 &uart3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart3>;
-- 
2.43.0

base-commit: e9565e23cd89d4d5cd4388f8742130be1d6f182d
branch: bsh-202505-imx6ulz_smm_m2

