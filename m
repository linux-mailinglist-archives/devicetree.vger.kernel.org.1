Return-Path: <devicetree+bounces-32164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D643782E7A3
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 02:52:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8B48B1F23A1D
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 01:52:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C648E20DCB;
	Tue, 16 Jan 2024 01:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j/zy1lKo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334F220DC4
	for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 01:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2cd1232a2c7so114465451fa.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 17:11:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705367475; x=1705972275; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gvN59bcYauRfvTOIrHhbS9eyPkcywNo1pcI7+S2IrzY=;
        b=j/zy1lKoC1/gagk5pDKFAw5MLV/6MyDL7TP8kOQ90fixb5l73JYMqUbXclHRCZIez9
         Rx71a71VfmTSKTprTPiihzHmSJusqLZWxR0G+2WxtKwyoG+GKtYdQwVvzquduqqGTcaB
         M3Vr9NcdX48YYXR2uYOBrTOnnevAgYyFsDVx6I9dFHWZS08yAuX04M+rhWZCgIlYvaZm
         ssKrylNep5YarWeg81M8uyFjOftu7cotLMCgOVcaaGgHm2QvfKn3+wyeQxV0pk6I6JAo
         MHwswcEXrhx+Vv9+tIZbs1+Kzm5gDDh0anoGP3B1pslMOp0n4VQx0FkY8OImio5xs76q
         RBRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705367475; x=1705972275;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gvN59bcYauRfvTOIrHhbS9eyPkcywNo1pcI7+S2IrzY=;
        b=HFCgLexybXeH/zwijwGlnHwg1+FH3xHBI9zry/PiQQy6pkd89ZxE0YQXpqv/+j2YXF
         oiCSYnqNpw/Ee+OCs4viz2lsPv3e0auh053XLgcl/80DTm8x53VknGRiMeMD/rvCUVyb
         3Qad9j4QG9czJt69Ra+rX7t7Zk8LaftzkiDE3bfby5KopLIOGWt9MrU+zvXF8GV3jxq0
         Kk9RCUjMpk8b74uRAjtSepQsHq1XUUkMSd02t+rrMCVJ9KlJbXBqSA5E6npkcdStCOK6
         wM2gIBF9YRfm7ZnmLmphV5yiQFgonuBrYWI2wr4cDZcBznhCYJfgNsDmJXuynqW/ifGh
         xG/g==
X-Gm-Message-State: AOJu0YxYaqUWPvS/JfJFcETqHiOxVSN7Z0SbhBFcYEQzRGVEzRZi9Xxy
	+Wefrygi7dtQWcveH6SCOx3paP2Jn0DmtQ==
X-Google-Smtp-Source: AGHT+IHuLop8vp8Yhjr/JyMmyHuy4+5jnRd9Vu0nqA3dQer4A3K45OZgXQ7xEchn2oUM8YV8FCOdcw==
X-Received: by 2002:a2e:83cd:0:b0:2cd:7ac4:f9b7 with SMTP id s13-20020a2e83cd000000b002cd7ac4f9b7mr2863336ljh.4.1705367475387;
        Mon, 15 Jan 2024 17:11:15 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id q15-20020a2e84cf000000b002cc7a2f7a9asm1513414ljh.98.2024.01.15.17.11.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 17:11:15 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Jan 2024 03:10:55 +0200
Subject: [PATCH 1/4] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: support
 SDM660
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240116-sdm660-usb3-support-v1-1-2fbd683aea77@linaro.org>
References: <20240116-sdm660-usb3-support-v1-0-2fbd683aea77@linaro.org>
In-Reply-To: <20240116-sdm660-usb3-support-v1-0-2fbd683aea77@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1027;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=zYn9443fSl+U0zoJ7ooRMTFtK4x8618NHGGtAH7cW2Y=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ+rS6xs/CbF+t0hhSvU6EK225eV1lyWcPFNdmVq2n3eOU
 mMMmyTYyWjMwsDIxSArpsjiU9AyNWZTctiHHVPrYQaxMoFMYeDiFICJyE7gYFh0Ysm3Hxr/Tnzu
 npB5fDm/tLdHwd9sW44/T/UEt2zi+m7IXFb6J0lxtW2lyOL1m+KK1Rs4qxobzViyb5Yqd67ju10
 9N9zUzL57fc8a5rjUxmX5L8SVjCexPbiVr3TPK+5d1ssfia2Z+aw729oDkwuST7UmCjom81We95
 /KdOBO9wGd/9k/z4VvW3uv+a1g4B2Zux4s06QWTXvr3Js2i2Vyz0SzyWG7H5gunMUQcXLdhd9qJ
 kXyW7ueKp4U7HRcafCI/2SjEw93W+yMJ3b9PRLmKVeuf2p8lHT2MJNpY2nTN8N+b45ddp4tGeuW
 HlFbk7xk0R5WTg2Bh6FOR1bvvMKwzqyHaWKBkLFBceZxAA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Declare the USB-C QMP PHY present on the Qualcomm SDM660 / SDM630
platforms.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
index 140843347d1e..f1f4e4f83352 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
@@ -18,6 +18,7 @@ properties:
     enum:
       - qcom,msm8998-qmp-usb3-phy
       - qcom,qcm2290-qmp-usb3-phy
+      - qcom,sdm660-qmp-usb3-phy
       - qcom,sm6115-qmp-usb3-phy
 
   reg:
@@ -95,6 +96,7 @@ allOf:
           contains:
             enum:
               - qcom,msm8998-qmp-usb3-phy
+              - qcom,sdm660-qmp-usb3-phy
     then:
       properties:
         clocks:

-- 
2.39.2


