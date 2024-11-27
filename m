Return-Path: <devicetree+bounces-124955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2209DA645
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 11:58:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F28316414A
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 10:58:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E25B1E1041;
	Wed, 27 Nov 2024 10:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="INu+BY+B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C311E0DE9
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 10:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732705097; cv=none; b=KYIu6RunweQw9xZqVIaSFX/kD4mFWQAY6LhXfz9+dI3M+gdJYFe65ulWffzpK4/uqSc62/zo7JM8YVuVe1gnLE0UKPfeSlNFfxl9/ZXX0hdb9ANCDTIMqX+omE0M4xovOKyYyRTosH28ZECBNNLQW6GzTxFaHSPg7C4l6uBegSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732705097; c=relaxed/simple;
	bh=HoOWfskOM/L20/Qi5xKqj5oCq9iYQQhysTOwTI0G2Xo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kaoGCqvu2oj9tlHv69ytpdygmMhuTRjpmJzudzs1WuUc3PQI3tHmp3YhVMoUwiHUrJd98zVZtIrdAzrsp0V99pmQnDjFN4x8Qwx+71pW+j/oHmUdvfP2PLz+HJkRanvyoGsy9BvHhnLtAzt/hjEO5LpE+rnJCDxtXrLphMzHLz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=INu+BY+B; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5d0102fc7beso7584237a12.0
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 02:58:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732705094; x=1733309894; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3jtF9ci8OPnOP4Hi31zRxsQ8dcNSQiS08yT+hSgOwYg=;
        b=INu+BY+BPm2TSfOsOAdv7Ew/mRHGZVbUAopTmZ1DCG1nvN06Qv2gKcoSwJSl73v+Em
         ecytZzjZBivNRAESQcitRPTzK97xhpbExVMBl45ygtUYtklCBpjgapcoxLRKw6Lo10gh
         5Wj5gTjqMyg5bBWFzPhcJ5UHNZDd7lxZiC18e7TdDo6PWcXtCqYLURf/3tljvrB/2/1V
         rV6JpgYRSn02eG5NTTg/SEpcoqvHHUx8E4GaQYmf57nSwabokKoGapRhCkD6/VJU0lhY
         bi24aTXk06uWZLFTw9qwBl58BmeYPs+hMAJOW+qS4Q6mhtTYcLrtXzCyqqWHBOwm3xIb
         0R5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732705094; x=1733309894;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3jtF9ci8OPnOP4Hi31zRxsQ8dcNSQiS08yT+hSgOwYg=;
        b=C7Sf74v0RTNeUHkQGQB3qf0EDrqK9wWw1u6jMgiL0bGfbKyV78KGG9CjGuCxNz+ZCd
         CRIe2lETlVxQTTm2D7eY3JuHx+bNKG5oNDDiaeHqy7TRpwh3q4CN+Z2IfZb5zafXKOpT
         Btm8rNDqz6s+97z8Twlx32IPCQWK1+7vCtx03FiH3BUL2J+Dt3PXDm/RrYD3PWCRM1yM
         xSswMJEhWzkKNLYZ6WXwGKy7aG2QvVrYE2loK9OVM+bY3j0W0nbKcXqpParkOTzqqHpm
         AQdxjUg/xyTz1k2CpkrMqo6OMJMFM9cTf0VRANX3QEGhToBgvEEzbiOLadyizcf8KqT5
         pV8g==
X-Forwarded-Encrypted: i=1; AJvYcCW5t1VTy/C6uryJ+Btq7U91KRV/w2tzY/aNmtKqTDDUDh1eh0tafSFacA64CSgwbWw6RuJ2S2rU9N2Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yxh2R3dDkfE4pZGQdm/uv/cfazCFlki2oPVJtjxKwiw1FH+kdmF
	j5HFckPmtvqMGySlzWSMbYJ52Ws4VTRImi4tIczQ4AFsht4DHpqB+5NNRvHBN1c=
X-Gm-Gg: ASbGncuHzsJqAc3PAXDvOmIwizq0IgHIbGeBhRb6XIbVJgjvDZ6wRtdxajKqm5ympC1
	82A2BGkr85Kq4zCuWmNUaV0YiRg8QQ0qKXzKJrujrPPOkn5Xoeh/L6sgySRSFHxYDBp2jSmCRb5
	o8ZbO/pVm2db9yJglYYzJrB0L7GZ/F96ANhQYwKPCv7WGeuVHccTfUSq+e1MlOW09q9g7mdvVXn
	RKGu89LzWBbePieg6Q5ZSUZsl3Vg0aADUGBJsQArfe1czAZFIQTd1gqWR4bt3mtQOoyxe6Ko5hc
	Q3QV9OlVWYI9QN6r1gzQR7b+hLW+AjxiPg==
X-Google-Smtp-Source: AGHT+IGpI0XPyLOxUc3SxNULKeFDjg8DEK2PQJHajpwT4G6OmiaLmyMslU+q4NFnVHObUoaipseY+w==
X-Received: by 2002:a17:907:7711:b0:aa5:12dc:2e19 with SMTP id a640c23a62f3a-aa58107690fmr187546066b.52.1732705093727;
        Wed, 27 Nov 2024 02:58:13 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa54a6db906sm412183566b.41.2024.11.27.02.58.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 02:58:13 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 27 Nov 2024 10:58:13 +0000
Subject: [PATCH 3/9] dt-bindings: phy: samsung,usb3-drd-phy: gs101: require
 Type-C properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241127-gs101-phy-lanes-orientation-phy-v1-3-1b7fce24960b@linaro.org>
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

The USB PHY on gs101 needs to be configured based on the orientation of
the connector. For that the DTS needs a link between the phy's port and
a TCPCi, and we'll need to inform the phy driver that it should handle
the orientation (register a handler).

Update the schema to enforce that by requiring the orientation-switch
and port properties (on gs101 only).

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index 6c17a44718aa..0659fc1ce13e 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -142,6 +142,8 @@ allOf:
 
       required:
         - reg-names
+        - orientation-switch
+        - port
         - pll-supply
         - dvdd-usb20-supply
         - vddh-usb20-supply

-- 
2.47.0.338.g60cca15819-goog


