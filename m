Return-Path: <devicetree+bounces-219962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F70BB8FEA9
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 12:07:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E74EB4227CA
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 10:07:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA0D53009E8;
	Mon, 22 Sep 2025 10:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hy8PPrtA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13962FFDF5
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 10:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758535591; cv=none; b=SVbxRy0Rl2aQWsqYieI6ygWk1xXPd8UYTRekpenydxkiKk1H9qfBrwJwb+yEEkfxhG1xCxdq2u4fVc0dRnoAaGqWKhV/PlT7EHUZt5O4luXencw/3IBFUXvf5z1CUW1peZulaoVT5SZEI7wXCeCEnMPfXz2jfbt8eD5vImqUqPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758535591; c=relaxed/simple;
	bh=1OJSwnVWIOwJ9ZLoYl+VQDzy0Ex+adY43gmbor4fP/w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kOREnC1TcITGtZy7wO5exfRilnqbVlk9rIr6zZNpFZqVb/oQISFk+RKr3D8PUukqk6meuqFy0Z5yCKvlwOiMb2YdgfUbhm6IQkScwPvflXy0ktklttAz4Bpb/FkGuXFuBCiV4PH4zWL4OXQsTmBk1oZSLns60luyi9VTRITilnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hy8PPrtA; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3c68ac7e18aso2363033f8f.2
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 03:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758535588; x=1759140388; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lkTVKKAKgDTt3rd0xPFa8W7IH6WaF3o91NFw0CHdy6w=;
        b=hy8PPrtAvdqlla97+he3bkpnjSTOPkVEctxdtuRRV279sPmkbooqdQCZK4qf7L71uW
         qGfwNpnxnzYyZM3l8mR5ABfJ9uydWNTQRsmQRghlQvN44Ful04tga+1RlT1785uNRawt
         J3B1Ux4QLYq7j+Kw41Fl/NuUc0+D6rib/6wuoeF5w+GalR1K90D2XFkao6ig+aiVAPsl
         UOYSth5+nln+CY+d3p7oVlbGd+/xruovHX7y/+dWBD+yjL+ior5dKQq61M4H5s4hryRG
         jaSY3yEimzlS8j7y1/C9k0pTkk4fS6j0hEtVrvt4s20wpG9svb5FegUnA41qnIamHlOu
         WqJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758535588; x=1759140388;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lkTVKKAKgDTt3rd0xPFa8W7IH6WaF3o91NFw0CHdy6w=;
        b=b9tepdmr/D/2YDJUdgK+wXv7pywmOQ8TwuWPpmAYeKML56ylOGVtKjq+3GS6MuMpOc
         ugEViz3TtcQ/tkUfU7Trf5mRuFnRCdADIW2xmm3dQqiMaCb20aALuVqQ92FGnjEecCBB
         PiI9NjvVZztYhqqSYv7Q0TDou0v8HBVH9OfpCo0KPtD8UmbZobu6Qxz/+WSaiC2yrybh
         uyOqANqZqw+uFfVXwGj4jb+TerWjMWsxvYvd8W7EpJ3KGeVRxPaih96YjsHNthK4C2yL
         TP2Nnv8pNxGAJ7kntfWbp+2M5egYNIZx+h0VaopoyUH/f5OZCtE7VbwTa85wBJxi19OH
         ehgg==
X-Forwarded-Encrypted: i=1; AJvYcCX19RGfhQIYAV0imNUbp63U4zmffVnjirtQFOP+296f1IZoQMCYyxLgWD1/+vew3ZEtbAlsf9NKmjCi@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3RUeCeag/XSP731SBmbdNb8H8/UPjJ2+P481aDWXstbisBIEM
	qISLIPIIS6vSbuRHWHZtqi2P4bqKyPQCE8iC+6NRag5ifhcY8kM+cFUS
X-Gm-Gg: ASbGncuhtwUe9MKtYwpHISOCQmImUYKxGOMFM+gn+8OBRfUUp8xev0DQh7c1BzQ6UKD
	Nf51qGuuijkviWNVekqRBEb2MvWHTu6qT++lIeYvWm4jqtmRTMLMoOvyZkZVmMjVVaAjClE3mZK
	WEAH6/FxpgFFOvNMaOPDeasiPM7i25QOesDHkhOsEhqv/w3HGag/S4J0SEall+/E6arADnVgvWw
	oMnDUpprs7q3oNdqnD2tz0d1x9Z6v1Y0weZU/z6PrZvG3BNRUjqbnbstCrkA+U/nf3YL4/COUwC
	1804RO7OrsREBW0OYd+4lJ1oeRS9wuuGVakQHfh1GljHmwv06UOnRmQXfP9eTC/ZNkmsgPhYqee
	oaHUsverkFlc/Rw7i6hEa9rPFqIzweYl0e8fY098RpNdsAVye7FkkwVeOON6Dm686aB2iCqxTTg
	fZrDUKXEu2B63NYriv
X-Google-Smtp-Source: AGHT+IFsCK67zkg+eo0L7Dzd5uJH0Dlu0IC2iqPXJB3tB0I3Vgc0sQFVDvDEMKtjJDMRNUKipGcypw==
X-Received: by 2002:a05:6000:3113:b0:3f6:9c5a:e1ff with SMTP id ffacd0b85a97d-3f69c5ae5c9mr7470157f8f.39.1758535587944;
        Mon, 22 Sep 2025 03:06:27 -0700 (PDT)
Received: from localhost (2a02-8440-750d-3377-171e-75f8-f2d4-2af8.rev.sfr.net. [2a02:8440:750d:3377:171e:75f8:f2d4:2af8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-401d7fa1729sm1345904f8f.5.2025.09.22.03.06.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 03:06:27 -0700 (PDT)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Mon, 22 Sep 2025 12:06:19 +0200
Subject: [PATCH v7 6/7] arm64: dts: st: add LPDDR channel to stm32mp257f-dk
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250922-b4-ddr-bindings-v7-6-b3dd20e54db6@gmail.com>
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

Add 32bits LPDDR4 channel to the stm32mp257f-dk board.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 arch/arm64/boot/dts/st/stm32mp257f-dk.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp257f-dk.dts b/arch/arm64/boot/dts/st/stm32mp257f-dk.dts
index a278a1e3ce03..45ffa358c800 100644
--- a/arch/arm64/boot/dts/st/stm32mp257f-dk.dts
+++ b/arch/arm64/boot/dts/st/stm32mp257f-dk.dts
@@ -54,6 +54,13 @@ led-blue {
 		};
 	};
 
+	lpddr_channel: sdram-channel-0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "jedec,lpddr4-channel";
+		io-width = <32>;
+	};
+
 	memory@80000000 {
 		device_type = "memory";
 		reg = <0x0 0x80000000 0x1 0x0>;

-- 
2.43.0


