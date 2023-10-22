Return-Path: <devicetree+bounces-10646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E50AD7D252E
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 20:19:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 70791B20D77
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 18:19:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F20C111CAA;
	Sun, 22 Oct 2023 18:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech-se.20230601.gappssmtp.com header.i=@ragnatech-se.20230601.gappssmtp.com header.b="cRp8bnv3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9663911C96
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 18:19:31 +0000 (UTC)
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07E6D119
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 11:19:30 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-53dd752685fso3834391a12.3
        for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 11:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20230601.gappssmtp.com; s=20230601; t=1697998768; x=1698603568; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gdR8staS9iz6QVoXJGhNT1d2+Q/SLlVUHj79j/Bzn60=;
        b=cRp8bnv3v+2grqbUobr68WN/ZPdaSwCdkbic5tQV6wf7qD/mVMQTX8tQMOBivFPZO8
         Jf0+qlrSx3McEJfSD2+FX9F88GmIWLZto/QN39iOkItSXj66R1wBNjUKpAKux3Ay9ucR
         Gs4KSQMt54tPhN3stx3hRPgnXSelpUP5MtQX34Ai/7E+ZjM5ZZR+wIGXgY0S8VjF0VZb
         kVFgiNG75FxzfMpwiq94Y3vvOwSz94cay9m87zymJXKgdRwOqgAcSDqjD21hAF19ypEq
         7LRvxgrXK1m+ff2ItdcxPH6vAk+pjuO2jhGAg6rV86ORX7nMJG9ldbbjCdxeLyq5CbmG
         fFZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697998768; x=1698603568;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gdR8staS9iz6QVoXJGhNT1d2+Q/SLlVUHj79j/Bzn60=;
        b=HJcVFNxVHKA+4Z7UQ7TuFwIDYh6/3qivqc5THksu4nAUKl9fwbEl/mGFV6kgIDzBd0
         8K+Q46C3tF8yg/kaKDhMMQxhPMmFv5GexVNkbiqJ+rJu76WrWEgoT1A7xlJ02Z0/BpAH
         4q0WhAN7V5F2uQeWp0/M5RDy4I0bV2jmt/DLSBSjWRBN+wPzEnP9KrF3oYainQj6HUG+
         +zR5kHScJZhf0jL9t/w591dSY4dOhzchMdPmlxpmEEWPa/Zu5FJpDY6xuotyEePGV84P
         ToGT2Wy8TjzwlukE5CXhCw1wzeGhlO1NDCn89WEhrZEzOXWPl6W6iBNDvoh2eNAtoG77
         dwBw==
X-Gm-Message-State: AOJu0Yzsd56tOZOvTw1JbaHHiWItkVpAWOKLkXTupOjwqUv3knMrfP8P
	r3loB7hVI+dESPj1Wx73PkbK6GZSR4VHNX8wOFg=
X-Google-Smtp-Source: AGHT+IEb/THfFf6qQBOOrD8oXn+FSxi2CSAh0u7inxFOWu1rnKIr8t0gem15qvmPcd/xb89B3Ypkfw==
X-Received: by 2002:a05:6402:5186:b0:53f:9045:8cbe with SMTP id q6-20020a056402518600b0053f90458cbemr5444020edd.26.1697998768580;
        Sun, 22 Oct 2023 11:19:28 -0700 (PDT)
Received: from sleipner.berto.se (p4fca2773.dip0.t-ipconnect.de. [79.202.39.115])
        by smtp.googlemail.com with ESMTPSA id h12-20020aa7de0c000000b0053e43492ef1sm5035159edv.65.2023.10.22.11.19.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Oct 2023 11:19:28 -0700 (PDT)
From: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	devicetree@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Subject: [PATCH v2 2/2] arm64: dts: renesas: draak: Move HDMI bus properties to correct node
Date: Sun, 22 Oct 2023 20:19:10 +0200
Message-ID: <20231022181910.898040-3-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231022181910.898040-1-niklas.soderlund+renesas@ragnatech.se>
References: <20231022181910.898040-1-niklas.soderlund+renesas@ragnatech.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The bus properties for HDMI capture are defined on the incorrect node
for the VIN driver to be able to consume them. They are described on the
HDMI video source but they should be described on the VIN capture node,
move them.

Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
---
 arch/arm64/boot/dts/renesas/draak.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/draak.dtsi b/arch/arm64/boot/dts/renesas/draak.dtsi
index 08b3458a5025..953d1bb98f9d 100644
--- a/arch/arm64/boot/dts/renesas/draak.dtsi
+++ b/arch/arm64/boot/dts/renesas/draak.dtsi
@@ -424,9 +424,6 @@ port@2 {
 				 * VIN4 here.
 				 */
 				adv7612_out: endpoint {
-					pclk-sample = <0>;
-					hsync-active = <0>;
-					vsync-active = <0>;
 					remote-endpoint = <&vin4_in>;
 				};
 			};
@@ -735,6 +732,9 @@ &vin4 {
 	ports {
 		port {
 			vin4_in: endpoint {
+				pclk-sample = <0>;
+				hsync-active = <0>;
+				vsync-active = <0>;
 				remote-endpoint = <&adv7612_out>;
 			};
 		};
-- 
2.42.0


