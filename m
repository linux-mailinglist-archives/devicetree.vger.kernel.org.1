Return-Path: <devicetree+bounces-192874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BD383AF8528
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 03:20:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 58A5B7B8461
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 01:19:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34C6F14AD2B;
	Fri,  4 Jul 2025 01:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X9M8fNAR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A63005FEE6
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 01:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751592025; cv=none; b=fWpgjE0JS1fX/t0t7e/pcmjzKRaDMGwHV3BSD7Vqp4A+S6yM+W+bWTCCpTWohLwg+OImG/0dyrUMS4zL3Kr4FVOg1CDswKBcY4wBVjQfheNc9BtUSWy7sB2Y7DYPjp6Fxwi1ko7pXd5biOXzpiUx4yPe/Mxh0C0/cIhqMnmnLeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751592025; c=relaxed/simple;
	bh=HdPNF5tvzZHy/U0HDtfqdXSgMT7sjPnEhZmbbJSwPeQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c3qIG9kFRthAw0aUzL05HXKj+SLj2kLGFLZ9dD/rVtUSWFJOBTx3CIUyYagvC9Yy1s5/HUAYRIotVeaOSiqUt6/m9OHp8igpSp3wibwZ43YgtlCYsLzUUpfLr3E7sD9mUbmcazohOJVs9eVVm8cwAMul+m2x+moQrxWRJwG3HMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X9M8fNAR; arc=none smtp.client-ip=209.85.167.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-40a4de1753fso343100b6e.1
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 18:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751592022; x=1752196822; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eVDOdTwjs+UuXyvtB1sz+zfsO9z7jQfbxWc72oZjmuY=;
        b=X9M8fNARfbX+l9vKuw33eRuJGo9YuMzprCWWDnz8MbxiQ29+SMkyQW32juajQl6Eim
         SKp+qnAxPmMhuN08wlQ88/Cg2y16k5qVPWMpfxag8feSQ0dn8D4y02xgxlOA0sufCI/F
         NigYwlsegYjHvZ+BGL3MsKhfm7BNbDy86bxh7NWc7ghPHSM6McCFqLhLyyKTXh/W2ABs
         IIlHg2UmoA8JTXqtRe7EmM2r3TtD+QnfVgZIXH8fmASZjvYqF3Zg79zmxRPf3VITOhRm
         ZUgn2/CGLV46sJqE/Mc9f3lPPUesZrefx7d4WKZRjGrT2Oe50kssgemUuGvJhpjji+YF
         c2JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751592022; x=1752196822;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eVDOdTwjs+UuXyvtB1sz+zfsO9z7jQfbxWc72oZjmuY=;
        b=UQVUQxl9Wipdytch8Zu1ndewY5TVo6H/uLfW7IWelL5PWUzK76gE/RFd9Ow8DBlqpt
         Dv6BOEUoh1SDdYd4b1ktHenFRSM6y1dmv23AAZoDqycbWd/KKwXLk6PmJfIf6arHtibm
         +c4RR5sgv1bG8Sen9L7KtmIpTnKPAmIeZSwCgNBBcxyRANAOS3Ce7gIL5VO/Vs/N9+1E
         7GH2G6DMD1zjs0dIvB5Ku2IQbnnHyIwgBeoTzXAeDJgGPbKmojY0aIWJI3l/eNSu4LxF
         +yG7wemCeAHopfZKcdTCF/JSr1s7p3kZQ6Y5N2CTyp3oPDEHW/bA8oUO7xiN2NAhVLeX
         d0Kg==
X-Forwarded-Encrypted: i=1; AJvYcCVYS6jQiVhszFaC0DSiDCvgG7o1/XOO2e2dcKj1+C5wpUQkioh2wP3dMNKz1KzScJTlA6VEZX6gDwJ/@vger.kernel.org
X-Gm-Message-State: AOJu0YwAfUWypGwvm1so0cpuXvUw4oZEagovfUFek3Yc9PQoHeeg9wyK
	2DRpf0u4bWgeDxOzq1kR+RqHfnOFIRft2kXF8clUpiEYyVMK8nFX9nEC3D+KaYq2r2k=
