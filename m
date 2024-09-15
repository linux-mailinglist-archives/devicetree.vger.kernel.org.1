Return-Path: <devicetree+bounces-103038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4E497947A
	for <lists+devicetree@lfdr.de>; Sun, 15 Sep 2024 04:43:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 196FCB24DF5
	for <lists+devicetree@lfdr.de>; Sun, 15 Sep 2024 02:43:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AAB5C2FD;
	Sun, 15 Sep 2024 02:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="eaE2rx/9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A81976FDC
	for <devicetree@vger.kernel.org>; Sun, 15 Sep 2024 02:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726368222; cv=none; b=tyM4YKbW1akoLmVlBto0QZm9ZxE4O0NRXZkE1PmvJJlHw58CJcBvPKytWMhLNsHuoz745xcvwjnTsjOxWZy7DoM/HVWazG6t1TZhQnsSGeuF1mDIe0A4isaUhXkFdT/v1ckSqV8IMvV9zYYtBPcl3aU4W3e5x/+NYhI0C4eAyL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726368222; c=relaxed/simple;
	bh=nuMvhK4B2YL1JqNj2MIqtLUPJEThULLYeQBNub/zOuQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hAt8UBHABEjOQVwmkpT4fTNIrxykWn6WYMhU5p02qFAYtI0Cy7C4eG2cQJuDtvAnE+cB7GBiEvfig0vvRyzsJtZIqEAcmczC+CaxDSG6ow5QJ3QjjgFv9K+e+q4CW8A68vbDaIE3RXUakci1NiZTEu2vIt6GeboglhakOLrpxWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=eaE2rx/9; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e02c4983bfaso3218865276.2
        for <devicetree@vger.kernel.org>; Sat, 14 Sep 2024 19:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1726368220; x=1726973020; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J/oLJOaGdN8OJwPD6NoJC1cI8myFT/cKMaiS1JkV6LQ=;
        b=eaE2rx/93j7gAhhJR1epMe7vq/EIuwjTWEepuD0+V5to6WEsdoXY3ny1BM5zWnexgL
         7gvXlFVCyVwyMoB5dvM5pQHHHR/PYiK1qeUy6du9wyH/xnijN0ufLRdooM4LMuxHt0R0
         tLnGXngkOLdHJUtvmOaYUPplvFtEiy4ovDS6vmvgm9RJmZYzJPXiGlAZxHVRxvBWC/Tz
         wB9v1EBLk+F0+QJlvIhfafJOh6e93r40Ostl/3jYBqopgHHZza8yxo280J5GSKNS8NZm
         JRtSFAgozHN40sV0xk1816sLpvUQnKgjtFFU57noAj1U97p9YOdXkoX2jSDzrta9cc0w
         dd6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726368220; x=1726973020;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J/oLJOaGdN8OJwPD6NoJC1cI8myFT/cKMaiS1JkV6LQ=;
        b=CLHkpJz7mUxcUOY9C7lB3agRlf5DWNJNbfvHYuK/Hg6BBmyFInP3gjpuSxs6Hjau3k
         yPF6U/gGAM/Efuls1irdmXvumT/FUsA4UqK4UMOfpihVgjnv2ZWY+Bbcf1k1p0C/4Rmi
         vx0+bhsvS6TAZhTAmRB9KmV7/Fez7ltcZVlvbo3Yy3/O66PInDLLTB97a6MZpGGnN+Nf
         VPMJ0ArM/8LdtP321C3xLuma867VlhIr0gHDCqbSekjbW4QiYkmTiXEspaXAvu+7ULmr
         7DoyTzX/2LPilagjgMeCpShf8A2jkNNBnrXk08FfbXkqeah5RkM2YUXx0apMQKA0+EN4
         0VzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXcC377xjlXJdZfkBWwewNKgU3X/vg31R47XSFit52fXSBx5NsMiv2tY2WaiXV4f8bmMT65IVYBaalu@vger.kernel.org
X-Gm-Message-State: AOJu0YzNPYVVlg+PLvET+jxmlizjDYt6OzxsqXiSLa/xH1p0vYHvgwrm
	jCCpls6WWoV3HDrPYPUG1+Q+yrRcrFTPYp13FrrFU3MWnV3baVVnGWqDAYynElU=
X-Google-Smtp-Source: AGHT+IHgtKYdkQzGTUjtDGDlZx8yYEHu7Pmg82NTgYIWtYxYiQsQ05Cr457i4bcoTnKB0UNQZg8r4Q==
X-Received: by 2002:a05:690c:385:b0:6db:7a8c:6640 with SMTP id 00721157ae682-6dbb6add9f4mr106171627b3.5.1726368219617;
        Sat, 14 Sep 2024 19:43:39 -0700 (PDT)
Received: from [127.0.1.1] ([216.139.163.245])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6dbe2e0d924sm4129097b3.41.2024.09.14.19.43.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Sep 2024 19:43:39 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Sat, 14 Sep 2024 19:40:54 -0700
Subject: [PATCH v2 6/8] riscv: dts: thead: Add Lichee Pi 4M GPIO line names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240914-th1520-pinctrl-v2-6-3ba67dde882c@tenstorrent.com>
References: <20240914-th1520-pinctrl-v2-0-3ba67dde882c@tenstorrent.com>
In-Reply-To: <20240914-th1520-pinctrl-v2-0-3ba67dde882c@tenstorrent.com>
To: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Linus Walleij <linus.walleij@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Drew Fustini <dfustini@tenstorrent.com>
X-Mailer: b4 0.14.1

From: Emil Renner Berthing <emil.renner.berthing@canonical.com>

Add names for the GPIO00-GPIO14 lines of the SO-DIMM module.

Tested-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 .../boot/dts/thead/th1520-lichee-module-4a.dtsi    | 39 ++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
index 530648ad64f6..276f7e8a2c9b 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
@@ -41,6 +41,12 @@ &uart_sclk {
 	clock-frequency = <100000000>;
 };
 
+&aogpio {
+	gpio-line-names = "", "", "",
+			  "GPIO00",
+			  "GPIO04";
+};
+
 &dmac0 {
 	status = "okay";
 };
@@ -60,3 +66,36 @@ &sdio0 {
 	max-frequency = <198000000>;
 	status = "okay";
 };
+
+&gpio0 {
+	gpio-line-names = "", "", "", "", "", "", "", "", "", "",
+			  "", "", "", "", "", "", "", "", "", "",
+			  "", "", "", "",
+			  "GPIO07",
+			  "GPIO08",
+			  "",
+			  "GPIO01",
+			  "GPIO02";
+};
+
+&gpio1 {
+	gpio-line-names = "", "", "",
+			  "GPIO11",
+			  "GPIO12",
+			  "GPIO13",
+			  "GPIO14",
+			  "", "", "", "", "", "", "", "", "", "",
+			  "", "", "", "", "",
+			  "GPIO06";
+};
+
+&gpio2 {
+	gpio-line-names = "GPIO03",
+			  "GPIO05";
+};
+
+&gpio3 {
+	gpio-line-names = "", "",
+			  "GPIO09",
+			  "GPIO10";
+};

-- 
2.34.1


