Return-Path: <devicetree+bounces-49856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B3787816A
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 15:13:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 591F91F23D6E
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 14:13:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E0E53FE46;
	Mon, 11 Mar 2024 14:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="Yy9Ijr4b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD6A825755
	for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 14:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710166353; cv=none; b=AU6ENccvk18WxaGdLdPhCyX+1CWttedTwC0uxmLfKII4ht5Ya34TS10f6PQOL9Rt3eCt1U5v0LNCFTaxQWHH0hNKTfwCT6leeKeS66u7tkwFDtKIErn42jC2OVyUZuCUlvrvZmLacAB49yniSxabHtwjxN7CGFKPpkw3k1j322E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710166353; c=relaxed/simple;
	bh=/HGzTB5SZdVO3xOHO21xQHKVoBA4t5yAIwbItVhKxeE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YRnbts/F95beQ6GlJN0B0iE5nOntQeM5R98YCkUT6NzpBWoXGatW2O4Mmbk7qYJUf14MkZPtezqXB7qN++d6WcMSY2kRgZTI5yoeKn6cauaT0ss92Xe6rn+DXrxtzIapi6MaDXXToanq2Bc6voj5FJQRS212S5J6N/4EWy2ICXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=Yy9Ijr4b; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5686677bda1so931067a12.0
        for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 07:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1710166350; x=1710771150; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yBanA23QROE3/+jLFGt6yRe0SQoJ2oxKoX4eGPxFzrw=;
        b=Yy9Ijr4bZImVsPWjUXnztvNB/wqKf7ZtGMd6DlRUuxmxn9FpChWfGR5HWJwSRBoPJX
         U3N8uNFrXNl8nX/j8YT8vbYe3l4icX7f3pJZgFilMdor9B/gm9QaGnFS68zAV6XQryVf
         vU9UlMkn6yQN9B+lL83EIOvTgV3XkQ0qHWTeO/Ha4uz0ACIqyIb3BEky3X5J5fCHz9qb
         EMm8Q68WvJA83kTWrfojb2PDQgajuUWnMKUby+3K5rPZE02lS1gh7HrqLINcGQCf690x
         fcaiMb4QWGVPRc5iLVj/p8gUg3FEG9hlKpxgrMgEQj1VNJjXZkCBL/4iEAhi7u0qE0DB
         13ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710166350; x=1710771150;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yBanA23QROE3/+jLFGt6yRe0SQoJ2oxKoX4eGPxFzrw=;
        b=BGxdjWHzoZ0PELPLbePojkI69KUpNNetvQPyxLkRHWtn5rAbDcaDHUiKkElN62AOXm
         mU3nvNWVsNnHhY7CuOcvMubQ9AEtf1B+aKCBCu9uh7939EXQBbg2k2f7ZElElks7ow1w
         Wvzg/M45fi7iW5WtuDrP7aMg7KuLDP+m7+zN1RbFnVmmxTWfCSGJmvSXVBzgC/6OLZkt
         yTVjGcKdKpVvT+tie588Nc6ZobH1xKJqjJo+RNxBQ0w0cWiFVfXswZzQ/FeybJtja+1X
         yTOGPSOUn5M/2GrqBCQjjNe3lycEFYPJlNtactix/fvwPa8PJggOx7xDwpX38fVZzGUR
         s0Vw==
X-Forwarded-Encrypted: i=1; AJvYcCUxuKPxI1KjprunQAdX3qzy7kEZfjsnClCSvTD6ZY+zS14M1715iEXzBy6b2u80ov5Q6Fa7dQFY/WcIsBxzAKtnWA7B0fP9ofO97A==
X-Gm-Message-State: AOJu0YwTik1VYxOiLd++Om7quU2I6JuRHaqqKShWYWYCotJiz/uDzblU
	VxeSuP71+jm83palC6i8MnbxVLy3ceB36eyi/0Dt/cILJzsr3gseEgEfYxKjbOQ=
X-Google-Smtp-Source: AGHT+IFpaFYHZPUC59+vr6YEUbUDIfvHm0t6MBKRtc2HkOlRmTHV+gZO+re4EWKsdiZyVhlhk5GFtg==
X-Received: by 2002:a17:906:6cc:b0:a46:2a8a:63fb with SMTP id v12-20020a17090606cc00b00a462a8a63fbmr2167752ejb.26.1710166349926;
        Mon, 11 Mar 2024 07:12:29 -0700 (PDT)
Received: from sleipner.berto.se (p4fcc8c6a.dip0.t-ipconnect.de. [79.204.140.106])
        by smtp.googlemail.com with ESMTPSA id kn11-20020a170906aa4b00b00a45efdfdd1esm2863154ejb.40.2024.03.11.07.12.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 07:12:29 -0700 (PDT)
From: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Sergey Shtylyov <s.shtylyov@omp.ru>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Subject: [net-next,v3 1/2] dt-bindings: net: renesas,etheravb: Add optional MDIO bus node
Date: Mon, 11 Mar 2024 15:11:05 +0100
Message-ID: <20240311141106.3200743-2-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311141106.3200743-1-niklas.soderlund+renesas@ragnatech.se>
References: <20240311141106.3200743-1-niklas.soderlund+renesas@ragnatech.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The Renesas Ethernet AVB bindings do not allow the MDIO bus to be
described. This has not been needed as only a single PHY is
supported and no MDIO bus properties have been needed.

Add an optional mdio node to the binding which allows the MDIO bus to be
described and allow bus properties to be set.

Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
Reviewed-by: Sergey Shtylyov <s.shtylyov@omp.ru>
---
* Changes since v2
- Mark the PHY pattern as deprecated and add a comment that new bindings
  should describe the PHY inside the MDIO node.
---
 .../devicetree/bindings/net/renesas,etheravb.yaml         | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/renesas,etheravb.yaml b/Documentation/devicetree/bindings/net/renesas,etheravb.yaml
index de7ba7f345a9..8bfd4fb5f834 100644
--- a/Documentation/devicetree/bindings/net/renesas,etheravb.yaml
+++ b/Documentation/devicetree/bindings/net/renesas,etheravb.yaml
@@ -93,6 +93,10 @@ properties:
     description: Number of size cells on the MDIO bus.
     const: 0
 
+  mdio:
+    $ref: /schemas/net/mdio.yaml#
+    unevaluatedProperties: false
+
   renesas,no-ether-link:
     type: boolean
     description:
@@ -110,9 +114,13 @@ properties:
   tx-internal-delay-ps:
     enum: [0, 2000]
 
+# In older bindings there where no mdio child-node to describe the MDIO bus
+# and the PHY. To not fail older bindings accept any node with an address. New
+# users should describe the PHY inside the mdio child-node.
 patternProperties:
   "@[0-9a-f]$":
     type: object
+    deprecated: true
 
 required:
   - compatible
-- 
2.44.0


