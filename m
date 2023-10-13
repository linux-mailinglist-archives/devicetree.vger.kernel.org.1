Return-Path: <devicetree+bounces-8440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6187C8328
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 12:33:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A38AAB209F7
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 10:33:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEA7179F9;
	Fri, 13 Oct 2023 10:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CEllwjXm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB94F13AC7
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 10:33:34 +0000 (UTC)
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91C34C0
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 03:33:32 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-5079eed8bfbso136018e87.1
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 03:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697193211; x=1697798011; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4tAsbR1HmRenSM52e9UtSPpVq2hyVof50dyTwhiy/6g=;
        b=CEllwjXmWa8ks0nhAdxMydO90xT24dGzxwwhctDQT5gyayg0TqPBYyiGqJZILrlcnU
         UwZ8o6721OY4QuKcXiu6lf97YIUptNBvapzIXAgyGUPrJFtRkjB7nRD02N89V7vq9Rxo
         2uFNHYB795Bvgb0JcxpoZj33qLnxrOVJdKE9OS2Nf4TB+is+JDRG3obxh3eHtlPEU3kT
         /vO65JHLhkG+SE4UIdbg2rDM71WzmWiwtvj4hSO1nMRR95UuisyDNaB+nDxVySzgHH8W
         0Ar42EhO4RFDltENe2z9CQuir0POkY1iRnrJi2HJbHVxVH+jYvDoqbeLpLsloSCtSpOh
         NSTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697193211; x=1697798011;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4tAsbR1HmRenSM52e9UtSPpVq2hyVof50dyTwhiy/6g=;
        b=PpzdzuQ2xnNe1dBa/MPb22wWNMTG26Ye0raRzc6Pm1S9yYc0syNJErkR6V5i63AhEp
         LRQGCJpcjpQJ+Nl1arrGOsv7u7Mt0PVUzZ3HrVT04wvGbZGTeQtIMYAeVei97k5rN7uE
         D0uAG7RQB8AWHBkbkGYrj6t7zDrJGQc+Z4Ijpvq2I/Ha/RGD89rxZ+gd9I6VGHuiDtJ9
         y/abO+h6ImSK+laULE8EnbHqEqOS6mZQjxoC0U+ihGl8TyC2xOwWpAiZLtbu+ELihRIf
         MKpohhi78yLBfwhgwkMpwXol++Ld5ZjG2ALcwLMh7u1mQv6fPw4z9+iZSfSYGRAO91iY
         DO7A==
X-Gm-Message-State: AOJu0YxbxE7y2AlG/LUf/bBILPqvKNeH1kS7S48dXTJ8E+XsoTgqk6Ws
	nfbaAViRTWnLB5oJ6+TFZCg=
X-Google-Smtp-Source: AGHT+IHxz/blh8hxYoNoZ0o0qPpx8e3eEFuKETPoQlXjyMjYC6rKKV2T9cB02H1MACcJx13dZMxmqw==
X-Received: by 2002:a05:6512:3e20:b0:502:9fce:b6cc with SMTP id i32-20020a0565123e2000b005029fceb6ccmr29698373lfv.11.1697193210386;
        Fri, 13 Oct 2023 03:33:30 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id d19-20020ac244d3000000b004fe2e94f8fdsm3278992lfm.236.2023.10.13.03.33.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 03:33:29 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	bcm-kernel-feedback-list@broadcom.com,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/2] ARM: dts: BCM5301X: Explicitly disable unused switch CPU ports
Date: Fri, 13 Oct 2023 12:33:13 +0200
Message-Id: <20231013103314.10306-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Rafał Miłecki <rafal@milecki.pl>

When redescribing ports I assumed that missing "label" (like "cpu")
means switch port isn't used. That was incorrect and I realized my
change made Linux always use the first (5) CPU port (there are 3 of
them).

While above should technically be possible it often isn't correct:
1. Non-default switch ports are often connected to Ethernet interfaces
   not fully covered by vendor setup (they may miss MACs)
