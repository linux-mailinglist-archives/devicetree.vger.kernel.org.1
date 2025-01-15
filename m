Return-Path: <devicetree+bounces-138649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 52888A119B7
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 07:34:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 966BE18816D0
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 06:34:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DAE522F383;
	Wed, 15 Jan 2025 06:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Xxp1LmHw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173FC200BB5;
	Wed, 15 Jan 2025 06:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736922856; cv=none; b=QmLoheZidAKDsN/cbgIhmHF/x2dCaiT2uS1r+2pAlT3QI9euvmqXJrvCR/iRuJh10/Daluuf8kfviKHb503AP+I4cqvRPI6mrTiCT17uA54UnMcUe4XF/cmOK493XvKfQpS7rsjg0ukWWidyNIUaMQ4KjiKC2G7pjDiahlo1x6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736922856; c=relaxed/simple;
	bh=k64fL26WGcsL9X4Ld2d8vbKDa5stQtyJaO+K/4caqkA=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RHNqPJgQS9rfH1c//JDNsA1Yg0zO6Yas3vWjAumM/PYHbEmR2ElX+nN4JLgEZ1rxpjiv0BiNqigYxUEgCszythvpegNeF5Mklp614ScuZI64fveHW9hisA5vnjl/pDqRBsTOV16Ql01ETGYw964YfQOC596FZBWzONeduW61/j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Xxp1LmHw; arc=none smtp.client-ip=209.85.167.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3eba7784112so3405966b6e.2;
        Tue, 14 Jan 2025 22:34:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736922854; x=1737527654; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GsPuBRXPrRe+Bt0PCOpU8wnomNv8x15d/msImOZKwTk=;
        b=Xxp1LmHwPDqsfjFip+5VMRBmx4159SocKCoSOwBt+z3uTPHLAM4Unwgg4jI9Nf8ACN
         38FuztiVB9gzzON0yrlqNTnJ9NYpOMLqXBiZyl0O1euL6SAyPGiMG12+Yq/B49D1JuNw
         wKK/xLfI40aubGOJArje90uhQ5iGaggWNWni8T8Sr0V71BI8JJBPGLZvb0ehzleLF1+h
         7jm6YP7weEWZDAt8Rx/1MhtLPNATvDmJ5RIedX0J3T9BSF5KW892y7M6TE3GjYNYAHWG
         GN9e9lZaMgzBuUKKHU91e3L4+b0OAZr2nbmJYxTVV8s5ai1DjzPidEu2Hj15aUNwnmr2
         sTgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736922854; x=1737527654;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GsPuBRXPrRe+Bt0PCOpU8wnomNv8x15d/msImOZKwTk=;
        b=f1W0qxZPOFP8PrVT06Spub83ctVUG83cHleJJSxmwg1D+quaeOhcgg0ACpoD7hNoFH
         Xlsi+Zns2dKfwo34irm04NQFwb6oLBS5Wijua7OmAZbOOppxXZW4D/jccm05tpeDZkkj
         V8z54P1Qm3dgKeVp43ChnrDE7KBozdF3K0nWi9JSeDyjIOBJoHqJTeMni0EAyUVNu8cM
         uUTH87+ncyVrfgYMoLLZyNSaGQnCO+RJiXk+yFv/P5HSmyftOl0lAF+/a1fVvH1QJSS4
         vFRlBLnOIEDBWIdhwX5+JcdfFwVDt2fShepdrMpK+wtjpeyhJ1P5CcvepdE1S/od4NFd
         NKLA==
X-Forwarded-Encrypted: i=1; AJvYcCU8uugObUynt0OsJiICJqUlrj/YiRnmVRpJMGCX5YnWXtbi82Up5MqEIHHUfdbnyCQB+MMDOToXnPCjmtqL@vger.kernel.org, AJvYcCXby4Eya1gH0KPE6DTki5vNC4GnOPZBb1IJMijBlAx+PzKyA980lNmPjXLN5NphUv+KcOMxnYUBMzBR@vger.kernel.org
X-Gm-Message-State: AOJu0YwFltFp89A0UMRuhQ/Jv4MtXhvXOl3Ku2D6N+XXYMtGadBLahbl
	BuG4U2T0xD0pljycwh0T07oAEsBHpVIvV0zKowHrlUKelvFFqrikSRfpLw1x
