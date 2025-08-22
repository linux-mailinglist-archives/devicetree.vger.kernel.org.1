Return-Path: <devicetree+bounces-208066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F802B31771
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 14:17:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 78F75B02009
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 12:15:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57C6D2FDC26;
	Fri, 22 Aug 2025 12:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FpZ586V4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 711E72EC570
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 12:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755864879; cv=none; b=RcNqmZKHwlpZC7IbKm4X9UNo4SQRuUd/Uh5q85+cdYJVs+cYy1S6Zo35k7mS0R5OA1tKSeVgSQYxxVvzSvQs2o3LVwfhzvQwW6k2HX6sUUYS75vFyZcqKQWRhBO/5Xnwk+UzU5SCFi9URsjO0LAb8qc4HhhuhT5M/6Qm6z94o6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755864879; c=relaxed/simple;
	bh=Xg8fbeULkVAunNHSuMSzm27A8P/HmltLuUUNMaXdfUY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AVhTwvuynkb66tVe0d5c6qanyAhwwEJ+4qp6py5mOVdvFov8JXkKWR1hg521KT7woigszAMTqJxz8AvkHDltyD9z/ksdK8yn3jsP9Hvwz62CPwJvS7ENlnLKavzGaC8k3B0UZUP4eekwdC+7ho4e7zVsGH/vf1RyWMb3+d6LiZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FpZ586V4; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-61a54560c1fso281958a12.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 05:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755864876; x=1756469676; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bS3pk4A3vwWotpGEwKef8o97dm0WRz75Dj7bwTZ/WIk=;
        b=FpZ586V4jzS9Sag5EmwpsZGuE9eFD1gXm3TwlB9woUbDVQrgdAa3OfL8Itp2EPK11Q
         Hjb+YzeOSM6GfG0HDUDWfrM6/SRnfixuvS2/R49U63+NdrL201P4re6QPlB4kYCP7EQl
         fzf4TMp82/2aP+rerfygIyaenkG4AmA8xsuAFspyn9ydHg0lCP8/q1g4ohBHREDBvysa
         Zfq/vgsYrjHMCNmIOmBjrNdVHOuwVA1EplYiEsal3wpPt+F+7jhvphCR4xJzcDelsnv+
         bF3cTkj4SbIiVPr6Xu1ggM6tn1zgbyla2BktMKQ8juTANULfQQ0IZS+/LuLMzhotbBoA
         N2Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755864876; x=1756469676;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bS3pk4A3vwWotpGEwKef8o97dm0WRz75Dj7bwTZ/WIk=;
        b=R5u6KiE/vXj4XcM34fcX8kumCDaNZ58bz5WF+COl9EdEo/oNmtNNSqeY8+mz51kJIv
         8SAMmCPzzG60B9uiX++PtLUG55gAxvq2k1rodbVyCqdOSLJahxQ2KMqW9ae0OdZn9jbu
         zSVNLlnDw6BKDCOaXWWvfKlir2FddxhJaWaZuns/c3mKAF5mo6g4fyP5sM1UusA07paS
         kjr5oGG8lrGMnrWQRQ/DJu2VSQ+ppttQZXMYPRg95+xbRMF1Jw84HR1tsyxzkTCxI9dY
         gP54OJBuXvjhyuKIBq9K6Y/ToLE/b/0M3NLif/PmkKXbuv2I5rxfM07zH/AW9JIrVWJl
         a1wA==
X-Forwarded-Encrypted: i=1; AJvYcCWBjR2sp8dNRxkPka8h7X/JPIGlTRJpkMb4aMXrrbXfRkiyy+sGIRRoqPOXlusYYJFsvjqoqptKHFQ5@vger.kernel.org
X-Gm-Message-State: AOJu0YyEmjHAd3ZBN8zQpnXVcSCBhcD8rI63stDuwMCHGU5k8BQd4vJy
	2X+dlHMG16s0K/SWWDGtjcd8X+vBfX6w9virxGoPg2Gv+rTJd0Z1sFaBpLs0UQaYLf0=
