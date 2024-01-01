Return-Path: <devicetree+bounces-29073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FDE8214F8
	for <lists+devicetree@lfdr.de>; Mon,  1 Jan 2024 19:21:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C7C321F2157F
	for <lists+devicetree@lfdr.de>; Mon,  1 Jan 2024 18:21:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8490D520;
	Mon,  1 Jan 2024 18:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i4BRJT19"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18477D51D
	for <devicetree@vger.kernel.org>; Mon,  1 Jan 2024 18:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-40d89105365so6894315e9.0
        for <devicetree@vger.kernel.org>; Mon, 01 Jan 2024 10:21:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704133263; x=1704738063; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WN7lb14KPF1jcY+S5H9uyOeC9EUq5Bw6nAEJovrtnGA=;
        b=i4BRJT19qqjbRkSmfRhY2ogDYbNSwr1k3/3MFAKAMrZ6MYVusT1TTgHTvao+lVfxf0
         zobPvzvVnVHU9mLNHXpLxYay4KXlPLokKmdkeR9mk4DdTc1d4OVDFv+cdYBfwyhLayfR
         U5gRzDAGPZflxpac0khQtzQFeFnVpTiwcVYyRhH/mKTXRNk0MaLAJO/dO4sPH3hUbdpw
         OqLNzGJs4m8QxbBbnqjNbHt4iAgZ1eGaJzCNIROj2PMqOlwkFaLUBlq6Fh1iiQlF00lp
         Slzi4x9TVn5AfB3MLNSwYJzzjKUInVGWYxRNYcAdPch28//ZQrMnQUwmk9xgM385z8o8
         tOPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704133263; x=1704738063;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WN7lb14KPF1jcY+S5H9uyOeC9EUq5Bw6nAEJovrtnGA=;
        b=ZnJIHi41t1kiYKvgNKoHZYLu6Bx78GkQltIfhOigqSH05i3XRED8UCN6HyUe+hv0Bb
         sXfGqEi+LdafiBMducJcbI8qJvGt8mSISN2d3qdC7s1/GyZmJ0GrSi4zilus24GNNF6R
         jOfVKPc33I8yjbY/8uXmXkwIfiugyTfbzSaiIJROOMwbzuLfaJJYbzK5RbASB0GP66pj
         DiCVjiz8fxDovR3BmEyEo1jofD6mT+JF2pKx9sPeMebU/Y2hNzjlakAyszqRPEn1kEpI
         JMKvJIjGR+jiKwOCaurZoDC8VS+dUbxkdabEYJs1DW9PA6WK7V8fP1TPF6au7rTPPIls
         HNFw==
X-Gm-Message-State: AOJu0YxZxk83A71ngCB+fS6J5XBOOHLZMxBTDTsT5wpxP0tYnricUe9K
	Pw/4f8hdfp09h8fidPN3+g8=
X-Google-Smtp-Source: AGHT+IFbNNwNCK9LDY1srSnGLyUQneeU4/f8818QnoX31Dxz9FOc5qZnuXXb2otpzNudIQj9HADs8w==
X-Received: by 2002:a05:600c:19d1:b0:40d:5f46:2e26 with SMTP id u17-20020a05600c19d100b0040d5f462e26mr3853830wmq.164.1704133262982;
        Mon, 01 Jan 2024 10:21:02 -0800 (PST)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id fp21-20020a1709069e1500b00a26ade46619sm10297441ejc.121.2024.01.01.10.21.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jan 2024 10:21:02 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wunderlich <frank-w@public-files.de>,
	Daniel Golle <daniel@makrotopia.org>,
	Sam Shih <sam.shih@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/2] arm64: dts: mediatek: mt7986: add "#reset-cells" to infracfg
Date: Mon,  1 Jan 2024 19:20:40 +0100
Message-Id: <20240101182040.28538-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240101182040.28538-1-zajec5@gmail.com>
References: <20240101182040.28538-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

MT7986's Infrastructure System Configuration Controller includes reset
controller. It can reset blocks as specified in the
include/dt-bindings/reset/mt7986-resets.h . Add #reset-cells so it can
be referenced properly.

This fixes:
arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dtb: infracfg@10001000: '#reset-cells' is a required property
        from schema $id: http://devicetree.org/schemas/arm/mediatek/mediatek,infracfg.yaml#

Fixes: 1f9986b258c2 ("arm64: dts: mediatek: add clock support for mt7986a")
Cc: Sam Shih <sam.shih@mediatek.com>
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/mediatek/mt7986a.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7986a.dtsi b/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
index 8a64d1027c46..b3f416b9a7a4 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
@@ -144,6 +144,7 @@ infracfg: infracfg@10001000 {
 			compatible = "mediatek,mt7986-infracfg", "syscon";
 			reg = <0 0x10001000 0 0x1000>;
 			#clock-cells = <1>;
+			#reset-cells = <1>;
 		};
 
 		wed_pcie: wed-pcie@10003000 {
-- 
2.35.3


