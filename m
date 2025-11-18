Return-Path: <devicetree+bounces-239996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CE077C6BDEB
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 23:33:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 7B8452C168
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 22:33:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D6812737FC;
	Tue, 18 Nov 2025 22:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PjoPXn5D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AF5262FC0
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 22:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763505196; cv=none; b=F0BvTFLd7npsj5Rkah9a9YQ/988R28mc5AiQA1MeMW19zyeo9nAs8cYuUPO5MpBEK2sJziXfWMdksUq2AR3L0pi8ZOwprBFjdRoOwKikN5xCo4jzB5n+l7rKelg4C0FbMbR22pPR9NobaLJPounvZkUjNq/oA3rAa1oaGAilW10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763505196; c=relaxed/simple;
	bh=t1oKzsmMXuWFS4FT/mrJZWJO9Y4DXKq4BVX8cP4hh6s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=I1MDq5Ox2BR3jXOSn+tPviYwkmZ5oO84OxPOuZurEWTWzKrsG+hywWlPUzapyyn21RpQC5YA0tgUQCXxmNIgdM1hklt/Q8qOKahXSdtMBs1emJ66xEIIgNzImU2aDM6f8yo01Gb57ZPRCOnrO60qf1gAa1X+hEX5YVSvbKVEBQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PjoPXn5D; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-7c77fc7c11bso234406a34.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:33:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763505193; x=1764109993; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EFl1M+aZQbK/RUGnlQqp9WjJULhOpbyDXAT2VaTy8aE=;
        b=PjoPXn5D652UrzevAUor5gRcmWdG1ysd1Mfck2DWYKZOFUc7s6MWW4l1VcxWyeLZ1x
         92W64mGa8I4zKNQqUDfZRRLFusIk/hkuiMnWQr8ItPYMD3WgHgoxZsgmjJBSccMZ7EFo
         LQSGPCInXj79+Y0PcEvOs2YA4vqwC9NH8bAB136/VkRspKZJNYbYsEHWTRSDfYgWil0V
         CGKrpRlrCHev7t82JMzz7j7g1ws86IBAMlWRk3m3fvJNCONPt9q9YcL3JJ6bebfNuiNZ
         zcnqrGxpFwhsYJZVxHjhlLnv4tsate1VFuLncw+SPOOu7GAuxvRkyqssQccAv11wucxH
         SpbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763505193; x=1764109993;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EFl1M+aZQbK/RUGnlQqp9WjJULhOpbyDXAT2VaTy8aE=;
        b=mLmLI/tmQqCbFlp8lRgzREPFLVRjmj+HuNor36QlMS/fd1bqYPGENi9DnFN5L9gxq+
         K0qEzN32A3dypgi0xCvAS6u03IAI2I136xpOyU0LukGybdoOTZVVO3Xi4WjprcKv5+t8
         +Cvt+jdNun7Aec7cTRSE/GOkeXQUtjEAXEf9DJF4FlW3PCV9J2jS0nwzpdCv3sjAzGHE
         9sERY0eZ81GJNsUslznsrIPFqYk0ZljxJ2gQmb+o+u93DUGLj/JwWdRhjCcGiZR+QHgh
         DaXt96kG3M7BJaqdFWxDXH+YM4N14WXpDFYdnUCURyFqAuRbLiJrv6kGyA9a4MQ64MMo
         bxyA==
X-Gm-Message-State: AOJu0YxXU3pWrEPrsQSvy2RWdnhYkadgRkRbRmf97nXzgv7WIXLYNMZW
	4bM0RRDPSpiQ13MeZagIFI7dWetcoXLf1RiBqhqy+LwEYCTvnD8AF4sc
X-Gm-Gg: ASbGncv6IP+i+8oCQTcJW9wu9jCmrBW6IjIUt7nbAvgZm66jSk1t+d9oYDHiJxG3jEi
	qpDvz7egIWSDuftul6jOXuwfxV2Qfjw+oSEU92TOxaIi/59oZyJR3k4SUprMIg2Gqoa/Akpu6AM
	eeNTd3jRArheH+Rl5YO4hhMlEEjg10sIADbEuiUpnpCOm9G5KI/l523bRmGWuRfPmEI00nm6Hhy
	GkAhlICZdul1C+9S5UlsgDNlNYzTT4W2Qa50Bn008iF8xZU9EVbAyw6r6b6tp07LYoSdjuHXpnb
	G3kT7u/5d9DyekRR8VUWAdeIy+YQ9Ip2YFfGOajCtjuwqAzDKtWYsPqQfy5AnfDuW5P8KGokP+3
	mNTF2N3prn2KxCYJEElRUAaDo3RRXk695PV/lxf5v2JuPPnGWfdXpguGbooZM6fknGSf9ueQ1Hp
	nyHcV3jmdMB+XYmHEo47o=
X-Google-Smtp-Source: AGHT+IFSqViiJBcsrAWccVkLlo/b5OZmrDScvvMHxElzmMEKncX1tRoUUzx/ohfTt++bgQVux2LhQg==
X-Received: by 2002:a05:6830:8d:b0:7c7:5ef4:a52b with SMTP id 46e09a7af769-7c782bce174mr149954a34.9.1763505193219;
        Tue, 18 Nov 2025 14:33:13 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a283b3asm7136960a34.4.2025.11.18.14.33.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 14:33:12 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 1/4] arm64: dts: rockchip: Add clk32k_in for Indiedroid Nova
Date: Tue, 18 Nov 2025 16:30:45 -0600
Message-ID: <20251118223048.4531-2-macroalpha82@gmail.com>
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

The clk32k_in pin of the SoC is connected to the real time clock
according to the schematics. Set the pin definition on the real
time clock to reflect this.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 769f4a7adf0a..d1cef48bcce5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -430,7 +430,7 @@ rtc_hym8563: rtc@51 {
 		clock-output-names = "hym8563";
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
-		pinctrl-0 = <&hym8563_int>;
+		pinctrl-0 = <&hym8563_int>, <&clk32k_in>;
 		pinctrl-names = "default";
 		wakeup-source;
 	};
-- 
2.43.0


