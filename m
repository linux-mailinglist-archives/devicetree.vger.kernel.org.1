Return-Path: <devicetree+bounces-114809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 352F99AD142
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:43:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE3791F22CA0
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:43:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F7171CBE9A;
	Wed, 23 Oct 2024 16:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YRTR14SO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2795E1CC154
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729701823; cv=none; b=KwuU5QgJT5pkZ6SmIe3ZpRazRNGRr37hOAf7VD8hKO/vKoaIKci+tAe6pjOFlDsowN5Es+7ib1INlmR8l3yTmtDAQnGqIe+4DHvkhUiH6RH22DxQq81Y6gRuUX41CIitVzbnOv90+RxXSypi95v34Dvv7ivCm+j3dfKGuDjqPJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729701823; c=relaxed/simple;
	bh=QkqeFj/uHwD+PwVRbOy68PgyYxaJKtp6lCDvoGbC3ro=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VfoEmn521uOmCs0RhDcISLw8kNCLlMidUuckqSOgTFdexko+TJmSPmcBxu4xWsnn1IwSgGl2DTgggP+7GFciE2t8MInwHGAoY56HJUyWp17JK93ZCIfUBxRyMjVD/eT9DyZ5bI9QvQRgbwrhRugHMn/tfmMxowLX/9UJPDj/4dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YRTR14SO; arc=none smtp.client-ip=209.85.161.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-5eb70a779baso3333938eaf.1
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729701821; x=1730306621; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N0jI7anFu6tACdmq1ktw+g6zdLi6HmxfPbYpW9ePEvg=;
        b=YRTR14SOHzA6htkePcNfe4rUhY8NWKTmjAY2Vhn59IwfVBRVZUzR9Ihwa73MVa/l9B
         PFsMc9C9X/n5qS/myzdfKmPrpMiPjAeWiUmsuUpumyvGH4xS1A6DIQPrVNxugPMMfOvX
         U8A9OB9/UKgJBZdeKeKKQKo8CVMMORD7q7VXcIV8cuk6WYG/Qj/CyiFTAipNxtS+8c/k
         bErBgkI0Wkplr7R4zdlv+TQHgNNIKVyFuZrWMT36tabL6Z9NU7GLbuxwwsitS6r/cq0K
         p7huJe7+DVD4tGGnUuMAVr+hSemM7QRNpV5Pe7vIyqMlrc+m46gEwYaQQfDjp7n5dy+2
         XvbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729701821; x=1730306621;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N0jI7anFu6tACdmq1ktw+g6zdLi6HmxfPbYpW9ePEvg=;
        b=TL4GFbj5apLZE5ejIlMWLBohcwhawcUTjPTVCLUvzRlNEZLCKzvA1SqQ7O1yyhmd7P
         E2TdNDVXKCFKONDIq1pPBdWzmgVbvduwWLG9rDkB6yMoGEazDLJuYQP4SMRfWE5u9tnW
         gzg7sRaYG/FS+bWYCIB3Xqx0MwDJvUNx8lzZXlQM4CXCcat6T4KFt89Osme4v/xt2FYg
         GtadTa22ozZFvhHHR8QUQOOVHP54p8KbbZO4FkrrI7ZGPgNuwHRW5NN3jSLhN15oMBFH
         c/N5iAh8CLb7RWQ38saDp/Jc8R/RwFRMZEtZB2rhdzq5ETgQOfaVRdTl63h4wj+KUGOI
         TaHg==
X-Gm-Message-State: AOJu0YwDtKcG2vUhK8/LyquOLngtfxaHDFF5AoQmSdf913wDIu9vDNqx
	nI9pa0VNyu6cG/lpFtJuIapfsKZ8f2HPGpTLg2t3lrQK18PPft9w
X-Google-Smtp-Source: AGHT+IG+VLzg9P/6ys2U4VynqV0Aeqfw+dZ0geZjBZderwIjKCW7QniRtK/DU73HDagpxpcX0oABmw==
X-Received: by 2002:a05:6820:229a:b0:5eb:c72e:e29c with SMTP id 006d021491bc7-5ebee94cdd8mr2522620eaf.8.1729701820442;
        Wed, 23 Oct 2024 09:43:40 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ebb7a0948esm1861367eaf.15.2024.10.23.09.43.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:43:39 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: correct analog audio name on Indiedroid Nova
Date: Wed, 23 Oct 2024 11:41:03 -0500
Message-ID: <20241023164104.66282-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241023164104.66282-1-macroalpha82@gmail.com>
References: <20241023164104.66282-1-macroalpha82@gmail.com>
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


