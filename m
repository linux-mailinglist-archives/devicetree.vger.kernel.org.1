Return-Path: <devicetree+bounces-239997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC82C6BDF1
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 23:33:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B4A64354AC8
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 22:33:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F99927EFEF;
	Tue, 18 Nov 2025 22:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Dnx/Kc6L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121D9262FC0
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 22:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763505198; cv=none; b=DFHzRtX+ihh+tdKx3RNEkyRgsYQ2WsHO1A3rsgSTE9bHqKLbQbiGzOkbDv8GNu5EyrqQQcbcgNSlgU+gKn2j0I9ZNsRLMOb83IkRBVr4HQT6zNIzrV+dNJdi4H5PJflRvtpucuxwsT6QVCD5yP1Pjgp0g3f3pd2C1e+47zqEKuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763505198; c=relaxed/simple;
	bh=2Qx/TiqUcyQ2Fblnst2v4aU7Y74+Xr/vNJqSwDTnKOY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jCFtWUo0aBd3XOCFHBgaRWz6WzoYGfpYUFI52lDmjXGrqv0H0ziTF2CEyFZCEt7bpWKiJ2D2p0XpLKxwOVJGzXsdMPJMgRZsbuU9hOAoY7ufcWFy71cP257g4SWRIEIUHFWQAZxBFARQmNKAwgEUP2XUuxDhfXOs1oQi6u48xFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Dnx/Kc6L; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-7c77fc7c11bso234434a34.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:33:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763505195; x=1764109995; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b1i5LMQy57XNEyvnktnwk6NfgYa6TiFuyzzncLbcY+M=;
        b=Dnx/Kc6Lc6uzGYnDv07fMKoMK/GqgGdiyRgn48y2NuulIlpfiHOSjgMGPgPcX1WKJQ
         +MLPkdQUbTORnzbG66o+PX53PXU777dRll6gEsTTcl30B9tzhzucJ4aT4n9kiP2pmbTM
         xdVDlM7Kx09jJAg9FfbJcBek+HdRSY1q0dURbiohsyYPrVcuTBK+bIrSY/k42RBntJgk
         VIMjEKyFFAuonC2/YH/O+SeDJUBif6aFzu8XDX6O7IHm+Do+0cbZkzewu941ek/u3I0E
         8GXNeTbVbVN402IpbfvBH3TBjO3nLBnXRRJeNxLX8BkVbp9mI8iWUdkd4OQsuk2j47ou
         nU6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763505195; x=1764109995;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=b1i5LMQy57XNEyvnktnwk6NfgYa6TiFuyzzncLbcY+M=;
        b=TIxpbJKMY9XqGAhT7REHpTMUWyjeTam7mkpHUec/ZLAQmR3wlQGSgCTmh09ZFpUhaF
         6Lhn4erUtpfkueDJSAte3N/nOb1X7JEWKtLVTTzkc15hMMGPCzTlP4Et/obS2MBWsNpE
         dBd/iCM+sQkCtlPPxYXBvoJQed3zZp/XK4Hfmf91V08wRASX/6MQbNRf2Adg2FYUjRCz
         81rQ0UGtVEw2WUu9L9ABZ/SOtQu/FFFvedqxRiv9VWZ5sl3kWKPjfxjuioWcKmKctZal
         BWd+7rCfw/Wzvj1ft/ho7qwaBRWI8jkYZEjTBJ3Ipe1U6qKw+4xe1yEaobVxkqTfLZ1J
         QaQQ==
X-Gm-Message-State: AOJu0Yw9AHrQ6nTOGBCzsXzGsgK899HJKKYIy6aRPacKIq8gS9rZxmBL
	W29d7Tdb/mD5C5lWLb46wc1QKkD/clkf+2V4/6bBRDup2Eh8Esg2M10ep40xPw==
X-Gm-Gg: ASbGncvSMsVNqw/sxV9CsJwYMwUg0PwY4DQqd8pz22j+ur3GWz8OBiQTuAG+dX1KXI8
	1IJoGr8siXjLjvINuqt4j/62pKM4AqA8x/tNFQemB4GuW0ZLpePsrO4nF8PD2ObGoywTtGefvg9
	7aE8zpP+8/p7T07UpFTX3Hp1uM+NwWdxlW/wWgbQ8VdLqVMqK15KRwMloS41P2De0AcE00shVcM
	m79EMqhUqEEUybkkGom3gr48zNYXPm6UmJ3YgvECMPAIdKxsqbfSEehFNN/ht1K4wGxQr1irjBB
	K1KTdPFZBoDiLjv44xp1s+wBeXckEaMayXMGlrhHWUilI0G54ePvm4hC1WAT7saSy1Qs3TfMNVd
	6KA+WtZqCyugLJVtpgiyVQgf5B0IN2wXdjTONsqpfJrd1ZN2q3dB/OEfM45DpRxV2uvSs55fr1C
	Z7rmefJHpxudcLQ6/PsXE=
X-Google-Smtp-Source: AGHT+IH0VGXvdwT5ardadUJa8286VuWNh/gYR26nwJhtKFC2d8ybKmDA0pOs4zLAie2dNvOtxYqJFw==
X-Received: by 2002:a05:6830:14cb:b0:7c7:538a:c6fd with SMTP id 46e09a7af769-7c782bcd979mr154908a34.12.1763505195086;
        Tue, 18 Nov 2025 14:33:15 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a283b3asm7136960a34.4.2025.11.18.14.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 14:33:13 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 2/4] arm64: dts: rockchip: Define regulator for pcie2x1l2
Date: Tue, 18 Nov 2025 16:30:46 -0600
Message-ID: <20251118223048.4531-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251118223048.4531-1-macroalpha82@gmail.com>
References: <20251118223048.4531-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add the correct regulator defined per the schematics to the PCIE
interface for the Indiedroid Nova.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index d1cef48bcce5..1562d02e85d6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -485,6 +485,7 @@ &i2s5_8ch {
 &pcie2x1l2 {
 	pinctrl-0 = <&rtl8111_perstb>;
 	pinctrl-names = "default";
+	vpcie3v3-supply = <&vcc_3v3_s3>;
 	status = "okay";
 };
 
-- 
2.43.0


