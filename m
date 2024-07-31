Return-Path: <devicetree+bounces-89618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C0A942529
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 05:44:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E1DC3283703
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 03:44:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B423E208D1;
	Wed, 31 Jul 2024 03:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="c024FdBo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3633918030
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 03:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722397470; cv=none; b=pzGHe2eLsjoYOrheC6q0WyMvcMjWtSsQ7rk4pag4KnglIyhjA4NMOS6Jg9b1OcVTHKnD33fYF38TpXOV2AvqDPq2mPg06sRF5/6KRq5aifgEOtBYuz74kwWaDexbfs632Nle5YE+L8eo9a4Ah3/rG/BCheGCES6TugTfTNuHDQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722397470; c=relaxed/simple;
	bh=OSVnN8tXzjBnuh8EDyw1UDmViT36WcO5dTyBCaOFmEc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VkFUFtO8lErBG0E/5ze5Noc5+XuSIrxuhhKYOl+CNnr5rTCnHw7vJI0qn9i8wHUnV0GRu5kUQmBd7I++jC3on1kwVFaW0cVEZYNdCGIPH4KDD7s2nXxkKq8CUK2uVjnYXnhsTHUKXy1BVl+5PhaX987SMlFq0hZQFJIGtNxhlE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=c024FdBo; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-71871d5e087so4026026a12.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 20:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1722397468; x=1723002268; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UNo1lCfbQqGMSbbgOcd9nX2zDqzbGx3C0Iq0m1Inhbk=;
        b=c024FdBoslqLLRltTlZwEVlxv2ud0mmdB3mKgbDu6/WMDYn/RKdOkinYeSu4jplhfa
         /GpclPxdsEpUVFJITNwYt4J9Fo0ICcEu0dA1l5teYEqN3n+/Rnzwy1HgX2xCcqrYBlRk
         kNx8Vy+1K9xJ8eG5VyAY0HZBwCzNARaUuLr4I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722397468; x=1723002268;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UNo1lCfbQqGMSbbgOcd9nX2zDqzbGx3C0Iq0m1Inhbk=;
        b=lTLyQfvNnA0YkoAPsQsqvtkL4HD1egGQKCMiuVM3X2ZFWrsOeB2Fl6aGidUo2CQMEZ
         L1mc1G8gXTmG1uGA0xJtywOO3RVRxJ1mNBbOm1HznaB8Y5LHHAgj3cvKv1zOflIbMt4Q
         gJT65HpZEydYE+HWOoOdRslxZYNI3LD0H1cmhexA0IaKq1YMPDhpk1Qewe6yzihJ0Imu
         Z6KU1YP+8BlBrn8clQgfAvkxLcLFu+qJ3JFJmp2t/W5pIkD3peCbhfHZVuhHcPbOi5U5
         EiYwaAg68KcA1ox1WMHwZ6/ME3bpy1ROyxHvCSKmbotsEcO2yBJR99U9yZOMV1pyIw4/
         iSFg==
X-Forwarded-Encrypted: i=1; AJvYcCVoNBPBxTvaIvAnro5zeWhprs5EZUpUUQ6jM3S6Ng3U0yE3akvpF0Kr6B175CsNWX01YRmt56XTJZcWVJNzFICVwEPJO7ZtG5OUkQ==
X-Gm-Message-State: AOJu0YxKIWE7WlUq2dpXSeObiBKb6ismPXBcjIPjzqpz5/NzmZOrPPlV
	8w/J5QNmrnV7k55+SkTnysYIIslhovZR3MA2bBGm2IcUh847vJHPLQDiLFqXyA==
X-Google-Smtp-Source: AGHT+IE4FtnaiOt7PwGIeleyxseVrMrvg2bK54AvWowVA2QcZrnOLaPels+TJcjIfagIHeg10n/CWA==
X-Received: by 2002:a05:6a21:328c:b0:1c3:b47d:d53f with SMTP id adf61e73a8af0-1c4a12e1129mr17571072637.25.1722397468531;
        Tue, 30 Jul 2024 20:44:28 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:1cfb:e012:babc:3f68])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead81230bsm9093008b3a.120.2024.07.30.20.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 20:44:28 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	stable@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: mediatek: mt8395-nio-12l: Mark USB 3.0 on xhci1 as disabled
Date: Wed, 31 Jul 2024 11:44:09 +0800
Message-ID: <20240731034411.371178-3-wenst@chromium.org>
X-Mailer: git-send-email 2.46.0.rc1.232.g9752f9e123-goog
In-Reply-To: <20240731034411.371178-1-wenst@chromium.org>
References: <20240731034411.371178-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

USB 3.0 on xhci1 is not used, as the controller shares the same PHY as
pcie1. The latter is enabled to support the M.2 PCIe WLAN card on this
design.

Mark USB 3.0 as disabled on this controller using the
"mediatek,u3p-dis-msk" property.

Fixes: 96564b1e2ea4 ("arm64: dts: mediatek: Introduce the MT8395 Radxa NIO 12L board")
Cc: <stable@vger.kernel.org>
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts b/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
index 4b5f6cf16f70..096fa999aa59 100644
--- a/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
@@ -898,6 +898,7 @@ &xhci1 {
 	usb2-lpm-disable;
 	vusb33-supply = <&mt6359_vusb_ldo_reg>;
 	vbus-supply = <&vsys>;
+	mediatek,u3p-dis-msk = <1>;
 	status = "okay";
 };
 
-- 
2.46.0.rc1.232.g9752f9e123-goog


