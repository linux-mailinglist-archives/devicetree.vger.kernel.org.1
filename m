Return-Path: <devicetree+bounces-239998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6C6C6BDEE
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 23:33:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 0FBFF2A19E
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 22:33:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A31FA28DB56;
	Tue, 18 Nov 2025 22:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C2u0jJhn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261D52773F8
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 22:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763505198; cv=none; b=pjIFHg2z0dZAaD2WEke6+poLPlNkB/JzF1wF4rYXbWZ5fS2ANLpTIdPz7fd0B5IR2YMO2/T5NK1x2plXPSnv9wzB+9CC0qOCzdLc+wF7sOu9vda/hFrlDZGA8qBYjTL01vY3x5wsv4sB++t+hpuioDHgP/C+2cshfLznYcfPYRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763505198; c=relaxed/simple;
	bh=3hWsMdwG+5D8O+EdCnjjGWiot2Bf/SG0Zyqy446MybQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LzWozdvNQ3Yt7IpQg/+GqtFZr9DPx4SlQV0B12xNc7xE8w+jLVXCze/tx5MyTDo/snGYvJSylouSd1YwJjUvxWbnBs891lEIbbOWUAFFXPEUwtr6NZXOqvxqgi1DwOjoNEPDqKpQaY5Wrm/NVbz56hnv9mcQYAAuKl3mIxgPTJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C2u0jJhn; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-7c6e815310aso3469608a34.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:33:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763505196; x=1764109996; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nYjvYxfV5+RZeySdWRUiMPK8ycstukvx6z5qAN1mejI=;
        b=C2u0jJhnByC3bcCkDm089LZg8K5D2tfeMRk2iSrcxZLPnYkSzw4ROQkOME/mSTuGKy
         z0vXVIzgoaH9NxHZyQxyjqRcton6AwcGePDeOkzRnf7ASfafUxK0ixqe4ooMcIRiC87g
         1p2cE93NZWB6K742btUImEJIkn+ZlVB/62ybuQgPORTgSsA4CS/jN6WsJVDWY6h3clSx
         2m7Ec2waXDrrwg+aMcu8rB7R0Q5pHJC7FPMXwngs0ha0v0e7dZB/clzGZiFq9ORqSDwB
         P6hveDO8CBTJ7U2hdiTBqyeWzzeVDGPVWK/omHbqArRRpLrUO2/s1enBDHxHWw1WqLGZ
         cB5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763505196; x=1764109996;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nYjvYxfV5+RZeySdWRUiMPK8ycstukvx6z5qAN1mejI=;
        b=DGsf0dFyjH65dRVrc2w238vHdiEKd2aD4AxdHRE0WyVzCE1sgd60Wv+soZd1QLVfgl
         U4uZ2aTrgW/mAmJM9KZ8DNwHE1hrsspTNZgS0+CNajn/czbcSpfkmttbSDvQg1cOY+Sw
         tyOpRrCVNukEH8iXbUYTt+JfOlHMEtfIBxdmzW4mVuhgkcSc2KQ25ztDRKKkzP8rF5Ku
         i3JURxC26ALP5Kq/k0iWFY0/zUUKP3YapSP5inykFfpso+ieM/6PBBO2PEcMYeVgVkbf
         6cc/q18y/0SIjOS9ZNM9UJZrvcZ3xx5+U7UVFT+mnBy2FgUtmSxOOqAUfIpMdOQLXi2U
         YJXA==
X-Gm-Message-State: AOJu0YxC1IDw8MV8d298TEDYtUGsErbMrpWCZS0DKif/Ok5iKa06lkS5
	eK3/mdc6LkLevVioDeycIwFZLZ3SygmCUSmmxyf8oV48vJyemxbAzP0F
X-Gm-Gg: ASbGncvMDZF1Z3BHxhg6b1jSQZNld7KgJwq7sm4kTg4CBa1NIEcxZaVHHW2vta0g8lc
	h+6bqMZKE62VVe1/xBSUwOMK40GrajA0UfBh1dMlL3Cxk1tdsGPflplAl+P5zXPYIvAY/2zswDr
	NcBZUSeBuh6rKLnJ5ycvMPTwJeKZHO+O2TMCNnMxi1tdtnjNz5ZbXpsE4RA2ykkLY1vYF37XuiZ
	HDrD8O5EoGW47QxZxH3vQYSQcuVjGNIg+DRUPZYv2x4UwtGeqt6P+1ThU5TokiA2UXF8rkbAQCS
	KcOH6zUcWGDYA9dP34VedcDgdgyp8Ksd9YdK7QjCWAK8QbbhKriBQ4Y5zzbd8nSyGGw8OWWuy3H
	corIktmOpQvuxZ8NCMMpz0f79/qpUBCoJJ1yB7aiU0S0QqBLVyErCr42wLptFLJtPeVyTpg0r8T
	m9EJ5sp1n5
X-Google-Smtp-Source: AGHT+IGfOB+5AVQMdGMImDRmwBxYZjEKOF0RSGcutvp4vD0d3WB71GhxxZTBquvv4VAvc/4JPZW9/g==
X-Received: by 2002:a05:6830:3509:b0:7c7:da3:ed27 with SMTP id 46e09a7af769-7c7445524b6mr9960558a34.35.1763505196250;
        Tue, 18 Nov 2025 14:33:16 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a283b3asm7136960a34.4.2025.11.18.14.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 14:33:15 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 3/4] arm64: dts: rockchip: Correct pinctrl for pcie for Indiedroid Nova
Date: Tue, 18 Nov 2025 16:30:47 -0600
Message-ID: <20251118223048.4531-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251118223048.4531-1-macroalpha82@gmail.com>
References: <20251118223048.4531-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Correct the pin definitions of the PCIE controller on the Indiedroid
Nova according to the schematics. Since GPIO3 D1 is already defined
as a reset pin in the rk3588-base-pinctrl.dtsi file we do not need
a custom definition anymore.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../boot/dts/rockchip/rk3588s-indiedroid-nova.dts      | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 1562d02e85d6..7233e290d0cf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -483,8 +483,10 @@ &i2s5_8ch {
 };
 
 &pcie2x1l2 {
-	pinctrl-0 = <&rtl8111_perstb>;
+	pinctrl-0 = <&pcie20x1m0_perstn>, <&pcie20x1m0_clkreqn>,
+		    <&pcie20x1m0_waken>;
 	pinctrl-names = "default";
+	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc_3v3_s3>;
 	status = "okay";
 };
@@ -515,12 +517,6 @@ bt_wake_host: bt-wake-host {
 		};
 	};
 
-	ethernet-pins {
-		rtl8111_perstb: rtl8111-perstb {
-			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-	};
-
 	hym8563 {
 
 		hym8563_int: hym8563-int {
-- 
2.43.0


