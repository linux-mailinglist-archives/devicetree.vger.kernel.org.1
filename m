Return-Path: <devicetree+bounces-24189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C0280E53E
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 08:54:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 516F8B2151A
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 07:54:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C555717735;
	Tue, 12 Dec 2023 07:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g6AUjznV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CD7BDB;
	Mon, 11 Dec 2023 23:54:33 -0800 (PST)
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-6d9d209c9bbso4269446a34.0;
        Mon, 11 Dec 2023 23:54:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702367672; x=1702972472; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9JgxFMe8L/6FklhMeqWopx45J66QA9FQNsN0+nuF/AQ=;
        b=g6AUjznVSTbmGEwSbeO2YyFf2gx+iaJUcIqkB0s7XnAFetEYdzww1CswWsbxO6IeFq
         KrmKOXuN2Bay/uM+6L/JHCDfXqOu8F/Iav4ey000DtQOKDuwXlOR3OGWfRD9Rhc3BiUm
         ohkJWtZ+aZn0JVQ6enaOtvKJq8SN15agrvjqQ1AGMpEVWYl+H2gO3Kqm5apuAyZ6AcXd
         sgUrjam5IM9RMcMAeyTqK18RlVi9bBYCQKg6qoaodXVGZCkH7LQiOzfXbOeu8xGAdSYv
         PzaA9Gxz17KPR6xsQQNIL++Mh78MHg+gt4r6dletK7D5qD7djbkNLENgUn/cpUPmyy0f
         YrEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702367672; x=1702972472;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9JgxFMe8L/6FklhMeqWopx45J66QA9FQNsN0+nuF/AQ=;
        b=PR7FHRzWsoSkDfA3UwN6B9bAR/toXqXfckazAgJeMyIXt5+z/iM7/elAbxH7AJsa+K
         n4DGPN56NMP18OVqtQ+/4FmC5xqTS1OMLscaol5M48QIHbFnakLBcamNWjeg9Ikm65LF
         5BiA9I/hRsIrKk/UOXM9FFcXIB59nYM69NppAbt3N08/zF+BJg7SA/OWV5XJrUM6Rpkw
         iaDC9NLPrNpoqXH5ntdxMrQcizrQOcBOLpB5V9j2eU4oqfoBH7e5J/WmNd070PHRXMNK
         Fu8x3r5EfIytuuSTKcEd8zA7lI7Ak5tkfeVuNc3BgoGijSu6Uu4MmoJWIF1GEo/gypaL
         N0sQ==
X-Gm-Message-State: AOJu0Yy/BdCElV2fJI1L1D0ocZLc2FUwiEfseoIl9Kkvcb8v7JhNzu3a
	2zHh0rP0dzoUjae+UNaryAg=
X-Google-Smtp-Source: AGHT+IF6A11qdrTxyvRzsn/UfFXLrl7jYZ8gox7osnSr3fygXIiVgtb4DmPpKsxJGZbganWpChvURw==
X-Received: by 2002:a05:6358:515e:b0:170:17eb:14c2 with SMTP id 30-20020a056358515e00b0017017eb14c2mr2899799rwj.50.1702367672132;
        Mon, 11 Dec 2023 23:54:32 -0800 (PST)
Received: from obliging-System-Product-Name.dhcpserver.bu9bmc.local (1-34-21-66.hinet-ip.hinet.net. [1.34.21.66])
        by smtp.gmail.com with ESMTPSA id qi9-20020a17090b274900b0028a28ad810csm8144319pjb.56.2023.12.11.23.54.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 23:54:31 -0800 (PST)
From: Yang Chen <yangchen.openbmc@gmail.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au,
	patrick@stwcx.xyz,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Jerry.Lin@quantatw.com,
	EasonChen1@quantatw.com,
	Leslie.Tong@quantatw.com,
	yangchen.openbmc@gmail.com
Subject: [PATCH 10/11] ARM: dts: aspeed: minerva: add gpio line name
Date: Tue, 12 Dec 2023 15:51:59 +0800
Message-Id: <20231212075200.983536-11-yangchen.openbmc@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231212075200.983536-1-yangchen.openbmc@gmail.com>
References: <20231212075200.983536-1-yangchen.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the GPIO line name that the project's function can use by the
meaningful name.

Signed-off-by: Yang Chen <yangchen.openbmc@gmail.com>
---
 .../aspeed/aspeed-bmc-facebook-minerva.dts    | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
index 090fe2f6b1d8..31197183cc59 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
@@ -362,3 +362,33 @@ &ehci1 {
 &uhci {
 	status = "okay";
 };
+
+&gpio0 {
+	gpio-line-names =
+	/*A0-A7*/	"","","","","","","","",
+	/*B0-B7*/	"","","","","","","","",
+	/*C0-C7*/	"","","","","BLADE_UART_SEL2","","","",
+	/*D0-D7*/	"","","","","","","","",
+	/*E0-E7*/	"","","","","","","","",
+	/*F0-F7*/	"","","","","","","","",
+	/*G0-G7*/	"","","","","","","","",
+	/*H0-H7*/	"","","","","","","","",
+	/*I0-I7*/	"","","","","","","","",
+	/*J0-J7*/	"","","","","","","","",
+	/*K0-K7*/	"","","","","","","","",
+	/*L0-L7*/	"","","","","BLADE_UART_SEL0","","","",
+	/*M0-M7*/	"","","","","","BLADE_UART_SEL1","","",
+	/*N0-N7*/	"","","","","","","","",
+	/*O0-O7*/	"","","","","","","","",
+	/*P0-P7*/	"","","","","","","","",
+	/*Q0-Q7*/	"","","","","","","","",
+	/*R0-R7*/	"","","","","","","","",
+	/*S0-S7*/	"","","","","","","","",
+	/*T0-T7*/	"","","","","","","","",
+	/*U0-U7*/	"","","","","","","","",
+	/*V0-V7*/	"","","","","BAT_DETECT","","","",
+	/*W0-W7*/	"","","","","","","","",
+	/*X0-X7*/	"","","BLADE_UART_SEL3","","","","","",
+	/*Y0-Y7*/	"","","","","","","","",
+	/*Z0-Z7*/	"","","","","","","","";
+};
-- 
2.34.1


