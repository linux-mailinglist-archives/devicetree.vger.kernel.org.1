Return-Path: <devicetree+bounces-20261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B257FE9DB
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 08:40:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 716C5B20D6F
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 07:40:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE293208DF;
	Thu, 30 Nov 2023 07:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Yr5Oh43p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 329C810D4
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 23:40:51 -0800 (PST)
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6d816bb0a61so381676a34.1
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 23:40:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701330050; x=1701934850; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zy3bexk/UdkiFEYq/BgshHxcfzBMkkII0D9hrrzOht8=;
        b=Yr5Oh43ph0WgjxTrER6QxeHzdA0ak+3StoIwSHeRMwsK5n4SXu6ceOyvb2MU7kpe1B
         aQXocRzjLv61aTbVg6BzlmJUAbrhRyYZPfXOVwydNZxxokuaMrMZszbFgkyA0cbiCb4f
         NIa8jomkNno8wK9OzbjWTRrfRa0/au9rKUNGk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701330050; x=1701934850;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zy3bexk/UdkiFEYq/BgshHxcfzBMkkII0D9hrrzOht8=;
        b=OGQHa0+GTriF8VaZ1Y6tRv+wnyE/xkW/Q+MK8xiuFNR63yQq5boqPjlxmbvfGs03ek
         It0RYGCQbk8fU8+BJPVizH/xZg/idN/RwdGpqcGEzk6hUFMdBzBoArdrISRyvzXl5uZv
         fXm77/3Dkin7xLlYYWlCORbyYod3jZMCMYo6jWdqohVnH3pyIs887pDGgDEzigQKnvp4
         tYbnDWlnaOjY+TSuxBSdJuHxqh82MpW0zsBErF6vU3H3Qk6tNY/2y414k1Pv+BEA7o4+
         5PRi4jDuH+Snk/JF57TTaIXSaDe1ClJBk1768HC+xrFkdfJbKnZMI20z2udhlObXWMdw
         zEgA==
X-Gm-Message-State: AOJu0YyZDAvjyra4ZFfXrkzSKsq8+pisa5hAfjW55/XPvcnDp6CLDKQ5
	YQ++5Fv0E/E+r0OcdWZVXulxig==
X-Google-Smtp-Source: AGHT+IHwi9RcnosuzpIAvSOXNm0G5GIasdXoLS/n1bNO323T/kQvMYm8EOB8Q6YuOyc1t9+FjbG4JQ==
X-Received: by 2002:a05:6871:7588:b0:1fa:25e2:efa8 with SMTP id nz8-20020a056871758800b001fa25e2efa8mr18245153oac.15.1701330050507;
        Wed, 29 Nov 2023 23:40:50 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:7c8f:dafd:65c3:2bcf])
        by smtp.gmail.com with ESMTPSA id p35-20020a634f63000000b005bd3f34b10dsm612870pgl.24.2023.11.29.23.40.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 23:40:50 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 3/3] arm64: dts: mediatek: mt8186: Fix alias prefix for ovl_2l0
Date: Thu, 30 Nov 2023 15:40:31 +0800
Message-ID: <20231130074032.913511-4-wenst@chromium.org>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231130074032.913511-1-wenst@chromium.org>
References: <20231130074032.913511-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The alias prefix for ovl_2l (2 layer overlay) is "ovl-2l", not "ovl_2l".

Fix this.

Fixes: 7e07d3322de2 ("arm64: dts: mediatek: mt8186: Add display nodes")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8186.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186.dtsi b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
index df0c04f2ba1d..021397671099 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
@@ -22,7 +22,7 @@ / {
 
 	aliases {
 		ovl0 = &ovl0;
-		ovl_2l0 = &ovl_2l0;
+		ovl-2l0 = &ovl_2l0;
 		rdma0 = &rdma0;
 		rdma1 = &rdma1;
 	};
-- 
2.43.0.rc2.451.g8631bc7472-goog


