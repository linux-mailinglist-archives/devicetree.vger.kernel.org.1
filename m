Return-Path: <devicetree+bounces-230665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEF5C04E23
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 09:58:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2C82E4F838A
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 07:58:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FA382F90D6;
	Fri, 24 Oct 2025 07:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IjmaJSio"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF662F83BC
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 07:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761292646; cv=none; b=t1Fa2SimIQpChw+a1koP6SxI89PYSZKj2GNpHnL46MjwcjIn9mNkFnEelJBXnx02jVWCdl1E4M09bPIdZ7HIk1ao5zQIA8KJgz8HeRjOuDwzCU+XK27jp/tDQJb9bY8tMSgReuWU2P/+bftFN63BmJeXQDr7l3SpXtVkKQrlHGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761292646; c=relaxed/simple;
	bh=1S4UQ+7nhEA8zNaooCtgSqA9haFJvF9HfZbaXeqS2EM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uIGf27hQt9WHBSfMH98tzpt35JfIt+MTw9gHbjm6CV2CmlkjVt9GZ8nvnP+y06ssXm4TWHA76vzs9QZiGCLVREdNbFdvUBF+3q7V7AYxf0ZNZ+TIHKa8LY/9xzPbBsWNTxurobPvB1azCpozGstqQM7Iu+2FG1iD2jT+/DKeZ10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IjmaJSio; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-b6ce6d1d3dcso1206901a12.3
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 00:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761292644; x=1761897444; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bsCgGE+t2FAq88PcqDeZB7E9huH7ZBCKhVdOKCnfFwg=;
        b=IjmaJSioIn++WVvjuZqEGIOa8+5Te6i9jBTQXZlrlhB+d3pQfBl0tp5RSuuljbU/04
         GXpRj5k+sDatnfiS2r18jGkSLvTBTLqDFfeLHmx2dLMzxJ96vO43g75GaDAjxzSzFT2I
         opoVsEyZ+0WnkQxTQc4ivDeSX+7mSalro16ShXp/xAxiRN7lTuzOl9fitqVY/8QNMXxG
         upJrNUL6O75POGqRRAyu1tUKF9fdAO2uphCysolERxIIOts+DzyxrtaiQyrqCOaLqEnp
         lYsmMdLMh7QAOW047695wd74e6o9yiyrsBHlweqpS7eL+NFkI9jBF1XiD5nJpZgMGPk7
         GkCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761292644; x=1761897444;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bsCgGE+t2FAq88PcqDeZB7E9huH7ZBCKhVdOKCnfFwg=;
        b=Z7Ol3zxn5SP/asOvqFdWh1InUUtgBqIapPv7y/yfXVwnUQpXMwi+NwhaF+wdhMQGgf
         OHRNn2ddQPq7SIrUfyMDG1fIHaPG2Mj5+Tb/1itc86xaOI8h3Ia9jXLKTJU64b9gxK+G
         ioKRG1kUtBxH9M3jgk2aU36IciRSURCVqbyTnKRILON5QayDC+is48LcuDuXpC1T7WCB
         fKWi/a7ZWBimJhOAOSy42mlQTGqyB/NqVplaG3DP7nbs1BOezt23JJLc34cjkAyTtzB6
         0U5dJ6EvPuSxPZAzIz7EpR/5/6GcqCNzS7uNYreNND7u3xRKpuJ5yDVYezSqZ5CKKUxr
         uU+g==
X-Forwarded-Encrypted: i=1; AJvYcCX4CWBQY9hV2sO0NDr0CHxfnL82Bkgqk6iC9moLsVeBXjc/h1Hqe1McCaV3kqLfsiF0V8iXmJU50BaZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz18iZbfp8mTElEOUx6CrosDqIo4kI2x2ZqaJt6sBewaq52TrUs
	8pydButx02B4gJLBK//2Ei7bjI55g7Ds9RZDk0Rst+9YygpzEfgYSNYO
X-Gm-Gg: ASbGncuiw0fYOeFPBJSv8Q4UetYtUxjKuLhBMqs1ySlgxvUSbzKNgcecfhijk8h5z1p
	EzxyG0tGcUsnmFuBmRqqmMIT3xgx8iOPlZAPx5GCTBu1hD1wuLZc78k8fkub3GDaTwcXQimxEei
	YhchXHd5a2o+rE5AEt+LE+sfUDwFNqF5kxXu/7WDwIlCmXbz+0NBGy9H2RmmFwZdtaJ9K+OhCZg
	RzVgP+AmMwSgMuAdkXUoj+DcTTUppEObc7x+mrAFnzAZlzMu14K8/IAxStJWV9oxCx7J7xvoRBg
	nIfSKl6yFK0gFB4pjKoSKKladYFHXyNfsTUalzVJzQ6KDBSmq8SA7MBuj1v9xEEJwASIdu68glY
	mgesOM02efIw2Y5oaxba7ds7HYmwIitCVZYZXhn/KBOXiK/4fFh2brI24I3/dHxj95cOInhpuiW
	OUYtyps1q2Bo6sYFnA0RXf
X-Google-Smtp-Source: AGHT+IGTHOLGIwrjQXatww+KV9yMhd2IOEe91lui9OUaDG0ykvPq+cnpLgcMgz87qAdZPtufjmcT2A==
X-Received: by 2002:a17:903:2446:b0:290:6b30:fb3 with SMTP id d9443c01a7336-2948b97658bmr17002255ad.16.1761292644352;
        Fri, 24 Oct 2025 00:57:24 -0700 (PDT)
Received: from Black-Pearl.localdomain ([27.7.191.116])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2946dfd045esm46608205ad.64.2025.10.24.00.57.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 00:57:24 -0700 (PDT)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Fri, 24 Oct 2025 07:57:08 +0000
Subject: [PATCH v5 1/3] arm: dts: ti: omap: am335x-pepper: Fix vmmc-supply
 property typo
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251024-ti-sdhci-omap-v5-1-df5f6f033a38@gmail.com>
References: <20251024-ti-sdhci-omap-v5-0-df5f6f033a38@gmail.com>
In-Reply-To: <20251024-ti-sdhci-omap-v5-0-df5f6f033a38@gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Barker <paul.barker@sancloud.com>, 
 Marc Murphy <marc.murphy@sancloud.com>, Tony Lindgren <tony@atomide.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3

Rectify a typo for the property "vmmc-supply" to resolve the errors
detected by dtb_check.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 arch/arm/boot/dts/ti/omap/am335x-pepper.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/ti/omap/am335x-pepper.dts b/arch/arm/boot/dts/ti/omap/am335x-pepper.dts
index e7d561a527fd..10d54e0ad15a 100644
--- a/arch/arm/boot/dts/ti/omap/am335x-pepper.dts
+++ b/arch/arm/boot/dts/ti/omap/am335x-pepper.dts
@@ -347,7 +347,7 @@ &mmc3 {
 	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&wireless_pins>;
-	vmmmc-supply = <&v3v3c_reg>;
+	vmmc-supply = <&v3v3c_reg>;
 	bus-width = <4>;
 	non-removable;
 	dmas = <&edma_xbar 12 0 1

-- 
2.51.1


