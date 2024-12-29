Return-Path: <devicetree+bounces-134575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B079FDF6F
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 15:52:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D18B161A97
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 14:52:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0246619CC11;
	Sun, 29 Dec 2024 14:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="kqWmpTMT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D99B19AD87
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 14:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735483849; cv=none; b=qcLe39NIt2LwH49Mt+6V8FEUXrCQBCv+yDhZpjbc3QeBwTlFbhU6vbFE+iBOGfTtQiQESsDwT7YDZWnJXv62HXooZbMkCmbgkEGJHdEigGOTbv4HAeaYuGyTVnjRvfwbiAP4JTpIKmsxPJs4QXnBA1X7Zh3z8v1G5j2GZ8CGvbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735483849; c=relaxed/simple;
	bh=vc25/TFqvg0Ekr2Sm4G/VkkviBdPeMF5e7FdTWNCvAE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bJn0LxITDX8NZJ6ckZ7I6qrDqAhbnjG/ri36tVVNx7EIlsozc3xUOdmsqqpd1GKxtoAmF2ur2/AgBpUniiTKU3W204Wfqxa15jXOYnh0BnY5rPYdDwo3vLynw4YZpQevBfptGBRhkZH2ILTjInLf44aWtt8vh0KES1PUHCEvFWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=kqWmpTMT; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-aabfb33aff8so1483807166b.0
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 06:50:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735483846; x=1736088646; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BHj8xJJDjB/nn7+FV+WNgNcGZHPneQlK/63TZumKERk=;
        b=kqWmpTMTDfwPj7pLduOsrcg//NtPazvffAb7fb1C8NQW0/v96b6EsDVWfq496gPVZQ
         2UCzZedT6ERGDzgLW8O+NbthySDkhBji9OMEkrkFDuhhn0/WBIMfdzPQe3KLp+KzuCSi
         pc+qjcyrNUf95JxZsjOmk3AA+cHkef4C5PvVE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735483846; x=1736088646;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BHj8xJJDjB/nn7+FV+WNgNcGZHPneQlK/63TZumKERk=;
        b=KJEuKoXEcxp9J9y5vnzrnpPFv2+Y02xU9huq3eGVt/u5lI2CqG/O5UiRG+ilBIxRx7
         bEtl60nacQCd+mp81iTSL8L7XvqdXG8KzlHW1wPZR4VyVQ4TMtvkxkHz8Z3vGNx21Ny3
         VwC2XEYueRZfQWWAviibHdLwqUw7ZNP7tcoDWo8E4p+VI1y2ImnDjnfJcurhimbKvEAY
         fYYwPGHaLgxqvimi1KIK3TlbbiT/TF+0ToggeFwj/55l0C2akEKViwfw8kshdSM+qkrS
         DgyCqUq/X4ACwzN+jL7fEqLlMDNglzqgNgnrM80wN4LfOdS7LuhWtxx6etCeffv9YxyD
         mdRA==
X-Forwarded-Encrypted: i=1; AJvYcCWjRPN6B1AhG/BFgAzuEHzFYbVgLY4rxaKLTgS/3wM4nImpAZsAjUj6fb7534Bu9bQegNrde3GEJsRC@vger.kernel.org
X-Gm-Message-State: AOJu0YxYvziivchjD6S3VbtRKoHGidl8OjFWvNXHv6Lez9Kd28HtiFR/
	Ec5IWsIMuT6+qdyEknX6R8Z6pzz1pr0mWJmHenJjmklOScPlrz+sfhD0vZHFF+M=
X-Gm-Gg: ASbGnctZ6n9Icq+ACALPn7wB/w+L08NUxYnCTd8KcFc99hn/UzP9PY1tZUEWsVbW5oH
	7RgOcldDoFZNaM861jQcm0k0Xzcys0o0xEMVjiMU42nV4Tmtphkp9Ko18tII6AFdeNOalipddiW
	NOD8Kz/a4dFQlNkg+iiCKQqk6J+JyK/4qje1ZGuwRkgVPGjJs7JcwEJ1TSPm3zwmga+5NdYQQHG
	R+5QxyjLse8yqVU57SkINiA8LyuBSPhcYeqYkR0rhu/jU4l/Rtc43A0CakmvGwc58R0Hbl9wXr9
	IsCK1K/MhDNvTSTA911XcA==
X-Google-Smtp-Source: AGHT+IE9irkaow+qaH4xXnif+LMSxixYb24+xXMhBwgXh6+OtcomA+ytcyRHDSj5KcZLfwK4yNuYsg==
X-Received: by 2002:a17:907:9482:b0:aa6:8096:2049 with SMTP id a640c23a62f3a-aac3350c059mr2950970366b.13.1735483846571;
        Sun, 29 Dec 2024 06:50:46 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e895080sm1362084466b.47.2024.12.29.06.50.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 06:50:46 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
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
Subject: [PATCH v8 09/18] arm64: dts: imx8mq: add anatop clocks
Date: Sun, 29 Dec 2024 15:49:33 +0100
Message-ID: <20241229145027.3984542-10-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241229145027.3984542-1-dario.binacchi@amarulasolutions.com>
References: <20241229145027.3984542-1-dario.binacchi@amarulasolutions.com>
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

 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index d51de8d899b2..1d1424a136f0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -817,6 +817,8 @@ anatop: clock-controller@30360000 {
 				reg = <0x30360000 0x10000>;
 				interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
+				clocks = <&ckil>, <&osc_25m>, <&osc_27m>;
+				clock-names = "ckil", "osc_25m", "osc_27m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


