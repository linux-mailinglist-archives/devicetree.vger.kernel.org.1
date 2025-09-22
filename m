Return-Path: <devicetree+bounces-219963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 256FCB8FEAC
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 12:07:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2362418A2413
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 10:07:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B769301466;
	Mon, 22 Sep 2025 10:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EWiLK/E8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD273009D4
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 10:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758535593; cv=none; b=AWyaUKi54Jx5wKO7L6WkWKwaVd7eBPAAf6j4iKFhlTEel/WxbZLZncShW205CUExZjk1YByMJhyv1A74ky+OBOi4UUvL2oGG85xHSaZNwswr9bTWEBZxFHSPu0hJmL3quyk+Joff1ouFApkH2In4oVkAdJTjHCYkVBl88jPMxfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758535593; c=relaxed/simple;
	bh=JE5vzNG6Sy2HEFoz+DBwUg/nv8rP+wKI7N6BxDeuvto=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=usKBOmMMYfl1MlbrVOWEiBlTjvoIpl5JnGkwB/2u6tbRAxVAhOOWVxMnUeiIboi/nac4/5NuXXNT23RoY7qkt0aNqUDJD+xXzy9W9dKDjYNuGSMTOgzFCLgx7vDJyC3fPHITNNj78XYoT2QEYKcqD2rbqYyMGUxd/sLbTlVD+pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EWiLK/E8; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3f2ae6fae12so1149682f8f.1
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 03:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758535590; x=1759140390; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HQSp6khD66PWakk86QjUyhjTSipaHZaw5SNW0wYKmlw=;
        b=EWiLK/E8Usdl1hIMoIV3HvUUQp0vbGRsEDcShSOntPVn/q+x6Ob7eS1WqcM6FPXY06
         f4UTpwvh4GdkfSoc/tQmu0rVA+5WQHqkoZFPya+/9zfv0koinmbGQsJoLkNv19Gtgf3s
         52Rtj7CgG8cV6n4mb5tG2mBZSEd2IkH5UmwEwII/vrdCspJmlf5pvYk1syw9mqmA8CHj
         2KyGlrgPgquAQr8K5bYk4y4ymNV7/UDHx57gLU1p20kD0OYmQH9KHaq0wekeJds/fHkb
         ff+QIqIQuIn+BV4+ekpnJynOALQPRMe/6nfGN5C/PdqtRD6e9IY0Eo7F+os3rlpu7vpZ
         hkiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758535590; x=1759140390;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HQSp6khD66PWakk86QjUyhjTSipaHZaw5SNW0wYKmlw=;
        b=dLwBS9u5vpyDjqxcGCPZ1xHtt3pI0WjP6triaAiitNPuOObwcBLaEF0t+QQiRd4HF8
         0G7EoBk7YMqZ9cDXtw6AKQHWMa/Z+a+Y7wGWzslKNgQc4QHqle1iCDfWKkuHRSIFkAG9
         pE+ZRDGlcCWRUNVSFJTW7apYNpPnxmnvWxCqAZ6ECffRQReF9d0UfHcWgEP3bzfNBbQQ
         vBQFt73iiI+ye9oEoPxyAW2sLphV5KRNQihHMSGfNqgMJY4j74VIwZFx2YQsxgWERYKo
         enbeUxDjCdMp1NH9L5NroqSvi1zp+l4TXfT5G9UN+vTqzOPQYo9SNlHOswDvd+K9zY4B
         amTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTZ0vNvYDSaFOpiBULzyq8Lq3PkI+LEkG1lwVuBiCaGqnlVptZ0sNJcMOQWjkEskpxlN6pysuhkHg2@vger.kernel.org
X-Gm-Message-State: AOJu0YynmzckzyfX6ktPoj51+qnVHPl+eVj2W1FwztppsNGUVys7kZTO
	XcGtyFiqZfMEXvUyBfktti2hDcqtHMTT5hSy8bstKNawlW6Cs09aexWH
X-Gm-Gg: ASbGncs3Bv8GPCanMBb9JlAm36OdNk/uLzkiLBZEaLRiYh01Qqwy6N1A1CGuxKtbPZe
	cx2PabCB4u1qUBQij+v7rrk0SNGtHVwusaQhMLagJNFyAm9xzem2cRxEAQoAn7ZGPA29dAdRgG/
	GOMN02v6n47AaLCpUvIQL05JvnA11jduJpL6Oqu5MgTOVu4ZulEe+mipyeuo2AKgbraqrDZ6Tmh
	3xD9as3hnxKzUh9Cgz1JCltmy2yMSNGrmiRvwoSroGTgkyD+h7q7ecUdo4EBKFIjtJZXPCqMIOD
	qnq9iotcTlONDc7VRzudlEBSWHjXguWuW7FejuG4Z/YQBoJOdJ0BNlCvejzzcN0YzCa3g7MXtE8
	l9dFX74mu7NzOgEdOvhT+rf35RrHzirMg88SbahK35TdQKtbj4cAoAVfm0ssKy2Pl11DsH4s+2P
	Swi2v5Eqd3Nw6E+iFT
X-Google-Smtp-Source: AGHT+IFMdYeYi2iaeAdjrGDcnkGPmrB4GjWSDhVK2rF2FgfKPc6GjT1SHKlJ9mXDLcRp77TRnBlKDg==
X-Received: by 2002:a5d:5d88:0:b0:3ee:13ba:e140 with SMTP id ffacd0b85a97d-3ee7e1059b9mr9638251f8f.21.1758535589473;
        Mon, 22 Sep 2025 03:06:29 -0700 (PDT)
Received: from localhost (2a02-8440-750d-3377-171e-75f8-f2d4-2af8.rev.sfr.net. [2a02:8440:750d:3377:171e:75f8:f2d4:2af8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee0fbc7188sm19867335f8f.37.2025.09.22.03.06.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 03:06:29 -0700 (PDT)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Mon, 22 Sep 2025 12:06:20 +0200
Subject: [PATCH v7 7/7] arm64: dts: st: add DDR channel to stm32mp257f-ev1
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250922-b4-ddr-bindings-v7-7-b3dd20e54db6@gmail.com>
References: <20250922-b4-ddr-bindings-v7-0-b3dd20e54db6@gmail.com>
In-Reply-To: <20250922-b4-ddr-bindings-v7-0-b3dd20e54db6@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Julius Werner <jwerner@chromium.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-0dae4

From: Clément Le Goffic <clement.legoffic@foss.st.com>

Add 32bits DDR4 channel to the stm32mp257f-dk board.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 arch/arm64/boot/dts/st/stm32mp257f-ev1.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp257f-ev1.dts b/arch/arm64/boot/dts/st/stm32mp257f-ev1.dts
index 836b1958ce65..c4223f06396a 100644
--- a/arch/arm64/boot/dts/st/stm32mp257f-ev1.dts
+++ b/arch/arm64/boot/dts/st/stm32mp257f-ev1.dts
@@ -41,6 +41,13 @@ pad_clk: pad-clk {
 		};
 	};
 
+	ddr_channel: sdram-channel-0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "jedec,ddr4-channel";
+		io-width = <32>;
+	};
+
 	imx335_2v9: regulator-2v9 {
 		compatible = "regulator-fixed";
 		regulator-name = "imx335-avdd";

-- 
2.43.0