2. On some devices non-default ports require specifying fixed link

This fixes network connectivity for some devices. It was reported &
tested for Netgear R8000. It also affects Linksys EA9200 with its
downstream DTS.

Fixes: ba4aebce23b2 ("ARM: dts: BCM5301X: Describe switch ports in the main DTS")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../dts/broadcom/bcm4708-buffalo-wzr-1166dhp-common.dtsi  | 8 ++++++++
 arch/arm/boot/dts/broadcom/bcm4708-luxul-xap-1510.dts     | 8 ++++++++
 arch/arm/boot/dts/broadcom/bcm4708-luxul-xwc-1000.dts     | 8 ++++++++
 arch/arm/boot/dts/broadcom/bcm4708-netgear-r6250.dts      | 8 ++++++++
 arch/arm/boot/dts/broadcom/bcm4708-smartrg-sr400ac.dts    | 8 ++++++++
 .../boot/dts/broadcom/bcm47081-buffalo-wzr-600dhp2.dts    | 8 ++++++++
 arch/arm/boot/dts/broadcom/bcm47081-luxul-xap-1410.dts    | 8 ++++++++
 arch/arm/boot/dts/broadcom/bcm47081-luxul-xwr-1200.dts    | 8 ++++++++
 arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts      | 8 ++++++++
 arch/arm/boot/dts/broadcom/bcm47094-dlink-dir-885l.dts    | 8 ++++++++
 arch/arm/boot/dts/broadcom/bcm47094-dlink-dir-890l.dts    | 8 ++++++++
 arch/arm/boot/dts/broadcom/bcm47094-luxul-abr-4500.dts    | 8 ++++++++
 arch/arm/boot/dts/broadcom/bcm47094-luxul-xap-1610.dts    | 8 ++++++++
 arch/arm/boot/dts/broadcom/bcm47094-luxul-xbr-4500.dts    | 8 ++++++++
 arch/arm/boot/dts/broadcom/bcm47094-luxul-xwc-2000.dts    | 8 ++++++++
 arch/arm/boot/dts/broadcom/bcm47094-luxul-xwr-3100.dts    | 8 ++++++++
 arch/arm/boot/dts/broadcom/bcm47094-luxul-xwr-3150-v1.dts | 8 ++++++++
 arch/arm/boot/dts/broadcom/bcm53015-meraki-mr26.dts       | 8 ++++++++
 arch/arm/boot/dts/broadcom/bcm53016-meraki-mr32.dts       | 8 ++++++++
 arch/arm/boot/dts/broadcom/bcm953012er.dts                | 8 ++++++++
 20 files changed, 160 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm4708-buffalo-wzr-1166dhp-common.dtsi b/arch/arm/boot/dts/broadcom/bcm4708-buffalo-wzr-1166dhp-common.dtsi
index 42bcbf10957c..9f9084269ef5 100644
--- a/arch/arm/boot/dts/broadcom/bcm4708-buffalo-wzr-1166dhp-common.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm4708-buffalo-wzr-1166dhp-common.dtsi
@@ -181,5 +181,13 @@ port@4 {
 		port@5 {
 			label = "cpu";
 		};
+
+		port@7 {
+			status = "disabled";
+		};
+
+		port@8 {
+			status = "disabled";
+		};
 	};
 };
diff --git a/arch/arm/boot/dts/broadcom/bcm4708-luxul-xap-1510.dts b/arch/arm/boot/dts/broadcom/bcm4708-luxul-xap-1510.dts
index e04d2e5ea51a..72e960c888ac 100644
--- a/arch/arm/boot/dts/broadcom/bcm4708-luxul-xap-1510.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4708-luxul-xap-1510.dts
@@ -85,5 +85,13 @@ port@4 {
 		port@5 {
 			label = "cpu";
 		};
+
+		port@7 {
+			status = "disabled";
+		};
+
+		port@8 {
+			status = "disabled";
+		};
 	};
 };
