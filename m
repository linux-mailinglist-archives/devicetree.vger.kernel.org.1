Return-Path: <devicetree+bounces-54148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC87988FBC0
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 10:37:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1869F1C2C0D1
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 09:37:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 583DD5F544;
	Thu, 28 Mar 2024 09:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WY3zS4M1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92EE4535C2
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 09:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711618654; cv=none; b=J6Fzziw+VZbAUL9gVFdPzHg+TRt+TgeiFHWQ6jLTftYF9PfgHxqFAjyCeRQG5vyrLQ0k+psg/KLYUi9m4wYsNFTZYMOeMtpZJf/qSyHeDdnMN9+BgGwWe9IKnNmVuxoUiLpai5VKKdGnWNPudE9F0QU7+zulSqskGTkx+Vs1qk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711618654; c=relaxed/simple;
	bh=0ObGg5YifeFjkj1wll9oClemxY0BaxFvrNDWuxRsZVU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=ZODNb2RvHlFGgGYOZTzuwdm5PbwixtvI4ZyKnVhbQcVlTNtNYe/WPtuwdKwHKYQk1WXGtbxEmdlGUVl0qluqJ6skd6GNaFJhVSNNAVGzSBrgAjNE40F/uyHHvIPAje+1vZo7BH+S4i3UbjGHcHW7QwQqch9uWDFXDUP0ojbZMVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WY3zS4M1; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a47385a4379so327630366b.0
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 02:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711618651; x=1712223451; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xw2HvFeV8JTaKtXFYouZWP5NrPJspsJpwoYIZr88EHE=;
        b=WY3zS4M10mr1N6tXVQddUl0NFMvyKWueQrInSfPZlIOvm3JJmoUEAyVTMusRmzezCF
         5FzCjhtMYYHmWDUxF6KCpbyIpVWqxD91YtMDsjH0N191qoeL7/iRFkjwSvrOFa97/dqH
         UN2gwqjRkI0xMLE00xWEZ8Rykq+m5hfIJC7bOPmuvcKzZjzVEw7ACCvJaA7IO8sV34S4
         SvDTH0ojZSygS46IeDQFe1CzSYekhqiouOwj5IYACYQ4wqtE5g99plnM4OagQNyv4dBS
         dd9PwNal1N6aG2KVXwQN+7bZSxqxAkXuyZps3h9UU3cJzz1O39c+kLhPhTHglfFMcDSb
         Ju7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711618651; x=1712223451;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xw2HvFeV8JTaKtXFYouZWP5NrPJspsJpwoYIZr88EHE=;
        b=lqBxTn94Iescvq/ERv83CCoZbRbUd0GpvkaY8nWL8pJBVW5CqrIQTfkzYlatIb8PC2
         T7TiLdFSk9WR8v6gcZACyQ9o6QIP8pnKmMKH5Bw4WlvrYj7FLrFL25l/mntrC1nuXeAo
         UK3v0dwl9rBrkUJUJOw3CLqKcav9qZb3WwK1Jvu69AnZ+sRZVprhDDXWOBvo380S/jze
         4HyB/KcK8Eg5+BRnL3moPFdulioq+dyxvSsbzKLHKMzKmOD+Faiz9cli9CpIrxumPxm7
         hXB2E2ttld8w5Ur449VJgIMkJHUOF0o/IdORCWwbz6mb/Rk4wlDOloZuyMr7gAH8MW/L
         2WEA==
X-Forwarded-Encrypted: i=1; AJvYcCUjAQqhxIOR4SgwgDerQdXjP1RAyRSlkPK9mauQNgY97OqfwrFJRgv5g8Ry3kdS6320DpemF4qbIawj3wqUxWGUfOfqyboRB+uNKA==
X-Gm-Message-State: AOJu0YxUDAJjUnDrpGSOVpD8HPzJXL35NxhOHkP6Yj+pTRxMdorTsaJu
	LGC7gaiuNaP3XaWazjqN1jOcd43JV9NsqFNrh7cR0E8T1elVk5JK
X-Google-Smtp-Source: AGHT+IHjOI4XmIbUtA3agU+laZcc6ZR2tSUhzcWZ+u5F4nTAv4naoGL3w7diE9dQM4V9SuzC0Tla9w==
X-Received: by 2002:a17:906:d787:b0:a47:3f10:b3c8 with SMTP id pj7-20020a170906d78700b00a473f10b3c8mr1503293ejb.26.1711618650829;
        Thu, 28 Mar 2024 02:37:30 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id my15-20020a1709065a4f00b00a46b99a4273sm530811ejc.216.2024.03.28.02.37.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Mar 2024 02:37:30 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	William Zhang <william.zhang@broadcom.com>,
	Anand Gore <anand.gore@broadcom.com>,
	Kursad Oney <kursad.oney@broadcom.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	bcm-kernel-feedback-list@broadcom.com,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: broadcom: bcmbca: bcm4908: set brcm,wp-not-connected
Date: Thu, 28 Mar 2024 10:37:10 +0100
Message-Id: <20240328093710.28206-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Every described BCM4908 board has WP pin not connected. This caused
problems for drivers since day 0 but there was no property to describe
that properly. Projects like OpenWrt were modifying Linux driver to deal
with it.

It's not clear if that is hardware limitation or just reference design
being copied over and over but this applies to all known / supported
BCM4908 boards. Handle it by marking WP as not connected by default.

Fixes: 2961f69f151c ("arm64: dts: broadcom: add BCM4908 and Asus GT-AC5300 early DTS files")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi | 1 +
 arch/arm64/boot/dts/broadcom/bcmbca/bcm94908.dts | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
index e01cf4f54077..8b924812322c 100644
--- a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
@@ -594,6 +594,7 @@ nand_controller: nand-controller@1800 {
 			reg-names = "nand", "nand-int-base";
 			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "nand_ctlrdy";
+			brcm,wp-not-connected;
 			status = "disabled";
 
 			nandcs: nand@0 {
diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/bcm94908.dts b/arch/arm64/boot/dts/broadcom/bcmbca/bcm94908.dts
index 030ffa5364fb..e5b37643296b 100644
--- a/arch/arm64/boot/dts/broadcom/bcmbca/bcm94908.dts
+++ b/arch/arm64/boot/dts/broadcom/bcmbca/bcm94908.dts
@@ -34,7 +34,6 @@ &hsspi {
 };
 
 &nand_controller {
-	brcm,wp-not-connected;
 	status = "okay";
 };
 
-- 
2.35.3


