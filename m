Return-Path: <devicetree+bounces-113484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 008169A5D02
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 09:29:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B00A3282F2B
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 07:29:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E7A91E00B9;
	Mon, 21 Oct 2024 07:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="a2/3G4yJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B601E0087
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 07:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729495664; cv=none; b=O72df5fQ/pzYriK9loy1yd4LcleUBpiSweNk2/4DcGJFg1EnZsEbstPrvAHi9D4rxXGWLyRLhSPFJvt2O785/eOgOKbEoIlOScE/usIbSp+GzTCQt5S6rqIKMdJgOqDtwQu1jie8X030JU4TRi7t4gbNVGSQpc+GUID7JoujhYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729495664; c=relaxed/simple;
	bh=+1oPmQQZYYyTlzfu+WalO7jQocFIehp8SUptW/y7x18=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=KzXy34FW72nuYkb6jrmZiAMVfN9f5IOdulpoFJ7CYz7CNbrqXjXcGYvzYOEV+mQK2YiUCf5d6UYncU/p93KwGH/FMbod0ssYx/zZ+34c6Mk+wmXnNNyuXnYnnCI9hV05gyOs8zNsEPeMt5hczbYVUPG5fRE2p6IFoVbMHakdzbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=a2/3G4yJ; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2e2e31aacbbso647175a91.2
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 00:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1729495661; x=1730100461; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RwvmpL8qKj3SLwmzOmr8dF0fJatg9G7HpxkdxZupeyM=;
        b=a2/3G4yJTRnZr2n3G+zOSS3jb5tf6/kIhQ0sTcfCIUSPyzbMM3XN0ONyUb9UXGmkQx
         haq1hmAUW5K0HBhwmk3+GdfJT1F6Sc9mr7zb/BmFRCTwmJYKA7wHKclkXYkCbhJEdI9L
         cB65sOL2pMTD2qXd4nDVDAMxo+ibl778h+E6VEfKBcl/E4raQu+1UboIu3akAM2pzapX
         OHj5bqRGVk8krLiP54VWn8Y1aU9navB+C3rfLsChlZwIijjzsWFJimDQO3YU8U89dm0R
         M4fSOhcoelRHVAKBkLQZRIdi02G6vC6Uho/5Li1NP4PebX67u7LTO7u4k61HJ2wtO9Ub
         Ditg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729495661; x=1730100461;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RwvmpL8qKj3SLwmzOmr8dF0fJatg9G7HpxkdxZupeyM=;
        b=REdxJcITdfQ8fGLfrr2smM4sRO+nvNk3UaGWn9umbXiN1Ji8S0eW2KRjo+vWdYGcNo
         vk4cyqucoPKn8QUlQHz9IfqQ/Zab9p/AA2E2lEQGK5J6rCG+QcISxQkPmcyBIE4H9df7
         qry9sA2XVzXqHzBHedPOhJlGS0FpTirIaU8V2M10SXqDrs9ZjOExwtKwmVKAIkBuhE1X
         VWR4YzucGr1d1M1/v30x7t/2/9Ad7wC4amrhEAe6XbulgGoShubUoqE6WsYKX9vnhjHb
         6IDa1tIDWSCmqKMkD3AK6INkIkbPpIMhKbVN6dl99D1gZVBt+TvHrwejCPjmaXNUvamw
         xr1w==
X-Gm-Message-State: AOJu0YyX3d+4uiBtNEErCS3FvPDwba04vBZA0dFZK5H04PRNCfSYsWGV
	Qo65U0JeH/s46G0268/w6j0UYNeCyXozL4yMPBmO9dyjLdD6ydA/U3hTwZwt89m58cO7nNQ85IQ
	z
X-Google-Smtp-Source: AGHT+IG7O4MTB4RTMZwzLlrbW/3WFjdoM5Duu6oLxtC3YUEZUKgcz7nk76eEdwRy5PZ8e1hJ3H2RpA==
X-Received: by 2002:a17:902:da8f:b0:20c:9285:e951 with SMTP id d9443c01a7336-20e5a71b46dmr62715575ad.3.1729495660913;
        Mon, 21 Oct 2024 00:27:40 -0700 (PDT)
Received: from ubuntu.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20e7f0db2desm19749595ad.203.2024.10.21.00.27.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 00:27:40 -0700 (PDT)
From: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	wenst@chromium.org,
	hsinyi@chromium.org,
	sean.wang@mediatek.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
Subject: [PATCH v3 RESEND 4/4] arm64: dts: mediatek: Modify audio codec name for pmic
Date: Mon, 21 Oct 2024 15:26:26 +0800
Message-Id: <20241021072626.15102-5-xiazhengqiao@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20241021072626.15102-1-xiazhengqiao@huaqin.corp-partner.google.com>
References: <20241021072626.15102-1-xiazhengqiao@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

change `codec` in pmic (in mt8186-corsola.dtsi) to `audio-codec`

Signed-off-by: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
---
 arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
index 943837f20377..13e464dac1be 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
@@ -1276,7 +1276,7 @@
 		interrupts-extended = <&pio 201 IRQ_TYPE_LEVEL_HIGH>;
 		#interrupt-cells = <2>;
 
-		mt6366codec: codec {
+		mt6366codec: audio-codec {
 			compatible = "mediatek,mt6366-sound", "mediatek,mt6358-sound";
 			Avdd-supply = <&mt6366_vaud28_reg>;
 			mediatek,dmic-mode = <1>; /* one-wire */
-- 
2.17.1


