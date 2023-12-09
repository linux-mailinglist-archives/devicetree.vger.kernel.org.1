Return-Path: <devicetree+bounces-23475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 351F080B58F
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 18:31:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D1FA51F212C2
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 17:31:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CC7718E0C;
	Sat,  9 Dec 2023 17:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OSOnU5Vy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDF721985
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 09:31:01 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-50bf3efe2cbso3587067e87.2
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 09:31:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702143060; x=1702747860; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l/mGJNaNyYtrtX/eKur4vqWC9SNDz4+L7gUzAKh8niA=;
        b=OSOnU5VyEr2IFPyECs+bhv3+MfC9vAFQkPOuOgp5fz4NNLgf3M94ELEWBvwMWg5dGR
         0kO0R+cLvtEle4gYUAbyWJPG63XyU2tnlAfLB6tvbLIr2/xznWWBQHgpKE9k5adXbAMF
         7zK1otU6FxGIZH8H4kUZl6R3ZLTyjgM46YdBjINP0t65DMBTq82oiqCW7iI+vXu2iMQ+
         jb4yn02b0Iz0GT69zQfFpKIL9QTebn2PxTAvsaX4hz6Kjvk4Xd0avAhlTKJwUBuLvMLS
         aeB1ctl8RPYqThe5WYNyXSwSTEN58+Fp3T9Ngo71jQOL/pqkNWHZMcuh7lvEfdU9wtbg
         tZwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702143060; x=1702747860;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l/mGJNaNyYtrtX/eKur4vqWC9SNDz4+L7gUzAKh8niA=;
        b=xU9K5oqVk0fRCtsgqnZ5iLC2X/ruRTkg4Ol3wEBr7QWeqh3aJZwn4mmuUe6Lj+fGpm
         B8t3AIxxQ0WQ8FQyX2yniZCUOpFzRcTXQJgs4zQLKm2d3eQOI0WTzY2Yx3UQVF1lO1oA
         EwgzDcuTd/YZ+n9un05DcKtcCAftZU2DjkkW3Pqan82i+zAhtUsVl5c0fK3cvTxhkoO8
         sUgAGv+paiLOPNkV8/1Y9aLfn5UbshtrkGjTS5QnjY4ZXkKzvqCnpEw9JSoc/ibUlx75
         BgpXLcRogoXHxxyZY1LoN8IJFtuYVTDbI4vzxWnedAsZPItHjES74ug/JasiW6dFensV
         TLDw==
X-Gm-Message-State: AOJu0YyG7iknsrQw9p0zRuETC4+cUQKuvBMjAd+hOrqQaR3dc6J11rRL
	eE+n1A79b6Deo3CJgavnbe+g0w==
X-Google-Smtp-Source: AGHT+IGUAf0Rye8yb8vzFUPgUMYU+8xgoBkGJ+TrIeQYGIt0coEWYvdmn2SEL60pxjBHs7tZHE1J1A==
X-Received: by 2002:a05:6512:239a:b0:50c:1047:59fd with SMTP id c26-20020a056512239a00b0050c104759fdmr476113lfv.167.1702143060149;
        Sat, 09 Dec 2023 09:31:00 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id m26-20020a50931a000000b0054ce5c00e74sm1926621eda.88.2023.12.09.09.30.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 09:30:59 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 10/15] arm64: dts: socfpga: stratix10_swvp: drop unsupported DW MSHC properties
Date: Sat,  9 Dec 2023 18:30:39 +0100
Message-Id: <20231209173044.257684-10-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231209173044.257684-1-krzysztof.kozlowski@linaro.org>
References: <20231209173044.257684-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

altr,dw-mshc-ciu-div and altr,dw-mshc-sdr-timing are neither documented
nor used by Linux, so remove them to fix dtbs_check warnings like:

  socfpga_stratix10_swvp.dtb: mmc@ff808000: Unevaluated properties are not allowed
    ('altr,dw-mshc-ciu-div', 'altr,dw-mshc-sdr-timing' were unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts
index ff413f8e3b07..0d837d3e65a5 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts
@@ -80,8 +80,6 @@ &gmac2 {
 
 &mmc {
 	status = "okay";
-	altr,dw-mshc-ciu-div = <0x3>;
-	altr,dw-mshc-sdr-timing = <0x0 0x3>;
 	cap-sd-highspeed;
 	cap-mmc-highspeed;
 	broken-cd;
-- 
2.34.1


