Return-Path: <devicetree+bounces-20259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BCDC7FE9D8
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 08:40:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3CDED1C20BCF
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 07:40:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4475A208DF;
	Thu, 30 Nov 2023 07:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Z+diMEv8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74AB919F
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 23:40:46 -0800 (PST)
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1cfc34b6890so5983795ad.1
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 23:40:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701330046; x=1701934846; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iKnc2RZBbgrdaniJjhXC1yNhidddngTlWoTj4fSfTDs=;
        b=Z+diMEv8ONuY6Fqp0+HMXG7vSxslfRRrIVJfpyzRj35ybU/GcA5YlJdEe/ih3SlY+p
         CMBBPF0HM/fONvn0dQFe/d34R1VUqTkOilpr3IaXsTzeSnnxjx9lSD0ZFsZHzdQtycqD
         X9g6++GCVPf8xL2vtU85zDWEXskE1LWbhGC7w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701330046; x=1701934846;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iKnc2RZBbgrdaniJjhXC1yNhidddngTlWoTj4fSfTDs=;
        b=hGM2CMnpEFQBIV2c30852NG2jlJRwua1fHdYl1Xddru3ZCyaDR7WTx7wmMf0Di6d6y
         h6Mi9GV9QxSVL6E8WZbyO5lPG3jHdh3X/Q1wkv63fdnWF4fjhL1HcNH1uHT6nEm2AZbz
         sPAbAwt+z+cFlA0UP8TlLpTNuxdZcd/4YnEWc/cDKGsg01OM86EGSBZ1Ta1yLLOPUyNS
         nkKoFvk22GLaJdrugQkiV1jeULjH5ul1JGkB9UJypn8ouqVjQsvla8vPnhv6Cz+e35iN
         MhuWhPrhPPhjajsNbcqmS5nnVXZp7WKKaWa5JgL8KBM6cN3aqc78TvuZPXTUf5VGsNFn
         4NoA==
X-Gm-Message-State: AOJu0YzCU+tYsXpv+3wJAHwDC68bFHM+eXgqQBWNXBRWRL35yHPCc7PH
	Ro2r+C0NIuHcu3fS12ZULLz88Q==
X-Google-Smtp-Source: AGHT+IGAr9LwKDNK6mCFGvRbs1763uve1b/upQrl2GE7plYDdI0iQfPRY6A2F/64FTmn8nJQgl95Tw==
X-Received: by 2002:a17:902:ac86:b0:1cf:c3fb:a75f with SMTP id h6-20020a170902ac8600b001cfc3fba75fmr19045596plr.17.1701330045865;
        Wed, 29 Nov 2023 23:40:45 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:7c8f:dafd:65c3:2bcf])
        by smtp.gmail.com with ESMTPSA id p35-20020a634f63000000b005bd3f34b10dsm612870pgl.24.2023.11.29.23.40.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 23:40:45 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 1/3] arm64: dts: mt8183: kukui-jacuzzi: Drop bogus anx7625 panel_flag property
Date: Thu, 30 Nov 2023 15:40:29 +0800
Message-ID: <20231130074032.913511-2-wenst@chromium.org>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231130074032.913511-1-wenst@chromium.org>
References: <20231130074032.913511-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The panel_flag property was used in ChromeOS's downstream kernel. It was
used to signal whether the downstream device was a fixed panel or
a connector for an external display.

This property was dropped in favor of standard OF graph descrptions of
downstream display panels and bridges.

Drop the property from the device tree file.

Fixes: cabc71b08eb5 ("arm64: dts: mt8183: Add kukui-jacuzzi-damu board")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
index bf97b60ae4d1..09e658bc30e6 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
@@ -147,7 +147,6 @@ anx_bridge: anx7625@58 {
 		reg = <0x58>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&anx7625_pins>;
-		panel_flags = <1>;
 		enable-gpios = <&pio 45 GPIO_ACTIVE_HIGH>;
 		reset-gpios = <&pio 73 GPIO_ACTIVE_HIGH>;
 		vdd10-supply = <&pp1200_mipibrdg>;
-- 
2.43.0.rc2.451.g8631bc7472-goog


