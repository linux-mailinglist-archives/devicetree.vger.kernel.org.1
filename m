Return-Path: <devicetree+bounces-125945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C800C9DFBBB
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 09:16:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8DD38281AD3
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 08:16:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A6361F9F46;
	Mon,  2 Dec 2024 08:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ZzzNTeF+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC191F9EBF
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 08:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733127395; cv=none; b=Av1S344VJz19mR5fJkU6sft9MHyKltqgY8MKSZMszTE3nFExtotj802ajLNpQwFVncp9eEzXLwhGwU8Hpk3E1MpaMBHo/gPqyOcTD0G3P398ersJgFGjLsRmW9z0Rg6Jny1HtnUiaZpaOfjbMCaB6CqY3xGWX9mcY7TYl2kemzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733127395; c=relaxed/simple;
	bh=jNVl0lD7jk3nZ2MHo3V6R2KlUMMo0S3tjigEX4OgbeA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Fam4yxpnHnGIYMcS5GMjGB2DN3/2LOrWs9p4Mic/p7wu8VnhrlXR/+JWndTzhOE0akDsqtR0ULVWQc/0iTSXV8PTkJsGxK/RoXsJRByZUob3R+fvkubOlTtAbHKhEZulOFENcNA4wfhDMpbgNYI6C4I11OcGO4e+iObbYMWC2DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ZzzNTeF+; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-724d57a9f7cso3196511b3a.3
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 00:16:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733127393; x=1733732193; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zZ+V8gAQS0krBkG0WVrb6zVz1qUQ2D1EuHAFBRDqmVc=;
        b=ZzzNTeF+OUiaKuhm0cPcWLXfADkC3aJ7TmA1lbmwI5qahb9yX07IVmQVrY8hl6kTOe
         phAAwswqf1JkcNdRy9M5CusrnTudXUk1UgJ0b4IGptt72Wyuu2iTKDo0y90XKX34fNjK
         yf7Hoz+HovQMPY/s2M0q55jJd7UajoC9B9jNw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733127393; x=1733732193;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zZ+V8gAQS0krBkG0WVrb6zVz1qUQ2D1EuHAFBRDqmVc=;
        b=ufKuslk8vVKqBsZmBh2yj5YmMdKxJN1X4pK/ivoe0xSi4pG0RZIVj61yLypJaw4S/b
         oGGm7TGHZTXHVri5iT4ccjwT1yDBU6gpoqZQRIxtFj1GCLXkGlVxTGkovKa9S0x8Noqi
         jIz85J39gwCrfiC4S33qc+L87Pweb489PrEPDQvl6IYS3xqoZdKHy9LdLCNlcMnfNyQY
         Cbd8HHJQhMJ2fxpn9bh19t6Xshzxac/0oLcUWHaNOZuBSTYDB7Y95Jbt2eUE/N8wKvks
         BrVjCx5Skeoi4cqf7QmbrHxpSb0jNUxjPBc4EkPxUItBKp4MAQ8OdrwkwGOL1WepXoB7
         3IjA==
X-Forwarded-Encrypted: i=1; AJvYcCXO7rxTthPgvAMoL59Q6OUI8C38cK7wiLZRbZ+JFnAj3djAHKRhoviPLJ+SAsCs2DyQmvOaOBfqtFi+@vger.kernel.org
X-Gm-Message-State: AOJu0YwVp4Dw0+BhNEkbmLdXbzo7YMImwolOLTXh2HWi7BsjGwSueM0o
	g1NheJ7Y1diicvlkGGnJuyOeJddonNk46FS6p08GYajEp182kj1UHnqcWhKqUQ==
X-Gm-Gg: ASbGncuUb/EfNk+y9wyA7afZJEx6jY9qkK1NOmZTzcKTEHxZlecbCqOlU1YEe6EXeyV
	H0fCzql2p7a9sD3bkff5xDiPDWt8Z4Y2cpgb9lk72Ppmci52i3K4nfwGnPSrH3rAUH3859rQxiW
	159ZkdWdHlYe5Ds/k23KjY3Ft5sSpEcEdpjK7+MlSjsL79NAn9jLgnWmbWytsaFK6DglpJ5pXpX
	cD/3Q4Enm1wdLcWLjILeDiOoU41p2bGSwYWT6+cR1CDAzU8susbZW1Ur7M0hmDi15fd
X-Google-Smtp-Source: AGHT+IGt9cTgxCtovdz1WM+2VFqEZhhh4JaKNavNwPJgr8fK5Ri/wVS1DDwHKI8QEXh5bTEbIZqezg==
X-Received: by 2002:a17:90b:3c4b:b0:2ee:bbd8:2b7e with SMTP id 98e67ed59e1d1-2eebbd82e62mr6847321a91.12.1733127393173;
        Mon, 02 Dec 2024 00:16:33 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:94c8:21f5:4a03:8964])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2ee488af41dsm6312844a91.28.2024.12.02.00.16.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 00:16:32 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	stable@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	Koichiro Den <koichiro.den@canonical.com>,
	=?UTF-8?q?N=C3=ADcolas=20F=2E=20R=2E=20A=2E=20Prado?= <nfraprado@collabora.com>
Subject: [PATCH 6.1 2/2] arm64: dts: mediatek: mt8195-cherry: Mark USB 3.0 on xhci1 as disabled
Date: Mon,  2 Dec 2024 16:16:22 +0800
Message-ID: <20241202081624.156285-2-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
In-Reply-To: <20241202081624.156285-1-wenst@chromium.org>
References: <20241202081624.156285-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

[ Upstream commit 09d385679487c58f0859c1ad4f404ba3df2f8830 ]

USB 3.0 on xhci1 is not used, as the controller shares the same PHY as
pcie1. The latter is enabled to support the M.2 PCIe WLAN card on this
design.

Mark USB 3.0 as disabled on this controller using the
"mediatek,u3p-dis-msk" property.

Reported-by: Nícolas F. R. A. Prado <nfraprado@collabora.com> #KernelCI
Closes: https://lore.kernel.org/all/9fce9838-ef87-4d1b-b3df-63e1ddb0ec51@notapiano/
Fixes: b6267a396e1c ("arm64: dts: mediatek: cherry: Enable T-PHYs and USB XHCI controllers")
Cc: stable@vger.kernel.org
Link: https://lore.kernel.org/r/20240731034411.371178-2-wenst@chromium.org
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index 9180a73db066..0243da99d9c6 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -906,6 +906,7 @@ &xhci1 {
 
 	vusb33-supply = <&mt6359_vusb_ldo_reg>;
 	vbus-supply = <&usb_vbus>;
+	mediatek,u3p-dis-msk = <1>;
 };
 
 &xhci2 {
-- 
2.47.0.338.g60cca15819-goog


