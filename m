Return-Path: <devicetree+bounces-217862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 940CFB59778
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:23:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 715587A3134
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 13:22:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 999D63191B9;
	Tue, 16 Sep 2025 13:23:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VrZzFxZ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245E53081AE
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 13:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758028988; cv=none; b=rOLvgAmuKuDEfORKZzgC9jNclUiZZHUPpfkzsbcusaJyKCVtkqWhvgiQen6uIMLxWwK+p5zNs848dUbD5pZ7SlkWuc2ZGX7DGPLkHLWNrZA5pfxFg/LCV+Hhr71XKVc7PMl/2db1sBN8LGJ1Fe8E2dy5IpqbVcKEMVjan/RKW7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758028988; c=relaxed/simple;
	bh=LW8gKY2G7VDUyUL5o7Bf03DIXlO30RMJvYfW4F5X8pE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CWufrwk/XtRCNAGVpCB0e5C2om26f2bFdBpIpKQzyxz634H4+f6rSv1Bc5Hc7+DD5uA8Z3ocEyToM83X9+Js2q/2DhWbxK/fLNyQsLg1FzsI4vpFzb8DetBtPvT40nGlfB62i8zrQyqVr0zuh+W+HxjCzDEolpNORR+pQs0U6ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VrZzFxZ1; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7726c7ff7e5so4310995b3a.3
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 06:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758028986; x=1758633786; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kyl0BpQ16/PyZbIlinkdVOcrBnbxP1cm62TtUJjokW4=;
        b=VrZzFxZ1M5ZOOQ7MA+IxTHBg37yz0sAPOBQLvw6KDynYEmx7mwusQnxPCWKN/Ff1ZB
         +d7nZK0aaANJdfJptQ3GAjCv/AaR8UaJFCXxkjiDgkidn/NGab2sBp1P+QCLzKaHra92
         CktwmUd0+KhhRmQCxSrs2OsJtBE4Jy6XEUqAc5TrXf+4K8GjUC+6wxoEakKCF8a6X8/5
         tZl0irHxgAvQuJaq88tKteKCyZ8GNqlss1pXD75Jf/VqOZV0ZQvXDAkvzn9DbkXVx6sP
         iyZr8b93sL6aDWr10C00bsXNgBnsJY9xsYh7bJe/UtIcptgxX94AoF5BwP7wnqsRwwzm
         jT+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758028986; x=1758633786;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kyl0BpQ16/PyZbIlinkdVOcrBnbxP1cm62TtUJjokW4=;
        b=YBMHaoH1DA2y04w5bzAuAmKGA5o4rmYS6hj1nGmjSDG6x6Qichtiu5xssQSUfZDYZD
         hb9wynDwMwXXD+BI93NT/4Z6VVEtkTM+HQ9nMfllv4oF9OseYuinChdRHWtpNi9niTfx
         MdEra91J/IbuNBYKdFut2/gkj8Ygukyug6VorJQAZ6Zy3edhP4sLTVA4UJbKYA12RAy9
         oVlk5pvDGXVy/dWmusM+3woWoi06XdULjUe46wTgw0jTGZ5cjP2Z7vULJi3LMqu/4QP4
         chgvCk2VmBfYa61OY56MPhjkzSf2Fl16uQmdzKfMkdvwCP4Ju6eqRwcpFm+LtkQwgotq
         q/LA==
X-Gm-Message-State: AOJu0YxDdc3NKIELQS88z20I0b86sXDzeBmfDUyMPchhV6wu6L10+94O
	3A9qP3i/vmKFw30YESqpdjqccpUIKxk2yJp636qGIuO0y2mcigB73MKZvLfPL4Jl/nM=
