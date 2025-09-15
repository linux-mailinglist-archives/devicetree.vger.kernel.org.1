Return-Path: <devicetree+bounces-217134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C0AB56E06
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 03:53:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C336177AD3
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 01:53:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DA512264A0;
	Mon, 15 Sep 2025 01:53:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kkktv2Y3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF80F223DFF
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 01:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757901180; cv=none; b=TWy5lU30I2z3oGz/z6ZOMpIj9HDHoopXeDUgX8ME/I4kH/H593+nWAoQJtfhDD17euI6jQG/MBmA/pipZyTxP+jqv0RY3fRpxvFTVUk8gXNd84oRsE0CKntYt+NXLgz1jNvzKpQ1UKOurai9HlUgC8ugisPgwUK6gt5HBJhOzKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757901180; c=relaxed/simple;
	bh=SoJ2s/7xaJZqpkZFG/E32MO93SiVWiC2LB23uiW2KAI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RvIinVS3GbbSRZVHvrMe2+J/CuOzyNysd4rXtGbyLvD0s9SsBehhlmjKrmMjQb/Ak9zk1PYaBp0XcgFnS1DIw590QYYPA8LwruItzcsI8gRjNPwLvhu9zWIRaOYnH09AQjbXcYtQlOs7WSitKxCJayAqaYmajpXaHzf5FyvISUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kkktv2Y3; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-25caef29325so31225585ad.2
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 18:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757901178; x=1758505978; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5H5+bfFpWI0JlLzmp/SN5iCuvqCago9oAPrj5EA3s9w=;
        b=kkktv2Y3QZfWr3+P3REjOnFq9rqxOraT6bgy2+W19pSk4BGCteDUH06g5DxQJmt/H3
         3sWCGbW3puKn2N/opnvlT3agat6Lii1UTHVvNgaPh+4Yc1sdYzNbo4O0ws1rG3odjfXT
         cSzRa7ojnnLKZwtWzScETgFOkFeyT+ppZOvk58Y292uCxUBQ54NPmXh4qK1QlYSdVmW1
         NdR/Bu4GqO9AQkl1UGUNvn33EF3AroiT8sGmswe1MiIc6qFyJiyRUXyHSRd6G3o0+5uj
         VRvKiqN6UMnr2UqwJm36niMcg/K2nw3S3Hy33YL6A2h/DioDI+zINsOtn+vvjwmlpESD
         mqgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757901178; x=1758505978;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5H5+bfFpWI0JlLzmp/SN5iCuvqCago9oAPrj5EA3s9w=;
        b=DGDYuntHyANrvdqXU33Evf7eF1ldV90nYz2t0VXuh/vfB05CcQF2WayHYGhA71Xjd6
         NmyOsp7XnVT7MVlzwWdXFI35HpXiPUXSj7Viy+s7mCmhnM63BI0tlr5Ii/RrC613UY0g
         5KrpcQa3TiG8/Jg8K0k5xjRm2JI5obHCz6opMCr4E9EYyUVzpCE/yVBmnzmdJ9101VFQ
         /3o4UpOgRb5wvYBH7Vkr0VpOIry+WCX+IEjFAn0W8jO8ZIKbuOlSd4sDpdM0yPGF/Gtm
         ghe15nIP7C7orWBgw+YsV5Emzoml4+RLLblbRyrndiEiSiqOFInlT3kXta8d/+ANEiAm
         Xx5Q==
X-Forwarded-Encrypted: i=1; AJvYcCW2u3f+iujyC9NDDe7GwaH4LQB3GuPMUB1JMLjOrTiRxBevfJOxDKbb0ph0gP0Twunk+eqLfEfNydsi@vger.kernel.org
X-Gm-Message-State: AOJu0YxFYAYnJVCRztgtBMB5OO1UllNqANk7O+p6zOS1Dxml7+4P8GTO
	ZohmSYbOh64W10J5ud4D1IqcvGqx8ocn0MYTo5DbMQJaWjPKGGtjgUzp
X-Gm-Gg: ASbGncv63l9jB1mj56DpJrSfvITqRuq3ONtLIC9pxjFQw52A/cvVMzUXLeqVy93X1kC
	qFKrw3ET/N463cILAGjIZzncqjLyokBSi6AhPpHaNsm44eZKZfe5r2HEfJ8ajI43rYtBfnCJg5C
	a11sZwWyzGIn/Ql8TsdsrU1O1pVvqCTN4amu7E91eOAs4CZor6FuDj2GIBh9lSlrek7lxzSkzWH
	88tzWx5+GBKJETj4HpvL5dVySmnW4xMkluV5bajM5Q06/OEr2hMqtXg/rj2Hle/Ee6qABuh9f+/
	CA8lCq1BBCZTW2fpr2vTxA9AHZnEQyd/HHD9ee10G+vEl13EF23I0VKtC/Dk5/nQ/GB6AlotdCS
	zLpTZMfKClSl6e8PwtMmM6NBr9TpuiTMnhP8=
