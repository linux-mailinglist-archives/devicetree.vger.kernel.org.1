Return-Path: <devicetree+bounces-144438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0628DA2E115
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 23:07:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CADE73A591E
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 22:07:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3D16220693;
	Sun,  9 Feb 2025 22:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y4E7uEit"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264BF22F39B
	for <devicetree@vger.kernel.org>; Sun,  9 Feb 2025 22:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739138832; cv=none; b=tUJWErf4HzxSVaK040lL8gA2lWMNWBFjqshwgu+kjWxGMjCw5QnsSJxwTqs4EtYpC/arrd7QmZ7kNn+bU4P6Ra494gi5oKvF5Hx8NwcPjirDKk4CS/RW1oH88YrKHH5P0RrO4F25pVkJQPFVMDP2m3WCupdi7U9x49acqwopjKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739138832; c=relaxed/simple;
	bh=E/omfcuwY+biZG2Pg0pqpxRoO7ep+f3AJMj3nMXakuY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kGIKioDFR/AdWOEPinThm615x+k57IZ4Xzcliquh6GeT4aoCDG/FtIeoIevn+hM4wp+wG4/o0y7iVH+X8LxnTcBNhxkAHuQS8oyEY+vQyjdWlbJL1Xpwj9WJC6UVKA/dN5YA3itoZGGYoF6xgtw55C0ZOU2s2OIaMIGmX1GzFbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y4E7uEit; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-38633b5dbcfso3695595f8f.2
        for <devicetree@vger.kernel.org>; Sun, 09 Feb 2025 14:07:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739138829; x=1739743629; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vt58qBJVemIGGqEfVTnyjQvkxHCHLvzkYRzz/VP6lvQ=;
        b=Y4E7uEitXBi5bec9POK4UDbp5QIlliH8NKG1bM066ii5LPqYkDkRLZY7LWB/wMbsVZ
         RCGSNXNGnvoML+I4slbKntMPnHgGS3xucnYdBQXAdRBOSD3tXyz4/aWyAAKo7RI6bjJR
         lr9I34o4/CTaMs+jpG2vVgfaWLDKXOyryv35fYff/xZKDk48MYlCF+PUcBorvZ1JdZdn
         sYCKhXUeYteECOO3vbFpmx8scsc4IV5mP9oDotm4RH0aCslPhBxUPywhEvF6x+EBCuQK
         CoOserQ8X16YuB941tHGGjMSsRcjC1jdc9AaPelbXDzeZTzyw3R2HECYYRJ6GsPvOXDS
         RZEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739138829; x=1739743629;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vt58qBJVemIGGqEfVTnyjQvkxHCHLvzkYRzz/VP6lvQ=;
        b=Is2G3W6mlzZC1IGMN8WCsGuBc3de+plJtUzhC60FfI1xktjNn9YdIKriaNeaMdG4Aj
         z8NZaGfLHSCoz09XK8rh8/v1m4sTDqIjy6UXvFW1rUTMClpdpW/KqAPMKUTksIlvV6Ry
         kqzlAnpjoFdURX108fB6HKLoFGLtUpfMuXa+CmUx2SjlQMCY0IDh9TXvulJrf6tu/aiW
         AcSUiLtPKMGbm+YEoFaRbcUhq+6xuyYpdmcqWlsx9U+tsJyTePG7H+XTmEBOV06CSbA/
         HKQ6lXp99Oe6czgxaQm6lrUrAOd/KNnmWrUKijgrZJQjYAnEmKQ9hWkmY22lZfDiDQqA
         DYOw==
X-Forwarded-Encrypted: i=1; AJvYcCVekxs4izpXVcvvWhT5oCubfMd5jGDxP+iIZwZ+vbGy7tphrTBzZTblcRu41C1F3wq6Ycf5HO6LWFbo@vger.kernel.org
X-Gm-Message-State: AOJu0YwfN3HuzI4JgWwxlqLU1j037s35Afp6teSMoLeFXtpMZCIRtMva
	btc+AchyvwIYJ+0tbRlVWRPvBHkeu3vN+MpXNR9/Sf3lwBT1ILbq
