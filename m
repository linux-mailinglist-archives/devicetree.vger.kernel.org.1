Return-Path: <devicetree+bounces-269763-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ghvWI+HUpGlVswUAu9opvQ
	(envelope-from <devicetree+bounces-269763-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 01:08:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D6D1D205E
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 01:08:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 65B16301051E
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 00:07:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F3AD2C9D;
	Mon,  2 Mar 2026 00:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ciaBaIDY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5D808834
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 00:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772410077; cv=none; b=ojq+qMYGX2Pt0pyKHR4CemeyUarT6b5jVDXzwMcaKtTpq/kO1NUXWKbSgNxKRj9kh5GWsrz+F9MbShQu9E90wWR/5TqKPcLS/RAm/jXD6S9fKCjppab5IQl2V6p9AZIrSJPV07JorkEJj49iFIixGB7ZCZggCfnOXGsZ06/1QMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772410077; c=relaxed/simple;
	bh=eVpLf4NnhnHNaNsAbpN9eZ8VJ92Cq7abApHS6nROmvY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uoJGqFbQ32w1dMqSOUfPLfMJG6yZmnQhagv1mawaxeabrkjEtMwyN9jxkrhq0lAy82d31UpL0p6nNTTEfQvVyurFd3t/dz4s4/g2FbDWbFwqN6pSs+Na/I/VtKOYzoXGsQcoWnu2zCwebZ6aDFC/YyldB0WAybkGJVsprGbSsls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ciaBaIDY; arc=none smtp.client-ip=74.125.224.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-64ae2ce2fe1so3083676d50.1
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 16:07:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772410075; x=1773014875; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tsooOqjs2Ru/3m+bvaCsEHR8prvnLQz2mO1zrfusdAU=;
        b=ciaBaIDYumXq4ARJCphjoLNRlrAt5I2egjENPw+k6ZbPoVafdg+hoASp5qC4zto8Qi
         1nMAMiTHj1RrAutOUaExhDTcp0ExYiFJaPSZkYd9UFrO5Eb4uielX75y0UXT3QLsl17d
         Yr5UqmNaccLImPN5zjn/tWWeidIRlRQrPnnYke57f0hLkgCBSfO8HIdqKKGAkQdoAM1S
         zTf3Bb3uqJJvlIoC0ptyIqQgxuPaMuRzcGpgnqvztFfLuyVgkU9vCKA3YhU3alzxRDJh
         TP7rVyVjx5B0JR5L4r4ja2DgAGWLGfl16cnakv946IQm2Htj3zWrVAeTVhob+yttNuo8
         APcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772410075; x=1773014875;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tsooOqjs2Ru/3m+bvaCsEHR8prvnLQz2mO1zrfusdAU=;
        b=POy7NQf8uhoHQHcpMYZVsft8K+l7TYFoqYkbBfYQXq5AJ9mpYVfz2tMx16ZJkxmumU
         E1U94SzHAs9bAIroxf0GUk3gRjWA3NXFFzO+RE3dNFwsQiqZx5mp2lhobSm/XPmbxd6t
         NvEOO5BOzaxA+XJ4Bj6coxLAXPTQREhl6Tql65Ui68ShCzhg+9QCifnSh66V1ljSAYcH
         UyM/GqHfv9Phopw97D8EvmQj5SBVMim/yZ/2LWhWqnWq2TaBidFmAGKdhk/u5i8IBTKf
         xeCTUK4DVdGfkvnyA+wnZhDctmrsl74LTxHbyU4rUHBIMVoRbGZlJXG0JpEw2UZNf6gK
         va/g==
X-Gm-Message-State: AOJu0YzJLzl4JnSDXQIta0sjfOIXQNGFrQf9z35KDS5rZMoPst2MdErE
	w2xAUh6de5Vx0vurPoojMM3fXhx0ObQ6Ov/MxVzxBgibLWJdQgdba8VK9b4hSY+r
X-Gm-Gg: ATEYQzwlyWhOFFjc9oFw/NjPceNwSr/KxW72gvHh8Iwr+G+8lu5QcTOF+jZlu9zUvA+
	1THbEA8E2d69St9a+u9bP4pFREBlnJk4YnaSpffbjxkXfvxc8xeTICAdWXpWpAwX0jd91B1GnWq
	n9AxQ0GxfjBgf0/FFSRJt3NbNimH2BOhu7dCHFcLziUMGRK+08eG4UBCwL6SOBOpYBXKwrfH9Gr
	AIQ7hJ53hWXM1KsTBYWyB5z/7YeC202hO+G8rGDOAXXBpZWOScRshUWjp7s1lnf3yqXnClvU7L/
	aZD5wRvml/ZzN/UZunKvcNXF988WgJwpTGFu3lBnZ5d5ViAJbxTbVwrXIaxWSN10I+iyQr69USJ
	XiHe8MV368QdXQlJxAJOg6cmpBYqS0+dgvQAokIPCQ8BmrKoj+l+OmDq6prJdyRRGQSgP3JB1Hr
	1IH3PWXkV8Qbw3oUG8/Ui+U8R8KA88rjAi0g12LZzh4sy1AH+0RXtCnQ==
X-Received: by 2002:a53:cb4a:0:b0:64a:de00:e38d with SMTP id 956f58d0204a3-64cc22c4e78mr7409140d50.68.1772410075409;
        Sun, 01 Mar 2026 16:07:55 -0800 (PST)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64cb7650fb7sm5028822d50.22.2026.03.01.16.07.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 16:07:54 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: devicetree@vger.kernel.org
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM5301X ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] ARM: dts: BCM5301X: add root pcie bridges
Date: Sun,  1 Mar 2026 16:07:36 -0800
Message-ID: <20260302000736.592422-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269763-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C8D6D1D205E
X-Rspamd-Action: no action

