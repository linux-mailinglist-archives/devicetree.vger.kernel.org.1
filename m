Return-Path: <devicetree+bounces-250119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 684E8CE6591
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:12:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5256230062C4
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 10:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 796F2285C89;
	Mon, 29 Dec 2025 10:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="be4IrT+Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4DCC222590
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 10:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767003146; cv=none; b=ukUM/MjTRzzqgYTyTk7aAQRJRfNs3wKvNikvbFkLRj2X5De0hd20N7w0GxM3pmGfx2bRwzX5Ov0QGVbX7ZGOPK0WTI+Qfdi2vAyUYO9CnF0u6UckTXvobFQu8sBRnJbqu9kgkwIU0bbw7Nyh85BlrRKOe9ZmqTV28Gz1iP3LYgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767003146; c=relaxed/simple;
	bh=iE2CbCdrK0vI0FrVCavjC9uDM/vsBwXeGKRyKumfVTA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bsb+5Z6xkFGnjvjWjMEmj3iAol+HFrXEjEgrI5R5XTAynkixM/5FLTUkeJYxpUSP4opCIefyzIS8amxmRCfBcD3H/vN4bQQithgASAaFQAnJZqpuv/8Q07iR0lehMiq/aVokrwOL0iU3TRWjRzse08s/XfzOZZuowAdHQWAvb+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=be4IrT+Z; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47aa03d3326so56512185e9.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 02:12:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767003143; x=1767607943; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ri0p4U6CFfsvzwsMRp5y6y8qxmA/cHDioM6peECfnxE=;
        b=be4IrT+Z6dr6Ci0CD7zBII7NNSUp5BtJl0Yfi/Exi6Gud5sisBUPX6Lg1byCHIjmlt
         R4AJ8K9GkIwQC9ZGXYoVyZV6GVN2pEvkGdjm7dNG36W773zFF5uJun1zfeJM3kIU/2VL
         MleOf5Ka7j3ZiwcG2TYTfzsccHYqDYECBFZp7aGu4yJjnnBF4bqE+SwgUYVp7a7sypTk
         fgOEFszyibxUKO1NQpj6BuDwkU2fG9GrKt+4CjVXNCyK8A4eKtWxZyhDFOjV5buSAhwn
         3lDkfNNf6J2hc5+xhSYv5ovosOYKca+tcqeL1u5d3h24wP/tMqCsWifqNe2463Q0XSPU
         8P1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767003143; x=1767607943;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ri0p4U6CFfsvzwsMRp5y6y8qxmA/cHDioM6peECfnxE=;
        b=Aw2XPd5PWdFXrcR6dPP4HBfVvpI7UiZy7c4EJf7ef//bADZ6kVTM5u3uuwpFofjQ0j
         3JT6Deuk3VX57g/MXC30YoaYeFBEBHhtScdYI6DbGPRh9z1IVFCcPqatEVj+As9cfIzX
         SGi1Oh5X5gmjjm5Neyh4Q8tyUTTz4p0k2YtHaLE7ADaUnZFpqTYKXYTPbTWbdQ1TJHSJ
         Mg3cF5Vw3kMt3NMZlzBp1vx7kg/NWhqG1cbO4KgpN8jFxhwb8ewMb6IWVtUZ+1p9BxPC
         mnOdjLGmkG180Wxx/C3lqIVjrRXo/iddf5k29ZTVJLg3b4f3LUQuzDq9awiq5NhZgEtv
         d8pQ==
X-Gm-Message-State: AOJu0YwRG1rV8Yzkty36YAhOooGPf4ibLhRfntMlH0ypWrIlJDMZzNx4
	AyAgo6JqCMQ7db2KGg3bgr9hjxTE3a0Jf/yERl8g1Uc604CbFoB8XSB599iw3Iw0
