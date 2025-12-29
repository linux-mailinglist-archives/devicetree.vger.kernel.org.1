Return-Path: <devicetree+bounces-250124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A05CE65AF
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:14:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 79FC8302C8F3
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 10:12:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B722B286891;
	Mon, 29 Dec 2025 10:12:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dv+kYaRN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A00CA2D3739
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 10:12:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767003158; cv=none; b=daLevXa7zR5JqD397VUOWqEAnQqppAMti+7Mp9wYZHPV3voViPxOpGP2Z95y6uc9U/Nl4bfY212WSbjNIXMWghcUQzIYhORXEY4DCBS4ojd+TWb8C4UzRBd2zUxfesSYGmyHIg0dh2wpuYSgFZk0tvmqscPq+NsJ7BtNWws0Qpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767003158; c=relaxed/simple;
	bh=OooD6fRyFOjS0mO1YMzNXxir06GTfmMqij3dBS4dPBM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sPninDyonuWoFF9/Vn6gUJiqt8H/Ar14gk6fLib9lU0FpyQrCZICXKpGS543C5suI9N0yNL/HEMeER8njDgNhOpmmF31joN+j2n5DJ0oV6DDr/5VXgbQkE5AKcEjqABZWRFGiwx1uBtpuXgsaUE6sSo82jpaODAcc783RvvND1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dv+kYaRN; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47aa03d3326so56513565e9.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 02:12:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767003155; x=1767607955; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VGgTBGcNFuHuI4o3/AyC860PdSUNdaDSZI2EXc9oNpY=;
        b=dv+kYaRNC+xxDNKl5RBbDfi1EW1+SOxB7CY9kQtWwPf5waHbBbHpA1HneOe3/CTDiw
         ZNrFSkcc6bRYpjSr35jsTkXS6AeCC3ktKNOzCjn3qMEjlugaGTIti6j0+94woPC9oRAk
         ZcfmyggaKbT2S3Hx3u3CSjWKFm4IJXq5Vbh0HCvH/2+vaqj3+nNxr4A0Tyrj1G2kTI72
         X+7XNxXcNpri8KaGgmGAKUu+76UVepy+RpkWjcuH403lS72wo7MIOdtV4/yrV7kb8k+Y
         z8w62Pv+NB8IX/CU/Aa9tAFkp5WiMaoc2dqYLBJkSuc700jQ7D3w/hLg6oRyu7KySjjq
         iqBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767003155; x=1767607955;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VGgTBGcNFuHuI4o3/AyC860PdSUNdaDSZI2EXc9oNpY=;
        b=Sbk1vgb7jgiDqGJ3OshomPzspto+Logk2x5+z1e3iClO9XkV5HQVcIZZhPIsxtYa59
         rIwK86iTAHpfj3xoHy0DtjNR6VuuVEaZBd2M6A0pbU72a8G/T0OZdb9re438vDuLnahN
         WTEtbkU819Rykh0ACH+PGgGyDoeNmoVD0SF7cbaYUcqFf+TLxT17/XBRsxUwbM8MVBBr
         qP1sQBXZGWTek0QWUIJg6XHISDVilCVV0/OwdZHee9WzPWPDGHMZeptqV74PGVB/byUO
         OkYCRtuqFUMnfXL5jZi6FqoNIkDTDXnsIAILcABJoChi9xxpC+mxKFoQPbHuRbzFLJce
         HosA==
X-Gm-Message-State: AOJu0YxLZEv8yiMQ8nWIIB90mO8aiWd4DS+BzFAPAOO+E+fxrWixGL11
	04jZ35Ex0oY0XYGxMTU0blXqeWfxkoUprGGRztmZTIg5749hoJshEe7s
X-Gm-Gg: AY/fxX6jvd13ddfrxKcyRopKYvcDkFv+CwkH2bOx9eiaBPijRxMmOYbnqmvLXGv7YFE
	PahoNFoH9zZWSYQl9Dh8VAezT0aShB+aWiyasgz2n6TtKjpCGjpqKtReIYpX8ZxYvW9lPxXGZAC
	/YxDxr2bmkMuPEZ5TJ8/Bgm4vYbVLSRvMxvgDEp375HbyUFNfFU6n4Asa5GE5lcxgoKcPJOVEK4
	sF2xtK4w6SUfX64g0Yvtfno5y1ZvgQsvdlpCX/DU8Ki/3lCbMijHP3Eo3ZlApPEO3zABPjxwBMB
	UX+FX9csJdBSv4b/Ynkv9xsV38cWqUMrUcMZDFw3x1Om3LLT9d+ejyg6zqSwSZ729GIJYcPNjEM
	vqizCx73BPoTXJla4Vkgg/IDXnBdM/HVfAz9riPKZc6DzuUZeqqEHxVIhJdr30H0si2OOYAhDod
	F4wL6v76DOxM1RmLlcvoyE1HLd3uU+Dj3X/xbw3qKclh8F2mcur+N8guJDXlie
X-Google-Smtp-Source: AGHT+IGfXKnZy0mQEglh0zPN1XxzIExkG6slZr7PVYIaEqHddSi3MvL+67igL+BHOkrNg5yaUhVkDw==
X-Received: by 2002:a05:600c:4686:b0:471:9da:5232 with SMTP id 5b1f17b1804b1-47d1954ea05mr393600985e9.15.1767003154809;
        Mon, 29 Dec 2025 02:12:34 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-45-246.alshamil.net.ae. [94.59.45.246])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d583f42dasm19840735e9.6.2025.12.29.02.12.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 02:12:34 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 29 Dec 2025 14:12:03 +0400
Subject: [PATCH 6/7] arm64: dts: rockchip: Enable HDMI sound on RK3576 EVB1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251229-rk3576-sound-v1-6-2f59ef0d19b1@gmail.com>
References: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
In-Reply-To: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 John Clark <inindev@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=890; i=alchark@gmail.com;
 h=from:subject:message-id; bh=OooD6fRyFOjS0mO1YMzNXxir06GTfmMqij3dBS4dPBM=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQGhTA9t50ZuV3zREXc1zM7/v5NP3N7QpDLYznOfSfuv
 Lq1RnezasdEFgYxLgZLMUWWud+W2E414pu1y8PjK8wcViaQIdIiDQxAwMLAl5uYV2qkY6Rnqm2o
 Z2ioY6xjxMDFKQBTbbmb4b/bpw3JUv//Fu41Peu++PTDIxYVaYsLHHXiPI0l5/2v35vByLBjOd/
 mtX3xxT8NFnz/U8RuZNA7T/vFvYZjeWfexFwwq+IFAA==
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5

All RK3576 boards get their HDMI sound from SAI6, which is internally
connected to the HDMI codec. Enable this for Rockchip RK3576 EVB1

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index db8fef7a4f1b..deab20ff4d97 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
@@ -315,6 +315,10 @@ hdmi_out_con: endpoint {
 	};
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &hdptxphy {
 	status = "okay";
 };
@@ -835,6 +839,10 @@ wifi_wake_host: wifi-wake-host {
 	};
 };
 
+&sai6 {
+	status = "okay";
+};
+
 &sdhci {
 	bus-width = <8>;
 	full-pwr-cycle-in-suspend;

-- 
2.51.2