diff --git a/arch/arm/boot/dts/broadcom/bcm4708-luxul-xwc-1000.dts b/arch/arm/boot/dts/broadcom/bcm4708-luxul-xwc-1000.dts
index a399800139d9..750e17482371 100644
--- a/arch/arm/boot/dts/broadcom/bcm4708-luxul-xwc-1000.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4708-luxul-xwc-1000.dts
@@ -88,5 +88,13 @@ port@4 {
 		port@5 {
 			label = "cpu";
 		};
+
+		port@7 {
+			status = "disabled";
+		};
+
+		port@8 {
+			status = "disabled";
+		};
 	};
 };
diff --git a/arch/arm/boot/dts/broadcom/bcm4708-netgear-r6250.dts b/arch/arm/boot/dts/broadcom/bcm4708-netgear-r6250.dts
index fad3473810a2..2bdbc7d18b0e 100644
--- a/arch/arm/boot/dts/broadcom/bcm4708-netgear-r6250.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4708-netgear-r6250.dts
@@ -122,5 +122,13 @@ port@4 {
 		port@5 {
 			label = "cpu";
 		};
+
+		port@7 {
+			status = "disabled";
+		};
+
+		port@8 {
+			status = "disabled";
+		};
 	};
 };
diff --git a/arch/arm/boot/dts/broadcom/bcm4708-smartrg-sr400ac.dts b/arch/arm/boot/dts/broadcom/bcm4708-smartrg-sr400ac.dts
index 5b2b7b8b3b12..b226bef3369c 100644
--- a/arch/arm/boot/dts/broadcom/bcm4708-smartrg-sr400ac.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4708-smartrg-sr400ac.dts
@@ -145,6 +145,14 @@ port@4 {
 		port@5 {
 			label = "cpu";
 		};
+
+		port@7 {
+			status = "disabled";
+		};
+
+		port@8 {
+			status = "disabled";
+		};
 	};
 };
 
diff --git a/arch/arm/boot/dts/broadcom/bcm47081-buffalo-wzr-600dhp2.dts b/arch/arm/boot/dts/broadcom/bcm47081-buffalo-wzr-600dhp2.dts
index d0a26b643b82..192b8db5a89c 100644
--- a/arch/arm/boot/dts/broadcom/bcm47081-buffalo-wzr-600dhp2.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47081-buffalo-wzr-600dhp2.dts
@@ -145,5 +145,13 @@ port@4 {
 		port@5 {
 			label = "cpu";
 		};
+
+		port@7 {
+			status = "disabled";
+		};
+
+		port@8 {
+			status = "disabled";
+		};
 	};
 };
diff --git a/arch/arm/boot/dts/broadcom/bcm47081-luxul-xap-1410.dts b/arch/arm/boot/dts/broadcom/bcm47081-luxul-xap-1410.dts
index 9f21d6d6d35b..0198b5f9e4a7 100644
--- a/arch/arm/boot/dts/broadcom/bcm47081-luxul-xap-1410.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47081-luxul-xap-1410.dts
@@ -81,5 +81,13 @@ port@4 {
 		port@5 {
 			label = "cpu";
 		};
+
+		port@7 {
+			status = "disabled";
+		};
+
+		port@8 {
+			status = "disabled";
+		};
 	};
 };
diff --git a/arch/arm/boot/dts/broadcom/bcm47081-luxul-xwr-1200.dts b/arch/arm/boot/dts/broadcom/bcm47081-luxul-xwr-1200.dts
index 256107291702..73ff1694a4a0 100644
--- a/arch/arm/boot/dts/broadcom/bcm47081-luxul-xwr-1200.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47081-luxul-xwr-1200.dts
@@ -148,5 +148,13 @@ port@4 {
 		port@5 {
 			label = "cpu";
 		};
+
+		port@7 {
+			status = "disabled";
+		};
+
+		port@8 {
+			status = "disabled";
+		};
 	};
 };
