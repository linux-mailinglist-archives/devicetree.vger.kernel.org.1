Return-Path: <devicetree+bounces-226230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFCEBD642E
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 22:52:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 36C7834F9BB
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 20:52:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0D342F5320;
	Mon, 13 Oct 2025 20:51:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Esyqn8mv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7A32F1FDD
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 20:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760388711; cv=none; b=LNvX+2MB8d04RwCsho+vYS5uVjve91FJZcfpIOjIgwXVjHt0Yb+r89jY4f5Qwzx1ynYaPsqpp7YoSVDmHwvgzo2T7UiDIjJWAEFIQ+i95h8/aYyUk534l8t+yov2BHj3qZGmwweI0ZIhDXqRi8mMM1WUqfMy4yBLpXe9aLMqOAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760388711; c=relaxed/simple;
	bh=HHhcCaMHTmvzw7CLfISLI4i5MO1lY0C65c6w0STPYPU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bfCjjLPbXAU5OT7zJsbU8yvlgVi+0y/J8Nlcj3c5S/1Q38Z/tuQJeg1xlQxD3H/YRJkcdPE98n8xkd+ujq2fYHvJLYKTw+QRdzbhxGeMytcM59xAk1xWQf4BtpSdQwwl3na5WcDBvX6RocuJ+BmVvBbF7RozS/F9rH/W4Eec8PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Esyqn8mv; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-46fcf9f63b6so4138825e9.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 13:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760388708; x=1760993508; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6DDgLAiuTXzY8R6BOnFwxchMXmp9+zPBlIoePYb2/ig=;
        b=Esyqn8mvrJIzXaioxfdj/rnne4vBTj/TGlW+91WzSqnyCINqhAkSr3SSdLf8gIO8wg
         LHAbbgeplB0FnZ8c5hQ8hYoJSz7u0VkOwQ/OOIXxVjmgH89j8vtsOSq22MPO0lpZFbkq
         5lE2p7LgjKmKi1AYdfnpQQpQAIyFlEDIWa8/mHP0+Fzekbyb9XHxIugCRcsXhD1OMfT5
         AppE6xUxlcpZW4JwBWdEMj463T9Y63Qoi1To+W5zmMcLyCd9PkDAQG+OOQ/tPy5be+qG
         NU0+1V1A1ek8eropf0KRoAKt83M1r4PdeUYxZDVCOde0mY8k9F6+KO21/CvpX168zDzE
         SXlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760388708; x=1760993508;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6DDgLAiuTXzY8R6BOnFwxchMXmp9+zPBlIoePYb2/ig=;
        b=fne/xx1fkmvzNczBcjQ/Noy51lnBdZg44nzPw8rm+bpxNAwbx3s6A/Y0Rs15QPFyEM
         K0tD0lwI2W3Z6wbi/m6lODp1+GI2YMiTz5+GMmTYUdCw4JhVSBnBgxm7Pb5KYXcOk5yf
         G0it2iuO29sOJkBO7pd8vdZQBfTq6WQIei3Bk/vyfwnT0+EHifUvR211IQ7CqOrak+36
         m/OEkRhfSs5k5/ewX1WLndxCf5uQkj2V4o44YtFbIxy34+z4BBZx31bgLZvsvxp1H5BI
         zXwzK4NuMd58A7oemQuymg71XJ5bOp6NZKv4xQJMjrgnRMF7edeiunVZNfdBCoch2cir
         JvlA==
X-Forwarded-Encrypted: i=1; AJvYcCVXH+p4x95FIvMgW+pB0oniDsvo1JdfEpq1AuffJC1H13582vmfptrIO0wHj7gB/DuKpZgUMDrieIFV@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo7PwIhvgVRBeBVq1Bqd9Eu2ZyIZ/ulE4RnNlBFjZhqwypVM7e
	ZpR/WDw4Rn1mTmbDalzbrbL9IhWc3oxZleAfpWD1agN7s44O30cLn2xvwtb9De04BvU=
X-Gm-Gg: ASbGncuNwLWwgVu6oveeONY+44frNxpzlgP0OX/OPeENd6s/c2T0M/LV4/L7T+kfjfE
	8iYjkRopLJKPSA6hWoHoteli8l3g4oBP4I0GuQ3gjFBJBg2gzGDnq//VCWDq9JOaUFGFy2BA7ox
	85nXKoF0Sm1jSrhd2rnLhzmvquG4DjY2b5/ZHkDSb6lajBOiFh2u1ack65BEWA5POj+2MC+4zIc
	YocruvB1+ylMLLSjDEyFsrs7OEIv3Of1gkJL5XHT+1nKOHnB5WkiBiigD2z8MayII+0tKNksHyx
	MZQ1bGrAzc4FbhYh7ASdtQXZgmzza3sbiuf6zJKmAdSRGgWz+ccOpgEaRbezxbLtodRyVIYbZty
	3XbldUk7hyRwoPwaWVtZKvf0WoB1thIsc573xzNcxSTZ5uygSMUy9ZQSAEXlWbrbvQ2Xvx4icN8
	XrQpXCh08/Bw==
