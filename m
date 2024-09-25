Return-Path: <devicetree+bounces-105233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC2F985787
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 13:02:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 53F8CB239F4
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 11:02:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A135176FB4;
	Wed, 25 Sep 2024 11:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RO/xHM9J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26160175D45
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 11:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727262097; cv=none; b=J45/BtWctBZHrs6y9Az+aVUdFFgcZeEU2A0Z1Hh3AMgTIDyT1g4j8ukqgpvMN5/QiePWo1PlOqtuIQCH8xQMHYrYjNOdUVoavhzHB3n9BRZ34gx8p7KBdqUBnUeL4fEe0Umz4Idi1zSg1DdHWRkcE56tjTg9T8B7BGRR3yFUuhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727262097; c=relaxed/simple;
	bh=Treg63VPAdJVHmDj+VXIBsVkOkKeXKOgO2nyaDRwFiM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=F8/EoFdlS8sTpImoHlGjBQkutnHA0gU7lmA1nelauPKCnGULeVkc5tnKpzaPuokNuq2etZ4SuyKC/OCZKoWGpLwGAQxiR4DiCDGKFsdmqXw2JROpi2OAONWE8xS+5mPAeOzO1CprPgvbsO8ObZqA1/jxhvkDOlsgmnACFNsvdB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=RO/xHM9J; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-718da0821cbso5060550b3a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 04:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727262095; x=1727866895; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hncFvWLq+2HIxkK3IdImc39anusCXRWego+hIX24T7w=;
        b=RO/xHM9JD6Gjt3PAuQUXUfe8hYmmpeMJXcU+LxEL+kdmIn9O3sa0r409MlKBtF7fW3
         16OkdyKMDNbRhU0YgFuEtm0GPwulAhWprCtuLHib/fy1pUGn3/nZSjbN16sZuWrRsmdL
         T2rFC0o8LCz9rO1xOzxIH7rHWW3N/NpHHrgNM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727262095; x=1727866895;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hncFvWLq+2HIxkK3IdImc39anusCXRWego+hIX24T7w=;
        b=lqWl8cxuE38LwoTl8sWNSnkD6PP6w+oiNZ0/JsWUyG7TiFJG1uS0KnxmewcxhHKVS7
         nQgvEiuQvWkJvx1j1G5IzWK16v60dAnFjj1jy1CaoBPNp9dOI3HQKyNqGSrSoMAQ+WMG
         bxeDR8reAl8zx0jJLG0sZyPwAjb9aA4fs5nF77fFGNu5pqYOiU5tmoIxBBfzV03Oec+M
         IsMM118wKmHHaNP+uxEcdMoo72OdtTDmVz4Cl4m0BX8HvLXmHmJI1feLzmY2TUgwz4vG
         KE7lAAWVlRq2OPjLutb0H4kog6dX44LNYCElj30Qb3xEl7MIT71gaYLxQqHRaTAD16O5
         RhZw==
X-Forwarded-Encrypted: i=1; AJvYcCUZdNOfs+68E8s+lkiy2dcg5hoVpHEPwqJew9sSdUX042QICRyYMvj9uCxoqLbMgvCEtg5Mqesb+EAA@vger.kernel.org
X-Gm-Message-State: AOJu0YwdUsk5DyhgqXhI/s7NhpWYi7/04L0e4cb/r/EgC0uyTLSlZiGF
	RG3H/MPNibvTcUMiq/8kX+FK262PUc5+sgzCLHT01UUBcVu9+R+KVCU8wKL3vQ==
X-Google-Smtp-Source: AGHT+IHU28Q8f9/KJ3N8Jxjmx5bV8UUivj8/F3xolVCMLHtBase+oJeqruIcrf8KyuRBh44bM56zZA==
X-Received: by 2002:a05:6a20:9e49:b0:1cf:32d1:48f with SMTP id adf61e73a8af0-1d4d4b9bcd1mr2511337637.36.1727262095334;
        Wed, 25 Sep 2024 04:01:35 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:2b86:78b6:8ebc:e17a])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7e6b7c73085sm2570298a12.59.2024.09.25.04.01.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 04:01:34 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 4/6] arm64: dts: mediatek: mt8188: Add missing dma-ranges to soc node
Date: Wed, 25 Sep 2024 18:57:48 +0800
Message-ID: <20240925110044.3678055-5-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.792.g87dc391469-goog
In-Reply-To: <20240925110044.3678055-1-fshao@chromium.org>
References: <20240925110044.3678055-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the missing dma-ranges property to the soc node, similar to how it
was done for MT8195 and MT8192.

This allows the entire 16GB of iova range to be used and enables
multimedia processing usages, like vcodec and MIPI camera.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 51bf08b2ff9b..ff5c8e0597f9 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -880,6 +880,7 @@ soc {
 		#address-cells = <2>;
 		#size-cells = <2>;
 		compatible = "simple-bus";
+		dma-ranges = <0x0 0x0 0x0 0x0 0x4 0x0>;
 		ranges;
 
 		gic: interrupt-controller@c000000 {
-- 
2.46.0.792.g87dc391469-goog


