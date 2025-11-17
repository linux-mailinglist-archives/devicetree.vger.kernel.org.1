Return-Path: <devicetree+bounces-239285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AC824C6385D
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 11:24:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 991374EB8CD
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 10:17:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D793930C639;
	Mon, 17 Nov 2025 10:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBvuMefu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A94DC2D3A86;
	Mon, 17 Nov 2025 10:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763374622; cv=none; b=qYoM/eCMH2Sr8rgkHOMeT2CR2kwwTiV42A/Rs/dwtVP5+vqxDR458FzxN16o1YGTAEdabcbeZArHvsf+GxxOdehdpUNUaUEF40QpplG2ci5NJANL21+hpa2rUYRrUOaFmxCzK3p4Z8mezrNrbrWhmLxluea18iOfncsh98AyEGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763374622; c=relaxed/simple;
	bh=OiTnsE0jCJzlTrPL2A0+faRIuD7EfqERwAylSrqNn54=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Redbw+UdLV9f86G1/1PQTJd/w9syvzg/Rhx0x7NgK0YMFeUA/nkILl8e6Skxyrr3wixbixYBOvoCLsEwnVJdsd+w7ind6Q7xKiZMzR32KsaOB0/vvOX3oDWeghl0Texnd7oGzz1rqKpIckvCZU1ydnF8iuhY5nYgVV70W9fMcq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBvuMefu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 343F7C19425;
	Mon, 17 Nov 2025 10:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763374622;
	bh=OiTnsE0jCJzlTrPL2A0+faRIuD7EfqERwAylSrqNn54=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=BBvuMefuhmX+O9qONtda07zybuZ7B9UFFulG35qdnto0w/LKHo8SmNIcf1hLbJODV
	 x/t2NkxDxsD5Mo+aNCqtwkYnIBHVxGDSOSuP77nreCGCXH273pfDE5CqpZRpI26Cu8
	 CXaRlWnexYKVhR8r/hQ5YO2bFZqp06cH2YJdP7BGV4rXsB3kQhPnVk50N2sjwBrjli
	 r7+v3cOLBYtCqm4sucd/cLOHYwJyElEhLQhX+cZ8hMsqHsmw+doyOJ9Qhf2BlskH8j
	 YWN5NKypA3sRSUSiu1TmSQBauGDu9ky0rmrIX8SHNoYoX9EG8oE6qQrkGJscYaxAFR
	 hR3kpIvPA+OgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E8A6CE8D6B;
	Mon, 17 Nov 2025 10:17:02 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Date: Mon, 17 Nov 2025 18:17:01 +0800
Subject: [PATCH 2/5] soc: amlogic: meson-gx-socinfo: add new SoCs id
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251117-soc-info-s6-s7-s7d-v1-2-6ab8aab03dce@amlogic.com>
References: <20251117-soc-info-s6-s7-s7d-v1-0-6ab8aab03dce@amlogic.com>
In-Reply-To: <20251117-soc-info-s6-s7-s7d-v1-0-6ab8aab03dce@amlogic.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763374620; l=1037;
 i=xianwei.zhao@amlogic.com; s=20231208; h=from:subject:message-id;
 bh=lSVasbRmcLc7s9EGABIBCTu4RsvuROyKNeWiDbPy8mo=;
 b=Mk9+2XSNOsph38a0bZ2mhSrgUnOpoZqHJ5LfqLxqXhDVZOXKC7GX9NmHO16haBkbOcVjZgNxQ
 1zj5zV0flCiD6IyyZlSawNEeh0zlIqSh5exaf6tBhEnCjAzFJPIcUog
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=o4fDH8ZXL6xQg5h17eNzRljf6pwZHWWjqcOSsj3dW24=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20231208 with
 auth_id=107
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com

From: Xianwei Zhao <xianwei.zhao@amlogic.com>

Add new definition for Amlogi SoCs, include S6, S7, S7D.

Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
---
 drivers/soc/amlogic/meson-gx-socinfo.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/amlogic/meson-gx-socinfo.c b/drivers/soc/amlogic/meson-gx-socinfo.c
index 7549f1644e5e..6fbb70c8922d 100644
--- a/drivers/soc/amlogic/meson-gx-socinfo.c
+++ b/drivers/soc/amlogic/meson-gx-socinfo.c
@@ -45,7 +45,9 @@ static const struct meson_gx_soc_id {
 	{ "S4", 0x37 },
 	{ "A5", 0x3c },
 	{ "C3", 0x3d },
-	{ "A4", 0x40 },
+	{ "S7", 0x46 },
+	{ "S7D", 0x47 },
+	{ "S6", 0x48 },
 };
 
 static const struct meson_gx_package_id {
@@ -86,6 +88,9 @@ static const struct meson_gx_package_id {
 	{ "A311D2", 0x36, 0x1, 0xf },
 	{ "A113X2", 0x3c, 0x1, 0xf },
 	{ "A113L2", 0x40, 0x1, 0xf },
+	{ "S805X3", 0x46, 0x3, 0xf },
+	{ "S905X5M", 0x47, 0x1, 0xf },
+	{ "S905X5", 0x48, 0x1, 0xf },
 };
 
 static inline unsigned int socinfo_to_major(u32 socinfo)

-- 
2.37.1