X-Gm-Gg: ASbGncvk+kZkVqV+y1auy0yPpDtZ4p+6Zbk1rq9kgXfDNehFKX44nPAf04z/ygkatJr
	kueipMyit/cb4fwDFjSm6goUGQKylxR52qb5UBF0F8wHQ17ysnb+en1hDi+E06w9U0qVwvY0xgc
	7oTnCOGTUJpcTrj7V5EgLgLv7gDW+Al/IJpeD/CQpLxbMfW4cAPR9BDuvKA7jjvWufa8Wk6T7mT
	Dd3Vx/XTpo/tNJ1RhzI54eQ2pM0Mxa1huhd9wQfT5frbX/yQ4Z9vOuxesNljDfYErLsPvXO9fYo
	VnEgiq9fK7jtDhPbL8j3c20wOcFp
X-Google-Smtp-Source: AGHT+IGlozVsf/D6m3LbJIZJ2CuRmWh8Ek+/gWJZ7Ur5gu6Hztc8qhcrFEYMzrN7igLcyNVl56iqCg==
X-Received: by 2002:a5d:47a6:0:b0:38d:d9e4:9ba6 with SMTP id ffacd0b85a97d-38dd9e49c91mr2505479f8f.3.1739138829351;
        Sun, 09 Feb 2025 14:07:09 -0800 (PST)
Received: from giga-mm.. ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dbf2ed900sm10386544f8f.53.2025.02.09.14.07.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Feb 2025 14:07:08 -0800 (PST)
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: soc@lists.linux.dev
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@outlook.com>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	Haylen Chu <heylenay@outlook.com>,
	linux-arm-kernel@lists.infradead.org,
	Arnd Bergmann <arnd@arndb.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 05/10] arm64: dts: sophgo: Add Duo Module 01 Evaluation Board
Date: Sun,  9 Feb 2025 23:06:30 +0100
Message-ID: <20250209220646.1090868-6-alexander.sverdlin@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250209220646.1090868-1-alexander.sverdlin@gmail.com>
References: <20250209220646.1090868-1-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Duo Module 01 Evaluation Board contains Sophgo Duo Module 01
SMD SoM, Ethernet+USB switch, microSD slot, etc...
Add only support for UART0 (console) and microSD slot.

Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
---
 arch/arm64/boot/dts/Makefile                  |  1 +
 arch/arm64/boot/dts/sophgo/Makefile           |  2 ++
 .../sophgo/sg2000_milkv_duo_module_01_evb.dts | 30 +++++++++++++++++++
 3 files changed, 33 insertions(+)
 create mode 100644 arch/arm64/boot/dts/sophgo/Makefile
 create mode 100644 arch/arm64/boot/dts/sophgo/sg2000_milkv_duo_module_01_evb.dts

diff --git a/arch/arm64/boot/dts/Makefile b/arch/arm64/boot/dts/Makefile
index 79b73a21ddc2..3a32b157ac8c 100644
--- a/arch/arm64/boot/dts/Makefile
+++ b/arch/arm64/boot/dts/Makefile
@@ -28,6 +28,7 @@ subdir-y += realtek
 subdir-y += renesas
 subdir-y += rockchip
 subdir-y += socionext
+subdir-y += sophgo
 subdir-y += sprd
 subdir-y += st
 subdir-y += synaptics
diff --git a/arch/arm64/boot/dts/sophgo/Makefile b/arch/arm64/boot/dts/sophgo/Makefile
new file mode 100644
index 000000000000..fcabaf0babf4
--- /dev/null
+++ b/arch/arm64/boot/dts/sophgo/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+dtb-$(CONFIG_ARCH_SOPHGO) += sg2000_milkv_duo_module_01_evb.dtb
diff --git a/arch/arm64/boot/dts/sophgo/sg2000_milkv_duo_module_01_evb.dts b/arch/arm64/boot/dts/sophgo/sg2000_milkv_duo_module_01_evb.dts
new file mode 100644
index 000000000000..f3533892453d
--- /dev/null
+++ b/arch/arm64/boot/dts/sophgo/sg2000_milkv_duo_module_01_evb.dts
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+/dts-v1/;
+
+#include "sg2000_milkv_duo_module_01.dtsi"
+
+/ {
+	model = "Milk-V Duo Module 01 Evaluation Board";
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&sdhci0 {
+	/delete-property/ status;
+	bus-width = <4>;
+	no-1-8-v;
+	no-mmc;
+	no-sdio;
+	disable-wp;
+	pinctrl-0 = <&sdhci0_cfg>;
+	pinctrl-names = "default";
+};
+
+&uart0 {
+	/delete-property/ status;
+	pinctrl-0 = <&uart0_cfg>;
+	pinctrl-names = "default";
+};
-- 
2.48.1


