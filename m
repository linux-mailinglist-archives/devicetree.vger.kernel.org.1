Return-Path: <devicetree+bounces-154811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A013A54962
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 12:32:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84C913A73F4
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 11:32:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9713420E01A;
	Thu,  6 Mar 2025 11:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ndUx2INf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9791220ADE9
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 11:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741260646; cv=none; b=OJ3y56ueyc+ctWS2EPvY92jQwSZhCxr5FpXrw8TgTCggw9YbXHZl2Go1bEKK4727COs73Te3n8OkDjjOX7vXRjmTDJl6qrGmbzYerbxjTXtYPv/5q9N+Fljqoz1lrxciOKdSGtjzlgIVhPcR5go/8oWHBaS+9L2oDsvM/pwJ6EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741260646; c=relaxed/simple;
	bh=MWwhsP/1Gq2jtC+XMH/+PSmlpfJmY2R2gm9uwDR4fZI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Af7pp05mbJwPPJcYmcVqVpbklTOmqy2xo7gSWuqzi55OBkUqouI1fJBywdBF3xJpx20tjRwTFQu5dZJM1xMFRc3+ir8b3m2KLv3ktqMjNHCRn8fNAKaiQOZXR6L+iGcZWsYWKoBF0EZmFud3kVUv+tC8WOdfUROckET8KZXxxBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=ndUx2INf; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-390e3b3d432so303848f8f.2
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 03:30:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1741260643; x=1741865443; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mr8rvSiMKhhr7+g2wBjSbr4ZapMlTY5YRIRH4XPzpek=;
        b=ndUx2INfq/L2o8KnUsKtft29cbyaHZL5QwQ0dZV/Rtop09JheCKl7XuvhWC6yeAtBe
         CvulEnqnhEhfXf9odA8+dO+hj1VxvNcOxFeElzBx4Za9EW65dPrCa2Dy5QPIaIsv7QEp
         PutrbaLRzRlIVY9Yhiq3SE8wJbqHMyz2N5xQc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741260643; x=1741865443;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mr8rvSiMKhhr7+g2wBjSbr4ZapMlTY5YRIRH4XPzpek=;
        b=api/oMI/+dUB0usHMuejwq5mDY5BjutS9Sn8oNWI+TSPXApHuTWR2S24a1yngnZLS8
         jdvFgDC2JqV9R7fkvOyBYDBbQQRqJ4UcZ26ubJ5ZKoNJ4fiCva+JfZekNtBruXIZzYbR
         QZK+7L/3jMhUlKlXdYDhv0QolIX3IgtDKooWqcnDgIkOpfwBvMBGu7fTpQUVN5D4K+ff
         741Cj4P/z0hvwfrttXCG22dC/EmQIvi4alK/6FJf7yh9vEXAY3ekRhBx618yYoSKlCHi
         rvDINtfY7TQBaUXW/UE290iyyC2QEL3LqQpWfpRXW8JtaPY0AGc4FcJHBoPQQZfJ8eKu
         TaXg==
X-Forwarded-Encrypted: i=1; AJvYcCWLDdoOnKRDnMBmjJBumUeinPqWggRWY3tdFAEXba9X0Q7NYfrjqga9h2dVGfMIN0kk31EJOJ+ipZQ0@vger.kernel.org
X-Gm-Message-State: AOJu0YxDSfeHe5xXnvj++AKbhIXHMfXq7RFo2DBKDdpGk6YKXRxhRvL8
	s4PWVE7CW3jp6jBJ/oXlBznqiwnLaGAZwDkE1YArahPb6NdaXAWDxfUDz60P4OE=
X-Gm-Gg: ASbGncuRgEoIHzghorQnrt+Q3xPo3eL1P3o8QCcexSlvXVt2HT3OgP+gaDqdYEUgFL1
	nRu2QrAb5AoBeuXkqqej15PZHS2xn+mXeiTfrOTtByuygH1Gl1l3cMWeVoRUWZBQ/ZqQntEvDSk
	sOgLly35q5pQeqEaV04T1Z2cVEJ8g2ILwMl4alJB+re3IiLqspq0X04AncSKqUvjNrgaxa+wPGf
	YJHVgg2YEr5VVLQF/hwriZa4TvNYmmUn4qohf41QaH1JqwzoxQXfRzbE8Ne75VspKF5D7DXemx3
	Kp+b97cNtYd9NQ3LIafXo0mE87WxGZt3VYvz1+l85OxhGqASR80v/5Kiq5pXHXjZMXZew4ASn5L
	pmXXehA==
X-Google-Smtp-Source: AGHT+IHvHIK6gnR7vBN0ADzhz0P4KuVyIojDRjOIHgSb1eLz6CEIpvyk+w8pwsH+YWiTBaZGmarvoQ==
X-Received: by 2002:a05:6000:154a:b0:390:d796:b946 with SMTP id ffacd0b85a97d-3911f7c229amr6475681f8f.44.1741260642721;
        Thu, 06 Mar 2025 03:30:42 -0800 (PST)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:4703:aa8c:6eab:8161])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912bfb79b9sm1749650f8f.3.2025.03.06.03.30.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 03:30:42 -0800 (PST)
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
Subject: [PATCH v10 07/18] arm64: dts: imx8mn: add anatop clocks
Date: Thu,  6 Mar 2025 12:27:56 +0100
Message-ID: <20250306112959.242131-8-dario.binacchi@amarulasolutions.com>
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


