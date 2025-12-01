Return-Path: <devicetree+bounces-243221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5C8C957E2
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 02:18:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 151BB4E2D31
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 01:17:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E26D2135AD;
	Mon,  1 Dec 2025 01:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i9rSoWvf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B4D1E7C23
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 01:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764551765; cv=none; b=bTVt3qwoRrhLI8Sza2uvEsbLm8REWNwnvwCE7+DTMXgK161XepQC/yhUipGf9waD+lH8Fkjyyjaj61pwKLIl8hJClJL4qb3LuxSoPSB3UaJHPlqFAbu/1+8PQsAUjxQRSAlFyH0CedNmh/3cw+kAC8ZI/cXnJuxyjjExS1543oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764551765; c=relaxed/simple;
	bh=OkCDO9ck5Q4rj4jCmkv7rseTzENdZD+IfBXalzly0hU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=HXsQ6vT8xiVhuojRXgWMMZdc4NeFxt5gp6eIeAFXBb0V5ausbRqDuqASuzzk/QKjBWPPKmvYCUtcr2eMmu7CZw42WqQjahhJ/6fHJA6rt7IhIV/gLdOa3vYmd4Ey9lhyjQiD7nabS84IzbrDfI7tRGi2m1MFHVJXZkVCqN80kR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i9rSoWvf; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47774d3536dso28447225e9.0
        for <devicetree@vger.kernel.org>; Sun, 30 Nov 2025 17:16:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764551761; x=1765156561; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TIc9HiGTae4NKzXvKMP64+f0l48VwiinzatOpKlXzB8=;
        b=i9rSoWvfZe4uuG3eI56V3MCwO/elqwfYQj+MITbG1BrjMXeTLL3P0WbFh1x8vpxz8h
         cKWzwyjYuL9pHqKbVIeG5lX+LmcIwfo75RwStRu2TkKe5frpL00b5iA85BFXWMP8tOZp
         HkZUCShQTABCXb5K+7RLyxRaRilvUkNESkbqvKX7UxfHTZ8lGXKHOz6vw2os4kNHSKnY
         0iw6tTgzFIsE2jYY9F3K1e/rpoaz9+cLw++OLoqVNGxIg1vPentu9UTd6PfOQvW8UD1D
         vDfiB3Ny3PpvEHFGGYBrWiYE0eqzdDJG/Me2mwrHZLodbq1rE+vg2+TDlo82DelOgmle
         4Vdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764551761; x=1765156561;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TIc9HiGTae4NKzXvKMP64+f0l48VwiinzatOpKlXzB8=;
        b=FSbNqy1QfI0acpDwQsy/s2zu8MDHLKjKDdGYxDWg0vo3ZP5YwIH8G709uUtKF1qBG7
         7fMnxH2QGfxHdkuxHEdRkZbhho9OlNEFAjMrMJPrODNkO1x1e01WTLGCrvoKqQxT+hWy
         /xbgAnIigMJtmxvpIEzPhoBRABnjde08Ez9Q0uvm5vENwdSXtwSLD784LSQxAWxYbPZH
         x7DlU9g+pu1h2G7IiGKN5cUYe/Zb8UcG1aAZKE76r0kC0uSHtNNucFf0Y1KHo2qFCWlQ
         7BfFqblV0v6CwnPQp9BD9ROAf1vb31wd8VpFdCy5/ZnSfkAVMrJWf+wexWbo5irjoc8I
         cLtg==
X-Forwarded-Encrypted: i=1; AJvYcCUMHmvTAOC/cd516akB+ddBE2PzslvTLiZUmBHONQqu+X4YKRiy/kYoj4c/0KdtlEf3r8pY7b+uQeDm@vger.kernel.org
X-Gm-Message-State: AOJu0Yzydb+bsxQCU/Bp1Ky/X0Yh0HUmJHCqQ4b4N0BwkYjTczsN3f+3
	UgwHjQ1cJXpZ/FQ5IF9fNV0Y75XW1pLS/iluOSVdtqWH0gZ/FiXLnGEG
X-Gm-Gg: ASbGncso48XxVbMYdLstL4SVBFaL4qlrJzapc8r4d15vGzIPwnRpglTXi2M3pHCHMrX
	50lAvSxFZLIviBJfEvSw3Xnf1RPCipdwPCf6h3TJ6birUDD0fShsGtMdGLWXwGb48h+p0oNyjaj
	kakZzCAZuW50xUNirHwkCo5Oi1qJlGIx5mV6QQI+2QQPA33YceQyb+sBNXryPN8lXr63U8rt9pm
	n7B+tGkUqrSA/XhHEkTIipiD80ZDoik0G2p2SNQB6npDgK9wdf9XWZR/nIw0KtZUXmyA4EFAFYv
	I3ItacqtK5jLJOqJv8IWJ3Z4ZnyhEJgeXLUEBV0upkaxn91GRKosJESSojksPKS1d4qPBP31jVF
	Yz2/oP79iOxko6WB8Fmvuw3qiQdyP2cVVyvVox1elSst/M+345vIj8trkZ9n3AvfotEvdr8Q7SF
	oTqxx8AzaJ91xtl+pUvkd1dbJo15fM/A9qnnypHYlXQ3Hgx0BY8kY05G4yHVLTAxtr
X-Google-Smtp-Source: AGHT+IGm4gC/z/V448V0Dya/MA433KTldbgXox5LV2IX+XB9gf9DTH0dNZJEX3DhUVGCCIzrPAaDhg==
X-Received: by 2002:a05:600c:21c7:b0:477:75b4:d2d1 with SMTP id 5b1f17b1804b1-477b9ef50b4mr305611365e9.15.1764551760881;
        Sun, 30 Nov 2025 17:16:00 -0800 (PST)
Received: from alarm (92.40.200.0.threembb.co.uk. [92.40.200.0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479110b6da9sm216152305e9.0.2025.11.30.17.15.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Nov 2025 17:16:00 -0800 (PST)
From: Dale Whinham <daleyo@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?q?J=C3=A9r=C3=B4me=20de=20Bretagne?= <jerome.debretagne@gmail.com>,
	Dale Whinham <daleyo@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 8/8] arm64: dts: qcom: x1-microsoft-denali: Disable rfkill for wifi0
Date: Mon,  1 Dec 2025 01:14:49 +0000
Message-ID: <20251201011457.17422-9-daleyo@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251201011457.17422-1-daleyo@gmail.com>
References: <20251201011457.17422-1-daleyo@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Disable rfkill as it is supposed to be according to the ath12k feature
flags in the Microsoft Surface Pro 11 ACPI DSDT.

Signed-off-by: Dale Whinham <daleyo@gmail.com>
Signed-off-by: Jérôme de Bretagne <jerome.debretagne@gmail.com>
---
 arch/arm64/boot/dts/qcom/x1-microsoft-denali.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1-microsoft-denali.dtsi b/arch/arm64/boot/dts/qcom/x1-microsoft-denali.dtsi
index 64eabe2b96cf..0bde0db01f47 100644
--- a/arch/arm64/boot/dts/qcom/x1-microsoft-denali.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1-microsoft-denali.dtsi
@@ -976,6 +976,8 @@ wifi@0 {
 		vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
 		vddpcie0p9-supply = <&vreg_pmu_pcie_0p9>;
 		vddpcie1p8-supply = <&vreg_pmu_pcie_1p8>;
+
+		disable-rfkill;
 	};
 };
 
-- 
2.52.0


