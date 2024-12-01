Return-Path: <devicetree+bounces-125830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF729DF6BB
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 18:48:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 05D48163142
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 17:48:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7929B1DACBE;
	Sun,  1 Dec 2024 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="edFtZ6vX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1F7B1D9A6F
	for <devicetree@vger.kernel.org>; Sun,  1 Dec 2024 17:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733075253; cv=none; b=DUA3lWwqjW6j8G0EBFaOvG8pamvatQM5bveS5zCSG+9twmIWz+oUtJpq1lNDKkG5E5g4fXpDqzsPD/1v+JInBwnRBfL07AqeNrGiiLaV9MNuZE1L4FPyU4Cy0/VwszEDcTB63iyA+vUXCPrnN/X0I9SBhDnkKLyx54p2L4e8FXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733075253; c=relaxed/simple;
	bh=7IXa6n6R8jf8EtYbD7eJtuKKeIWgvUP8tyBiBe9Mka4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T/+YqZJUYj87dBUJMkLn2fEqYVubbgeC46rrUmifQdRVXgeLo6zm2b8IonubE5xDxd7E7xH6eZQYIm8btiVZ3FWJaV5huJaqZyouyr+Hs0LvOuaDclxftCUI9T+oEnHs9MEvVu+SiPhLj1jMDaYaERhrQiKIzZ8SyOTRY3LBKWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=edFtZ6vX; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-aa549f2fa32so548006266b.0
        for <devicetree@vger.kernel.org>; Sun, 01 Dec 2024 09:47:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733075250; x=1733680050; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m3DWv5cRaHU4Io1NaeAcsTV4k9nDv9YZHhdkDqWmPyg=;
        b=edFtZ6vX93Sr8TDD7ZcOk0U2aldZ9rhmmqPDfxN0hLAJhc5rOR9zRGRPdnzhTe0vn1
         +wrT+5V6l+cd4hj8k2QthuYiNdL9McHSkMf3NPSqBMmK1Jjlm3WKm6sjGaijeoTJUNWE
         K6Bjqb5Buv95Akv1QyW8iBuSaR2Hs6ePHiRVM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733075250; x=1733680050;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m3DWv5cRaHU4Io1NaeAcsTV4k9nDv9YZHhdkDqWmPyg=;
        b=U3vX6cFHCYy6eOdxn1neQ1gg8zaq6eWwCeJQht24mi+s8VEnYKsITNPj7jFotlUTIr
         CqRSfmMWqiJ5Eh3F0UJE8uKbm6lq8eL/dU3OeHLCF5mhYpFW7FBzqjHwRgo4JnSOJSJh
         j4bqLaIoYaQa+fptc3lnRr8J7I0sPIVhPgrDCHVP1FmxDR2L74jjmVSnCrsm7bDXfezL
         gqo1TUlQeFUOJz85UpNDrOf1Qy6pzk0lgUPSEPpAPIBaxnRVcQlJ8KnIVJ01n8YSPyNn
         ZNNlNTmDhrpQiSAbAfHwDSg6xjcXjO8ctM0GAP4ltnZ8GW3DicxZZkdF29hX29gQD3tM
         MxMA==
X-Forwarded-Encrypted: i=1; AJvYcCVWPbrmagmnA1a2SjMilKpevugFn5la7emO2VkqnEAd669lA+g8/2dE9PhtMPP1Y6mwC2hX+mX257NJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwToznEzHxmiog/ynyNTosxZJYnX0TNPswQOP77dM6Y8Xif5SEZ
	cp+TgMB91hhsR4qoOZViFYhB9WzBH2ZVhdxpTswQX2kfYbWaDUI82DHBqyC7FsQ=
X-Gm-Gg: ASbGncsywV5s6mE4GnKEkjCii9+c9kUfcQouDW3+JM5frRs10rgFfXOQiuG7vgHBssf
	/qNa+FVu5Ozag6TavvS5tl430811DH89rd1B+mNxKhQcFpkTTYyQiaHjTFZNLqYoEgje5cnuV4f
	VwvRq/syrn6iESD0pu1yCErEF2ma2I0BiVRlcOebP9WgO3QwcrBvL+k/tZ4N4LksiAeJ8b4dzCH
	60QspLq7w0+ccjweNBpsNoBlELb/JRarpPnFjcJIieivITWrcYOl9aGOC3iQsfPEjEgScQ9X4Ug
	YLfOgknJzuaaArX+PNUzX1RD+YaDBgHbdIJSKus/O0xuVR3X+A3+gt4Aoytr6EApVZuaXHh55W6
	V5Osy2FBkFNlSW0ED
X-Google-Smtp-Source: AGHT+IGjTr544po85HL/yFGlp7Fz9SND5Mszl3n0nyOzsFi4lUmL2IW6mDDVfOELB47d4l21pa4qgw==
X-Received: by 2002:a17:907:3f9f:b0:a9e:c267:78c5 with SMTP id a640c23a62f3a-aa58108aa97mr1582174766b.55.1733075250065;
        Sun, 01 Dec 2024 09:47:30 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-54-94-193.retail.telecomitalia.it. [82.54.94.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa59990a78esm415220066b.163.2024.12.01.09.47.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Dec 2024 09:47:29 -0800 (PST)
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
Subject: [PATCH v4 07/18] arm64: dts: imx8mq: add anatop clocks
Date: Sun,  1 Dec 2024 18:46:07 +0100
Message-ID: <20241201174639.742000-8-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241201174639.742000-1-dario.binacchi@amarulasolutions.com>
References: <20241201174639.742000-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clocks to anatop node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

 - Added in v4

---

(no changes since v1)

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


