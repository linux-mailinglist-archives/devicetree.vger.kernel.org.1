Return-Path: <devicetree+bounces-22573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B8ED480828C
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 09:05:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 73DB8280F4A
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 08:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68CC51E4AF;
	Thu,  7 Dec 2023 08:05:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B4VGHxFi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 635F3B2
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 00:05:32 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-54cae99a48aso1412030a12.0
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 00:05:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701936330; x=1702541130; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vVFpYtqEexLfydhqoFIxA/jZIztn7bZ/TEnG+oaDfrk=;
        b=B4VGHxFi0U8GcWdteJG2JONePLFdiYIvUWIimB0RUs6s5yEzU1fkx3C00Xc+ojcfro
         nJbaWuL9KQn7EYexHMSVmmP4sNL4dlB+EF9ZReuQo0ja1OgPSmm4y56xlP/AAObGTDrZ
         J/GYkcDPtNMYR/wP9ofzHpmEe/PzFK6DF5kR03VQt+bdJuf+RfZHRkuXK8epH0iyKt56
         lkaPeWhqcYEoZiAq/zyRE6LXqNztSQ4Bb5AJ20BiiI+sH2/T+9HIkYTN0C4kYsBOEo5H
         Dr4AsebWnSwuuxlvSoLRqR41XWbMCLxKcp9ulBNkw9U5W+QyuWfF7sqk8goun2Jy7mQX
         ZsWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701936330; x=1702541130;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vVFpYtqEexLfydhqoFIxA/jZIztn7bZ/TEnG+oaDfrk=;
        b=lvSJPk5g64zd0jb8cLa5F6c1wF/SuGHUE7HUkerwp8Di8wlRTvPA04IebymkZK/mfT
         cJ5WWpVkHnXys4DW3dwcodQZCCGryATtkvMi/qFjvIf6eBJsGdD8GgK02kSq4eWmnbTu
         9yrbM7+1JVEcCTSgGPsz330C3exvFfhblAI/v+U8YJe9C2L4Lcb48X00AR0RG7Z/jsoe
         9LbBIu0TIRj6rDVvi1ZYyuwnYJsHc1XYclU2IG9hDTmEq3DUvl1UFxMwp2c0pkuE4HW5
         Fom6JVnedItc2H+fRFfwpwHmQpoKSCwQrEe11Ou21qT1qKBW9GM7pMp7E0xD+MUyKmUC
         E4oQ==
X-Gm-Message-State: AOJu0YzMjvVUYSS2ExyKVDGsWN/tfk4WlOfun8gEEBK1fsPUPi26gvah
	YfMY7CnZ4qIN7kTQ+Suj35U=
X-Google-Smtp-Source: AGHT+IHWoFYMqcJhcmYgtVDlw8D3OrKJaR4c+NyOnEdcqKZ/gqAr3e+8ORStjXLNbDPa5Qc0J6Ggiw==
X-Received: by 2002:a50:8e5c:0:b0:54c:b72b:93 with SMTP id 28-20020a508e5c000000b0054cb72b0093mr2302564edx.25.1701936330275;
        Thu, 07 Dec 2023 00:05:30 -0800 (PST)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id a28-20020a509b5c000000b0054db2b5cd30sm480133edj.38.2023.12.07.00.05.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 00:05:29 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	=?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH V3 2/3] dt-bindings: arm64: dts: mediatek: Add Acelink EW-7886CAX access point
Date: Thu,  7 Dec 2023 09:05:11 +0100
Message-Id: <20231207080512.3688-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20231207080512.3688-1-zajec5@gmail.com>
References: <20231207080512.3688-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Acelink EW-7886CAX is an MT7986A (AKA Filogic 830) based access point.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index a5999b3afc35..cfdd3317edda 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -84,6 +84,7 @@ properties:
           - const: mediatek,mt7629
       - items:
           - enum:
+              - acelink,ew-7886cax
               - bananapi,bpi-r3
               - mediatek,mt7986a-rfb
           - const: mediatek,mt7986a
-- 
2.35.3


