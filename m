Return-Path: <devicetree+bounces-117525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 894D89B6CD6
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 20:25:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DFCF31F2227E
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 19:25:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05F7D1CF7BA;
	Wed, 30 Oct 2024 19:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d9+uwNM3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF841CEEA3
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 19:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730316301; cv=none; b=AR/0tr7jgDPqihlxjyrLbxxUJCIf4l5EfIlfS22O2lhlR6gj5Y5aF4XRz0j7Ne0sJaAaa4KTlVpLjneFMKTGqHozbBm+YVMF3uOmwG6UOPMS6zM7PWlz8fcEyxBJT7eR5vFGZ66bFXBJbSnV4RUIMmA50K58oHYg9b5xyL4VK8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730316301; c=relaxed/simple;
	bh=QkqeFj/uHwD+PwVRbOy68PgyYxaJKtp6lCDvoGbC3ro=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fDYRgpWkVP4rRfzj/FJGPIvbxt6Ti36U2Z1AFXCyMuwwVCPGWMHGxt+YC4/3vSO8smij5XjjZjvLIrrs4q8tx+Nq/kn6Iid7H8oYBU17rhGMqWG+Y9eLq9WS6fZZuMUV7hYGbTghkBRFpvOzj+KfmiINM72mcWYhCFH9MYW0q5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d9+uwNM3; arc=none smtp.client-ip=209.85.167.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3e6010a3bbfso161743b6e.2
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 12:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730316299; x=1730921099; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N0jI7anFu6tACdmq1ktw+g6zdLi6HmxfPbYpW9ePEvg=;
        b=d9+uwNM36e9VT6yeQIALgE+zsfpLPTFT3F974wZVVvLlHJxTRuImW89jVwRPBhvAKM
         EIr6HrBvbsSoO2/24Ikv2BUoYOjQpqfxvvF8EJ1qouZM8OoRYjGejgKtNCcAn7kJ8utM
         Gos5ysvZraSjiUG8QzluHaq74Gmp69o9YjAKi6F9VWg7tKL6JuL0UXEil2XeqsaxccHw
         hfcx3uF389pEF7zLMd7H0fey7NbcjehFXUGTaJ42HE27LMkqKDV7vMiXWXiQVDGe3HgZ
         ygMB5x9rmEfF0PllsV6tM+OYkrdxGBYE6JHyVKZzba5fCp7nVdSafxa0XonwPm7nkrur
         N4ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730316299; x=1730921099;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N0jI7anFu6tACdmq1ktw+g6zdLi6HmxfPbYpW9ePEvg=;
        b=DOpEBGob0bn8g4e4DzIKxYNANHcQyKdzPp2b+i5pM0goG1m10CQYPF4LTlOSbMg/JR
         cB1Qew0gwg/NBZEAc7iLVLLFinZZGvy9o6M0hvr8msWVL6PlFGiYZ0ZJZnHBEzX2cnGs
         /KD1UroSSM7bJt0v8jxi68Pa06bgcfJfydNgFJw5p3bKsE3njfuVQ5ZAilJpglxPShV0
         V03BeKdQrhRbHYph5xodWr5T09cRcgYwoAG/i8dnkhQ2OhgwkQspMPeNm7wFeQtfwRMJ
         oPboWmMvDzCdKI5LjL/mWHvIZnfOVU2e/77upiWgvv9y+E+KID4rXtx++2wmALysul1m
         48IA==
X-Gm-Message-State: AOJu0YyDsJLVx7HuQ5wBVIH3eyXLZK59wc4NTeaiUtn236j8miEZnVv/
	8E64pvDy/cthUwVtKnLufmsrME2IA+DLF4AvW9YR3NQTTl6mnh4CCM7yog==
X-Google-Smtp-Source: AGHT+IFrqkfM7z4LQrqXwq/YG6kPA6xu7Hgh5LsO3qpoCQRLhGx71THyPMYVSfC+R7c2gCQDbzcfyg==
X-Received: by 2002:a05:6808:f01:b0:3e5:f172:3a3 with SMTP id 5614622812f47-3e6608e06dbmr524825b6e.19.1730316299245;
        Wed, 30 Oct 2024 12:24:59 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e63248d3e0sm2689204b6e.24.2024.10.30.12.24.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 12:24:58 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	honyuenkwun@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 1/3] arm64: dts: rockchip: correct analog audio name on Indiedroid Nova
Date: Wed, 30 Oct 2024 14:22:34 -0500
Message-ID: <20241030192236.839105-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241030192236.839105-1-macroalpha82@gmail.com>
References: <20241030192236.839105-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Correct the audio name for the Indiedroid Nova from
rockchip,es8388-codec to rockchip,es8388. This name change corrects a
kernel log error of "ASoC: driver name too long 'rockchip,es8388-codec'
-> 'rockchip_es8388'".

Fixes: 3900160e164b ("arm64: dts: rockchip: Add Indiedroid Nova board")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index d8c50fdcca3b..a4b930f6987f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -62,7 +62,7 @@ sdio_pwrseq: sdio-pwrseq {
 
 	sound {
 		compatible = "audio-graph-card";
-		label = "rockchip,es8388-codec";
+		label = "rockchip,es8388";
 		widgets = "Microphone", "Mic Jack",
 			  "Headphone", "Headphones";
 		routing = "LINPUT2", "Mic Jack",
-- 
2.43.0


