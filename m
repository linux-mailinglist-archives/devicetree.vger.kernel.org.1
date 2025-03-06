Return-Path: <devicetree+bounces-154809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E9EA5495D
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 12:32:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E1593A92FD
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 11:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F92A20B80F;
	Thu,  6 Mar 2025 11:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="mHPGusaw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D4320CCF8
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 11:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741260645; cv=none; b=gUlKYEvPzV207Ql8aToDC1dqDwRNgAk7ppFgeJ0VVi3azN0HbUU5KLsl6rB9jWpPaQsUXYNsoAt3b8qP/baqeIabCPoT1o57mxylreAUOAYH4z54EmfelCMyuxEeu6usPE2Zw6sAOylIcjpgJwJ7ck5Br1mhokJIeYi06umsN2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741260645; c=relaxed/simple;
	bh=4JJzIfTPYd1xwS7ML8LLTZkwdWqlo3aofGz7RuYx0M4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KhMNKRgu1mj59Omx9RS4FBhH0Xfukd+Bdd0ljvq7GSuXG6AyphO5V+72cUKFhf4P7oKssuNI1iZpDvzBRf3UuNxLobzP5U/js8jssIFDMtdiJyiAOz3O5N5R/qeJU7HCETIcYPJpBO1JqizZRiA+ZKmrlDS4EdgciUtyct8esWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=mHPGusaw; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-390e6ac844fso465744f8f.3
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 03:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1741260641; x=1741865441; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hOYk7rkhvjRCnvuEcjwAqfr4aBzSa8a4sxHUvLuLnTs=;
        b=mHPGusawRxmWmtxIQ0Y/xzNuZaGQ7odvmnXCBkyupA3+71Bn/oPSSdoLpZWbSTxrQY
         ECeqUr3yQ1Pb6q8Rdzn9UhxVhtbz4qMmbwPBI27s2OsuL8pDQvy9mZJ6ihuM0yOac6B3
         bSaSUy3tGqHQKKeeXqx11WJXDGlsPR6E+YvJc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741260641; x=1741865441;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hOYk7rkhvjRCnvuEcjwAqfr4aBzSa8a4sxHUvLuLnTs=;
        b=XHbnyjfe3X2DWPWMJ+xWrMuXewZIjtDisXN94tSa+GjYSuypcVx/0u4oBcfZVBA3P6
         +F4u3gNeIE490pzKcfFefatEwy+Q8C+1OwHVoiTzKuxCAJmKmF0FNw6JT5E/WSQrIovj
         kwn1TUDdq+Ll2Wiu0aFD4JBJoTGbReiT1SJBXCwXcyj2jBwsgYrQ9JmrbrRHz10WmsLt
         /Xw23TmBC8cRGTsrSoSsjgQfGlJVKuJzsy5GEcosWVveZylkd6UtzVu49tEetR1+rXXT
         V6mBUjo7f7hdnHq6gDYy6Lg6Gq1arpVD1JZUOM3+JUT9YHE1+G9GOCDlWKH+Aqvtjk2A
         Vj6A==
X-Forwarded-Encrypted: i=1; AJvYcCVTea30rJMf59ajOXrkF5A8yiRPKhg40XQLsEZxmRfv5RJ6tk51O6vEQPkL8d7HTbhxWDp93Gq+FLiF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0uTrPA/yaqvxlGGQxTedXlZpXFco822RbiTp5MlZxJFQX4HLh
	4VgvOULhpWhJyYaUHqxbULEti9gQz5BFHJ0v5aVLny9ivBqcNYt92DCsBjKsMUE=
X-Gm-Gg: ASbGncuhJ1f3SzRcYPQx6mJM+zv6GShxsDFBcNcsm7n7afgGnh1lY9ynKKBoiRKK0Re
	to68UeN5RLQH8rbFWdvp581JPTJzFLz4wGPp9RLH2+jww/j/zVSgALDqWHlBQTsjzz1Mxud+qHe
	fb+DXwSJ3DJMcL+sXV8Fg2xKFeyYuZVG6CPehuT69FWVbY+YK9e2MOavvQEHH5B6euIVHGdP6jD
	Su+OQb/iVTEsYYk9ZbU5ZH5NGusZI1/PPucKAUc5ZeLpgeeXYiE9q28hVAgfeaqwE8tTJDfuUzh
	N+/UgkjdpjLieC+7AdlZ1bNU+FAWS8vtA45zNzk5QHjIeEWhxzHoDHPYZeIx9AYoNNFQEMFgePH
	g1Ce7XQ==
X-Google-Smtp-Source: AGHT+IF9wWpzzMPt0CHbMykHM/8iRPLGJDIu7l0jbjUlhGcWSWneZbVlhN0tXEjKICQJwrYTnSq4zA==
X-Received: by 2002:a5d:59a8:0:b0:391:23e6:f08c with SMTP id ffacd0b85a97d-39123e6f191mr4148028f8f.47.1741260641317;
        Thu, 06 Mar 2025 03:30:41 -0800 (PST)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:4703:aa8c:6eab:8161])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912bfb79b9sm1749650f8f.3.2025.03.06.03.30.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 03:30:40 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Stephen Boyd <sboyd@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Abel Vesa <abelvesa@kernel.org>,
	linux-amarula@amarulasolutions.com,
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
Subject: [PATCH v10 06/18] arm64: dts: imx8mm: add anatop clocks
Date: Thu,  6 Mar 2025 12:27:55 +0100
Message-ID: <20250306112959.242131-7-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250306112959.242131-1-dario.binacchi@amarulasolutions.com>
References: <20250306112959.242131-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clocks to anatop node.

Add the bindings definitions for the anatop node. The patch is
preparatory for future developments.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 4de3bf22902b..597041a05073 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -600,6 +600,8 @@ anatop: clock-controller@30360000 {
 				compatible = "fsl,imx8mm-anatop";
 				reg = <0x30360000 0x10000>;
 				#clock-cells = <1>;
+				clocks = <&osc_32k>, <&osc_24m>;
+				clock-names = "osc_32k", "osc_24m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