X-Gm-Gg: ASbGncu0YinOGC4w3Yq0qe83MVUQgPeiK9qooGYduyIHfC0IXEVLX76PkjhhLiUMdzU
	J0UDDHFvc5/QFLr7iwgjdnM0ub4hHABPftdzEXCXg6LXckyyCbRji5LLPoWtxhPCCumAUheMOBA
	WfxzRTmHDCrxpO8194D9B+9DrGA6Qr5TXI4rVOwEAgz2xiLXz3pfKtrAYiNUzB62LE5dX319JHO
	u63r88xurG7c+rq+gQEw3F8GZmgv9ZaY7rJ8Z5Dlp4p1JfTexFWZRCnfEA3Qzq/fjmG/1zmMspI
	DTlmNbzIJhfASyBEs0lHPWKNfNdQg4GtvLnh8s1/+oPBsLQcjZHpi82tPTWkz9D2A4VRSKakkgl
	DMhcPFW5EKc7ddM3MhYSjG8u8pw1JQw==
X-Google-Smtp-Source: AGHT+IGSbUcFgUuRvZhaEbQGDXU6wqj1uhsdBmleOb5RXYY5OoqndPwdDpqY08h9eGK8Pj5YxrReZA==
X-Received: by 2002:a05:6a20:1594:b0:243:78a:8291 with SMTP id adf61e73a8af0-2602cf10c79mr22060394637.56.1758028985340;
        Tue, 16 Sep 2025 06:23:05 -0700 (PDT)
Received: from [127.0.0.1] ([101.76.241.248])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7761562f25dsm13277310b3a.74.2025.09.16.06.23.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 06:23:04 -0700 (PDT)
From: Zixian Zeng <sycamoremoon376@gmail.com>
Date: Tue, 16 Sep 2025 21:22:51 +0800
Subject: [PATCH v2 2/4] riscv: dts: sophgo: Enable SPI NOR node for
 PioneerBox
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-sfg-spidts-v2-2-b5d9024fe1c8@gmail.com>
References: <20250916-sfg-spidts-v2-0-b5d9024fe1c8@gmail.com>
In-Reply-To: <20250916-sfg-spidts-v2-0-b5d9024fe1c8@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
 Inochi Amaoto <inochiama@gmail.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: devicetree@vger.kernel.org, sophgo@lists.linux.dev, 
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Han Gao <rabenda.cn@gmail.com>, Longbin Li <looong.bin@gmail.com>, 
 Zixian Zeng <sycamoremoon376@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758028972; l=1355;
 i=sycamoremoon376@gmail.com; s=20250113; h=from:subject:message-id;
 bh=LW8gKY2G7VDUyUL5o7Bf03DIXlO30RMJvYfW4F5X8pE=;
 b=LmgXboPjMuiz3VPvrfkLEdDdVW0rUIoVOP3joiPKFCvu9SUeNA/yoJgD6nm7b0aJ96eV9Rtb0
 +QkVfFRRv0kCq67IYvjTluKfTWicee+PH4Ibp9rjh8E8H/WzMTholA4
X-Developer-Key: i=sycamoremoon376@gmail.com; a=ed25519;
 pk=OYfH6Z2Nx3aU1r0UZdvhskmddV6KC6V1nyFjsQQt4J8=

Enable SPI NOR node for PioneerBox device tree

According to PioneerBox schematic, SPI-NOR Flash cannot support QSPI
due to hardware design. Thus spi-(tx|rx)-bus-width must be set to 1.

Reviewed-by: Chen Wang <unicorn_wang@outlook.com>
Tested-by: Chen Wang <unicorn_wang@outlook.com>
Signed-off-by: Zixian Zeng <sycamoremoon376@gmail.com>
---
 .../riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts b/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
index ef3a602172b1e5bf3dcf54a8cacdad5172b7f50e..93fb493995522a88d61de67fa570631c01807718 100644
--- a/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
+++ b/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
@@ -138,6 +138,30 @@ &sd {
 	status = "okay";
 };
 
+&spifmc0 {
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <50000000>;
+		spi-tx-bus-width = <1>;
+		spi-rx-bus-width = <1>;
+	};
+};
+
+&spifmc1 {
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <50000000>;
+		spi-tx-bus-width = <1>;
+		spi-rx-bus-width = <1>;
+	};
+};
+
 &uart0 {
 	pinctrl-0 = <&uart0_cfg>;
 	pinctrl-names = "default";

-- 
2.51.0