They are always required and instead of duplicating a definition in each
dts file, place it in dtsi with labels and work based on that.

Also changed each bridge@ to pcie@ to get extra dtc static analysis.

Fixed bridge numbers as a result.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 arch/arm/boot/dts/broadcom/bcm-ns.dtsi        | 30 ++++++++
 .../dts/broadcom/bcm4709-netgear-r8000.dts    | 73 ++++++++-----------
 .../dts/broadcom/bcm47094-luxul-xap-1610.dts  | 36 ++-------
 .../broadcom/bcm47094-luxul-xwr-3150-v1.dts   | 36 ++-------
 4 files changed, 76 insertions(+), 99 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
index 3fb1b762e492..392a25713669 100644
--- a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
@@ -196,6 +196,16 @@ pcie0: pcie@12000 {
 			#interrupt-cells = <1>;
 			#address-cells = <3>;
 			#size-cells = <2>;
+
+			pcie_bridge0: pcie@0 {
+				device_type = "pci";
+				reg = <0x0000 0 0 0 0>;
+				bus-range = <0x00 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
 		};
 
 		pcie1: pcie@13000 {
@@ -210,6 +220,16 @@ pcie1: pcie@13000 {
 			#interrupt-cells = <1>;
 			#address-cells = <3>;
 			#size-cells = <2>;
+
+			pcie_bridge1: pcie@0 {
+				device_type = "pci";
+				reg = <0x0000 0 0 0 0>;
+				bus-range = <0x00 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
 		};
 
 		pcie2: pcie@14000 {
@@ -224,6 +244,16 @@ pcie2: pcie@14000 {
 			#interrupt-cells = <1>;
 			#address-cells = <3>;
 			#size-cells = <2>;
+
+			pcie_bridge2: pcie@0 {
+				device_type = "pci";
+				reg = <0x0000 0 0 0 0>;
+				bus-range = <0x00 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
 		};
 
 		usb2: usb2@21000 {
diff --git a/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts b/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts
index 127ca8741220..d170c71cbd76 100644
--- a/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts
@@ -126,66 +126,53 @@ button-brightness {
 	};
 };
 
-&pcie0 {
-	#address-cells = <3>;
-	#size-cells = <2>;
-
-	bridge@0,0,0 {
+&pcie_bridge0 {
+	wifi@0,0 {
+		compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
 		reg = <0x0000 0 0 0 0>;
-
-		#address-cells = <3>;
-		#size-cells = <2>;
-
-		wifi@0,1,0 {
-			compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
-			reg = <0x0000 0 0 0 0>;
-			ieee80211-freq-limit = <5735000 5835000>;
-			brcm,ccode-map = "JP-JP-78", "US-Q2-86";
-		};
+		ieee80211-freq-limit = <5735000 5835000>;
+		brcm,ccode-map = "JP-JP-78", "US-Q2-86";
 	};
 };
 
-&pcie1 {
-	#address-cells = <3>;
-	#size-cells = <2>;
-
-	bridge@1,0,0 {
+&pcie_bridge1 {
+	pcie@0,0 {
+		device_type = "pci";
 		reg = <0x0000 0 0 0 0>;
+		bus-range = <0x01 0xff>;
 
 		#address-cells = <3>;
 		#size-cells = <2>;
+		ranges;
 
-		bridge@1,1,0 {
-			reg = <0x0000 0 0 0 0>;
+		pcie@1,0 {
+			device_type = "pci";
+			reg = <0x800 0 0 0 0>;
 
 			#address-cells = <3>;
 			#size-cells = <2>;
+			ranges;
 
-			bridge@1,0 {
-				reg = <0x800 0 0 0 0>;
-
-				#address-cells = <3>;
-				#size-cells = <2>;
-
-				wifi@0,0 {
-					compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
-					reg = <0x0000 0 0 0 0>;
-					brcm,ccode-map = "JP-JP-78", "US-Q2-86";
-				};
+			wifi@0,0 {
+				compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
+				reg = <0x0000 0 0 0 0>;
+				brcm,ccode-map = "JP-JP-78", "US-Q2-86";
 			};
+		};
 
-			bridge@1,2,2 {
-				reg = <0x1000 0 0 0 0>;
+		pcie@2,0 {
+			device_type = "pci";
+			reg = <0x1000 0 0 0 0>;
 
-				#address-cells = <3>;
-				#size-cells = <2>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges;
 
-				wifi@1,4,0 {
-					compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
-					reg = <0x0000 0 0 0 0>;
-					ieee80211-freq-limit = <5170000 5730000>;
-					brcm,ccode-map = "JP-JP-78", "US-Q2-86";
-				};
+			wifi@0,0 {
+				compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
+				reg = <0x0000 0 0 0 0>;
+				ieee80211-freq-limit = <5170000 5730000>;
+				brcm,ccode-map = "JP-JP-78", "US-Q2-86";
 			};
 		};
 	};
diff --git a/arch/arm/boot/dts/broadcom/bcm47094-luxul-xap-1610.dts b/arch/arm/boot/dts/broadcom/bcm47094-luxul-xap-1610.dts
index badafa024d24..3a33705c2969 100644
--- a/arch/arm/boot/dts/broadcom/bcm47094-luxul-xap-1610.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47094-luxul-xap-1610.dts
@@ -65,39 +65,19 @@ &gmac0 {
 };
 
 
-&pcie0 {
-	#address-cells = <3>;
-	#size-cells = <2>;
-
-	bridge@0,0 {
+&pcie_bridge0 {
+	wifi@0,0 {
+		compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
 		reg = <0x0000 0 0 0 0>;
-
-		#address-cells = <3>;
-		#size-cells = <2>;
-
-		wifi@0,0 {
-			compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
-			reg = <0x0000 0 0 0 0>;
-			brcm,ccode-map = "AU-AU-920", "CA-CA-892", "GB-DE-964", "NZ-AU-920", "US-US-825";
-		};
+		brcm,ccode-map = "AU-AU-920", "CA-CA-892", "GB-DE-964", "NZ-AU-920", "US-US-825";
 	};
 };
 
-&pcie1 {
-	#address-cells = <3>;
-	#size-cells = <2>;
-
-	bridge@0,0 {
+&pcie_bridge1 {
+	wifi@0,0 {
+		compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
 		reg = <0x0000 0 0 0 0>;
-
-		#address-cells = <3>;
-		#size-cells = <2>;
-
-		wifi@0,0 {
-			compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
-			reg = <0x0000 0 0 0 0>;
-			brcm,ccode-map = "AU-AU-920", "CA-CA-892", "GB-DE-964", "NZ-AU-920", "US-US-825";
-		};
+		brcm,ccode-map = "AU-AU-920", "CA-CA-892", "GB-DE-964", "NZ-AU-920", "US-US-825";
 	};
 };
 
diff --git a/arch/arm/boot/dts/broadcom/bcm47094-luxul-xwr-3150-v1.dts b/arch/arm/boot/dts/broadcom/bcm47094-luxul-xwr-3150-v1.dts
index 83c429afc297..8e487f60a2cc 100644
--- a/arch/arm/boot/dts/broadcom/bcm47094-luxul-xwr-3150-v1.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47094-luxul-xwr-3150-v1.dts
@@ -81,39 +81,19 @@ &gmac0 {
 	nvmem-cell-names = "mac-address";
 };
 
-&pcie0 {
-	#address-cells = <3>;
-	#size-cells = <2>;
-
-	bridge@0,0 {
+&pcie_bridge0 {
+	wifi@0,0 {
+		compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
 		reg = <0x0000 0 0 0 0>;
-
-		#address-cells = <3>;
-		#size-cells = <2>;
-
-		wifi@0,0 {
-			compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
-			reg = <0x0000 0 0 0 0>;
-			brcm,ccode-map = "AU-AU-953", "CA-CA-946", "GB-E0-846", "NZ-AU-953", "US-Q2-930";
-		};
+		brcm,ccode-map = "AU-AU-953", "CA-CA-946", "GB-E0-846", "NZ-AU-953", "US-Q2-930";
 	};
 };
 
-&pcie1 {
-	#address-cells = <3>;
-	#size-cells = <2>;
-
-	bridge@0,0 {
+&pcie_bridge1 {
+	wifi@0,0 {
+		compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
 		reg = <0x0000 0 0 0 0>;
-
-		#address-cells = <3>;
-		#size-cells = <2>;
-
-		wifi@0,0 {
-			compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
-			reg = <0x0000 0 0 0 0>;
-			brcm,ccode-map = "AU-AU-953", "CA-CA-946", "GB-E0-846", "NZ-AU-953", "US-Q2-930";
-		};
+		brcm,ccode-map = "AU-AU-953", "CA-CA-946", "GB-E0-846", "NZ-AU-953", "US-Q2-930";
 	};
 };
 
-- 
2.53.0


