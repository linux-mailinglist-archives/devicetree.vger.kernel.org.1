Return-Path: <devicetree+bounces-113277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CB29A50BD
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 22:39:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6CF151C21393
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 20:39:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D8801917E7;
	Sat, 19 Oct 2024 20:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mcwUnSWd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6968418EFD8
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 20:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729370376; cv=none; b=dsr4wQO8dZrVwjATeGz+VkaPqs0tVx1dWRyHJWoXMISXzkLeXmMmfBuRYZKo6bmiXre/HQstv+qKtO0jajCJQyZxoAygR/9y/ChPlec9eZHEddhcnJSncqCmhj6MAXpuaF29jICWfzUi3PhY3qxPDUqk6IlNgbcPU17A/MCJ66o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729370376; c=relaxed/simple;
	bh=XwSSROr04qTLp4umxCF5Vmf6ekWykDAwmfRbacMwStU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=np6J4L9Zn0B69cNr+XF0NcFma+tXqbUXWSpRukx9jSwLl8LderQZx+rZht1ESsI03VyCCdodyWzS5L4xMdwxgQ1Z//puniqncXo1gbWzhTigzwML+Jt+97nK6uez7h/RJk11wbetsH6XJPL9xpUdLDhLyLFqtU7kEDEaOCAJjfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mcwUnSWd; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53a007743e7so3900090e87.1
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 13:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729370372; x=1729975172; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cjbHjLEu2DAWDOzM41sPKMqBv2WP+F41P/bIbauuyPY=;
        b=mcwUnSWd3JMPHahMdk18BC6tXRqtIaJoe4l65cmj6NGB0V778XpLUwvHtIzK44scFQ
         nIUWL87Lh9SV48pxieQaKp9p+Psks9cPZbPrWOco2xQCPXDMTOrxkrwruT7S7ZL7jXyP
         TCZiIjzBgL6YN6M2vC2NEfo2WqFp5jOXF+7xodOczkAGIo2U0++jzdg+Hm07QUsLfqNC
         MMRclAVFztYjfZ4gA3tWdTHbroyam4Wk9g0upHleC6xu6cvjCQymlBp1nfPRfbneEUGb
         viG638w2bPaqFX0MeqCFJ7zavm2ANWSxkKtJpz59VZD5HNKupltqXY+WV3mbNM7pjF0E
         nl8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729370372; x=1729975172;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cjbHjLEu2DAWDOzM41sPKMqBv2WP+F41P/bIbauuyPY=;
        b=OOpdNllwLNSreYgPZ581HW4aWKZL1DvegQPiAS4zXHQj0Wmn19U2ysa92sXLDlPVVU
         VUNeN+5cDQ91V1dgFa/RiJ1UaAogK1IjF/iCZRfLL43VU96seymY5cgCZiB1DRWaGIvg
         B7bV6DQWvOQYjsW6CSBRqz5v/qg3L78bbU4BtV0U7W/a/VNG8UZM/vjk6sMn0+DN6lPt
         +XJa+qqiLcLTn9I4E+6WiZGjkqvimnMc+rtpf/xcOFmNs37L69rxF0p0JziMLKmnWSWF
         nGyD66z1G/kT1YQHoYNbNjCDDCB0RM81S7kjnZdJoypuYLe2R7Je7RNhVH8XH4tAZR6a
         Zd4A==
X-Gm-Message-State: AOJu0YwG0yuPYEcpEPCnF/VkU6xDZLsxQkylr4jET5jMG+uwBMDaK0DQ
	mCEty1K+gv6MCPm8bGJpzAssNzJa7LsOG79eHK8dNcIR25/L1bksyH4Rj1d5+gE=
X-Google-Smtp-Source: AGHT+IE9drGvNyTx9W6GH9yKHKpjXt1WB4Jo9CU9wT6hNhofAb6j/UwdgAKFRoNrubtRrsfe9b5e7g==
X-Received: by 2002:a05:6512:4009:b0:536:9f72:c427 with SMTP id 2adb3069b0e04-53a154a93a0mr3439417e87.28.1729370372405;
        Sat, 19 Oct 2024 13:39:32 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a224202d5sm37564e87.136.2024.10.19.13.39.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 13:39:32 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 19 Oct 2024 22:39:30 +0200
Subject: [PATCH v3 1/9] ARM: dts: bcm6846: Add iproc rng
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241019-genexis-xg6846b-base-v3-1-8375a0e1f89f@linaro.org>
References: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org>
In-Reply-To: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org>
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