X-Gm-Gg: ASbGnctBd1cXG+XIa6km3TKAlW0ZX++j433uCs4dxr3Ag0LbnhzSvwxp9sPPLcVq1sl
	bBHwRlKHdC2dxbwiUKgk83rMhECj6TJJq1MrGKMuqg/pbL58J8A3DEAGI4TMypnuMC61z3aX2MB
	MccgcsEvrRJx2zpaJZH7/PKAWy/UdkDWDQpu99vrqYbjR/cSTQvP9aNzTZ9KsBC+/0COW6D0HF3
	u62ADb9/GZghXLuSyxgeRYWzdMh1Nnkkvd+KyzDFQlbMCyFIKqsJJNxZJ5JeaauqX97Eb07Y8ql
	pzwhIInVTUyUv5VwwnnrX4mXT7xIK854QjMGr02IC2Lx/rl+365isuJuLW3jke7l+FqeYA3W4Ji
	qRWdJvvN79ektXPeRG4MsxGDU9pQzvrP8cmI+lb+6bGEU
X-Google-Smtp-Source: AGHT+IEs5KmocG/KlG2h0mSlEdpjChfOeNLb5C+4lvVluwFDeR16CG9SFzVcRYZbx4Bk+B/miczFYA==
X-Received: by 2002:a05:6402:34c3:b0:61b:cadd:d84 with SMTP id 4fb4d7f45d1cf-61c1b2193c5mr1231624a12.0.1755864875727;
        Fri, 22 Aug 2025 05:14:35 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61a75778c5dsm6842065a12.31.2025.08.22.05.14.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 05:14:35 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	linux-fsd@tesla.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/4] arm64: dts: exynos2200: Add default GIC address cells
Date: Fri, 22 Aug 2025 14:14:27 +0200
Message-ID: <20250822121423.228500-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250822121423.228500-5-krzysztof.kozlowski@linaro.org>
References: <20250822121423.228500-5-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=863; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=Xg8fbeULkVAunNHSuMSzm27A8P/HmltLuUUNMaXdfUY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoqF8iqytdsSKdAQp7OV0wh+MN7sQXLAODPAJWe
 RxyvnA72wKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKhfIgAKCRDBN2bmhouD
 1/FrD/9T8gtPfLYVVMoSMObYA+o3SUHEGhUwlrr6NN6OsRErI+9TnP2Q60WHSUBrmH1Vch3Us/B
 egXQwdy5DAy94htJnu9b1V/jPaM6OfVsOOPCW+2hJZR0bBo3a8DRn2Wsh/KJRLhswIO9cA3EOUX
 zhz1blWRGOpRavXkXC32Q2zE+73l/OVNrKzOdAlt2t2Pzwyc4pmkptaEm4UKR3CIqAdBK8lkPAw
 5WXFs1090LyabpZhqMwaLKxg+l97LUfrico+E/8eez/UP0dIzbgPF4wz3dj/LOWohZVCR4TDHvT
 77VPH/BA/3UsW3pUVSKsgl4/TRDQG6rZHfHOzGtmxMNfJYIfc0JwhYdJqig/nyNGOQiFtNdgF5N
 YO0A7jVXw/Ut721AguDqg3J4/7kZEprvgjXIna38iX6WCi82RupWRtIFu/IdrFGcfmPv4iCICDr
 ew0O3vZr3wdD311zj77Os6N+Gm5hHnr52YyKqm1QNo2uny5P4oq5QPRo0GYt1T2K3cweGPn+8Tx
 6mHu6xRaGKidjX98H5ACEwF11d4vZvRZQhaDPDJtG5R/YRheG1N7XNTZ8RVH8vss71G+TFpxr3D
 Nhedh15zAS1ym05PrHCcBiXqDhMyBXDF81XmMRaMomjHbmUyK3r5Sq6xPOKqBwL7tIkeIOqg9Mm Dl45IID/LarMebQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Add missing address-cells 0 to GIC interrupt node.  Value '0' is correct
because GIC interrupt controller does not have children.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/exynos/exynos2200.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/exynos/exynos2200.dtsi b/arch/arm64/boot/dts/exynos/exynos2200.dtsi
index 6b5ac02d010f..b1fe315b40fd 100644
--- a/arch/arm64/boot/dts/exynos/exynos2200.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos2200.dtsi
@@ -273,6 +273,7 @@ gic: interrupt-controller@10200000 {
 			reg = <0x0 0x10200000 0x0 0x10000>,     /* GICD */
 			      <0x0 0x10240000 0x0 0x200000>;    /* GICR * 8 */
 
+			#address-cells = <0>;
 			#interrupt-cells = <4>;
 			interrupt-controller;
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH 0>;
-- 
2.48.1