X-Google-Smtp-Source: AGHT+IHMm6zQWGhC4CRJdwqcwAn6ExfzlmynisceaUa39WHIvw//bJ//An8p3b+Oihj72okwQgAGDg==
X-Received: by 2002:a17:903:2b0d:b0:267:95ad:8cc7 with SMTP id d9443c01a7336-26795ad8ec0mr6064675ad.54.1757901178029;
        Sun, 14 Sep 2025 18:52:58 -0700 (PDT)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-262df893ec5sm41565255ad.46.2025.09.14.18.52.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 18:52:57 -0700 (PDT)
From: Nick Chan <towinchenmi@gmail.com>
Date: Mon, 15 Sep 2025 09:52:25 +0800
Subject: [PATCH v4 2/3] arm64: dts: apple: t8012: Add SPMI node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250915-t8015-spmi-v4-2-758620b5f2ae@gmail.com>
References: <20250915-t8015-spmi-v4-0-758620b5f2ae@gmail.com>
In-Reply-To: <20250915-t8015-spmi-v4-0-758620b5f2ae@gmail.com>
To: Janne Grunau <j@jannau.net>, Neal Gompa <neal@gompa.dev>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Sasha Finkelstein <fnkl.kernel@gmail.com>, Sven Peter <sven@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Nick Chan <towinchenmi@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1145; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=SoJ2s/7xaJZqpkZFG/E32MO93SiVWiC2LB23uiW2KAI=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBox3FxeqmBzqAGD0XoST/Z92rIDU/5LkiQ3p/3r
 NRJnPkuJ6+JAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaMdxcQAKCRABygi3psUI
 JFfQEACShZQC6WLqLE/aDkYMN3XdssIhvINVp+gaUZw3BZ2/6GDq6jyuhu8I6j6HpOthCOP9PXf
 lQPdknQu8U7P5vGITb510PzdyI5GWk2tbjECEFM2GCrHvua2OCaPvKU8iTDapw4oG7QvT3mrda0
 kHmnObP36QBiuawsVeuw9y/7fm7cz3vPVI1FiSOFdyQC7+yBpWurCfYYNd0/vaK0nQOeiKtiKy9
 Rhg9nG67+GSijrBI3Rciv8VSo5Gcd8txQyJ+xYiA35aadAukvnNgtrk88YaThNPq5rRokB9DBuQ
 6Q1hszoSx9I29qdqBn9p0APfkumQ8PuLxVtDGBox1B6yDL9pH3iQg3IHFxWAimt7LU4QC/TZBrG
 Pjbsh7PBXLqUMLHb6KtjFEBe/U26LpKKv6v13cZeF91cKWJczxVrTwfYb0TkILbH/z3fMGFvow5
 a5rAvPuRoDL/sPa/SBnTnrWOdC2m5YgwaWR1bNc9cHCcirB+G9x9kB1kaBBTVY93dwpCGLqPpJE
 FJL1IBL9PMnQLCY0b9+QD/urD9nMlZT4z7bZdT9cynrka3jO0AhveaLQftQ7s+Ls2THKiN/ZiyU
 26L0cky6XnlQ42ZRnyi+Yj2EsQJTTJIiM2lfd4O0Ixs12EFrLSNT9C+zCAWZwroItStwD4ZZyIo
 G6LJq9iuN4EqQ8w==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add SPMI node for Apple T2 SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/t8012.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t8012.dtsi b/arch/arm64/boot/dts/apple/t8012.dtsi
index a259e5735d938cfa5b29cee6c754c7a3c0aaae08..e7923814169bd4060706945561910ed1d5c2e0c8 100644
--- a/arch/arm64/boot/dts/apple/t8012.dtsi
+++ b/arch/arm64/boot/dts/apple/t8012.dtsi
@@ -11,6 +11,7 @@
 #include <dt-bindings/interrupt-controller/apple-aic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/pinctrl/apple.h>
+#include <dt-bindings/spmi/spmi.h>
 
 / {
 	interrupt-parent = <&aic>;
@@ -220,6 +221,13 @@ pinctrl_aop: pinctrl@2100f0000 {
 				     <AIC_IRQ 137 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		spmi: spmi@211180700 {
+			compatible = "apple,t8012-spmi", "apple,t8103-spmi";
+			reg = <0x2 0x11180700 0x0 0x100>;
+			#address-cells = <2>;
+			#size-cells = <0>;
+		};
+
 		pinctrl_nub: pinctrl@2111f0000 {
 			compatible = "apple,t8010-pinctrl", "apple,pinctrl";
 			reg = <0x2 0x111f0000 0x0 0x1000>;

-- 
2.51.0


