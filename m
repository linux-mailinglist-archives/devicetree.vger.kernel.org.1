Return-Path: <devicetree+bounces-10964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDDB7D39CB
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 16:41:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DEE721F21F1D
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 14:41:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9DDC15E8A;
	Mon, 23 Oct 2023 14:41:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="WbXjTM0E"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58FBF14A84
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:41:35 +0000 (UTC)
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com [IPv6:2607:f8b0:4864:20::72e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C6BB171C
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:41:15 -0700 (PDT)
Received: by mail-qk1-x72e.google.com with SMTP id af79cd13be357-7788fb06997so240973485a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698072074; x=1698676874; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GnW1vwbTtC2HOu/cZzh2Qo1PkLHHngu1dkPjgS4ENio=;
        b=WbXjTM0E51V/eSo+q8o1+WjvhQavSqclhyizxayANUTJFArsJmp/UPI3cuXQlHaemv
         Bb8Z+WmjwiJbH9q3T9vkPr4LEAUfnENf5uVrzZh4Rdl02kpF/g3l7bZXShxrUoxS6XDu
         uyHZAdDa9H7bPNhEpp08sao9lWdk06MigacxOuYFPqJKV8kOvMm2gB9HilwffWiXhd3u
         KXJL5khK0v/bLhoP8x4MfmT+5LDyIl30SGIWNqwfDdbfIhIcJCxpTfV92k4SwcmL3c0+
         EQpUGSnGy8x3E16DXSBlKhLCLctBU2QYNFWlp6ZVNwV3skXoUlyG7BkaVUqj8sa+5lLl
         tMig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698072074; x=1698676874;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GnW1vwbTtC2HOu/cZzh2Qo1PkLHHngu1dkPjgS4ENio=;
        b=BNA3hT+nM3KD4sujZ6s2daMyB+wF23UWHyC8wk6ot/J4FED8LPPd+/NwfHl74tpYPe
         v3Y0Fi6GhKhbStT5y7fREbH5/EMUHdjamjiee4tpRPwByKcv/fPtFBtLcAWbwSy5h7Mk
         4IUOAMfszuETRso0Gb4D51a3jWImuCE5tSJXmpRaYtw5uNLHiErxwFbTb0YPJ3uwHGTi
         TjCPMH3d1aWVUYyjPS9tQVOeH17rckJQSaNaa9t2+6nFbMd2ElVdw6CKbplJpcy43g4Q
         3zN/pdu452zgTPWzjSGJR8/s9XmQuynCG3M5QXuo26D+aqPhtZKqbuAEz0zhbYiZjs6h
         2zlg==
X-Gm-Message-State: AOJu0Ywk3BuLVbGmDCFxahfPeCE/Mz/o1CzYfRkbIYrJnTdRUz3O9xHp
	4vyrkddf3onklPG4/wMVf3QlOw==
X-Google-Smtp-Source: AGHT+IG05HZAMl6qM23cmvchPry/9vyia7XBR6CQbmQYA7BGiJRGKziIDoX543mAemU07ICYeQfxig==
X-Received: by 2002:a05:620a:2b8c:b0:773:d86f:ec88 with SMTP id dz12-20020a05620a2b8c00b00773d86fec88mr9784107qkb.35.1698072074736;
        Mon, 23 Oct 2023 07:41:14 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id f1-20020a05620a408100b007789a3499casm2725020qko.115.2023.10.23.07.41.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 07:41:14 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Mon, 23 Oct 2023 16:40:16 +0200
Subject: [PATCH 16/18] arm64: defconfig: enable display connector support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v1-16-5c860ed5c33b@baylibre.com>
References: <20231023-display-support-v1-0-5c860ed5c33b@baylibre.com>
In-Reply-To: <20231023-display-support-v1-0-5c860ed5c33b@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, Xinlei Lee <xinlei.lee@mediatek.com>, 
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <thierry.reding@gmail.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=701; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=UiHNb4i6ojEuqkwvKy30tzrI8LnM4UXa6wUtnNRc7vw=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBlNoXPSDmUpXOWQ9V2uW9CzePYmobdbyaSkVPMW+Ev
 5NfjLaiJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZTaFzwAKCRArRkmdfjHURffnD/
 wM151OCbx3hPLNKgDMuV9MTWFsZul3HyMZSqmD8UVRycvM0Z//6XVSw1gyZYj0W/s9GK6kMKZqs2sO
 7c4yH5v+aCP1yvhujwT8YOQlbOii0IrL/umKyYWlhqYzV7wGlmuwk8gYk0JjHZmE5r35l1TpYdDdfp
 +7tmPg8In/SSN/fxjenTyNXInxy4wVs7upezcGhDIU7jfNubTm8MogNu6F0kiPMyPRlQuzGK8O8GPd
 3eT7cLUatFHFfSp2zFnX4G2a8990z4H7mhWu41aYHKQ/zFc25YeIgLPb8l3niEyTl3x3dGQLwpcYc2
 VOfvJD+nCnmQn14NAhvC4Ln/Gg/V69TduURz6Aixd0GxREtlKpzQF6Ebk4+BfMmujIOu6dh+5D3i7m
 injvvrxDSaVuqpEhy7ofrRB26+TDj0z+pPASQyxkoc5CfRT3tfZRm60TQ0G8aPOJFd4XlNe9EHEy5C
 +Wq3GQD0s1mghVWSiXZWiHo38d8vvevolFLn6+OkeVYNyjCBlqQbEnEmqeIyamH0rT1zC5gnFNdiJT
 FjfkD3Hv/9iWexMBG2WgPeQm/cRJt1VQOncH+Se8YcD1H5QoDTeVv3dl1bVtUdCCnjdBuREG3NpcRQ
 bUDH4oZTFn1aUt9JzckJmJ0r/DqF/rEceT+liWPK1MWQP3Omymc94kMzEotA==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Enable this feature for the i350-evk HDMI connector support.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 5315789f4868..0a60e7616abe 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -839,6 +839,7 @@ CONFIG_DRM_PANEL_RAYDIUM_RM67191=m
 CONFIG_DRM_PANEL_SITRONIX_ST7703=m
 CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA=m
 CONFIG_DRM_PANEL_VISIONOX_VTDR6130=m
+CONFIG_DRM_DISPLAY_CONNECTOR=m
 CONFIG_DRM_LONTIUM_LT8912B=m
 CONFIG_DRM_LONTIUM_LT9611=m
 CONFIG_DRM_LONTIUM_LT9611UXC=m

-- 
2.25.1


