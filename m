Return-Path: <devicetree+bounces-57104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5A489BC7E
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 12:00:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ECCFF1C21411
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 10:00:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA532524BB;
	Mon,  8 Apr 2024 10:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NvOArcRX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288014C634
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 10:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712570450; cv=none; b=YfDxu2I3zRiqt9mw6l1K0nGQIuy6gNcNM5p8VN103o2UgfmB0e+UHO7dfI3uBVsECMjkH4ePFTFNJuM2qrbnWGrRIOUjlpzmLspYUNPyi5XLE7QI4nQxAl2Zyw4YTqoHVvKdyM/21ESElVc9IkDz7Fxm/lAudD9ygkUvrb5bmYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712570450; c=relaxed/simple;
	bh=n+u/s77JMuxpv0Gr0yV3wTPL6LVRNsCqrf5Fg4IcOcI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=CBshgPOFXyD9bFrGD7i7tbY4c6oAarAgXKEXjS7DcIP/RKyYLTNWzKj2xxEH/dU+W3Sfega8367pScbq/xi/5fbhbn6bIXeJl/Pbn5159PXKcdGo8F+BT8LVFgZiBbLWQPvv6r3ogss0mPDFgSIImoWbN3I9cl5eHCota2A0x2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NvOArcRX; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-56e56ee8d5cso1171327a12.2
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 03:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712570447; x=1713175247; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MmqygqPIi2pmOIAveCkmELtI1ENdExQ5dYj28gsYUKI=;
        b=NvOArcRXOtZs7BTmQ5yIF1QYjwS7ZJ9UQSja4K04cV2u/xsReHfrQIXGRyieNGrDgn
         IPoR0m4SRdbiqhZuvCC60o8/bUeaPOT+psveNeQ2QtZtjbnEK2J7Oz2CtCxYQSy8+Nlv
         ltFh4holG1teWcrb2OATv+/HacOj+MyI786t3iodKWhcuGlc51eravnltXAXSnWJBAIR
         FJsJWEQygX3VCYqbemDLkHaffvmES526GjCBULOKm7sTti60o3DyqaqqJ34zgMKsHZUw
         3nXX8bHL9glAKahglPD+ievQibb6jwR5fNUTUqA5ybzaiqyWsjuYTFztaMJ0pfbN1jp3
         bn4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712570447; x=1713175247;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MmqygqPIi2pmOIAveCkmELtI1ENdExQ5dYj28gsYUKI=;
        b=P2yHN13NkvELDLEKerkMdCfaJ+Y24v4PZlfrBoh/6CSLewLLQkCiirnG2P5NovR+Hp
         hkCQsjSMd+pGcAvxuLddyfhxgwK2Ijbv1bBdwWYAMZbnvNHC+o5qsyL7BuTrAQ7oMUkZ
         H1MWy/VCKNFeo3V5Sxa9mWywr1u4TUuO0gYMOMuHWs9OlNcGeiGZ5kZwoKi9ZEsC1ey5
         Zpv/y9Aw6de0EAV4Bgr8gLqcKG8ua4TEFmAtq2vI1nuuTGcVWxDIxMfTkKBoS3vEHL9I
         rL65o4ndIiQyspGBNheB3kpKI+sFo2CXg0fFREah6iTgJuWXX95/ErpOS9M8fM5CD14h
         CKMg==
X-Forwarded-Encrypted: i=1; AJvYcCUehR3H7lObvkKr7rKunwYwn0F1b+qrEOeLIG8+4pioz0r69VumMBFFUot/lc4DGesow5OSVYVfRLyiGX99huB7HRvNe3oL8CnFiw==
X-Gm-Message-State: AOJu0YyJhy2d8wJarapT0gZDzAKHUQEOVOz2W7t63GGtFEOSn28+5abe
	MbMCFXyzCdWHrZIp/fsg6IT++vWkYsCQpbNuFOIZwZV9wwcPAbBj
X-Google-Smtp-Source: AGHT+IE6e3zft5dEHLDKboDSRcCws1sIWye2Ny0tIb1ztMu8FS3I9a8HiSg+0wY1xi3qFJMrqR34cw==
X-Received: by 2002:a50:d784:0:b0:56b:9f35:65f9 with SMTP id w4-20020a50d784000000b0056b9f3565f9mr6978903edi.0.1712570447269;
        Mon, 08 Apr 2024 03:00:47 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id bf20-20020a0564021a5400b0056dd3626035sm3855590edb.91.2024.04.08.03.00.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Apr 2024 03:00:46 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sean Wang <sean.wang@mediatek.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: mediatek: mt7622: fix "emmc" pinctrl mux
Date: Mon,  8 Apr 2024 12:00:40 +0200
Message-Id: <20240408100040.25997-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Value "emmc_rst" is a group name and should be part of the "groups"
property.

This fixes:
arch/arm64/boot/dts/mediatek/mt7622-rfb1.dtb: pinctrl@10211000: emmc-pins-default:mux:function: ['emmc', 'emmc_rst'] is too long
        from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt7622-pinctrl.yaml#
arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dtb: pinctrl@10211000: emmc-pins-default:mux:function: ['emmc', 'emmc_rst'] is too long
        from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt7622-pinctrl.yaml#

Fixes: 3725ba3f5574 ("arm64: dts: mt7622: add pinctrl related device nodes")
Fixes: 0b6286dd96c0 ("arm64: dts: mt7622: add bananapi BPI-R64 board")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts | 4 ++--
 arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts             | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts b/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
index 224bb289660c..2791de5b28f6 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
@@ -329,8 +329,8 @@ asm_sel {
 	/* eMMC is shared pin with parallel NAND */
 	emmc_pins_default: emmc-pins-default {
 		mux {
-			function = "emmc", "emmc_rst";
-			groups = "emmc";
+			function = "emmc";
+			groups = "emmc", "emmc_rst";
 		};
 
 		/* "NDL0","NDL1","NDL2","NDL3","NDL4","NDL5","NDL6","NDL7",
diff --git a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
index 41629769bdc8..8c3e2e2578bc 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
@@ -268,8 +268,8 @@ &pio {
 	/* eMMC is shared pin with parallel NAND */
 	emmc_pins_default: emmc-pins-default {
 		mux {
-			function = "emmc", "emmc_rst";
-			groups = "emmc";
+			function = "emmc";
+			groups = "emmc", "emmc_rst";
 		};
 
 		/* "NDL0","NDL1","NDL2","NDL3","NDL4","NDL5","NDL6","NDL7",
-- 
2.35.3


