Return-Path: <devicetree+bounces-124954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD889DA642
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 11:58:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA7BE281A42
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 10:58:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D2281E0E0D;
	Wed, 27 Nov 2024 10:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tSnfjJYF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FD21E0DE3
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 10:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732705097; cv=none; b=m0IC3aUcTN33sAKEu0rpav0khCCdx2Z6aI3K3S/oeIEFOY57bYsmjsIpfDKJDTcHYCQYVIwYCcyTOs8973PskDHuSj4mB3MgBZhcBmkCqRMOEYMpKs7xC39tNYDKwG8UNfiVLHydAtZuaqA3vPO2UDpCrAhCaI6Gn4ApNXx8uj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732705097; c=relaxed/simple;
	bh=VjxgEP38+L+Ma4q4uehB1/JLcL29L3ctWPsdy4kfO1g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ptd4UuwUxN20qwGnj+RXYoAKv7k3OUGpcoXD2W1+n6TMvLCIPtuQlaURZBItmx9qDf7FXHxtFzEDKaGLLbxzzE4i7MJTynBAnCYxxzm450xacTlVftJc6Sjl8nyytJUnESml/bOxljOdmDZ99RQrH7i+iJ7qb7lukzZ4ZsU6vi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tSnfjJYF; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53df3078a4dso161453e87.3
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 02:58:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732705093; x=1733309893; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EX57ICOKMzOs0eby+nVmHR92z2ekmaeMdJuyR8QQpCo=;
        b=tSnfjJYFiH5cE+6qkupiG2hOfWrHY7ZaRffpPU6bl4YeOs6bDFLSFN3+RLGeGWzsWG
         ABuB4zm2NwiyEmrzhSckmLRyqwYib8tPCfLjTb6pjEBYTG+mtzBDZcQg92C88fxDwG0d
         xAgrrQ6kK63z30BbMrdqmgU4uw2zdy6NyU7EI6pb/pOOhruyIXGZbeYTTHLjXU4ygBvU
         aNTii7xGLCOvECbdo52AIsTJ1clrUpYSzrudaSfTTKZMM0mXD4guIH5MAkGehQKRqyKd
         yh657vVa7mK50yjHgZvMFztUjCEtyJhhPndiUfwXAqaufwaZvAJMoonuqtzKzU1YwRNk
         DHgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732705093; x=1733309893;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EX57ICOKMzOs0eby+nVmHR92z2ekmaeMdJuyR8QQpCo=;
        b=j7Gn6+DSRM6SA8vQB2LvsbsOqTTsNuk7pXh5KWL6+Fg6D/xURpMFJl6mMhDcCe56n8
         H6F0G0eaozjxDmIKDcqPwN0fnuTvIV8DE9fBD3M1L7f5EN0MemeCuxGzqryi0zB/XNxF
         b8MPWcckXD77k2/BXn+txSzkec8bZF+c6XlcHvaWcotJFfPlzysKj6NgJ54N4CWuPz37
         gwifQvmL4IDUfXhA7NstGDQ9j9TbN0PoUIkzcXm1nWSwy5uDFq48s+x5g1d/Xno1vUJD
         ZBoERfEMyjlqhmwr+k3wak+rxGWarDKhFbimjLSzi3rYHZMifNKAPJ3XVbLjoeWJJ2RJ
         u78w==
X-Forwarded-Encrypted: i=1; AJvYcCXEQb1q0hFawptJNMyn6vrweEDdu24D3ejHOKR0q+K//zZe94/y0YFDZkaAP38aQmg4XpzV6fLW8dm0@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg3tGjGZr8VLaKO8IFqxykglPinicvNC0LACsELybUzq89amxi
	l4Nl0s5+DscYHaTJmIl7Ka6pndLzJtMCpA/ZlYUyHzjt1ewqhuRNstJB3ggggvY=
X-Gm-Gg: ASbGncsFiDym7y2FoZNI7IpLgSgbrrT7WbS9od3rIEHzgNuytOYnQrO9cKKsfvIwYpq
	A1Yh+zLyM0fbm1K26utCFxoiH+dDeCr2kJX4G0ChOObecJ7HcuOPby3XMrslXb/mrF1tp90BD0R
	fxfCliMeTVLBOHUDbqGzyk1Be2HiBT6jBglwE8KOMBS1SUDR457FVjpyEE/VHYD3IcVz1toPsqZ
	NQkZt9HvKq1k4mjIh3SqmFAPpi4H2jhRfxq9qdTdBsxmv4UTpLqt40tAc9e7yelRVmH7ao1WFNJ
	L9WofuMwbIUGP/xW0dSpJ/+/MmqqD1O+6Q==
X-Google-Smtp-Source: AGHT+IEDZQbqWW03yw4ZJpKkkOp6D2uswnTAhfUmoQ8ZqjktXEwpbL7Kj9opKFu91DPbwMPyQP7BRw==
X-Received: by 2002:a05:6512:3b06:b0:53d:ab04:54ee with SMTP id 2adb3069b0e04-53df0107235mr1294962e87.41.1732705093247;
        Wed, 27 Nov 2024 02:58:13 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa54a6db906sm412183566b.41.2024.11.27.02.58.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 02:58:12 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 27 Nov 2024 10:58:12 +0000
Subject: [PATCH 2/9] dt-bindings: phy: samsung,usb3-drd-phy: add optional
 orientation-switch
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241127-gs101-phy-lanes-orientation-phy-v1-2-1b7fce24960b@linaro.org>
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

orientation-switch is the standard declaration to inform the Type-C mux
layer that a remote-endpoint is capable of processing orientation
change messages.

Add as an optional since not all versions of this phy currently support
or even need the orientation-switch.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index 1f8b35917b11..6c17a44718aa 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -51,6 +51,9 @@ properties:
   "#phy-cells":
     const: 1
 
+  orientation-switch:
+    $ref: /schemas/usb/usb-switch.yaml#/properties/orientation-switch
+
   port:
     $ref: /schemas/graph.yaml#/properties/port
     description:

-- 
2.47.0.338.g60cca15819-goog


