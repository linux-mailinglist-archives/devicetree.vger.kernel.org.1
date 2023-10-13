Return-Path: <devicetree+bounces-8441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0DD7C8327
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 12:33:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F1EA11F20F38
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 10:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7656F10A29;
	Fri, 13 Oct 2023 10:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YpXs/0WI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF6179EC
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 10:33:36 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8771CBB
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 03:33:35 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5041bb9ce51so2471400e87.1
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 03:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697193214; x=1697798014; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4sYQ7h7j2A+SXfBba4VZcWVq1c9z+eyADEbsuzjVvxg=;
        b=YpXs/0WIAVthsHrTyc6T+gjd57obIiRlYuNuexW2x/wnXMVaRDtESDCENWRiSaZUgS
         4fIKaprbl6QouxxbZxlYdpKKc6vjKf4uokr6pySn6QjJdi0rq+yiLsVLF7MKc+KzbrJ2
         NwlccbPJgdR0Az1APy4NXviB+HFFGeHINfFtyXlqlhmg8xrG41rCwOj8qLTVivqSzEni
         4pt5Sr9uh5MtKC7L1x7LQrFZH4GHqO4XpzbACouV8x56PIGfVGvmnQccOpdpz9hgumsE
         XpP2JO9BwAK68TKjEHhySIV0WETz2FzrU1VwaIuXjaCqYYgYWIZv5JTLj5Lxu0m6psq+
         dKOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697193214; x=1697798014;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4sYQ7h7j2A+SXfBba4VZcWVq1c9z+eyADEbsuzjVvxg=;
        b=Dncci3ZdoQd5NXv7R4oxqQNDJcgUdN2fzn2lA98qnMysYYQRQ4olNm8OZh4a93voV9
         Dk1n6QRsTMMeWYi91ec77Mg7cOr2uF/mlQo2GFJDBFOgL3x0H2kufkh/r/SKPk4m5fap
         zCK7bkCokF5xI6ZCM5+woVrbNpDAvA34wkRUxz3nMVc8T37efOqKYRyR81+NPlF7gJn1
         FCgAapBWtaubfKus/1X0Buarum+N+TKjxlBRM9GEpNO9K8A0yYIRYaIXDCX3S/CTnNv2
         mYmQ3aERqQZ/E/QK4ZvtNfxT6ESDrCxb916+XSRfpA0flk0UMBQTrzl+GcmQ6zZav7zM
         gWdA==
X-Gm-Message-State: AOJu0YyUPIVRMdWXBwSWHMOWVMDf3A6yAzTT+nLuOy6TkJBU1WpHiEM3
	8kRIrlmDb6k2vXThn16TAo8=
X-Google-Smtp-Source: AGHT+IH/Cl3bAGMQNiJxhBD00QVB5nWEAMWavY6haHt4p3sxgMAoJC/zk2+b1n0slMmppQduIu3nSQ==
X-Received: by 2002:ac2:55ae:0:b0:507:9777:7a7 with SMTP id y14-20020ac255ae000000b00507977707a7mr1897222lfg.17.1697193213338;
        Fri, 13 Oct 2023 03:33:33 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id d19-20020ac244d3000000b004fe2e94f8fdsm3278992lfm.236.2023.10.13.03.33.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 03:33:32 -0700 (PDT)
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
Subject: [PATCH 2/2] ARM: dts: BCM5301X: Set fixed-link for extra Netgear R8000 CPU ports
Date: Fri, 13 Oct 2023 12:33:14 +0200
Message-Id: <20231013103314.10306-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20231013103314.10306-1-zajec5@gmail.com>
References: <20231013103314.10306-1-zajec5@gmail.com>
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

While switch ports 5 and 7 are disabled (vendor designed port 8 to be
used for CPU traffic) they could be used strictly technically. For some
reason however both those ports need forcing link to be usable.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts b/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts
index 55fc9f44cbc7..127ca8741220 100644
--- a/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts
@@ -229,10 +229,20 @@ port@4 {
 
 		port@5 {
 			status = "disabled";
+
+			fixed-link {
+				speed = <1000>;
+				full-duplex;
+			};
 		};
 
 		port@7 {
 			status = "disabled";
+
+			fixed-link {
+				speed = <1000>;
+				full-duplex;
+			};
 		};
 
 		port@8 {
-- 
2.35.3


