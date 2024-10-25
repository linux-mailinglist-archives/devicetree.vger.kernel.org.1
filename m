Return-Path: <devicetree+bounces-115407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 835689AF66B
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 03:09:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 487832830C9
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 01:09:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FE65171A7;
	Fri, 25 Oct 2024 01:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lb2Mjgfc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0C6712E75
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 01:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729818572; cv=none; b=UgqBu2IbDXf961kX6g/mH4UF5J2pO2UXmXEo6NWyHIoSC8EGrnJSJRUHLoaVowRaabFsYjAKR9XovwGkmg/gcJ8xhI0+7yrxi4ArhehxKYcEsPSKnX+J/NB+mSI5+hNH98BQ32fe2kQSxb+m+giQCSswuAEXd1Xz6iVjzCj/HTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729818572; c=relaxed/simple;
	bh=+emsQFoCbsa5HyG/22HH3bVMiwgUB13Ah2l8gAn7jJA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nuuCKECw1TEOvUVA+6igO2kawIDZAJYCjDFURiwU7RL4hv1ixPc2vdB/jHdSoyO+J4h86T1PFDObRbEpBATlPTmeE3kjhcfVh582fB66jWsTqhuTuSkR1qr6dtaQ+VrjS4KKRX2NUUmsnls2z7idhordJSbRZFZFz3lmfIhtp+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lb2Mjgfc; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-7ea7e250c54so1088164a12.0
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 18:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729818570; x=1730423370; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jGdp4UlHi9Rl6xWRgeoMoP+ShACtzGL6t7tsX92UPPE=;
        b=lb2MjgfcVypsd8T/tOZKrYALU19rfq+MtWr79ImiFBbzVyN8OgKLBihNKE9ngNNfNy
         3ioLsUaUwB5oVGhHRY7Pcf9Xo40df515n5wAmtH2nqVNiAD5bkvVHvRN4domoCGoCRES
         XDTPuzyGVsTULlj/CXhJF7Z7otQA3p/jFHLwbnYifII8rUGYcARHwqZTYmMB3ziZkXsU
         OAWSFZx6zQKqVWpmZR4vtCaTHwzyMnpeLPhPyq3CAStEixRzrPejA3d4PJjnhuVzWKsH
         c4uQv6Ln8O6rQ6b6V5rEuVDjyK+RkRK/jHXs6Xn/dGrkbC6f5tAhOu1uz8l6QE6Cgi6K
         IuWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729818570; x=1730423370;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jGdp4UlHi9Rl6xWRgeoMoP+ShACtzGL6t7tsX92UPPE=;
        b=WPD6bdnnly3YV6KGrZOVm5B1wNvnKeyvNHRlpBf3w6imvCHcHZ5QdjfeODRIitvzt3
         hHVkGEUQNyBSAo+XwQkM3sTgM1byjd1qzNciPnDTMUTbA0UBe6M7HyUacYfJA+UeZTL3
         KHCqlnzEu4evA7YrfGiwUjNFy/yWZOO9erLemG4skGVH2yQUwY2rtzMFmey5ZUq+DN3q
         SY5MWcHzf+0bFx0/sY3ps5naTibYqYM5SpEwppK0vzPfZ4WMUnuRoLqhS4JWylqNPt42
         6lRAfsWHN/SXrw1wl9+9wt2H93IeZZMBTthuPcoO3/mHAFZDRht0xUDEEt6owMif0SdU
         eqKA==
X-Forwarded-Encrypted: i=1; AJvYcCVIXyRFIxiLaxvvJlARGDMrIPAysE6COk4Z26orD8+EuhhYU3OwSSQtvJ/v/b4qiTywp6wKAF8JhIHS@vger.kernel.org
X-Gm-Message-State: AOJu0YxkT4lMTiT69+dvLCEbyRisFBI/7Kol8u+Mkg/UoAP7MIVxUsyl
	kcMoRu/h6kzSU/ZjEwI3gW6DLD8cRZSG9kU3CbHrLzYm7BDe7ARc
X-Google-Smtp-Source: AGHT+IHYYcX6rcKuACmUMAqT2j7xUKhF7rX1Eq0psxApSO+AaLQHyyTER201tiR+T8CoSPfZiRyBIw==
X-Received: by 2002:a05:6a20:cf8c:b0:1d8:fcf2:9ce2 with SMTP id adf61e73a8af0-1d978bb3472mr9319125637.44.1729818570143;
        Thu, 24 Oct 2024 18:09:30 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b160:3edf:6e5d:8d4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057a0b93csm52875b3a.137.2024.10.24.18.09.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 18:09:29 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 3/3] ARM: dts: imx6sl: Pass tempmon #thermal-sensor-cells
Date: Thu, 24 Oct 2024 22:08:55 -0300
Message-Id: <20241025010855.1593365-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241025010855.1593365-1-festevam@gmail.com>
References: <20241025010855.1593365-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to fsl,imx-anatop.yaml, #thermal-sensor-cells is a required
property.

Add it to fix the following dt-schema warning: 

tempmon: '#thermal-sensor-cells' is a required property

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx6sl.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
index 6aa61235e39e..6c98670a44ff 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
@@ -631,6 +631,7 @@ tempmon: tempmon {
 					nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
 					nvmem-cell-names = "calib", "temp_grade";
 					clocks = <&clks IMX6SL_CLK_PLL3_USB_OTG>;
+					#thermal-sensor-cells = <0>;
 				};
 			};
 
-- 
2.34.1


