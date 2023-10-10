Return-Path: <devicetree+bounces-7176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 185187BF8F6
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 12:47:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C50C2281BD7
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 10:47:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3AFBDF42;
	Tue, 10 Oct 2023 10:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sPiF3p5g"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD7DA34
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 10:47:05 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58E319F
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 03:47:02 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-405524e6768so53125795e9.2
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 03:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696934821; x=1697539621; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Gq1BYoY0fEgX7YMzga5nr/sZhevfBzjj86K1zkzaKh0=;
        b=sPiF3p5guXGIr+Ne6Z77Xt3XTQAX3NZhegj5HBJBDgXPG5Y2ftVB6QgpkLBgvDSYev
         8aO7PrBnUSyqHY/ldwZ1Z8uG4sDHLCL3jWRsO7dxVTsGP+qG/yO+Rbxc508sbhECoh2I
         KlKEWq4rCMq8fYpmoTTAv+X00dS6Cvy96sHFbu95SwR8/r4xn/WVVw+V+PpjpyXEQOHg
         7KOqu1Pny5hNq15aIjOOLXUn0gJ91/kdPMH0TdU8E0FTyYe+4lXGAr32JEdkC8nRcm8Z
         luAgFb0nzWNROuI1TjcXSpxdamVHOKgzZ+e38eK41lM2rwwIo55isRua96MyiEK+jxV/
         MM8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696934821; x=1697539621;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gq1BYoY0fEgX7YMzga5nr/sZhevfBzjj86K1zkzaKh0=;
        b=pmamcibG7qEVC9DM7mrDeBrjyzuNIOgwDGsMgfHbak/zUQqueFjHBdujtCvHtD+guf
         7UTc8Tw18F0IB/zhDZIYW43NXh7xYkCJ13szbFUl56FbUyp+gb+5aIVABDcz4EGrsxkN
         uUOSazrrWr02ivtOq5piZmIo0AiYdI2rVFcklnhdAgUHBYlT0ELvLaK8QjRMtT5O3Dib
         WuKsVegz/Geyd/WIPfimzQe+DLSb1KSWjnud//mSFXRIzq8i8XQVI8JPX14OzEKGmEUW
         WT29HMcFNDmLoXi9dNNUyJXUIEs2cbRMJKcFLNusxJUbP4zGSEjVq7tqfd4wCRoKIRHS
         3CMA==
X-Gm-Message-State: AOJu0YwKcPtTffzO5di+30xqkmUm+N2XhigEZFsijW2nJkmWoyyGzyz7
	yFimxBxwQApigIawzIyNM30/Aw==
X-Google-Smtp-Source: AGHT+IGb3B9BhnFU58qupYbMtpSWUS5mfaVGu5BpQm6+XWvyJe+bvBx/EGxe8tPG/RqPTM4sHEHZEw==
X-Received: by 2002:a05:600c:2946:b0:405:4daa:6e3d with SMTP id n6-20020a05600c294600b004054daa6e3dmr15662827wmd.39.1696934820737;
        Tue, 10 Oct 2023 03:47:00 -0700 (PDT)
Received: from lion.localdomain (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id q5-20020a7bce85000000b0040596352951sm16134857wmj.5.2023.10.10.03.47.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 03:47:00 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Date: Tue, 10 Oct 2023 11:46:58 +0100
Subject: [PATCH] arm64: dts: qcom: qrb4210-rb2: don't force usb peripheral
 mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231010-caleb-rb2-host-mode-v1-1-b057d443cd62@linaro.org>
X-B4-Tracking: v=1; b=H4sIAKErJWUC/x2NQQrCMBAAv1L27EISKxa/Ih42ycYEYiK7VYTSv
 zd4nIFhNlCWwgq3aQPhb9HS2wB7miBkak/GEgeDM+5sjTUYqLJH8Q5z1xVfPTLOlC4xLQtfHcE
 oPSmjF2ohj7Z9ah3yLZzK77+6P/b9AAie87N6AAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.13-dev-46309
X-Developer-Signature: v=1; a=openpgp-sha256; l=876;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=HJi6LkHa8+ZIeTakG3fyqvNsTnEKTCGu/fzarKLGhlg=;
 b=owGbwMvMwCFYaeA6f6eBkTjjabUkhlRV7cVp+dvzhWN0pkfbds1hfDazoDziqX3Um8Ov7K0KG
 oyjZN91lLIwCHIwyIopsoifWGbZtPayvcb2BRdg5rAygQxh4OIUgIks+MjIsP50VOPqkKfKdtL3
 733/quX6o0ws5s2Bs1pnpC/y26q/b2P4n2Ncf1dd7PJ6p393D02pKFa79PnRXhXW+xO7XnFeutL
 Cyg8A
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The rb2 only has a single USB controller, it can be switched between a
type-c port and an internal USB hub via a DIP switch. Until dynamic
role switching is available it's preferable to put the USB controller
in host mode so that the type-A ports and ethernet are available.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
base-commit: 6465e260f48790807eef06b583b38ca9789b6072

// Caleb (they/them)
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index a7278a9472ed..9738c0dacd58 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -518,7 +518,6 @@ &usb {
 
 &usb_dwc3 {
 	maximum-speed = "super-speed";
-	dr_mode = "peripheral";
 };
 
 &usb_hsphy {


