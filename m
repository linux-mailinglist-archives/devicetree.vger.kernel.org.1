Return-Path: <devicetree+bounces-99027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 501C5968660
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 13:41:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EF8171F239F3
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 11:41:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19B031D6782;
	Mon,  2 Sep 2024 11:40:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MiT0Thmx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA4C1D4603
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 11:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725277254; cv=none; b=OlwBjPoBP+Oh9IRGeAbvFIUi9WtY2CxvWPkmsAm3aVm3/UxbnQpDkorR8mDB/OezqHacPTLI/nOLG944bFUB8ThZVmr+mcUoY2S4HNsx4M828ERFd1Zfgen9qmM9Vddfy5sPsInlmQJg96AbYg9cev+RxLEf+zUdZUXH9FQoNTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725277254; c=relaxed/simple;
	bh=52c9RCnnMOJoaoziQEd2I1WckEib4zozqHCNqeDu6TM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AuN2ILIOdJ67vibuyE6Zw3JcaUcaEa7Cqf/o2Hl1Z2SCy87xGiIcH7I0eccxI3JXKrFj/UddOHGfJQR9BfJx4oLlnQOF7zI1fJm9U6EFZz393CjFl6cPjVPifIjtIrNV3qb+zIe50kuwRaCgO9PeUuCfsokRxHlHzX6tEwaGUyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MiT0Thmx; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-42bbbe94b88so4207255e9.3
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 04:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725277251; x=1725882051; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C7YRYmdyh/Zvt/QYP4NaQ2fvJBdIyrQVnk5iSq+uwfk=;
        b=MiT0ThmxXzCNL1k0W4sViXvV71klFJp5bzwFkQy255Yg+Gug1qaizG63ZgDpQelieZ
         wXILkiQlTO/ET6N2OkTd7JmZ+KCd0yL5eZIXPvLdLb//neMUPhBXRFx/l/VOu8lsW5QP
         zI2x+X0AjfDGlwDVOxsoLmkZ9AQz6lRq8J52Vo6yq38zeAx2rHZXbcRwq1L9L/o/N5vd
         cWs7/NEF8/cjNV2OohqDizHxwL9sf9yu5U90sqz70+MQYEOdz0DCpspWJnDJsYGQCvqM
         8RKEdO2QBzka7JZaMBfCLxBMLIvXcaw5fkHM57xyk0SHm2B3/SxgCZiN5qlxtT9bCUOF
         rDlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725277251; x=1725882051;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C7YRYmdyh/Zvt/QYP4NaQ2fvJBdIyrQVnk5iSq+uwfk=;
        b=CCgqc9RFyXDPWha9VhDW6aVLupiCN8HAzveTRMwFJ94QOka6L6orIhsmERf3aw+oRP
         oTMvAubn2MeX3u6UjzL+nwIxOaPNK6P7PYHPO7AEI7aUy5SoaDNhFu5ulzb6TIWsNZbJ
         eiE36le/dZX7uh30+PQRRjGvHeXXSlIB+RcJ3bT3hINQ/ILFf9UDVI13a5ryChumlg/H
         tD540vL+oHZaD41xXtgA0MkHZukkMkj54rc3Z8RZKhgLquopccF05rhbig5FOf3aEdRi
         gg3eo1rmEI+Cg2+BsViuZjfiedQBHgjOipzzmZhVz1K5EuFh7AMdSjRiducrpqnJFkEG
         ZySA==
X-Gm-Message-State: AOJu0Yw3+NGgIqNqTQ0HSCvp98BLWcWPNLsmzD7F5FWyAChBTZnUpDUj
	TX1vX5BMVG8b8Jc/B7rdjOC2U3N1bSvd7mU2rcoRQE5nrgtJKX/MF82rfEHG8e9MSpifIsOM4XH
	lHYY=
X-Google-Smtp-Source: AGHT+IFT+i+2FMo2FwWVWLqgIA4qFusBNkm8Fu6x1C5a3R5A8A/YEBY00LByq3Sl/0LKV98RZE/y4g==
X-Received: by 2002:a5d:588e:0:b0:374:d088:476f with SMTP id ffacd0b85a97d-374d0884b17mr477040f8f.5.1725277250597;
        Mon, 02 Sep 2024 04:40:50 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba642594dsm171515245e9.47.2024.09.02.04.40.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 04:40:50 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 02 Sep 2024 13:40:37 +0200
Subject: [PATCH v2 1/4] ARM: dts: imx6ul-tx6ul: drop empty pinctrl
 placeholder
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240902-dts-nxp-imx6-pinctrl-v2-1-ab8196baa07a@linaro.org>
References: <20240902-dts-nxp-imx6-pinctrl-v2-0-ab8196baa07a@linaro.org>
In-Reply-To: <20240902-dts-nxp-imx6-pinctrl-v2-0-ab8196baa07a@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=865;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=52c9RCnnMOJoaoziQEd2I1WckEib4zozqHCNqeDu6TM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBm1aQ7Wfs+G/3ERzebQqPs8xGwTY5vLm3ekRIax
 GHDhZvyqj2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZtWkOwAKCRDBN2bmhouD
 14RBD/4y6Ur9M88Xwraf0VOOaqOE4JuLDEaSkHTOIslF3ecQMgbn9+ualCJVbqHDgh+680e1/Jr
 XqfDdO/ik7hiNfy8dXYFcydK4XRjURHRX3POaa+3ny1ZXXJZ3YKgVTGLspDz3XIbQ8vtQA34DOh
 As/MEMHyYt9AEWdJkEjXvda+5PPu0NL1SyuxKmqNxUxDf0l95kNmkNfeMJ9WPTnY02XT0DZmhzn
 A9Ur0X6gypoUJ0KFBL+t1IDxb+QNGVxcNG+nlzSS1zAv7sPi3gqJCqu0JGyMyC0YRqI8LhPwVwT
 Fw+8NBnrp6GxFntXh/ZFG4Khph4elco+XTHRKPR21it7ux5KjDgaFeepNCIBjNI5Z0yEu5Ngk8c
 ixRkgVn1G6fYpLdQOWZAsLXGjOkqgG07JXce4xBduO4VVyad326sRVFIPC9CF9JTnm02kKl5BTY
 zurBxsMSNNWzyXm5eqCfILjF/1jgRAcnIY8wSxZk4YB8GSeFr5RxOwuMiM/ljtDlUBi5cCaRcvL
 h9jk4QovHaAvPNBt5+s3Ps39epSzCpqTG69nV7lvB1q0/Mjv5B8Dd5ieQ35/VKMXf7WhRRxrDKF
 IfRBQNoYN3IM/SgNZzvEK5SoW/QYLXu7bf5unYKC0rGw2BV496HZL4oTfwr18zby/5Ph0xNeK9i
 0B+GFJVEXm9Q/FQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Drop an empty pin configuration node placeholder, because bindings
require 'fsl,pins' property:

  imx6ul-tx6ul-0010.dtb: pinctrl@20e0000: hoggrp: 'fsl,pins' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi
index 864173e30709..2567fa52f29b 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi
@@ -578,12 +578,6 @@ &usdhc1 {
 };
 
 &iomuxc {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_hog>;
-
-	pinctrl_hog: hoggrp {
-	};
-
 	pinctrl_led: ledgrp {
 		fsl,pins = <
 			MX6UL_PAD_SNVS_TAMPER9__GPIO5_IO09	0x0b0b0 /* LED */

-- 
2.43.0


