Return-Path: <devicetree+bounces-139959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB99A17A17
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 10:23:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C33F16AAC6
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 09:23:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0AD91C1F04;
	Tue, 21 Jan 2025 09:23:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b="GmH5zrdy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D54C1BE251
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 09:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737451399; cv=none; b=MMa9z1HvQZ7jARaNduO2kjFRAC6PksvYlYLsiV/HByw0CGJoob1MsaIQ5/I56X3341qzjoeMRf0tTosxNvSHORyh1xVv/b3Pf3TV6ihTayoxtIWY4jlghKkmJen4z5hWgcemxgo0+wftq9WNyDUBLXf7LeZYe8xrpuAUI0zYKTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737451399; c=relaxed/simple;
	bh=czs3XoLXNRxjtgXkp6SmGst02uEf/rwpfNTD7yFD8Cc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=u2alaHDJ1j9dDPA3jjcCV4MDN2d9jR4NMJssSfubktN7rx+GX1cZacJSeuWLHbxOsCeYVciL2wVniB/RasSKDpIBPecnASDwsnBrJ3vgC0ScQeESoVWsdrSLCOv0bQlfQEOwsh5dbBpipW1KxDYDB3GFzW9TzWpdGTN02kCHk28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com; spf=pass smtp.mailfrom=thaumatec.com; dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b=GmH5zrdy; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thaumatec.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5d7e3f1fc01so11037366a12.2
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 01:23:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1737451394; x=1738056194; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xgpZk5oqihgVyzrI0fxydSyp3ZXeLQXDu/o+jWDaK0c=;
        b=GmH5zrdyoRVdrBECsqLgb8ibR9wLLsyKWmfTeD8R+WiYwk6uHUQ02VQ5pcdxJEf41L
         t8Pjj3eyyGhelZi10NV2lMMlWOVuYXWG1BM3/6ZFiRB3bkR3ftU4ZTn7GgxGnYO8sE+S
         6UqAIVwkVV4k8/aXWWUvag18Vop/gpW5J9w9XxSa17BdCSt2ZCnW0h/Rv2dUpeBazJKt
         VSJNbIyjmC0n0Iv5RgvvU8wzHRXUzkDC2JtabKJw0VKh3e2Nvet/hlw+cLQfRxOES69T
         h99iE+hA11zMyh0IGEaoDgblhlO3NN3MsTZD0BZD8Ph8Nl0pEaO98l6c0yvK6Pqr2MzA
         ZSkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737451394; x=1738056194;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xgpZk5oqihgVyzrI0fxydSyp3ZXeLQXDu/o+jWDaK0c=;
        b=B7hdeBX9GsvW2GV5FRZJjj8Fsk3TC/5N2mzBeKzJwPG68G/+uebKwXoJVdssnaOBSS
         vbjPceZhAUZhZ1IJ8GhFj0WM5qiuAa+BjGPgceDhZIfwb48QIqgBwN+Y0yYNGT6l6/lM
         1SKURlBYJsqZX4uG4FmrqKzMMldvAFRExqbZeEFNc7tcGcxPxse5qqWBdAAt4skhWl0I
         34XX2CVjvL33yUQE1UsxeHJ5KzHaeZExOtMoK5IDgphKxAOUYHalqqXRwMVulQqBV5bm
         LuO8UnRHwMAYLnznb5g63MUqA11JuVxC4Djmf3LDB3oLSraCybUS2LoBB4FURQw7NfF9
         4cRw==
X-Forwarded-Encrypted: i=1; AJvYcCUBwk+qXchnH4eHWgOFskPXQY9DF+lHJf2fkt3bn+ry3tQgiryhQdM0TwqQOM09AUS/fnuFYxxM7fUR@vger.kernel.org
X-Gm-Message-State: AOJu0YzAkTpuDA0ke0NXsuUPJeaeCwMFttm8Aomn2Zc1P3dYyqZre7ty
	3bBuJcnBuLFiWbjiGfrWhDWztOLkMCgW44P76lX8oqFklmK/xapk3k8MhpzVa2w=
X-Gm-Gg: ASbGncv9hXJsZ2JubuLHyC7e5mmfDb+pBo0tWkspK/hsygoa4O5qnQXVUC6x1vmarD2
	0Lu9P8KcRzCXhmIRDD+LdqF5fnA78vQwCLtnJ5JT7trx8lYgf4SOBD1X/4oZyWf4yGoOWTm1GIF
	Z7dIhg9gAnqzJnxj7KDI8aRyDAaA7n3OF6pLlRLheLYq38yVcx9ozY/VF7FxbRSLsPe+TAWd3rJ
	5TRtqZs3JyK0yjTvjPwk9Jfzk+42B3TSFaQeajO82kxsbtK+EeWhEH8vL04znvL5tO8n3kStN+P
	2YMImMZ1+69ZvgVF5R2w2d9uRQ==
X-Google-Smtp-Source: AGHT+IEGFMDZvCDIvt9A0W1+h4kL2cAI+LSHFPGwDogRfwqCXhx8sDnaMyyEk4Z9cSK2lRIuj2FPsg==
X-Received: by 2002:a05:6402:42ce:b0:5d0:8359:7a49 with SMTP id 4fb4d7f45d1cf-5db7d100348mr15914293a12.0.1737451394344;
        Tue, 21 Jan 2025 01:23:14 -0800 (PST)
Received: from lczechowski-Latitude-5440.. ([78.9.4.190])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5db8942cad4sm5681726a12.60.2025.01.21.01.23.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 01:23:14 -0800 (PST)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
To: linux-arm-kernel@lists.infradead.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: quentin.schulz@cherry.de,
	Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: Move uart5 pin configuration to SoM dtsi
Date: Tue, 21 Jan 2025 10:22:54 +0100
Message-ID: <20250121092255.3108495-2-lukasz.czechowski@thaumatec.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250121092255.3108495-1-lukasz.czechowski@thaumatec.com>
References: <20250121092255.3108495-1-lukasz.czechowski@thaumatec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In the PX30-uQ7 (Ringneck) SoM, the hardware CTS and RTS pins for
uart5 cannot be used for the UART CTS/RTS, because they are already
allocated for different purposes. CTS pin is routed to SUS_S3#
signal, while RTS pin is used internally and is not available on
Q7 connector. Move definition of the pinctrl-0 property from
px30-ringneck-haikou.dts to px30-ringneck.dtsi.

Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
---
 arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts | 1 -
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi       | 4 ++++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
index e4517f47d519c..eb9470a00e549 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
@@ -226,7 +226,6 @@ &uart0 {
 };
 
 &uart5 {
-	pinctrl-0 = <&uart5_xfer>;
 	rts-gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
index ae050cc6cd050..2c87005c89bd3 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
@@ -396,6 +396,10 @@ &u2phy_host {
 	status = "okay";
 };
 
+&uart5 {
+	pinctrl-0 = <&uart5_xfer>;
+};
+
 /* Mule UCAN */
 &usb_host0_ehci {
 	status = "okay";
-- 
2.43.0