X-Gm-Gg: ASbGncvHlZxFW6+RtZTkZKaQVPP7JZxEzGdUYHByfzgC0fKRAOv1FMRgKxVTfPkB7Gm
	ANbWtQ/u+tldj3aQHDs0eJPmUIwvcFeKCm9Hsk/BXs11Fsqjb5+pop9igdq9cXagTB4fH3PzON3
	d8yRQ0EtDvmBadkm19hV9k35HgoCZcuNi9aaLVdAD0pPiLNjwIU8NGnLKKZRqOkTuxcQr4fhqtS
	wWD1Y3f174vxGQEr3LDGy7UnpakNNU++0nW7Vp+p8xz6TzmOlB3etPRdPBmeZlyq9bq5851b1zM
	HxxSnelRHAcOPhEO/RLuni7woTYO9SLtt+ovRb5zjSOEI9TGEI5lEA90paTORJfwwvPqXA==
X-Google-Smtp-Source: AGHT+IGL22h42DOm/O6EysFpyLDhHXHpPkLnW4IjU4MzOnIssrqexxfruWiHq2QQ0znXzzhun3GQ/Q==
X-Received: by 2002:a05:6808:1b22:b0:40c:fda3:2f0 with SMTP id 5614622812f47-40d029f5278mr1098385b6e.6.1751592021667;
        Thu, 03 Jul 2025 18:20:21 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:1ed4:f8f7:2a8d:77d5])
        by smtp.gmail.com with UTF8SMTPSA id 5614622812f47-40d02a33d47sm149020b6e.10.2025.07.03.18.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 18:20:20 -0700 (PDT)
Date: Thu, 3 Jul 2025 20:20:18 -0500
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Xu Yang <xu.yang_2@nxp.com>,
	Peng Fan <peng.fan@nxp.com>, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	s32@nxp.com, linaro-s32@linaro.org,
	Larisa Grigore <larisa.grigore@nxp.com>,
	Ionut Vicovan <Ionut.Vicovan@nxp.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
Subject: [PATCH v3 1/4] dt-bindings: usb: Add compatible strings for
 s32g2/s32g3
Message-ID: <596d188a-9a2d-41e5-af70-c99bc2b7ca7a@sabinyo.mountain>
References: <cover.1751591078.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1751591078.git.dan.carpenter@linaro.org>

From: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>

Add the compatible strings for the NXP s32g2 and s32g3.  These chips
are mostly compatible.  The one difference is that the s32g2-usbmisc
device has an errata ERR050474 which requires a special flag to be set
for handling packages that aren't 4 byte aligned.

Signed-off-by: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
v3: Remove some CCs.
    Fix the ci-hdrc-usb2.yaml file

 Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml | 5 +++++
 Documentation/devicetree/bindings/usb/fsl,usbmisc.yaml  | 2 ++
 2 files changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
index cc5787a8cfa3..691d6cf02c27 100644
--- a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
+++ b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
@@ -23,6 +23,7 @@ properties:
           - nvidia,tegra30-udc
           - nvidia,tegra114-udc
           - nvidia,tegra124-udc
+          - nxp,s32g2-usb
           - qcom,ci-hdrc
       - items:
           - enum:
@@ -37,6 +38,10 @@ properties:
           - enum:
               - nuvoton,npcm845-udc
           - const: nuvoton,npcm750-udc
+      - items:
+          - enum:
+              - nxp,s32g3-usb
+          - const: nxp,s32g2-usb
 
   clocks:
     minItems: 1
diff --git a/Documentation/devicetree/bindings/usb/fsl,usbmisc.yaml b/Documentation/devicetree/bindings/usb/fsl,usbmisc.yaml
index 019435540df0..ca677d1a8274 100644
--- a/Documentation/devicetree/bindings/usb/fsl,usbmisc.yaml
+++ b/Documentation/devicetree/bindings/usb/fsl,usbmisc.yaml
@@ -21,6 +21,8 @@ properties:
           - fsl,imx53-usbmisc
           - fsl,imx6q-usbmisc
           - fsl,vf610-usbmisc
+          - nxp,s32g2-usbmisc
+          - nxp,s32g3-usbmisc
       - items:
           - enum:
               - fsl,imx6ul-usbmisc
-- 
2.47.2


