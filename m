Return-Path: <devicetree+bounces-170174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C74A9A1B5
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:24:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B825292037A
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 06:23:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBBAD1F4190;
	Thu, 24 Apr 2025 06:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="cE0plK9w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 875711F3D58
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 06:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745475735; cv=none; b=J23/YllGXZTZIYWNvesoGIbx8LdmT5HI+0+B+b6Gv+6AB0TDpzCYNJOF08L6ICdB9GTcRAycilSaMKYZQSAXOy41MQ0zlx5GEeaNp/8elYxSvqLpdpeQGdzX9cTfuC26qxpI/FN4101iG38hYLGobsAecBtPFdhvEOymXWVete0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745475735; c=relaxed/simple;
	bh=MWwhsP/1Gq2jtC+XMH/+PSmlpfJmY2R2gm9uwDR4fZI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=N2mR4DqnBcuvnArA1XjC+uJaFoCYazltp6MXmFHC/HntonSglwr/oCjtli8uyAGxC1Vs9wHm5s8QvVlu0FxoHb3QbapM/XtuNhBSxVxGOWA7N+IexACraTA4JAmDyCEhA7o2tNy7f0MyK86HZ6HlPas3/CYbQHjztD3c9ts4ZlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=cE0plK9w; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43cf257158fso3199185e9.2
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 23:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745475732; x=1746080532; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mr8rvSiMKhhr7+g2wBjSbr4ZapMlTY5YRIRH4XPzpek=;
        b=cE0plK9wNcJ0u5S/HXeMOiNCTEf5aK+t0iTs2Hpd/IXlcOdr+ZeoARiMMftGobz7Sc
         XvRQTW9yC63yvoFMxv9ZqoMwsX9FArMXmyS1VZK4ePynW3iYzrN+8wpdlKjlcx+/4Irm
         1shjmpSbvCnArmWjYWkGfY1m8MT8+y7e64mIc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745475732; x=1746080532;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mr8rvSiMKhhr7+g2wBjSbr4ZapMlTY5YRIRH4XPzpek=;
        b=JhMQtyLLXn64jq6IzvqCztj3GmLvJoanT02LYFOHbQ4S/Y8b3T31ivv3rL8Ws03+Zo
         mdJxMbDrHPdKGjm+uFS5rcz0AKy04wSMROSnUuSQuYXJwoyypSzaQQ7dy0nhXa3bXeYY
         VqqLQ396wikSMIYTTvoSo9NhfbYydoUFYeg16ySA5NxkOh0+L+o5+8SGnUbwSr//3Wo8
         0iXDjKfxpXyp52kPZCfXDNeO896vw62MY4JRWOqYZ/KTJcD6A1x7yThz8nCRRPQ9IfSz
         dsyPnyiLfB+CDkM91NdzV/ld88RbdzH7fa+kpTESn3ZAiqyF/7Lh7iuNyxBIma9F/5BC
         0Jcg==
X-Forwarded-Encrypted: i=1; AJvYcCVB2fhI8LDTzBW+qVk66fdfDb9AflVMsJekcRPq6Tnr9BnFEOutjrR5QcnpkJBxA1CKt+dkmxnfbWnB@vger.kernel.org
X-Gm-Message-State: AOJu0YzWc1LXOZfaN5qoRLjV5au79bCkMXeuP401WcZGrQaEG51og3Hn
	q3ZZR6FIVMhHs0li51QkIPuzwK1xNaEy/31HmQo2z0MCoptNxyRsGYprmKaTd4A=
X-Gm-Gg: ASbGncseXsPreDCd1O9WS6Kp+97wZoa/pwHERCRxeA+ZEqAxl7p8K6Y4eiWeoIZb60l
	M6/5BMe6y/Fr5hAPyLrNfIa/QVHclM5FP2iEz/xaFAFUnk3vl/jiDV0n1BUEUAh+FsjlOkEQZ49
	l+Wqz+f8q/GwEebxLp0aBogcBEEvkyynAi2PDovv0COAjHi1V/iRc+vvNICyLV7r6Au/VCCHsYM
	36yOkBfUKGht04bTCFt7pAxM1u4Kw9BoTpRN3vw2wxxnun7ZcZAIlfk9RnzcG01gQHrNRcsJIAV
	d1VqobweMLsLDd5Tz+JM/dqKaUA1yijmoNgLI95SWR7XI1ugb0EO1pKAFF5yCwn5z7xcOfMCHUI
	LHAz3frOVsZnlXrc=
X-Google-Smtp-Source: AGHT+IEfP4KDLP0ELF+YdFHzWQR/nKs0MjW8gMXZNg1m5ZDmDJsijDCe2zRl33Nt4gAvs8xI/MK0ZA==
X-Received: by 2002:a05:600c:3554:b0:43d:16a0:d82c with SMTP id 5b1f17b1804b1-4409bd050a7mr8473415e9.2.1745475731840;
        Wed, 23 Apr 2025 23:22:11 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.65])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2bf8dbsm7243435e9.35.2025.04.23.23.22.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 23:22:11 -0700 (PDT)
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
Subject: [PATCH v12 07/19] arm64: dts: imx8mn: add anatop clocks
Date: Thu, 24 Apr 2025 08:21:37 +0200
Message-ID: <20250424062154.2999219-8-dario.binacchi@amarulasolutions.com>
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

 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index a5f9cfb46e5d..49be492b5687 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -606,6 +606,8 @@ anatop: clock-controller@30360000 {
 				compatible = "fsl,imx8mn-anatop", "fsl,imx8mm-anatop";
 				reg = <0x30360000 0x10000>;
 				#clock-cells = <1>;
+				clocks = <&osc_32k>, <&osc_24m>;
+				clock-names = "osc_32k", "osc_24m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


