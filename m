Return-Path: <devicetree+bounces-254234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F40E6D1657F
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 03:42:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A773730150E4
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 02:42:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBB1F2F0C7D;
	Tue, 13 Jan 2026 02:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J0z6Fwqc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f51.google.com (mail-dl1-f51.google.com [74.125.82.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A332DC32E
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768272137; cv=none; b=bFat32vWZnnZwf0XAKgZtHcoDZ2WkIUcmSsQRWpA1T2oO/QvJaSEgUY7XjWPKnwCxA6LDmxtx9jY7VDTc4IRLJNnQL7EW0XgolHseuvdgxUxsz707v8xDEjN5a2i6IfigULGgYmquZbvkLOtAWV13IT1k12FZJwGO+s3OC2X5YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768272137; c=relaxed/simple;
	bh=hiOFNQ17ERVKbfebChqsUlX1uHqia7AnqNZGUpzdbjo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dn5cUL3tTo5C+PYYPWc5AQq4eg95Uvqt+kPzgU98j8z7ew7blkpugZzVc9TkL3G2ZGVKdLLbjcaPY7l9VC6qaX76J127nkCBGipaCHFiT5kDtxM4AlEJSQOywUuRI15haL76a7XPsigYboYLbT17Ao3zuIb2Ngu8tV1gqPep3H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J0z6Fwqc; arc=none smtp.client-ip=74.125.82.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f51.google.com with SMTP id a92af1059eb24-121bf277922so8260747c88.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 18:42:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768272134; x=1768876934; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ta0lLAJ+DUwOWY7C9ZVK7vK19fEvpHZQw6/OXGKH8sQ=;
        b=J0z6FwqcSJfjkZYyEN6naw8VJkhCeskqL2L6wYQs7Mh67bZME8DllMrMpEjORqV0nv
         L30Z6UbxkhvP8OkWAG/ojIPd/aPQamjp6z5zZzDxqvqHg8xnPi19lGumTRUCYxw33nNg
         qJ9zNI5pF9creGY2/uztfSPVJKE13JIRbtinh2dcIYVmpBk9IthJ3kfr9vYFdSMqJ4CS
         wjZEvd5flKkl29dofBl9pffSKgGt8eIRMKC5nTnW96Ke2fbnwYB807UHv2xEjguVCuRr
         Gb7hjN3WJIxUxprjK1+XL20F2V2Xy45APbMx6B/gUv9sAuCDqvNulx2K6M6ARWDDMeWJ
         rPJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768272134; x=1768876934;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ta0lLAJ+DUwOWY7C9ZVK7vK19fEvpHZQw6/OXGKH8sQ=;
        b=XXaIn4N6flW/YWpByC7tKPCHHYK9dnPpBkVgqRL0b8fFodMem+N/vxNkjBI9h3PFa4
         LOP6c+px2/iafI1CkIIO3PcvZGPajRHAfhI9ssnf2jeOhSUbuxn9HIRGlDvHsA+B9Fpw
         iWO9Oz5mq5hj1A0GdKLoe42hpzaiEvrNSaULzND2mhBBp4lSFl6RdTB50ZA0hIagRmt7
         Uv0hTPbuMnIZCQOxAieaJv4zGpxsgWtFr/nFk7DDJowT1YDfBz97CfrgLNiCLcHibCgC
         E5gOYL+22soPkREE+e0wWV0t3FHVmDRpng6PM6O+QLCeOduifmxj2TZSey1lScQYXTMY
         2MbA==
X-Gm-Message-State: AOJu0Yxx81tb3HVlx0m7GnHIoHj7FyzhwPszFVKfS0mvLUO5r8NOMvgM
	4mZw0tX457A/hKjS1l3J2tw39Vz+aL5NscUSP7qkkbViz5Fhp/gHhnXv
X-Gm-Gg: AY/fxX4XaPZABv8hAchQAkU272ZnpTgsxVvyujF/Ag/01f+ZMmFLi5hNwcValEuU+NJ
	vQGYeqGlwM2EhlHs0AMomkEw0KvbnuS9GYMJj2+14VA/Oq9nAHX6fJBdmsI62mwUX6d83CaPM6c
	P6mbcGQ5waBCXX6HtvLxSZi7chKGs4He/oqo0K/+6L7YUNZd7hMal3daT53QFRPQLjVf275+RgV
	XNCs2T4t7da4klU+x+D4fGzxLzqeqXl8KtJNTUM3uLahE08nk5R3qsg5BhPd+SN8sPcR7nI88pw
	W9pHR0ajM76cKfHG6W74He8QcinFfIY4NNNFmo1fHNDJRkHltaKHgraw5ZrrcmJRwBnI6lnTw8p
	M54n6Z/DlY33Nrf7f2vd9G38RDkRcU678gRbMGykaf8f8uwi22fGCiseptaaqLKVwQRRKlZumTS
	qIYZJMykLyqQ==
X-Google-Smtp-Source: AGHT+IH4Km9ntJv/V5juZZRPb4CWcmWHAyBALsS6npHeTLuLmd+WrofVWrZd4uuaYzWfcyskRChBgQ==
X-Received: by 2002:a05:7022:43a0:b0:119:e569:f609 with SMTP id a92af1059eb24-121f8afbcfemr17090235c88.2.1768272134480;
        Mon, 12 Jan 2026 18:42:14 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121f243ed62sm26993899c88.5.2026.01.12.18.42.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 18:42:14 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Han Gao <rabenda.cn@gmail.com>,
	Nutty Liu <liujingqi@lanxincomputing.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Zixian Zeng <sycamoremoon376@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH 2/2] riscv: dts: sophgo: fix the node order of SG2042 peripheral
Date: Tue, 13 Jan 2026 10:38:27 +0800
Message-ID: <20260113023828.790136-2-inochiama@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260113023828.790136-1-inochiama@gmail.com>
References: <20260113023828.790136-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In sg2042.dtsi, some peripheral device node does not follow the
address order. Reorder them in ascending order by address.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 arch/riscv/boot/dts/sophgo/sg2042.dtsi | 176 ++++++++++++-------------
 1 file changed, 88 insertions(+), 88 deletions(-)

diff --git a/arch/riscv/boot/dts/sophgo/sg2042.dtsi b/arch/riscv/boot/dts/sophgo/sg2042.dtsi
index e6891f95d479..9fddf3f0b3b9 100644
--- a/arch/riscv/boot/dts/sophgo/sg2042.dtsi
+++ b/arch/riscv/boot/dts/sophgo/sg2042.dtsi
@@ -264,94 +264,6 @@ clkgen: clock-controller@7030012000 {
 			#clock-cells = <1>;
 		};
 
-		pcie_rc0: pcie@7060000000 {
-			compatible = "sophgo,sg2042-pcie-host";
-			device_type = "pci";
-			reg = <0x70 0x60000000  0x0 0x00800000>,
-			      <0x40 0x00000000  0x0 0x00001000>;
-			reg-names = "reg", "cfg";
-			linux,pci-domain = <0>;
-			#address-cells = <3>;
-			#size-cells = <2>;
-			ranges = <0x01000000 0x0  0x00000000  0x40 0xc0000000  0x0 0x00400000>,
-				 <0x42000000 0x0  0xd0000000  0x40 0xd0000000  0x0 0x10000000>,
-				 <0x02000000 0x0  0xe0000000  0x40 0xe0000000  0x0 0x20000000>,
-				 <0x43000000 0x42 0x00000000  0x42 0x00000000  0x2 0x00000000>,
-				 <0x03000000 0x41 0x00000000  0x41 0x00000000  0x1 0x00000000>;
-			bus-range = <0x0 0xff>;
-			vendor-id = <0x1f1c>;
-			device-id = <0x2042>;
-			cdns,no-bar-match-nbits = <48>;
-			msi-parent = <&msi>;
-			status = "disabled";
-		};
-
-		pcie_rc1: pcie@7060800000 {
-			compatible = "sophgo,sg2042-pcie-host";
-			device_type = "pci";
-			reg = <0x70 0x60800000  0x0 0x00800000>,
-			      <0x44 0x00000000  0x0 0x00001000>;
-			reg-names = "reg", "cfg";
-			linux,pci-domain = <1>;
-			#address-cells = <3>;
-			#size-cells = <2>;
-			ranges = <0x01000000 0x0  0x00000000  0x44 0xc0400000  0x0 0x00400000>,
-				 <0x42000000 0x0  0xd0000000  0x44 0xd0000000  0x0 0x10000000>,
-				 <0x02000000 0x0  0xe0000000  0x44 0xe0000000  0x0 0x20000000>,
-				 <0x43000000 0x46 0x00000000  0x46 0x00000000  0x2 0x00000000>,
-				 <0x03000000 0x45 0x00000000  0x45 0x00000000  0x1 0x00000000>;
-			bus-range = <0x0 0xff>;
-			vendor-id = <0x1f1c>;
-			device-id = <0x2042>;
-			cdns,no-bar-match-nbits = <48>;
-			msi-parent = <&msi>;
-			status = "disabled";
-		};
-
-		pcie_rc2: pcie@7062000000 {
-			compatible = "sophgo,sg2042-pcie-host";
-			device_type = "pci";
-			reg = <0x70 0x62000000  0x0 0x00800000>,
-			      <0x48 0x00000000  0x0 0x00001000>;
-			reg-names = "reg", "cfg";
-			linux,pci-domain = <2>;
-			#address-cells = <3>;
-			#size-cells = <2>;
-			ranges = <0x01000000 0x0  0x00000000  0x48 0xc0800000  0x0 0x00400000>,
-				 <0x42000000 0x0  0xd0000000  0x48 0xd0000000  0x0 0x10000000>,
-				 <0x02000000 0x0  0xe0000000  0x48 0xe0000000  0x0 0x20000000>,
-				 <0x03000000 0x49 0x00000000  0x49 0x00000000  0x1 0x00000000>,
-				 <0x43000000 0x4a 0x00000000  0x4a 0x00000000  0x2 0x00000000>;
-			bus-range = <0x0 0xff>;
-			vendor-id = <0x1f1c>;
-			device-id = <0x2042>;
-			cdns,no-bar-match-nbits = <48>;
-			msi-parent = <&msi>;
-			status = "disabled";
-		};
-
-		pcie_rc3: pcie@7062800000 {
-			compatible = "sophgo,sg2042-pcie-host";
-			device_type = "pci";
-			reg = <0x70 0x62800000  0x0 0x00800000>,
-			      <0x4c 0x00000000  0x0 0x00001000>;
-			reg-names = "reg", "cfg";
-			linux,pci-domain = <3>;
-			#address-cells = <3>;
-			#size-cells = <2>;
-			ranges = <0x01000000 0x0  0x00000000  0x4c 0xc0c00000  0x0 0x00400000>,
-				 <0x42000000 0x0  0xf8000000  0x4c 0xf8000000  0x0 0x04000000>,
-				 <0x02000000 0x0  0xfc000000  0x4c 0xfc000000  0x0 0x04000000>,
-				 <0x43000000 0x4e 0x00000000  0x4e 0x00000000  0x2 0x00000000>,
-				 <0x03000000 0x4d 0x00000000  0x4d 0x00000000  0x1 0x00000000>;
-			bus-range = <0x0 0xff>;
-			vendor-id = <0x1f1c>;
-			device-id = <0x2042>;
-			cdns,no-bar-match-nbits = <48>;
-			msi-parent = <&msi>;
-			status = "disabled";
-		};
-
 		rstgen: reset-controller@7030013000 {
 			compatible = "sophgo,sg2042-reset";
 			reg = <0x00000070 0x30013000 0x00000000 0x0000000c>;
@@ -486,5 +398,93 @@ sd: mmc@704002b000 {
 				      "timer";
 			status = "disabled";
 		};
+
+		pcie_rc0: pcie@7060000000 {
+			compatible = "sophgo,sg2042-pcie-host";
+			device_type = "pci";
+			reg = <0x70 0x60000000  0x0 0x00800000>,
+			      <0x40 0x00000000  0x0 0x00001000>;
+			reg-names = "reg", "cfg";
+			linux,pci-domain = <0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges = <0x01000000 0x0  0x00000000  0x40 0xc0000000  0x0 0x00400000>,
+				 <0x42000000 0x0  0xd0000000  0x40 0xd0000000  0x0 0x10000000>,
+				 <0x02000000 0x0  0xe0000000  0x40 0xe0000000  0x0 0x20000000>,
+				 <0x43000000 0x42 0x00000000  0x42 0x00000000  0x2 0x00000000>,
+				 <0x03000000 0x41 0x00000000  0x41 0x00000000  0x1 0x00000000>;
+			bus-range = <0x0 0xff>;
+			vendor-id = <0x1f1c>;
+			device-id = <0x2042>;
+			cdns,no-bar-match-nbits = <48>;
+			msi-parent = <&msi>;
+			status = "disabled";
+		};
+
+		pcie_rc1: pcie@7060800000 {
+			compatible = "sophgo,sg2042-pcie-host";
+			device_type = "pci";
+			reg = <0x70 0x60800000  0x0 0x00800000>,
+			      <0x44 0x00000000  0x0 0x00001000>;
+			reg-names = "reg", "cfg";
+			linux,pci-domain = <1>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges = <0x01000000 0x0  0x00000000  0x44 0xc0400000  0x0 0x00400000>,
+				 <0x42000000 0x0  0xd0000000  0x44 0xd0000000  0x0 0x10000000>,
+				 <0x02000000 0x0  0xe0000000  0x44 0xe0000000  0x0 0x20000000>,
+				 <0x43000000 0x46 0x00000000  0x46 0x00000000  0x2 0x00000000>,
+				 <0x03000000 0x45 0x00000000  0x45 0x00000000  0x1 0x00000000>;
+			bus-range = <0x0 0xff>;
+			vendor-id = <0x1f1c>;
+			device-id = <0x2042>;
+			cdns,no-bar-match-nbits = <48>;
+			msi-parent = <&msi>;
+			status = "disabled";
+		};
+
+		pcie_rc2: pcie@7062000000 {
+			compatible = "sophgo,sg2042-pcie-host";
+			device_type = "pci";
+			reg = <0x70 0x62000000  0x0 0x00800000>,
+			      <0x48 0x00000000  0x0 0x00001000>;
+			reg-names = "reg", "cfg";
+			linux,pci-domain = <2>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges = <0x01000000 0x0  0x00000000  0x48 0xc0800000  0x0 0x00400000>,
+				 <0x42000000 0x0  0xd0000000  0x48 0xd0000000  0x0 0x10000000>,
+				 <0x02000000 0x0  0xe0000000  0x48 0xe0000000  0x0 0x20000000>,
+				 <0x03000000 0x49 0x00000000  0x49 0x00000000  0x1 0x00000000>,
+				 <0x43000000 0x4a 0x00000000  0x4a 0x00000000  0x2 0x00000000>;
+			bus-range = <0x0 0xff>;
+			vendor-id = <0x1f1c>;
+			device-id = <0x2042>;
+			cdns,no-bar-match-nbits = <48>;
+			msi-parent = <&msi>;
+			status = "disabled";
+		};
+
+		pcie_rc3: pcie@7062800000 {
+			compatible = "sophgo,sg2042-pcie-host";
+			device_type = "pci";
+			reg = <0x70 0x62800000  0x0 0x00800000>,
+			      <0x4c 0x00000000  0x0 0x00001000>;
+			reg-names = "reg", "cfg";
+			linux,pci-domain = <3>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges = <0x01000000 0x0  0x00000000  0x4c 0xc0c00000  0x0 0x00400000>,
+				 <0x42000000 0x0  0xf8000000  0x4c 0xf8000000  0x0 0x04000000>,
+				 <0x02000000 0x0  0xfc000000  0x4c 0xfc000000  0x0 0x04000000>,
+				 <0x43000000 0x4e 0x00000000  0x4e 0x00000000  0x2 0x00000000>,
+				 <0x03000000 0x4d 0x00000000  0x4d 0x00000000  0x1 0x00000000>;
+			bus-range = <0x0 0xff>;
+			vendor-id = <0x1f1c>;
+			device-id = <0x2042>;
+			cdns,no-bar-match-nbits = <48>;
+			msi-parent = <&msi>;
+			status = "disabled";
+		};
 	};
 };
-- 
2.52.0


