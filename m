Return-Path: <devicetree+bounces-69488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2088CFF7E
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 14:00:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 33D3A1C218E6
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 12:00:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE19715DBC5;
	Mon, 27 May 2024 12:00:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ayyKBS63"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBE1134B6
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 12:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716811218; cv=none; b=fw8nb2ZEKnq07e0B0SO1Q2FMCWIG1n9z7o4zi3/AEZAUpE2DrelZbnxtSJhFr/nPF/JKcZTRwuze/o4O/n903XlPJJL6RdOi0NVSOfS3pAWsV9XQLpa9pUSg/Zty2aWfC6bQEoj6JFRBfRVSPcJfRVpS4171548+HW7Jrc8LUPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716811218; c=relaxed/simple;
	bh=m/3Ar9UdD925AWyWRFKJfAr/rfLjsoesvD2HzZymGTY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=juOmQPYX1Qna92g1H60kfkIPrTwsNZSAxBJEuXThOOGlxS42cVzmr3DxPJO/um5hnIUcm+A+Vcmxpag40N5Up8JAYC9RtBhU3nwWMhfmjunLreNUwYiBo1D8KWu0WR2uawRDsSdaOV7sKLbUAuBvIsGyygnQYoCctk8tXDgtyWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ayyKBS63; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a6303e13ffeso64940066b.3
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 05:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716811215; x=1717416015; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FfCeHjS+24EDjGWUbBotOmlzBOa+3LwxFW0+n/tqVOA=;
        b=ayyKBS63aBsfIWbX5za2hIUhp9bBZG5P/gefc/fErk7Cwc3dLNZp/jiCdBmqaPCFyD
         2w4lgDV3VixNa8tSuWn6C8lUJqAsxkM2ULm7/a1y4mEEopt4YeiR/wmVyk883Yb4uMh4
         VQM+Ua5OCL8mmZpsUUsr+mLa9Ha83h+7mvzhQge5jidC9bUXcUJaDCrRiymcSO1i5TC8
         CdTykA3m+Z/B/KTIQPFz7KAI7pbcAJuecRKYKRL15GMNQ53WZ8ZWDK+FJSe24DFD/UA6
         +SIPKWTJuiYdypMxw1B1vw2yOGJC3sc34YdIVnRJgNQUGG90ZIB05pq/8YnfXDM+5Drn
         PTZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716811215; x=1717416015;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FfCeHjS+24EDjGWUbBotOmlzBOa+3LwxFW0+n/tqVOA=;
        b=Nxn6yAf/a6CR9YU3gc0rLsf85giIfs2CvrrmFBmM11BoxZhxA0c3vvpGZTOAwbsNSb
         CGximllnNZXvpztFLmV/1MR0hLdKqdLOjgy55A8yJgU9UVLmZODGI4pGOr3C1n+5DrY+
         L9Nbci4QRsyC7BxSqlHlp6x/dHytjrcf9pCsfLQh8hTAKuj8p6cPym82KMaJ19O4y4a9
         CB/ba/cr+5HA9L6KbR3Lmya70h4sKBkL2TnCaYa4hauikRQHJ/gEJbQD0IM5OZNeTnl/
         Pm0DXyVrE4AfK+Sa+2DoZpV47h0XrlOaGQcb6yA9SVLatcmtdFbktuIO0Vg94kWcN3yW
         dhpw==
X-Forwarded-Encrypted: i=1; AJvYcCVZIoYZTp1uKlcFvt53DofBN0sarX8agIlAtbWW5sOdCh9xyEaULGjVFG3hDrgq1q4ZWrUDAcqyR5BedDEwgXJzrCmg/mJ1GfR+/A==
X-Gm-Message-State: AOJu0Ywi7jDg1rsvcMvuQ+YsRxPKEB9m3wv7Nay+w18cLw/Gi6QHpx8f
	O+TBvjnqKXzpbGX6Tzu4bCLD/j55LNEOK8BViNCD62vE4/066jcfJ9iTiVgs
X-Google-Smtp-Source: AGHT+IEM8oeuFJhoAvvCTnvnPABOftG2A+iSPr/DlNCJRz0DldQKpyblkdDhmCmRgoPYYa02crl3pQ==
X-Received: by 2002:a17:906:f219:b0:a62:7ef:ca4a with SMTP id a640c23a62f3a-a6265134cd8mr474783666b.70.1716811215235;
        Mon, 27 May 2024 05:00:15 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a626cc8da37sm484669766b.183.2024.05.27.05.00.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 05:00:14 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Hsin-Yi Wang <hsinyi@chromium.org>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sre@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	openwrt-devel@lists.openwrt.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 3/3] arm64: dts: mediatek: Add OpenWrt One
Date: Mon, 27 May 2024 13:59:33 +0200
Message-Id: <20240527115933.7396-4-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240527115933.7396-1-zajec5@gmail.com>
References: <20240527115933.7396-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

OpenWrt One is the first ever OpenWrt product. It's based on MT7981B
(AKA Filogic 820) and has 1 GiB or DDR4 RAM. The rest of peripherals
remains to be added later.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/mediatek/Makefile             |  1 +
 .../boot/dts/mediatek/mt7981b-openwrt-one.dts     | 15 +++++++++++++++
 2 files changed, 16 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 12f67959f257..06f960002ac2 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -9,6 +9,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-x20-dev.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-rfb1.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-bananapi-bpi-r64.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7981b-cudy-wr3000-v1.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7981b-openwrt-one.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7981b-xiaomi-ax3000t.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-acelink-ew-7886cax.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts b/arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts
new file mode 100644
index 000000000000..4f6cbb491287
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0-only OR MIT
+
+/dts-v1/;
+
+#include "mt7981b.dtsi"
+
+/ {
+	compatible = "openwrt,one", "mediatek,mt7981b";
+	model = "OpenWrt One";
+
+	memory@40000000 {
+		reg = <0 0x40000000 0 0x40000000>;
+		device_type = "memory";
+	};
+};
-- 
2.35.3