X-Gm-Gg: AY/fxX5JYrJWajH7HD1Agu7xn/DwhG0wrthB7/q9DkpKYGXft23Ehn7/4WArV7bsjlU
	Df/THplwwiDs4VXU5cVmd5xtQm3tGJAM7I0LxC1hpD0akXubFSYFrKpmWyOS++nQQMkYEiyHlsy
	ddVxZCsYPyTB7COIf0KvE4la4TJcb0Xee7/Fe55LDTxkipsUmdb5ik9n2gQVwGLlOJuNpPB+MEi
	nfLKAOiUeltshLqLa0+z9CKc18/phLBnkj6V2CBaonXndCO9U61YCdbKS7AuQCy/IWTMV86YFsV
	YBYPLOLEQR00ZiYsKR1bI1UF7lVGs7DbcjWfGdX9+pGcYkCQg14FXQLBf1weHGC3VkIJ/Lo6ll5
	GxEySgCr9PaU2nXf3+Z21vFBSh2nw8AGUCa5YdpHeeSu0+ShsfYTkEvxwybF4QwraOxKhhMraxK
	IA+Bg/fUZWZ0LWc1970W1erWX2Wty3zEiICIQi8R4rAa7/doUGMF0vzlatHGNc
X-Google-Smtp-Source: AGHT+IHJS63lS/dPKoA9lGVZ+ST8crjqL/wpGYOYPkSn4ew0eH8IPo2DWmLK76jUaU+P9S/JFHAnzg==
X-Received: by 2002:a05:600c:468f:b0:45c:4470:271c with SMTP id 5b1f17b1804b1-47d269c7019mr304884895e9.18.1767003143012;
        Mon, 29 Dec 2025 02:12:23 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-45-246.alshamil.net.ae. [94.59.45.246])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d583f42dasm19840735e9.6.2025.12.29.02.12.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 02:12:22 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 29 Dec 2025 14:11:58 +0400
Subject: [PATCH 1/7] arm64: dts: rockchip: Fix headphones widget name on
 NanoPi M5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251229-rk3576-sound-v1-1-2f59ef0d19b1@gmail.com>
References: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
In-Reply-To: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 John Clark <inindev@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>, stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1245; i=alchark@gmail.com;
 h=from:subject:message-id; bh=iE2CbCdrK0vI0FrVCavjC9uDM/vsBwXeGKRyKumfVTA=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQGhTAyn21XXvnWgbvV1bfrVXb3d+4/09j3Wy6MDfv3f
 HW/jgRLx0QWBjEuBksxRZa535bYTjXim7XLw+MrzBxWJpAh0iINDEDAwsCXm5hXaqRjpGeqbahn
 aKhjrGPEwMUpAFNt0czwv/xx55SdHdc3+vGw/vAK+MT34Y5LeVXqjptBHM8t3W4majMyLO/fV9j
 3R2jz/Z8/lb8YLTwVmbUz5dCkm12qVpMynSIqGQA=
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5

Fix the mismatch between the simple-audio-card routing table vs. widget
names, which caused the following error at boot preventing the sound
card from getting added:

[    6.625634] asoc-simple-card sound: ASoC: DAPM unknown pin Headphones
[    6.627247] asoc-simple-card sound: ASoC: Failed to add route HPOL -> Headphones(*)
[    6.627988] asoc-simple-card sound: ASoC: Failed to add route HPOR -> Headphones(*)

Fixes: 96cbdfdd3ac2 ("arm64: dts: rockchip: Add FriendlyElec NanoPi M5 support")
Cc: <stable@vger.kernel.org>
Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
index cce34c541f7c..37184913f918 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
@@ -211,7 +211,7 @@ sound {
 			"Headphones", "HPOR",
 			"IN1P", "Microphone Jack";
 		simple-audio-card,widgets =
-			"Headphone", "Headphone Jack",
+			"Headphone", "Headphones",
 			"Microphone", "Microphone Jack";
 
 		simple-audio-card,codec {

-- 
2.51.2