diff --git a/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts b/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts
index 707c561703ed..55fc9f44cbc7 100644
--- a/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts
@@ -227,6 +227,14 @@ port@4 {
 			label = "wan";
 		};
 
+		port@5 {
+			status = "disabled";
+		};
+
+		port@7 {
+			status = "disabled";
+		};
+
 		port@8 {
 			label = "cpu";
 		};
diff --git a/arch/arm/boot/dts/broadcom/bcm47094-dlink-dir-885l.dts b/arch/arm/boot/dts/broadcom/bcm47094-dlink-dir-885l.dts
index abe0cb245c7e..c5099defe9f9 100644
--- a/arch/arm/boot/dts/broadcom/bcm47094-dlink-dir-885l.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47094-dlink-dir-885l.dts
@@ -160,6 +160,14 @@ port@4 {
 			nvmem-cell-names = "mac-address";
 		};
 
+		port@5 {
+			status = "disabled";
+		};
+
+		port@7 {
+			status = "disabled";
+		};
+
 		port@8 {
 			label = "cpu";
 		};
diff --git a/arch/arm/boot/dts/broadcom/bcm47094-dlink-dir-890l.dts b/arch/arm/boot/dts/broadcom/bcm47094-dlink-dir-890l.dts
index f050acbea0b2..3124dfd01b94 100644
--- a/arch/arm/boot/dts/broadcom/bcm47094-dlink-dir-890l.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47094-dlink-dir-890l.dts
@@ -192,6 +192,14 @@ port@4 {
 			label = "wan";
 		};
 
+		port@5 {
+			status = "disabled";
+		};
+
+		port@7 {
+			status = "disabled";
+		};
+
 		port@8 {
 			label = "cpu";
 			phy-mode = "rgmii";
diff --git a/arch/arm/boot/dts/broadcom/bcm47094-luxul-abr-4500.dts b/arch/arm/boot/dts/broadcom/bcm47094-luxul-abr-4500.dts
index e8991d4e248c..e374062eb5b7 100644
--- a/arch/arm/boot/dts/broadcom/bcm47094-luxul-abr-4500.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47094-luxul-abr-4500.dts
@@ -107,5 +107,13 @@ port@4 {
 		port@5 {
 			label = "cpu";
 		};
+
+		port@7 {
+			status = "disabled";
+		};
+
+		port@8 {
+			status = "disabled";
+		};
 	};
 };
diff --git a/arch/arm/boot/dts/broadcom/bcm47094-luxul-xap-1610.dts b/arch/arm/boot/dts/broadcom/bcm47094-luxul-xap-1610.dts
index afc635c8cdeb..badafa024d24 100644
--- a/arch/arm/boot/dts/broadcom/bcm47094-luxul-xap-1610.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47094-luxul-xap-1610.dts
@@ -120,5 +120,13 @@ port@1 {
 		port@5 {
 			label = "cpu";
 		};
+
+		port@7 {
+			status = "disabled";
+		};
+
+		port@8 {
+			status = "disabled";
+		};
 	};
 };
diff --git a/arch/arm/boot/dts/broadcom/bcm47094-luxul-xbr-4500.dts b/arch/arm/boot/dts/broadcom/bcm47094-luxul-xbr-4500.dts
index 7cfa4607ef31..cf95af9db1e6 100644
--- a/arch/arm/boot/dts/broadcom/bcm47094-luxul-xbr-4500.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47094-luxul-xbr-4500.dts
@@ -107,5 +107,13 @@ port@4 {
 		port@5 {
 			label = "cpu";
 		};
+
+		port@7 {
+			status = "disabled";
+		};
+
+		port@8 {
+			status = "disabled";
+		};
 	};
 };