X-Google-Smtp-Source: AGHT+IELN9yhf47V0yQ/Ag6le4K4Ap2z1yQxwUo/woxIruFIJKIX9OJVJMb+D4gfvG/a7yKD5FReRA==
X-Received: by 2002:a05:600c:540d:b0:46e:32f5:2d4b with SMTP id 5b1f17b1804b1-46fa9b19f3emr157010075e9.37.1760388708141;
        Mon, 13 Oct 2025 13:51:48 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([145.224.67.171])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fab3e3206sm133512615e9.4.2025.10.13.13.51.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 13:51:47 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 13 Oct 2025 21:51:32 +0100
Subject: [PATCH 3/9] arm64: dts: exynos: gs101: add sysreg_misc and
 sysreg_hsi0 nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251013-automatic-clocks-v1-3-72851ee00300@linaro.org>
References: <20251013-automatic-clocks-v1-0-72851ee00300@linaro.org>
In-Reply-To: <20251013-automatic-clocks-v1-0-72851ee00300@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Sam Protsenko <semen.protsenko@linaro.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 kernel-team@android.com, Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1436;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=HHhcCaMHTmvzw7CLfISLI4i5MO1lY0C65c6w0STPYPU=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBo7WZYm77RM/chRNqrctG1CL2KsrX4TP79II7qR
 R3dx+knfF6JAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaO1mWAAKCRDO6LjWAjRy
 utatEACGzMI7+hTvOKj04raOT4wlY2U+PRycjfuwd+1VMl0oIAbw3TC/BR0ikypgLW9GWBz524R
 fqNhVFX0FvtX9bZYy/DT1/jWQgFweq1++m4ei9OGJUvw0F2svuRkzavreEkhwJTHPI8Mh6Bvq7a
 +scuI9cEB93BBxm3d2NwGUYjKiw6ORSFWd01j53P+H38XTql0mL0Gfy/wbTQv3hrlFU0KdFUmxl
 g1f/e64ZDx+yle2K/p8cpPUpLMjjSetpeMsrVGOaCW38m3VnMADs2fux6kkClx8JJAaEORkocki
 ECM++yXPexJ8pNSa8PemcY1TD4VHEnEkudMjMBRChWc4sjduGoW5Lkq7ZzRT3Q3yFNp59J3MXBu
 MaWJGJDvC1X5qhcr2BTwUGWCB3TAs6+LY2YDibxlQqHyLofpeMibhSER0Gmc48n3jyTZBdY9TpZ
 25wvMBJKP2kCKSg6KhS1YqLRfiHSnLoroU8chpZKolUjsFHyOcFsxM01eu46ybegt0EWuQeJ5vO
 NjlmWPuuxTroAFCqnNbaxaZqbSjvGoDm7pmxCBaFViSDrL0h/4h2pb1N8pbLIoBBUoiu7lydBqk
 A0ZgWq5uP88ZVFSXZzjqlb1/i/tk78rYlVf/dZS9rzz2mcKxavpOFtS2+PgzNJplMYRp78pF3hd
 mUu54unij+I1hjw==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Add syscon DT node for the hsi0 and misc sysreg controllers. These will be
referenced by their respective CMU nodes in future patchs.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 31c99526470d0bb946d498f7546e70c84ed4845b..d1e3226da6472bb9db766926100a6b9855d7a30c 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -295,6 +295,12 @@ cmu_misc: clock-controller@10010000 {
 			clock-names = "bus", "sss";
 		};
 
+		sysreg_misc: syscon@10030000 {
+			compatible = "google,gs101-misc-sysreg", "syscon";
+			reg = <0x10030000 0x10000>;
+			clocks = <&cmu_misc CLK_GOUT_MISC_SYSREG_MISC_PCLK>;
+		};
+
 		timer@10050000 {
 			compatible = "google,gs101-mct",
 				     "samsung,exynos4210-mct";
@@ -1277,6 +1283,12 @@ cmu_hsi0: clock-controller@11000000 {
 				      "usbdpdbg";
 		};
 
+		sysreg_hsi0: syscon@11020000 {
+			compatible = "google,gs101-hsi0-sysreg", "syscon";
+			reg = <0x11020000 0x10000>;
+			clocks = <&cmu_hsi0 CLK_GOUT_HSI0_SYSREG_HSI0_PCLK>;
+		};
+
 		usbdrd31_phy: phy@11100000 {
 			compatible = "google,gs101-usb31drd-phy";
 			reg = <0x11100000 0x0200>,

-- 
2.51.0.760.g7b8bcc2412-goog


