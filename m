Return-Path: <devicetree+bounces-111812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 862519A0191
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 08:41:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3A8D21F2357F
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 06:41:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 110E8199221;
	Wed, 16 Oct 2024 06:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XWTDri21"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F9418C93B
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 06:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729060875; cv=none; b=hPYSb2e2XfAqhxHtP2A9oQ6yp87gcA4mImqKtSAq/+wXLfCllkyxQwONkXcrAW9tcfJcgHd8+qU8+Ko9BRQHKT8n/saxzMQTjs4D6GzV4PP+Zo8iqOr72QOR4rYuz9xlwJE0y57j1ZRQXQiAssQMZVHRPQSlzuxHMOkMZTN41rM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729060875; c=relaxed/simple;
	bh=L1Hh20bQb4hONDnISFVQrn8aqlz80n94l1Goa7O43eA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Zz5hnlEzzPrrZ+y3WcFtzlaIVl6m2gfXLnU8ibO8wAxidNUTcJDBhF9c4xsysuL/9uaj/6OJM9/+w/v5CNCn6VGez1mNntDbsGFc2+wQJbgEceprQ2/eOX4i9Mk0mP/aykGNQVSozGszMuczyXnjtyEFaXj7ZlBwKu8qSM2GoL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XWTDri21; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-539f7606199so3232682e87.0
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 23:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729060871; x=1729665671; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WJ7fAOXQKwQQhOEiUJbYHwfejARQ4uFNrA8KvsiCnkA=;
        b=XWTDri21XJCVgSAkmwUPI433FR2pYL8HXfo1vwGAGYrC8GVRSvtyv4gVHsVmbWr0D5
         HgbM9NdgSlblmzla3oQ5O251TFAl7mPqPCZwV25bQ1lD6/ROSh2UETUlvmoajwtYCdq3
         q+ROMmUEJq3+9Mij7HVe0RXpWb1I+NJZAhaeZeaJIPf1dkLn59g72OTac3Bss+75hzr/
         sUFZrj7nL/iAxN3/lW791GiKhBHCyoFlBvxIQwOW+0Vv+kDrbDX2ZpcrL+6Aejol/BEa
         Sl8DEJ6a/+G1uBd3qA7oxRU+QSMgWYQofuNKzqbMz8KIDv7dfbdHvFNohlA95ohtPHU+
         3LWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729060871; x=1729665671;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WJ7fAOXQKwQQhOEiUJbYHwfejARQ4uFNrA8KvsiCnkA=;
        b=hwrvxH2kYmUwqSv1xshbhhVVPxT1FL+RaFK9rOQ+Dvm/Z4Q4IXiZ/+2cF/dos58W79
         ejvkJAWbURxDL4/umk5jcspo3EV10PP9Ao1FiCcE33RyGC9k8GAQ+JQEkYb1yuUDu1i0
         m2+FOT69M7WPhJIZ8+oiAaiVFucEPIDGbpkUXqlGeF5cCj6BvLOsbINP/JYNVEzJnyc5
         NjppwNwj/OV1/pvPxe6uozUjb9kWW5AjM2Q2GOd399UiCkW/kq0VhW+t5lsW6ls96KQ2
         zNzs5CgdhERoly8mQIiUbhAzTk8uVMiY4iEkqlYPG1el1KcPadpkYR8U7smKLlgVfmK1
         CDYQ==
X-Gm-Message-State: AOJu0YzEeSHlD1/WQiEnkrmOJbCsexU823M0fod75tUBUfIAlNnWXZ1N
	mwei4W+XJuA8FlvitJF6VYcgQWXD/HSOqOkvkEMflC6iDvdRGeleE3Cm9+x6xYW3QoqjqBG4p7C
	A
X-Google-Smtp-Source: AGHT+IH7IgnlyDwu5kNAUov4+0tdT48D/1A90QBXsUlsaZm0+ILwjysuLkx7TbQzbevz0cMz+PU6bQ==
X-Received: by 2002:a05:6512:33ca:b0:536:7362:5923 with SMTP id 2adb3069b0e04-539da3b439cmr8432068e87.1.1729060871005;
        Tue, 15 Oct 2024 23:41:11 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539ffff3a50sm357455e87.144.2024.10.15.23.41.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 23:41:10 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2024 08:41:04 +0200
Subject: [PATCH v2 4/9] ARM: dts: bcm6846: Add MDIO control block
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241016-genexis-xg6846b-base-v2-4-6a7cc2ee57eb@linaro.org>
References: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
In-Reply-To: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Benjamin Larsson <benjamin.larsson@genexis.eu>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

This adds the MDIO block found in the BCM6846. Use the new
"brcm,bcm6846-mdio" compatible (merged to the networking tree)
for this block.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm6846.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm6846.dtsi b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
index dc0c87c79569..53ae3c7c583b 100644
--- a/arch/arm/boot/dts/broadcom/bcm6846.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
@@ -223,5 +223,14 @@ nandcs: nand@0 {
 				reg = <0>;
 			};
 		};
+
+		mdio: mdio@2060 {
+			compatible = "brcm,bcm6846-mdio";
+			reg = <0x02060 0x10>, <0x5a068 0x4>;
+			reg-names = "mdio", "mdio_indir_rw";
+			#size-cells = <1>;
+			#address-cells = <0>;
+			status = "disabled";
+		};
 	};
 };

-- 
2.46.2


