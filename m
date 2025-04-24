Return-Path: <devicetree+bounces-170384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FBDA9AA3F
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 12:30:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D90471B8531C
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:30:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1EB4242D7E;
	Thu, 24 Apr 2025 10:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UQFlFv33"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19675221FAE
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745490360; cv=none; b=RYiBC18m/Dit8EldJSYeaDMwXTBb0lUYj9FBOm4P/WiIeUREPu/GDaOkEUgRIV4kpRRWY5npuEwQ18teWm4VbCgsn4wCVhcuJPL6kLfAhS6a7b7AznjNZcOfSo12Kvd+TCPD4ebY/zS1Khqv6un3CStUJ5zgBEQbo1iEs1vSaoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745490360; c=relaxed/simple;
	bh=amw58+Xn4jL5+0UqqZ24GKZxtkpLJLo2j7rkb2+VAu4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=s9Lh0k1WwlNEQ5XGw8b5Q5RekDz9PigyPbzc4iNaRIUzC0dJM0n/xH2xOs5v8F/R9wGBrD7pBDThkJvONcm2izcuE25k/IC36mBavlU453V6F5vzSNwcf8BCJmSxLNl7VdvChE0DltZ7qqa+b2O+4vxvk63K+TQRqwBVQ/jmtBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=UQFlFv33; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2295d78b433so8520025ad.2
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 03:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745490358; x=1746095158; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FmVpDCANpDWXjfc77hOC3nlqo3wLCB+cB+2xYUcVaDA=;
        b=UQFlFv33CuuL+I0ybw8YKAeiP3RwTi/JzKw76wo/1ev/K1zz+haQ0bFx5+LSU+A9EN
         9aFBNJyel41G1aBpq2GKCQbPPRJKFkNpkdZXQOryUskmr+ON+tpP7jQ0MkSRdby8MlXJ
         Xzd/9gw9Bd9SlQK+s7mlI9ctLnjnqdEzhMzvc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745490358; x=1746095158;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FmVpDCANpDWXjfc77hOC3nlqo3wLCB+cB+2xYUcVaDA=;
        b=tLmNNp0D6I7ZxQ7iLYYqZu1+8Wp4T49alm73bjZXwRH9PoD1HIFlwArs3oe1L2jDks
         y9/RkcovS4QUMicdN4IiHPxce7q+SfoocbWCHcRWExx3MfBvseiisUkMJ3g5CyyawgVc
         EIamHM7lqHl59R9FvGEDzjyljy/9deItHzgQFmlK/UeWU83fvnbEtQj1qZ9ET3/SN024
         wSfC8JUOk3IBsp/R9bp7oVyZNtmaro5pNd6gShIQ73iR1olY35K/zcaRK+F/JcnETepi
         pMQ6sBd6sjEGx4qS5b15rdcNUEWrNKI4XBUSEugjRXd2Y4dXLWRVw58NeWjyNKNCgcSl
         IGcw==
X-Forwarded-Encrypted: i=1; AJvYcCXDYxRaN7gNgIkjFWsMUilYDKjzSnYM0wMcVhmoqqWZh43O+PDyb3Xvhi8/HW2Lpala+O8BMvnQW9xP@vger.kernel.org
X-Gm-Message-State: AOJu0YwBg+UWsW3q3TVj0R2yHOhEoChQcrSeMViEm1t7wYinSTd2EI5y
	l6/qjKJXCN5wY7qrNefGoCLn9Rx2GTRHCOEEOPyBgbBwk8UshQmIz2jFXc2lxw==
X-Gm-Gg: ASbGncvPqS7/xkIHpEIlQIuEWefJAlkvkI2bEhaCKLkwpxuxUoUZ8CfKHe8s6pN1hlQ
	N48INe50iQqNGn20w8Lx5EzS0BoNJVbnTcVC4Xls1gC11ObStLwwKm0VtmPEejvxzOHVOvpCtml
	/S6AsnRYzpWu0PCsuPHpVBdAX+RkJIORYS5n5ozKrQklNFEZwqmlx4RFrDnCqLSB86XtsjxaLvA
	mYrPd7FhTZY5tWMAgQZnSB2eiZbvjY763gWqu9yO1kKAQOQsuvEzKlqL21/ANrNZEXgR88pJHOu
	u5cK5DzooUl4P6oZNXbhebbnrzqPgq/j5zmfcbYrluf/jt0BiBV8kbsrrQ==
X-Google-Smtp-Source: AGHT+IFNUWW8GiZ4JqKUF9pP/L7lY/ZM2afy9ZsZUC4Qoy35aYMkl4OZHCBcklsXj7mBYosm+Ajr0Q==
X-Received: by 2002:a17:903:3c48:b0:229:1717:882a with SMTP id d9443c01a7336-22db3bae48bmr32665265ad.4.1745490358416;
        Thu, 24 Apr 2025 03:25:58 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:fa13:e633:684b:257])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db4dda40fsm9680305ad.104.2025.04.24.03.25.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 03:25:57 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Jiaxin Yu <jiaxin.yu@mediatek.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 12/13] arm64: dts: mediatek: mt8186-corsola: Reserve memory for audio frontend
Date: Thu, 24 Apr 2025 18:25:06 +0800
Message-ID: <20250424102509.1083185-13-wenst@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
In-Reply-To: <20250424102509.1083185-1-wenst@chromium.org>
References: <20250424102509.1083185-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some MediaTek platforms already reserve a small block of memory for the
audio frontend. These platforms reserve it at a fixed address, though it
is unclear if that is due to hardware access restrictions or simply
compacting the reserved memory blocks together.

Reserve the same size of memory on the MT8186 Corsola family as well, to
align with the other MediaTek-based ChromeOS platforms. This also helps
with memory starvation as these devices sometimes end up in low memory
conditions.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
index c864ed495702..b139588ae246 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
@@ -161,6 +161,13 @@ reserved_memory: reserved-memory {
 		#size-cells = <2>;
 		ranges;
 
+		afe_dma_mem: audio-dma-pool {
+			compatible = "shared-dma-pool";
+			size = <0 0x100000>;
+			alignment = <0 0x10>;
+			no-map;
+		};
+
 		adsp_dma_mem: memory@61000000 {
 			compatible = "shared-dma-pool";
 			reg = <0 0x61000000 0 0x100000>;
@@ -310,6 +317,7 @@ &adsp {
 };
 
 &afe {
+	memory-region = <&afe_dma_mem>;
 	status = "okay";
 };
 
-- 
2.49.0.805.g082f7c87e0-goog


