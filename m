Return-Path: <devicetree+bounces-133185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A38A9F9A35
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 20:18:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 89C8F16AA41
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 19:18:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A2BF225A41;
	Fri, 20 Dec 2024 19:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h49gztQW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F279D2253EE
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 19:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734722239; cv=none; b=D39BDjX3jfxiLbLis5v4eOlPEW3d84U9Gs0gxBLTcwKBW9M00Lk3Kyn7qOix1vi6Q8Agp8FQwD9PXFybLcU+FvRtL81XPiTrQj4MoRb9R57ZNyx2qW5sgXtmOkUOmSN2K4gANw4I5snAp0xqqubWewT1LMMDyiSH2/gxY5+2b0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734722239; c=relaxed/simple;
	bh=3owT/KMCvF5XwxfrBAfaiky6eGpIYrzcz95ija8sMWg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=biA058g9MsUHqvDBs9xky9ffbanuRLyLBNhoJ746n/0sSFOa9OZl+9znZAHLh6Qla6gzKn7iEGxwTPnbjwfQg9/bUZrsbUBjjFRWlo352+jkAogCHLzLCxiBAa2NDWWeufK+sQo704PTII/HTfUEetiUqpvI7M0/Jp6NSqlcYQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=h49gztQW; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5d3d479b1e6so2913521a12.2
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 11:17:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734722236; x=1735327036; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vBR/gsOu5StkcyNL8p43Oyx52bSqF/t8CsaHctvuxX4=;
        b=h49gztQWoAh9Ae5RpDe/nkxfQDL6oPqjeFZeN+RXRSt6QaoT2Yr01PYZPb6/auh6Qy
         e3uok0CXIVUUT4NJPk+ElAy1DKAOQgycNX9Pc4HeWTpNPPAGNJOHHtBoY7ui40AmZ1Mv
         0HLHj8rXK4j4knGt6iGZEPjhgtFFu0EZ9DFBLCoquSYjZdqh6ZkUbwIn14PXajKPF4B8
         0kTmX6zy56OJ/8V/ZVrbPq22BAT/ss6AAURC/J1gt273iYMhg9nYynEkgTpBRjq78Aa1
         5EgsBAQUwtbIBHGzZ6NstFn5Xxh2pcALzMAxlmZxB6FncbjV54a60Ut8hd57K2o1g/mg
         Ciug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734722236; x=1735327036;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vBR/gsOu5StkcyNL8p43Oyx52bSqF/t8CsaHctvuxX4=;
        b=rrgyRfA6gXTTij7ICVKya19BTEVd59QEkRLtkPWBPgUWlMjHKbCqagPX6l0OxqE41u
         7myTQ/4peUi8AgrNq5zVScgKz5th6oWkBYA7zN/wduorrG+oTS48W58OXSnTPevs2PwA
         1FTnDBEEyhhDeQ0ojdykwbLlpeeSb0z+W4hrfJU7EoIYlsWxUxPYtYhOuNesNaRdsshJ
         I4mbjemNSTcLCxqbnzygSIniJn4ZEwk5trPuXt4vAetESnhkB1tREx2iuVz4hmn/sEwo
         rur/zM2cplTpqqp+ptNvt++z6TcpFt7lzwotEeqS58GigKzmPePS+cIIPio9SiaNPFle
         JeKQ==
X-Forwarded-Encrypted: i=1; AJvYcCVZNxJ/Aanh8PIzoBDD8Rl7ocKtiLq9ecUu1l715CQZ4YuzrTvtPi/36XizNNSYAQPPERtZG6EcJ7vr@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4v73OtrqIDmMa/wS+sq+mEmIX8aDk+qRnJgvZyy9Qug/sxobt
	x/SriE0/oo6Vzx9hdOlEkeVlWskq2P+sLNizJ8C3f2aVdhOTGC9yzM9oL+JVux/Amu9r6xxqZ0v
	HFik=
X-Gm-Gg: ASbGncvEBNkjrAF99wuEJdSylvNKjHTCCNJpb1L+sxSWJyp60GDfkJpAwm0lcpMR/kO
	nPXEXfSVNNYbWuThKfoJv6p2VgYmJAmorjbKsp7IT5taTjyvlx4fh7GYlzykeH3vAsO8GqfPgXF
	edtPuUe4rzHWZCeFD6qEYb/xzgFGAbvxi9YCvpFaIf9vXdF+vjCHw252HIO6Q8bRYmLiG700ajX
	Q3rLVWojUikYRkw8njxighXrVLn7T7AXCteWjg0tEllXEwO4PF+CEV0X89dpWu9vFs=
X-Google-Smtp-Source: AGHT+IFmLyPE9OMUVuB/6IZRMr2eptvA+ua1OuRWCkVTNnTDUTn6N/1kmxMoQ8Owur8tJ0XN93MY3g==
X-Received: by 2002:a05:6402:1d53:b0:5d0:bf5e:eb8 with SMTP id 4fb4d7f45d1cf-5d81de06611mr7849152a12.23.1734722236189;
        Fri, 20 Dec 2024 11:17:16 -0800 (PST)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80679f11dsm1988727a12.46.2024.12.20.11.17.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 11:17:15 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 20 Dec 2024 20:17:06 +0100
Subject: [PATCH 1/2] dt-bindings: net: ethernet-controller: Add mac offset
 option
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-net-mac-nvmem-offset-v1-1-e9d1da2c1681@linaro.org>
References: <20241220-net-mac-nvmem-offset-v1-0-e9d1da2c1681@linaro.org>
In-Reply-To: <20241220-net-mac-nvmem-offset-v1-0-e9d1da2c1681@linaro.org>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, Simon Horman <horms@kernel.org>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

In practice (as found in the OpenWrt project) many devices
with multiple ethernet interfaces just store a base MAC
address in NVMEM and increase the lowermost byte with one for
each interface, so as to occupy less NVMEM.

Support this with a per-interface offset so we can encode
this in a predictable way for each interface sharing the
same NVMEM cell.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../devicetree/bindings/net/ethernet-controller.yaml         | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-controller.yaml b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
index 45819b2358002bc75e876eddb4b2ca18017c04bd..608f89359ca844e5325e3cc81bd2677b0eccb08a 100644
--- a/Documentation/devicetree/bindings/net/ethernet-controller.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
@@ -53,6 +53,18 @@ properties:
   nvmem-cell-names:
     const: mac-address
 
+  nvmem-mac-minor-offset:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1
+    maximum: 255
+    description:
+      When a MAC address for a device with multiple ethernet interface
+      is stored in non-volatile memory, the address is often offsetted
+      for different interfaces by increasing the lowermost byte for each
+      interface subsequent to the first in order to save space in NVMEM.
+      This property can be used to add that offset when several
+      interfaces refer to the same NVMEM cell.
+
   phy-connection-type:
     description:
       Specifies interface type between the Ethernet device and a physical

-- 
2.47.1


