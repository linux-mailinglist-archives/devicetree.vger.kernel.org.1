Return-Path: <devicetree+bounces-227482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D152BE1F60
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 09:42:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17F7D54193F
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 07:42:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 383B528E571;
	Thu, 16 Oct 2025 07:42:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OVrVt1w/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AFEB2FCC02
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 07:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760600548; cv=none; b=kNqRzeFmSZBWtJPwcg1i5Kdoaf1cc7Inl8T+PiFmdEN3ldZO+M8lbV5MZXwnhC0mgwqeN7uRdYTDkeRGiYXPZZDcF/QcgQCnpTEvl4lUJzaHriPM82SIB45m1bkAMu8G26HRPlLkOnYmmPpnWir0CZWml4RLa3XkXs3ZyWfZiRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760600548; c=relaxed/simple;
	bh=ze79z0cIlNbaKQa0MA4ljsXZPan0FmaR8mcmgo52yBs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CMkUzc4gJlVvxzXSfgZGtzyGKWz3F4zzg/W7iEmBD/J1X6lzmypGXFgigI07ezLzW0sE5lFs9dfj9107i0g5TaqBlq3YwoPvZ546/Cn9uD1ublZ9HqIcrfXgRBzIhNIL1W34Os77E6yR2jYq7OpEcWRvIIqF5N7YNUqsYktd9Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OVrVt1w/; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-363f137bbf8so3155341fa.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 00:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760600545; x=1761205345; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WWYu3otYisP3loE3ZY8+Cvk4qkPP9PP2d80k16BNDdo=;
        b=OVrVt1w/jVJWAbag+iuzqOadfBK33RiogSzzPZtfvmMdO703SDl3gGwxOswYDNzJ6k
         bHvz18OtmM1An1owpnDPDsiEJDLwT5RGg9JJOT19I5ckH6T1vZvoNUzQ2hA8929Y0h2K
         Ey3TLLEhQZ+0rxp4lb1XVJJBfPTDmOdTx4RxzbXpH2fQAIOblZha+wxsPfdUdCWJ0g75
         CEKZYoYL5k2ARLmgcDglOlyEFpoS1fIiRvohl+89i+Y25xns24lUUdp+P6aSS0ZqReBK
         nEwFes+7TVGHQniKaxgTWwdnN28bpiVADI5/uMTNvr0dJHtm9QYTONrAhigxBxNqXVgI
         sA7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760600545; x=1761205345;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WWYu3otYisP3loE3ZY8+Cvk4qkPP9PP2d80k16BNDdo=;
        b=avI53UWYiIfFxEjW+mTTgEoD20MSco84Fv9P5NHwp220OkWV8YVfQXxyurq/2x+Sng
         SzAqY7xQ5HyYdQEFxOibtG33NsHbscs8FII7sF7DUNRRGTxyfXVr2b0oMEADen83gSW3
         hKfJsirjJH05ZfFqB1UNDKqMUBB7zU/TaURQPclM0hBstkXsgBdXl9Qr74wmB53icctY
         tVhc7i0qQEH0/ePdZbaon2Nies44CuibkXdZd+HyoXIPNt7jSoXEGCCtIef8FKCemQ8d
         kXnl2bEC8yq73hsH3anhUd5UseK+40sl4sqnJE3Or9qQBnliS3XJwASVgMx1Kf/UlW70
         bNlg==
X-Gm-Message-State: AOJu0YyeLaRxrAdIPW8hM6gF3OZ8Q6Jow76x1ckYLmf/ZG99HIvKq/Rx
	z870bL7gDhQsy8J4uVduR+WKs6E/rKLnDmfkpP4Tk72rtDh4YjdWlgDt
X-Gm-Gg: ASbGncufPbgnZGMGqjtqjUXEiG75pOm2QQV6bEF7vjjHbSyt7nNALC29+Ju5jdcKObA
	deDxAkW9Wfo9mS6WRmOuL/sTOiP9/hnhXheKXbDbrL9HWifxjlEoeu76RZ/2ffeO8mGNsIYKslT
	l9XgEomm7g9QG2JP9CjlS81DKZagD3lkb9JimYv7s+hyxpn/mc2f+1dOezVfdUL5FX9JWRJZnf9
	/zkwBa348XRwwdzq1VGkRybDRqSqqhP7+ZLQkl6EEplk8hDHe66j0TWu+gVv3JN+OKkOFpSaWSP
	JmazyJ5Pvnu/5wHrfe2x980oSn+Zpm6Sb39W2+C0QTPeqQkIdnwEMKnBN8iUqVUOxIvR+7gGWzV
	fcLKDUCSHXwnAyGOIAe0QYj0796gQurVyRwlfuQvwRZZP08u+U+IsyoHj4grqdmyAzyUv185Yv/
	KB4w==
X-Google-Smtp-Source: AGHT+IGVgf6/RN8IUHFNYJOZvU23WBLAQhmiwYE6OkYEXsUUlwsCRkSsEJa3T4KsUiG0urBQytUN8w==
X-Received: by 2002:a2e:a98a:0:b0:35f:a210:2a35 with SMTP id 38308e7fff4ca-37609cf7f62mr88037521fa.7.1760600544458;
        Thu, 16 Oct 2025 00:42:24 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762ea14d46sm53226121fa.34.2025.10.16.00.42.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 00:42:24 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <treding@nvidia.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 4/4 RESEND] arm64: tegra210: drop redundant clock and reset names from TSEC node
Date: Thu, 16 Oct 2025 10:41:52 +0300
Message-ID: <20251016074152.8759-5-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251016074152.8759-1-clamor95@gmail.com>
References: <20251016074152.8759-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Clock and reset names are not needed if node contains only one clocks and
one reset.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra210.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
index 942e3a0f81ed..cbe54c4e5da8 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
@@ -183,9 +183,7 @@ tsec@54100000 {
 			reg = <0x0 0x54100000 0x0 0x00040000>;
 			interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&tegra_car TEGRA210_CLK_TSEC>;
-			clock-names = "tsec";
 			resets = <&tegra_car 83>;
-			reset-names = "tsec";
 			status = "disabled";
 		};
 
-- 
2.48.1