X-Gm-Gg: ASbGncv0LzzHKAKseFxGq3MB6nJ7t4iMGkO8/EDU9f9R3qmsX3XXcjwA3e4xhcw4LPq
	h0w+D7noUhlquaxkVaG8Xghv75sfF0M3xTKwiG6JWZ7yqf2wGSRgnB3nuaH3AmB8zI7t043p3DX
	+3uo87cSXLCM+WjqaH2+QRcEe5VabvdbYlPTrUz2xppZg+GWHYEH+KXSeXaor7LIOZCNEOmMS/O
	x+Dcu8jYmNzLRDKPwD2oeEhNo9WJNZSOXJXg0K/IHoOzxaYusa4Ug0at51a3IJACJw=
X-Google-Smtp-Source: AGHT+IELGwamiB2gMcY8O0oJQ90/3MS8jb/wwVW95TfJxiL1SCHLWtPN8hXbGGAxJTWF58sEAHjsPQ==
X-Received: by 2002:a05:6808:1783:b0:3eb:5562:34ba with SMTP id 5614622812f47-3ef2ecba226mr17767634b6e.25.1736922853795;
        Tue, 14 Jan 2025 22:34:13 -0800 (PST)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f037656039sm4739635b6e.17.2025.01.14.22.34.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 22:34:12 -0800 (PST)
From: Chen Wang <unicornxw@gmail.com>
To: u.kleine-koenig@baylibre.com,
	aou@eecs.berkeley.edu,
	arnd@arndb.de,
	unicorn_wang@outlook.com,
	conor+dt@kernel.org,
	guoren@kernel.org,
	inochiama@outlook.com,
	krzk+dt@kernel.org,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	robh@kernel.org,
	tglx@linutronix.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com,
	fengchun.li@sophgo.com,
	samuel.holland@sifive.com,
	christophe.jaillet@wanadoo.fr
Subject: [PATCH v3 3/3] riscv: sophgo: dts: add msi controller for SG2042
Date: Wed, 15 Jan 2025 14:34:03 +0800
Message-Id: <cbe5711193e8d0d1966c5dce6c1f9d7c444a0d69.1736921549.git.unicorn_wang@outlook.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1736921549.git.unicorn_wang@outlook.com>
References: <cover.1736921549.git.unicorn_wang@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chen Wang <unicorn_wang@outlook.com>

Add msi-controller node to dts for SG2042.

Signed-off-by: Chen Wang <unicorn_wang@outlook.com>
---
 arch/riscv/boot/dts/sophgo/sg2042.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/riscv/boot/dts/sophgo/sg2042.dtsi b/arch/riscv/boot/dts/sophgo/sg2042.dtsi
index e62ac51ac55a..02fbb978973c 100644
--- a/arch/riscv/boot/dts/sophgo/sg2042.dtsi
+++ b/arch/riscv/boot/dts/sophgo/sg2042.dtsi
@@ -173,6 +173,16 @@ pllclk: clock-controller@70300100c0 {
 			#clock-cells = <1>;
 		};
 
+		msi: msi-controller@7030010300 {
+			compatible = "sophgo,sg2042-msi";
+			reg = <0x70 0x30010300 0x0 0x4>,
+			      <0x70 0x30010304 0x0 0x4>;
+			reg-names = "doorbell", "clr";
+			msi-controller;
+			msi-ranges = <&intc 64 IRQ_TYPE_LEVEL_HIGH 32>;
+			interrupt-parent = <&intc>;
+		};
+
 		rpgate: clock-controller@7030010368 {
 			compatible = "sophgo,sg2042-rpgate";
 			reg = <0x70 0x30010368 0x0 0x98>;
-- 
2.34.1


