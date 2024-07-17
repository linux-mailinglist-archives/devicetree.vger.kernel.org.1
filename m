Return-Path: <devicetree+bounces-86412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC22933FE1
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 17:46:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 724351F2438A
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 15:46:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F6761E87C;
	Wed, 17 Jul 2024 15:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e7xsKrXD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB5161DFE8
	for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 15:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721231159; cv=none; b=ptNpdSuMT1Zt31LARl9d/wsjD3e/+wClOkO4I7KnCqSZ/uI6vJ68QYvAqjabgl3HbZLLAuYeCHCBQS7W2Ma2RPo4jwrcLRoZ/a6nIj5pbIo2BbNZfdOIgMc54zaK4TWHjNI1hYfh01ZV+SaTxA2K5XJZ+QDAu1SMDvPi0ATbBME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721231159; c=relaxed/simple;
	bh=WU97PRvcw1eCZAzclkACUNm7StQBMAO7YMKsIIIFmvY=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=mjK8KbFoZvE0JdDKNMfWLaNJAdjKAgMgnXV8P5NZXRy847o8ZRu0EImeFUSxYfVMOUnNC2jTMv0FGiHx8o0ivp9qFMLmWPT2y9x+9Ey+22k5BkkPfZASR7uCv3+mAL9Jz4hlQ8FQSzuSo5WvRShlEI66jdqex5MLgOZ20bOpuMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e7xsKrXD; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-367b0cc6c65so4272027f8f.3
        for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 08:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721231156; x=1721835956; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eiEOaR61kkdbq7vgFCTihZFmUQNkXULWvAld/7S3/Ks=;
        b=e7xsKrXDvEija/eqKgwU6m2unzSjD1y+65rXzrf18uVw8exVBaQ7Apr0QRKp8MhT0v
         cA9XwtUYbNqpL9qbV90+7BHjeBCJrRSQ7pxn52/2iojJ+kjcKUxp48J8aRxzVg8coz2o
         bdZ1huD+LO6TZFJKfkii88p9Yq4P4dXgZJAW+wBKFhAnZFqzj1K2m2SkxdNd27yxEHmp
         ZTB8SOH35z3YIwCax1WNBhudgL5/KcpvrenMttuOkGJhIi/Lg5KTCgG6mxl8F4kdR1Dj
         mgYM3k2yiEUdk3ZRMP92Kfg0ylnfjAzGZ2zpWq8mzaz89tddd6TulqytsBCf4xtcgIc9
         CYEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721231156; x=1721835956;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eiEOaR61kkdbq7vgFCTihZFmUQNkXULWvAld/7S3/Ks=;
        b=DbfbkPA7uZNaNPUFq7IAG9LTfjkPsqUwGlx20WqXzVcpF3UrrI/okiy9wn1tHVNQbB
         yydE/GygDL9H0UEdAraDmmirlu7UM6M6T9PJwO7m993jygIdCN2VE1GTUV2pP3+9ZOEX
         LY6+LA82IB5tevgNokQj9qw2342dIAJNMRQ55kIHbwUkJyEzrdFaqUX+GYnY0yXJYr9g
         2caLEk15ilyf6LsC3H1wchZN9RNnjJ3NXo2brqNxNcID+IB3pDqTi+6w0KfKxYhD672x
         y6yRpyBPBz9m7uZqkgt0WGhdepy30xAbFXYRrFK09uOVIuqW6Qs9+NjvFZgTtidYDoF0
         IcQA==
X-Gm-Message-State: AOJu0Yy5l9z8Of6TuN3JryXzelDNC2lBQQu+vJ5hAG/UEt5c+oKDekS/
	T/6eSh+RnALLK6P2Pvncv3khowvyVQKTnRxPpX6uHKnUovOrek1yJ1Qc8vJLgCI=
X-Google-Smtp-Source: AGHT+IFDX6trSWMwNc9ZLwe51D1SqBXvpQm9yC8pL4HhfVT3XAQTnv269XbWOLdNNNAKfTxT+SEvmg==
X-Received: by 2002:adf:9d91:0:b0:367:94a7:12cb with SMTP id ffacd0b85a97d-3683171fea1mr1486166f8f.43.1721231156022;
        Wed, 17 Jul 2024 08:45:56 -0700 (PDT)
Received: from localhost ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3680dab3d37sm12127636f8f.14.2024.07.17.08.45.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jul 2024 08:45:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 17 Jul 2024 16:45:55 +0100
Message-Id: <D2RXISKUMBWA.ZQDKI0F03EI0@linaro.org>
To: "Andrew Lunn" <andrew@lunn.ch>
Cc: <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>, "David S.
 Miller" <davem@davemloft.net>, "Eric Dumazet" <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, "Paolo Abeni" <pabeni@redhat.com>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Timur Tabi" <timur@kernel.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: net: qcom,emac: convert to dtschema
From: "Rayyan Ansari" <rayyan.ansari@linaro.org>
X-Mailer: aerc 0.17.0-0-g6ea74eb30457
References: <20240717090931.13563-1-rayyan.ansari@linaro.org>
 <cecaa6c3-adeb-489f-a9d2-0f43d089dd1d@lunn.ch>
In-Reply-To: <cecaa6c3-adeb-489f-a9d2-0f43d089dd1d@lunn.ch>

On Wed Jul 17, 2024 at 4:20 PM BST, Andrew Lunn wrote:
> On Wed, Jul 17, 2024 at 10:09:27AM +0100, Rayyan Ansari wrote:
> > Convert the bindings for the Qualcomm EMAC Ethernet Controller from the
> > old text format to yaml.
> >=20
> > Also move the phy node of the controller to be within an mdio block so
> > we can use mdio.yaml.
>
> Does the MAC driver already support this?
>
> When i look at the emacs-phy.c there is
>
> 	struct device_node *np =3D pdev->dev.of_node;
>
>                 ret =3D of_mdiobus_register(mii_bus, np);
>
> I don't see anything looking for the mdio node in the tree.
>
> 	Andrew

Hi Andrew,

Yes, from my understanding an mdio node is not explicitly needed as it
just uses "phy-handle".

However, I think it makes more sense to place the phy within an mdio
node instead of directly under the controller node. This is based off
of 5ecd39d1bc4b ("dt-bindings: net: convert emac_rockchip.txt to YAML"),
in which the same decision was made ("Add mdio sub node"), also during a
text -> yaml conversion.


