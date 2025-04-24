Return-Path: <devicetree+bounces-170175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CB243A9A1BC
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:24:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BAA0B1616EC
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 06:24:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57F4D1F4CB1;
	Thu, 24 Apr 2025 06:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="G32Joefk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490A31F0E47
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 06:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745475738; cv=none; b=bWM7y7jWqqtjRePJPeXl36dkc7qC40KA86w20wDLnlF2HbGieVFE8/bc3T8PRKzw5wC9KYR4xjbc5Omuxvz9XYY+nk6of4UpyXQDGPoJmBfURABIneEC4urZjsB7dwteRGMtUhzpr2CFjb8JUd+ZpxJ/2BYET3OcF1ect0QHu50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745475738; c=relaxed/simple;
	bh=6Nf3p87xmE+b+aldFiQfNcyvNboXQjvT/SrC191QSNI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OYE0PE3t+6k0UHl0xZ0Ny1zzzz//tmr6CsmoVbQeEfA/aulg1XaCuTJiF5lvhpmh9gLdJrNOJLlaYWKs1aJv0b18ub/Ax923pRMvYSfSEv+qv0AhYPjduTdvBcfhu1EjWrrZcgZwYojeRJ4CZhHFIyxbG3OaTdrvms4M+YqNWK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=G32Joefk; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43690d4605dso3926595e9.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 23:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745475733; x=1746080533; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HjH/2kqdCORlSdLYP6r4xpoVlQIwGobZVf64uO8zUM4=;
        b=G32Joefkn8u2AXloWY89bIco98NYmGCh1RGJEAmr57vAIzuleybEN88wEliu9YEIRn
         JRo2GYC5e6H2mPHYXMndqH9YB7bVMaySdOlRvnnbaIX2ly7rr9rTwOakrgnTFab1qpQM
         5amf2STQ3eusVRpz7iOrt78XPS+t5LhnfJfjI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745475733; x=1746080533;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HjH/2kqdCORlSdLYP6r4xpoVlQIwGobZVf64uO8zUM4=;
        b=Y1byeEk7Aw8yu2xQ4y5nY+XU/Z+ZzqHvzCOUPz6LDk7+7DlIWOnKNXBgiQB8XH4R4w
         FxuixanjKLG4ySSCz+WRhkIDeqi1WmOMgis+24LTYP5aO2K2JE6Jq/m1kVDRM+DZNwcn
         c3eyU5/Xvgc5TDV1uMv7IBuunjlwOWcjkYc/Ag/ocwBFxbXP7b/JDkr+AG5z8T6h8zyU
         2bAoDM320Teq6mzv//qb/QU2+sjuxGRpjLxphVcm3kigW5fFnQM/Ow2kw/DQXDjMGTjW
         NEtpHzUoUJs9w9VWkW1lhkinNtCRultwKC2YcV6X4AUQP0mNRc9HvRCUS5IgqJIYnXNT
         UbAA==
X-Forwarded-Encrypted: i=1; AJvYcCXR1xq0PLGpWBAwQGNm16XC0CzlyuiHPDhgAr0kN/nALFTJq/jrhu9ObcXU2IxPw95xRSFiT0lv+t4N@vger.kernel.org
X-Gm-Message-State: AOJu0YzMZYpvPqMb42pHGbmbE4Rg9d5zsSBYx0nAC6DA8tw3mfw51aEu
	Jlyq7VARzTx1Bd3Gq0R3tFNwkQMLa9K1Tcuv9UCPLr0SO4/ORD+NLs3O/jzwvyw=
X-Gm-Gg: ASbGncvMtP4Z3lfrkGhtaELLluhADw8ey3xZ+ZPbs8VM+tLyumFmlY0dYXuIWk176Pk
	KIavK6oOFTK0D/2SHxisamctLRf5lXxco7xSl7+0/wjGcjDu10rY6p7igWBjV6W9hF6aspSeo60
	51L/FBS5UOOpzUDkUGAQsBDQKXZczCfG3TGBQpAbXW4/yy2SgNNS6X3PhZo9ERRCHL/aV+SZRHw
	3kxeCQ84G/6kg/wLiRHs0yqCmU6A86CLQoyEDvIgCUne84PMbDtN1bWWoX6jf9u38Xl1aFMZWI8
	B14Hg+Xq7DNafj9rFtt6MUx7Nf4YW7cSCZToHVZhZttqNiRfaGmhjHQH9kQo5SEkh0s+Nhk7g2P
	hT2yF
X-Google-Smtp-Source: AGHT+IF8qsSIOhwlMtkI7iNCFFbm4c6JnD6bm4eccpoJ3Cg9vwgWn75lQjxCqfd/J1n/mFg6vXi2Gg==
X-Received: by 2002:a05:600c:3508:b0:43c:eeee:b70a with SMTP id 5b1f17b1804b1-4409bd8c247mr9014035e9.22.1745475733483;
        Wed, 23 Apr 2025 23:22:13 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.65])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2bf8dbsm7243435e9.35.2025.04.23.23.22.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 23:22:13 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Peng Fan <peng.fan@nxp.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	linux-amarula@amarulasolutions.com,
	Abel Vesa <abelvesa@kernel.org>,
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
Subject: [PATCH v12 08/19] arm64: dts: imx8mp: add anatop clocks
Date: Thu, 24 Apr 2025 08:21:38 +0200
Message-ID: <20250424062154.2999219-9-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250424062154.2999219-1-dario.binacchi@amarulasolutions.com>
References: <20250424062154.2999219-1-dario.binacchi@amarulasolutions.com>
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

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index ce6793b2d57e..78d71aacd0a5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -709,6 +709,8 @@ anatop: clock-controller@30360000 {
 				compatible = "fsl,imx8mp-anatop", "fsl,imx8mm-anatop";
 				reg = <0x30360000 0x10000>;
 				#clock-cells = <1>;
+				clocks = <&osc_32k>, <&osc_24m>;
+				clock-names = "osc_32k", "osc_24m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


