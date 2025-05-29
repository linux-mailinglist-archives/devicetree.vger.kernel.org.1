Return-Path: <devicetree+bounces-181603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 431DEAC7FC3
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 16:36:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2BF2F1BC2221
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 14:36:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 398C822CBD0;
	Thu, 29 May 2025 14:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="qkPow+Co"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7214B22B5BC
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 14:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748529359; cv=none; b=dW4J7RhftxsVjV0R1FR0bz0lcZzdaqcVUjgzVYl5Y8gWa+wisB6Yf2LNAtuhG4mPftqwzm8mF++ZrYQvGEVmjhDMguDSIGEzheicMZk/qH//Vce8hizf1+Zb8FqL1qU/WBIGl/kt6g6R1wxXkdswSux4KWMK9gVl/KEUdmQkOm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748529359; c=relaxed/simple;
	bh=b25DzXlkwtKRtrQxMdt2zt8u3SZtqu8bn40z4T7R6MA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SF9xL1T3tRnoBo0dlLDS+NhYexTzta0h+W+nrwipS2X141gp4P1Y+aOgIZuRHGxn55ZYSyykLp3gDgYV/yh+3dc3gac9hdyxySL/B1ecAdHe5wKKFPqMjrjGlV6ETIzRdeBuQBp/0s2TQVWg+Dy4NfymG7fHQoIeypthysjbd0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=qkPow+Co; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-acbb85ce788so183422666b.3
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 07:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1748529356; x=1749134156; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UkvbYTVTJvU7EjQbzb6YoDEjgSySPh9u6IORDwoh9j4=;
        b=qkPow+CoTIdJJ6jVbxpk+JwYterefFqeM3NI+irJZtd9T55NpokQgHBoj5tF/zK7Pr
         qmwelk0uUKQmXad8//cXFjxaJSwKSt6fRyqY24IAUoAPcf4DlA0BiUsiJ7wyY0kpEJKO
         vOK8E7+X6FWt0lySMkmqyRVTi7cQseuIbUB5Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748529356; x=1749134156;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UkvbYTVTJvU7EjQbzb6YoDEjgSySPh9u6IORDwoh9j4=;
        b=bjkSyp4xmfYDTsLd15ckGoK4xTHpl4DKvuA9MZu4rI2iTYRUBRjJzwFyHCR5OO0dJU
         NQOsGSOu8Btq1YaM7Db5uVddsjOSnhsJ7Wpa0l55JcDoWt+2NbP/xfy+CUC8zMR74ANi
         dxJHOON/FT/8sTzQn6JCxHQV0v8Rojht16CtfJEyXkRvAkvEf/+Kz4EeK/YXDhCsAelK
         VDGHhfq2tcWyllC83X3ZizraqQTIA2afyiMcgGTW+NxtqLPk3Fmc+SUZ5RPNn/GyBA6c
         aFYtR/GuPVCIIUjqSOUcMbQGSgHYaKRx1/PB8aKcwWlwSJeXV/HvctF1xIHo8J8hg37M
         zhyQ==
X-Forwarded-Encrypted: i=1; AJvYcCV7XrF9LvEvGlLCz9FSnx83fyw/T+WURkz8mkwQHzzRcQ7TfT1H8j4837px1KUH+IzbKsP0TQqlVV41@vger.kernel.org
X-Gm-Message-State: AOJu0YxSd2YgIrGIB4lMp+O0PRibL7kyoGhn0QwiKRqN7r/eX5fb9q5+
	aLENQvM9Y2DcK1E6G2ElEYYbW8CDQayeOIoxypYXFe+qKIsilq+1neZwza5bAGQoxes=
X-Gm-Gg: ASbGncvN74Ya28ckSoEYeDfD8I2FyHOVHcnMTunPhDwv/y8NHL8wLhGE6bBk+DKJVZ+
	evmmZUMu7UGoGQ+LCQ3AA4yBt4/Z6JDfXZ4O+oIfVGoDmA5ARe0Bo9hdag8ntPP2porK7uy8yrJ
	l8xyao/mTsycm1Ws5DZsk9gDdtc7zrL8/9r9X1kwAIyfVKGE1jsjPSPaik+W1KH49nf7j+Tp+us
	wASUwMp3vALUh285bSvLOGt16zf/DvF9OYpHKVxO5DFK15ntdi9rZULoFwPphv7qCxad+p8PuPU
	MaC9o0sayIAICzliTh2xZvr54xBRptl4h+Y0On1VqMKZ8rJEOmL9+D0MRGgbm8yJx63k9b0nexx
	hrCu5xZf9rzjfTg9O
X-Google-Smtp-Source: AGHT+IH7hMfCJ++G2vbyG6z3aDCBiHFQjVGVk7csEQiSuSaeqRhezGzT9pf16kPHKXh10/ID/WoiyQ==
X-Received: by 2002:a17:907:3f29:b0:ad8:8529:4f73 with SMTP id a640c23a62f3a-adadf2a1046mr245445766b.49.1748529355765;
        Thu, 29 May 2025 07:35:55 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.42.248])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d7ff075sm154305866b.37.2025.05.29.07.35.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 07:35:55 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	michael@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 2/6] ARM: dts: imx28: add pwm7 muxing options
Date: Thu, 29 May 2025 16:35:09 +0200
Message-ID: <20250529143544.2381031-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250529143544.2381031-1-dario.binacchi@amarulasolutions.com>
References: <20250529143544.2381031-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add alternative pinmuxing for pwm7.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v3)

Changes in v3:
- Add commit body

 arch/arm/boot/dts/nxp/mxs/imx28.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi b/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
index bbea8b77386f..ece46d0e7c7f 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
+++ b/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
@@ -755,6 +755,16 @@ MX28_PAD_PWM4__PWM_4
 					fsl,pull-up = <MXS_PULL_DISABLE>;
 				};
 
+				pwm7_pins_a: pwm7@0 {
+					reg = <0>;
+					fsl,pinmux-ids = <
+						MX28_PAD_SAIF1_SDATA0__PWM_7
+					>;
+					fsl,drive-strength = <MXS_DRIVE_4mA>;
+					fsl,voltage = <MXS_VOLTAGE_HIGH>;
+					fsl,pull-up = <MXS_PULL_DISABLE>;
+				};
+
 				lcdif_24bit_pins_a: lcdif-24bit@0 {
 					reg = <0>;
 					fsl,pinmux-ids = <
-- 
2.43.0


