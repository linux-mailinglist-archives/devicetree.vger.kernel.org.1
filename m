Return-Path: <devicetree+bounces-111809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E209A018C
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 08:41:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D10F1F2326F
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 06:41:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B8BC18FDBB;
	Wed, 16 Oct 2024 06:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QXr7YzYJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6F881917C4
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 06:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729060870; cv=none; b=mRDW6Iw8cK8RQAWW8FXyCKmh7+2dslJ+52hQgskAcXEEpOavM4PAJRoauuG9yIpS9x9C1YwKfI7R8kKSCl2FztlzmZMabA3gPm/3jE7cGCXVCm14zPMTLqFWCTEp2r0ICxs+Te/Mdaf2lRLIhZkH8kpsV5eYz5Ilq72yuMbSFH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729060870; c=relaxed/simple;
	bh=XwSSROr04qTLp4umxCF5Vmf6ekWykDAwmfRbacMwStU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Baq2+cUR6iiz6Vd6XNxpMt+inGYMNYw62qcuCmKL6Af3Ccu3lnDLR79L/YZZaIW0zsnenjWSaUuFuSfsfJAaFu8IcjX77UBFyF56jst2NlKSvCdsUr9qQyrrgqaT/LEFiV/ybuH7A37fryHXWmoAfEY5+wPPyw8CDsGtYYSpJZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QXr7YzYJ; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2fb57f97d75so23677171fa.2
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 23:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729060866; x=1729665666; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cjbHjLEu2DAWDOzM41sPKMqBv2WP+F41P/bIbauuyPY=;
        b=QXr7YzYJFeOvYtaVi32oaJVIKRZ5pxGP+83L0jkOBcxT4X2gjk0nDu4fw8LkLx5l+0
         JLhSYXHux79xHVSbDDq8KozVtcA5kJGgYIfQYFwA0BNKtRvJM0wGckWDaxtdDHn5UdpW
         1QO5OcjkWceGD4QgxIux95U/7tsyOLoZGbEQjcPMEAB1L7Tt7w/Rne7KZCYuB29PGTpt
         FCIMxDPCbZylE4m+dLIK9mASP+xw2MiVs3wGiWe6DMCUpZ9FgwNfbXBF6zSHlHvk5BsJ
         9Vq11UPv2Gs3z4+GSrxFweYQUE5IDVe5sYwSo0ZIn/VSmAymamqaFSWoQryzhLARXnN1
         Epow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729060866; x=1729665666;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cjbHjLEu2DAWDOzM41sPKMqBv2WP+F41P/bIbauuyPY=;
        b=TZegpqdNgzjjsIixKPwnU2aVwakB47I+0rm1dH+dmANrr/9pGzC/+57APMuNhQCNWY
         OEcpN2P8EjXxpJG/LdKntmdJZ1eLVcJWPPTkEV1BvE6qXqgSC2rJyt5lwb/aRqxsDd+e
         w2XgDVGFWcMUMDZrUXJbWBlGE08kl2HA8xFRJyI5foxb7A8n3dp/BFAk7qAexAh6X+9m
         qAnPWaDkXeVTUgAi+d3sTvin8tY6slR3CMy+4vnZsgpnKuhFEl4pLn6sATiPsXCZVVmr
         YQMr6uplkWTUtirZmA/DXnEXupJ3WmbSAyCprMF/bdd+K6E0eas+o2TXMZtgCnPMV+9P
         wUvw==
X-Gm-Message-State: AOJu0YxZa0hvppuaV/up0nKwYvVdfdPSR99aDFN8hfq6UlFH7Bl4aWcc
	5HVFQl8yP369tjVeU8mWSVSXitdP4qyUYeWT7vyz8oZoGSDHkDg+dP/WpJChIwolK9rPDIOrB8V
	8
X-Google-Smtp-Source: AGHT+IGfJUs0tKDmuBUu0nwNTRyt2CbICIPRTw+FQZVFwM/jnUnYUk64uVkV+5CzdHlw9OyUfqzRTA==
X-Received: by 2002:a05:6512:1285:b0:536:55a9:caf0 with SMTP id 2adb3069b0e04-53a03e9f884mr2181726e87.0.1729060865782;
        Tue, 15 Oct 2024 23:41:05 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539ffff3a50sm357455e87.144.2024.10.15.23.41.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 23:41:04 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2024 08:41:01 +0200
Subject: [PATCH v2 1/9] ARM: dts: bcm6846: Add iproc rng
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241016-genexis-xg6846b-base-v2-1-6a7cc2ee57eb@linaro.org>
References: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
In-Reply-To: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Benjamin Larsson <benjamin.larsson@genexis.eu>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

The bcm6846 has a standard iproc 200 RNG which is already
fully supported by bindings, so just add it to the DTS file.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm6846.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm6846.dtsi b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
index ee361cb00b7c..c2a8deef150a 100644
--- a/arch/arm/boot/dts/broadcom/bcm6846.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
@@ -108,6 +108,11 @@ uart0: serial@640 {
 			status = "disabled";
 		};
 
+		rng@b80 {
+			compatible = "brcm,iproc-rng200";
+			reg = <0xb80 0x28>;
+		};
+
 		hsspi: spi@1000 {
 			#address-cells = <1>;
 			#size-cells = <0>;

-- 
2.46.2


