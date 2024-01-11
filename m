Return-Path: <devicetree+bounces-31349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE20082AE01
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 12:56:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D5C7D1C22ED6
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 11:56:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68473154AC;
	Thu, 11 Jan 2024 11:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aqGxZwYQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7DC5156C1
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 11:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-55753dc5cf0so6227746a12.0
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 03:56:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704974204; x=1705579004; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0yIvTPrQ8BLVWMbwm04vU0qsWSE9/MDu1fzqWxMFViM=;
        b=aqGxZwYQ4wYEearuoVvj52KnoGc9Td6lTbijHP/nwqlNUX/+mwm5NiM8o9oTe9Za6c
         BmjOtSNiIiQHME7jOvqPDFRNpWOVDClP/tfT4sxnWERTCan9j0bXUt7IHd4Hv8QV/lNe
         RMq8T8j3mpMAfpmiFgbkgVmvD4aN9C3ofUI2kuZzhiPKA53+hD7XdlRNVK2q3zGkFvcr
         sn/g9csa8FPCrD9G1pKId0DRbPSGQ2hCeFLxh4nqoqgDx0mTVQ/mcmggfZ0uNygNxGpz
         Aq28TTeeqeb+F8mDxuxTPDrVfvJeKSe3jrFeb3CxN0rk3J/+uJ8evujmBsMjaEOC8ofJ
         WLtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704974204; x=1705579004;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0yIvTPrQ8BLVWMbwm04vU0qsWSE9/MDu1fzqWxMFViM=;
        b=aqRcieGRBi0Z4tSv6UYP3JMdhiunuDCpEL8rrFCiicWrdi3EKNGZr7y1hCA798Gu1z
         nuCtDvbV7NZwDiJzhfatjr6x24fTtIFgOFqNCs7uvGbjkCCX0AV6ajF8QS4uMWB7LqaY
         a9zXm69RqSKiU6lPMefISrYrZzyiSu8Bk8tI01UjtnbL81QCjNAuUYnx8bvruZ28Fc0l
         6S7R6gCADBYgGQBUolsi/yIFiyTBSRWjuawJbZWUhwet6tSytGMjTFCyMfwUmiq9wWP9
         sYf6QluYrRZSkyDYDWxm+NW4DwcYzLMCSAdZJhA/Qk3ywRcv/UEE9GS1AJqRys0JrzPB
         7Tyw==
X-Gm-Message-State: AOJu0Ywm24DPkcK4hk5gMOeWc446j4xRs0WXsfZpqtS0AagCZrL+LXjF
	5XIUHTQm6YxvGECzEwdUqQQ=
X-Google-Smtp-Source: AGHT+IFL4l3VfpP9vRsock/rZkFB9cgwPcwFZvhFuWh4tprCmCJhLOqXSdwGPew+ohKpfLFD6n/ZaA==
X-Received: by 2002:aa7:d318:0:b0:557:7fb6:928a with SMTP id p24-20020aa7d318000000b005577fb6928amr522200edq.72.1704974203881;
        Thu, 11 Jan 2024 03:56:43 -0800 (PST)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id k17-20020aa7c051000000b005574ffc25a0sm529883edo.31.2024.01.11.03.56.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jan 2024 03:56:43 -0800 (PST)
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
Subject: [PATCH] arm64: dts: broadcom: bcmbca: bcm4908: drop invalid switch cells
Date: Thu, 11 Jan 2024 12:56:36 +0100
Message-Id: <20240111115636.12095-1-zajec5@gmail.com>
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

Ethernet switch does not have addressable subnodes.

This fixes:
arch/arm64/boot/dts/broadcom/bcmbca/bcm4908-asus-gt-ac5300.dtb: ethernet-switch@0: '#address-cells', '#size-cells' do not match any of the regexes: 'pinctrl-[0-9]+'
        from schema $id: http://devicetree.org/schemas/net/dsa/brcm,sf2.yaml#

Fixes: 527a3ac9bdf8 ("arm64: dts: broadcom: bcm4908: describe internal switch")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
index 2f124b027bbf..aadfa0ae0525 100644
--- a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
@@ -227,9 +227,6 @@ ethernet-switch@0 {
 				brcm,num-gphy = <5>;
 				brcm,num-rgmii-ports = <2>;
 
-				#address-cells = <1>;
-				#size-cells = <0>;
-
 				ports: ports {
 					#address-cells = <1>;
 					#size-cells = <0>;
-- 
2.35.3