diff --git a/arch/arm/boot/dts/broadcom/bcm47094-luxul-xwc-2000.dts b/arch/arm/boot/dts/broadcom/bcm47094-luxul-xwc-2000.dts
index d55e10095eae..992c19e1cfa1 100644
--- a/arch/arm/boot/dts/broadcom/bcm47094-luxul-xwc-2000.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47094-luxul-xwc-2000.dts
@@ -75,5 +75,13 @@ port@0 {
 		port@5 {
 			label = "cpu";
 		};
+
+		port@7 {
+			status = "disabled";
+		};
+
+		port@8 {
+			status = "disabled";
+		};
 	};
 };
diff --git a/arch/arm/boot/dts/broadcom/bcm47094-luxul-xwr-3100.dts b/arch/arm/boot/dts/broadcom/bcm47094-luxul-xwr-3100.dts
index ccf031c0e276..4d0ba315a204 100644
--- a/arch/arm/boot/dts/broadcom/bcm47094-luxul-xwr-3100.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47094-luxul-xwr-3100.dts
@@ -147,5 +147,13 @@ port@4 {
 		port@5 {
 			label = "cpu";
 		};
+
+		port@7 {
+			status = "disabled";
+		};
+
+		port@8 {
+			status = "disabled";
+		};
 	};
 };
diff --git a/arch/arm/boot/dts/broadcom/bcm47094-luxul-xwr-3150-v1.dts b/arch/arm/boot/dts/broadcom/bcm47094-luxul-xwr-3150-v1.dts
index e28f7a350117..83c429afc297 100644
--- a/arch/arm/boot/dts/broadcom/bcm47094-luxul-xwr-3150-v1.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47094-luxul-xwr-3150-v1.dts
@@ -158,5 +158,13 @@ port@4 {
 		port@5 {
 			label = "cpu";
 		};
+
+		port@7 {
+			status = "disabled";
+		};
+
+		port@8 {
+			status = "disabled";
+		};
 	};
 };
diff --git a/arch/arm/boot/dts/broadcom/bcm53015-meraki-mr26.dts b/arch/arm/boot/dts/broadcom/bcm53015-meraki-mr26.dts
index 03ad614e6b72..0bf5106f7012 100644
--- a/arch/arm/boot/dts/broadcom/bcm53015-meraki-mr26.dts
+++ b/arch/arm/boot/dts/broadcom/bcm53015-meraki-mr26.dts
@@ -124,6 +124,14 @@ fixed-link {
 				full-duplex;
 			};
 		};
+
+		port@7 {
+			status = "disabled";
+		};
+
+		port@8 {
+			status = "disabled";
+		};
 	};
 };
 
diff --git a/arch/arm/boot/dts/broadcom/bcm53016-meraki-mr32.dts b/arch/arm/boot/dts/broadcom/bcm53016-meraki-mr32.dts
index 26c12bfb0bdd..25eeacf6a248 100644
--- a/arch/arm/boot/dts/broadcom/bcm53016-meraki-mr32.dts
+++ b/arch/arm/boot/dts/broadcom/bcm53016-meraki-mr32.dts
@@ -185,6 +185,14 @@ fixed-link {
 				full-duplex;
 			};
 		};
+
+		port@7 {
+			status = "disabled";
+		};
+
+		port@8 {
+			status = "disabled";
+		};
 	};
 };
 
diff --git a/arch/arm/boot/dts/broadcom/bcm953012er.dts b/arch/arm/boot/dts/broadcom/bcm953012er.dts
index 4fe3b3653376..d939ec9f4a9e 100644
--- a/arch/arm/boot/dts/broadcom/bcm953012er.dts
+++ b/arch/arm/boot/dts/broadcom/bcm953012er.dts
@@ -84,6 +84,14 @@ port@5 {
 			label = "cpu";
 			ethernet = <&gmac0>;
 		};
+
+		port@7 {
+			status = "disabled";
+		};
+
+		port@8 {
+			status = "disabled";
+		};
 	};
 };
 
-- 
2.35.3


