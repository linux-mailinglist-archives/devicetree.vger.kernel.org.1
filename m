Return-Path: <devicetree+bounces-58600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E31C8A2818
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 09:32:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A52F28871D
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 07:32:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 705F050A63;
	Fri, 12 Apr 2024 07:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="heniOicJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDCCD50294
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 07:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712907063; cv=none; b=q1PjIrkTy2oH5K+pfnvpJh2KKYGZNtzDWkHJpvDHB0BfbjH+pGZjbhqmcZ5RIAgyISxXZeTS5QUomE9YPvXCkGsiasKVd66rYpi3Ej3dtFhOX2ASqqhWVNUIdtxi/GmQTXrNafZ6bUm8ntz6TOS1X18OKpC77Usffv7d4jxv3dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712907063; c=relaxed/simple;
	bh=7FCb+zQUOtiGsCLei7LkLyGVhMO0RYM/Z1q3ODTRet4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SRUv8awcLG6xRlcKzQoM5Gu6ywRRoMhEEc2xvJNSwNupPtpP8q/fWhOzDtQUJSqvI3BAGZG0ZblCUkRaCTRZ0LW5uAxo7/h+KeRWgEeh3RAZATx9EAGlZkldOQPXohYsM3Xk4Zr131fZLb8yFU6VGuM8cnGoQHtuWHttKJZkW7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=heniOicJ; arc=none smtp.client-ip=209.85.166.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-36a0d09e6ffso2983255ab.0
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 00:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1712907061; x=1713511861; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5RdZHSk4TFU7CzZXHHxRZDn956keZAqDxJBl6Nwvleg=;
        b=heniOicJd5C1A2LxytOgFoDC7zUsuuWkX0viRRfsoaAygWH/lsWlP6lETns/GJJHjt
         n551M1HDSO+mc+N6GQy5kz2xx6sLkF1qpnXkEq3rI/7mmoTqLevCMys5GvAp2zUclKPH
         rCcZf8XG9e0VQqglu8Bx5S1wf0g2BqD20Fhss=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712907061; x=1713511861;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5RdZHSk4TFU7CzZXHHxRZDn956keZAqDxJBl6Nwvleg=;
        b=ej41EH529oZivvxrGpoIeFOhUK1Y+t4iXpd8Gvp+Br3MkNdPlk8+lfWhBl4ZXy6801
         MDNRpi8AndID1MiakcoTFPr4k2mxsobudFJsXv6NPXLVaPiBT2fk5maosrpKaBELlKvR
         yxM2g7jOX/YfehnRcLxmVxUQfdY2prFfMo3bJ+PXcJdNd4ajNfTMxjFp1RDKY8TigEbr
         QMGuiuJKi/LzXpYV+T0Z5CMNx04xXjZBhrIQMRuyLYJksJlMKg9j93u8yLQK+VOKm8xV
         Rxx0pKTROYDGH0ZF1TnJx5bsTHdFqJyOaHozlFo+eqW3fFwiIuDMPR4Zz+1BfOTxlDC8
         DA+g==
X-Forwarded-Encrypted: i=1; AJvYcCUjdtZOZjt2Uzlva4FHs+wC1gd49d6EgbxYVYxbtrPRJNNUfGJ0G984/HpF6/cAmxB2efElKe4rh/mgYVqhkU4SR7dyI9NIXPwazQ==
X-Gm-Message-State: AOJu0Yx34TQz3BSnWGW3S7yAdiFAdpILloNB4fNaGi1I6qWKwMlQQy/G
	EOU9Vm2UHumJodzgvS3ieDefEUYloP7Zt+k0yen/Vpho+gI0IZEPEIH1L2RUsA==
X-Google-Smtp-Source: AGHT+IEL4CHJZN6cyV51F6bVm8k72tn6WE6KhBCBOK+lKr3ueEZGkvYYXfBhK3hbMLBmSdrvlM2k9Q==
X-Received: by 2002:a05:6e02:160a:b0:369:9492:c24b with SMTP id t10-20020a056e02160a00b003699492c24bmr2090150ilu.10.1712907061055;
        Fri, 12 Apr 2024 00:31:01 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:e3c8:6e1:dcfa:3e8c])
        by smtp.gmail.com with ESMTPSA id d6-20020a637346000000b005d3bae243bbsm2149609pgn.4.2024.04.12.00.30.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 00:31:00 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Sean Wang <sean.wang@mediatek.com>,
	linux-bluetooth@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] arm64: dts: mediatek: mt8183-pico6: Fix bluetooth node
Date: Fri, 12 Apr 2024 15:30:43 +0800
Message-ID: <20240412073046.1192744-3-wenst@chromium.org>
X-Mailer: git-send-email 2.44.0.683.g7961c838ac-goog
In-Reply-To: <20240412073046.1192744-1-wenst@chromium.org>
References: <20240412073046.1192744-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bluetooth is not a random device connected to the MMC/SD controller. It
is function 2 of the SDIO device.

Fix the address of the bluetooth node. Also fix the node name and drop
the label.

Fixes: 055ef10ccdd4 ("arm64: dts: mt8183: Add jacuzzi pico/pico6 board")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
No changes since v1.

 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts
index a2e74b829320..6a7ae616512d 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts
@@ -82,7 +82,8 @@ pins-clk {
 };
 
 &mmc1 {
-	bt_reset: bt-reset {
+	bluetooth@2 {
+		reg = <2>;
 		compatible = "mediatek,mt7921s-bluetooth";
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_pins_reset>;
-- 
2.44.0.683.g7961c838ac-goog


