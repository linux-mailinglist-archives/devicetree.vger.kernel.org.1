Return-Path: <devicetree+bounces-89617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D259942528
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 05:44:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9979282966
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 03:44:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC1C61BDC3;
	Wed, 31 Jul 2024 03:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="B6T3zytL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC7E182C3
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 03:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722397469; cv=none; b=MPoHIdF3xOJqKzq6wd5KAncpvMGY9S2YPIpd163409+hBFVT76hhP/YvmPwgheMCfls9Ehc37ts7v6OOTy6Fi4eti2ECzk5OEW96EKODzYAABl+yOUrBKLtv2criA9EcHoYIaHzbzubpT0xfZ2oXBx1XuRzGf78ReQhsgWAezEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722397469; c=relaxed/simple;
	bh=4Z3xOpbbzckA9G2MkMEHJZLQkoZ8bGPOZvpOB4n0Fv8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=i9CuSHlLG3mqmxN/M+LKwVddvaOBWQ0irpLkyFoB42+nySBZfAXAyoGxCm/xNedKYBqYlcVQDmV33A4/Wi5QWv0Soas1vAcC+Z2i64MPIH5mgwFSU+ZJ+q9YZNCICet7dNPaq6zwrkz5cGM+rRMgMtS5Ndr7Lv2yrj/916UuO3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=B6T3zytL; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3db15b4243dso3252260b6e.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 20:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1722397466; x=1723002266; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2UbdYL0//iy1qTkoAHNN3QDl4lYvN+Ijx1oBz/ie38k=;
        b=B6T3zytLPKCejnnDaOTbppme/xdCccYZ+aCongvIea2XFDTsM8vOlXVx7PVUte5x+j
         R/CYoAAMDb9LAjpOzDXkqFsC1kkPIy0s5fEYL158miFH3JV2PtwiYD47v+8/GCzX//0f
         dql3dA21eQPtQvg0snly09/dGb81fEU6Fy5l0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722397466; x=1723002266;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2UbdYL0//iy1qTkoAHNN3QDl4lYvN+Ijx1oBz/ie38k=;
        b=HIKZr2apWtz/9I6ZDp0ZfLHzTBjeLOyeUUhb7PfY6EURcBBlAcJhIDTi+lMdwnzpY7
         o9MvZgOtPSgd/NBdMvnqAazBJ1gvAQpSaEEUh5BKNE5beyS9wsCfltVk7s6D7oYBDAKP
         5Nw+k5wRPwmgC8RjGBNfoQs3L4ez4hh66fNv40a9RuVeFm8Qv5ulrZtGt3z3SB9PfMkd
         ZLnpJr8Dyc2PVVeFdJWpm5eAIHJxJsA4eG2fJdKhodjCSlF3d/aY7tBRYJwNVWlfDBMj
         tJLSLPGVSgPJy8NMetLByVycGgJtSJ2Qc91k0usHVF/zRhBJnKFvuwQybsc3GTUf5Gbh
         KiNg==
X-Forwarded-Encrypted: i=1; AJvYcCWXJH20Rh+P4SJZQUHPRUgRnrKbQ24xF0uE8gTefdz/ly3uSu/Zyx/bOZa9OIl/h3YktS/x0KWGWeNxVqypDITVERNf9QoA1ZN9ZQ==
X-Gm-Message-State: AOJu0Ywtb5v+BF+C5dpH3fq/sNrjiIXUmq+8ph8myUVjJ3jy36E2uVH+
	YzS9m59NwLx308OWjT5HjkpvICGP870Ptm5HR5F4Xwu32WavXBCTrjNTsxB82Q==
X-Google-Smtp-Source: AGHT+IEivlqEbXkttxrz/Rxzu9Cp9uzqYmDsPqNMDSXXzrPkDIW0pOckbHR0f0HuMPjBNI+AfizI8A==
X-Received: by 2002:a05:6870:6120:b0:261:1fdc:4945 with SMTP id 586e51a60fabf-267d4d94a43mr16322317fac.26.1722397466358;
        Tue, 30 Jul 2024 20:44:26 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:1cfb:e012:babc:3f68])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead81230bsm9093008b3a.120.2024.07.30.20.44.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 20:44:25 -0700 (PDT)
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
Subject: [PATCH 1/3] arm64: dts: mediatek: mt8195-cherry: Mark USB 3.0 on xhci1 as disabled
Date: Wed, 31 Jul 2024 11:44:08 +0800
Message-ID: <20240731034411.371178-2-wenst@chromium.org>
X-Mailer: git-send-email 2.46.0.rc1.232.g9752f9e123-goog
In-Reply-To: <20240731034411.371178-1-wenst@chromium.org>
References: <20240731034411.371178-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

USB 3.0 on xhci1 is not used, as the controller shares the same PHY as
pcie1. The latter is enabled to support the M.2 PCIe WLAN card on this
design.

Mark USB 3.0 as disabled on this controller using the
"mediatek,u3p-dis-msk" property.

Reported-by: Nícolas F. R. A. Prado <nfraprado@collabora.com> #KernelCI
Closes: https://lore.kernel.org/all/9fce9838-ef87-4d1b-b3df-63e1ddb0ec51@notapiano/
Fixes: b6267a396e1c ("arm64: dts: mediatek: cherry: Enable T-PHYs and USB XHCI controllers")
Cc: <stable@vger.kernel.org>
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index fe5400e17b0f..d3a52acbe48a 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -1404,6 +1404,7 @@ &xhci1 {
 	rx-fifo-depth = <3072>;
 	vusb33-supply = <&mt6359_vusb_ldo_reg>;
 	vbus-supply = <&usb_vbus>;
+	mediatek,u3p-dis-msk = <1>;
 };
 
 &xhci2 {
-- 
2.46.0.rc1.232.g9752f9e123-goog


