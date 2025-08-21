Return-Path: <devicetree+bounces-207311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A7280B2F259
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 10:37:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12BF45E42E7
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 08:32:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4619C28541A;
	Thu, 21 Aug 2025 08:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yi/Edbnf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C972222564
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 08:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755765049; cv=none; b=NwiKGWsssJJihCglpAp0qJC+zTeyBtFk4idkqUP74elBjwd4U0uhk2c11KrCFFVzIPfwv9GxRcjwPvaiEcfgS0CdMGkyca7ZB72QCzA1h5I9xUSPJOxOmaaa7A8rBJ/Y6iVyUzr2k5Il94RDcjFocVRUvR/1Py5nyBCHdG/uMuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755765049; c=relaxed/simple;
	bh=RdLu58rkPGTY+tqQQir2QJXnP+/DeGGspDArj5JBTe0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oVx1x3AuHbvvHepmpoHM2DCEU9i1hkcW43ZdMHtUkfGrQ1dK98PVcptM3aNmNeJdw/RytUX2Yb5fWeXznzuyPVOAkZcvKYWY7Yx1r+wV2bWtu0ka0h/KNybKbYWcjxh2J8AQC/30OpbbOTW/YzdsOJw2CMJj6dOCJu7/QyjE/F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yi/Edbnf; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-afcb7a96309so8710666b.3
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 01:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755765045; x=1756369845; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G2FaWlk1kC6493AlFCDPSJ1E6vlEnlmY+oKGnlHwhgQ=;
        b=yi/Edbnfi9gwAWQXPP965YPVXdvQdv2zZUSr7Gh603Ftc8hMGPTrg8HfOu3ilsSJ6v
         35DNykMWx0wF7fCbCD1HJtZO4Dg4gGsBORSA3ekSfiOaKRbREI7XI29iWP3+voAz+xDs
         W3IxjUF+LQ8b1vooteT7p/SmLX+SzuLe3VSat5Dp1h5ltoNN4Qiier8pOg6Zfl2TiHXD
         oJuG0mE4rEUWkbwQZnwYldmZJS7ANv6dEjFhHh7ONOI9MAcoMFmW7NbkLi7RJY02iGt7
         D2j/7gj6vky7vyaQFKhxQ+xJOREhO6UaXTaBPa5D0pd5lQG//eGnj5IIFk6UoweA0Hrs
         BjCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755765045; x=1756369845;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G2FaWlk1kC6493AlFCDPSJ1E6vlEnlmY+oKGnlHwhgQ=;
        b=PxEeKfV5wmrVjGavHMnaXLLtkW872KzumnZHEtSaNnGSe2pWPfGw7QghzivI3E3CsF
         E/7fhgu85TmhPkrjGHq95Dqh8PWoONgBUfW7Im8pYqkxgzr7uKdh3AG2k8ClPfCVUqQr
         YkNMc+puRAvXcX25RB6DD6BIu+QQEruM0RGdEgRpxc9o0tYfBrxHcS8y+C8YuPBqPgAB
         EhLxk/r7kON5qnwp94MSMSdj/OIA5nNkq/g5cN7RjqcNmBTLl+qH7yPxkojV8IE/qlWk
         HfiTRm3+hvDISUcrRYY6+NWrSetSUELqka4v2mMO4Yq1cQL7gUQgyjrrXu9YFkCta35k
         NXbw==
X-Forwarded-Encrypted: i=1; AJvYcCXcu4FlzT5EAnKapbYlkzVy06q4HiwmYmRQqYqTDpsmSySKBSKRRK3ZnI8FMO1QPQxAs8DkOLfLx4c9@vger.kernel.org
X-Gm-Message-State: AOJu0YxoWrYkfWR0uuRSoW8fJ5rFnJYK3r0V6vY64VsUO7IGAF5NvrPe
	oPBUJKXtvm3s6tleai562awQv0izE/fUOLB3a7o1tz3eqJ/qRasAEpcZKDzEG34+fdg=
X-Gm-Gg: ASbGncuJupYo1pDURM74kFrDiu/9Az36Z/az++iJtqT2U82DJL/ie+zCtvwj92yxGW5
	dBUu8nabkgfaUM3g4mul7sqTEJMwY5pJyJlmdQ2UyoM/cM8gViXAojjoOR6OWy9pbaELdnQ5s/H
	Ah23frektO3oOgjW7HNyn54NO7v+UlyyGgbyPZ7d3575R0Y+6HMSPjAuA07VNhWpzeHr2bR6UID
	5MrERhRR9DvHs59oRwDeYnv64JZCAbVertsEQPaPVqy1n5Ow3fz0ULt4IqCIJONCYdStwFJ4LA2
	n1I6IvHZL1iq31PvUYvglehw9DCYfGxnbJ9Px/O6X+SkujWjMa22VgdI0B6NYtgOutLfZLkPlBg
	+wN6yrKDXJfjX9VyrcFSU5w7nzw3pwtJAYA==
X-Google-Smtp-Source: AGHT+IFrQfhYYLDcOcklIphmk3LaaAGy6ccvp2arV3OESofIoJWROkko8fN5kaaORXuIhpFwjj8X+g==
X-Received: by 2002:a17:907:2d90:b0:ae3:5d47:634 with SMTP id a640c23a62f3a-afe07e9d221mr67370866b.9.1755765045354;
        Thu, 21 Aug 2025 01:30:45 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded355489sm349014166b.51.2025.08.21.01.30.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 01:30:44 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Karol Gugala <kgugala@antmicro.com>,
	Mateusz Holenko <mholenko@antmicro.com>,
	Gabriel Somlo <gsomlo@gmail.com>,
	Joel Stanley <joel@jms.id.au>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	UNGLinuxDriver@microchip.com,
	Lars Povlsen <lars.povlsen@microchip.com>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] dt-bindings: net: litex,liteeth: Correct example indentation
Date: Thu, 21 Aug 2025 10:30:39 +0200
Message-ID: <20250821083038.46274-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1068; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=RdLu58rkPGTY+tqQQir2QJXnP+/DeGGspDArj5JBTe0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoptkuPMnNZ8sg+hDdzh8QNFHnrn66BLYb23tUK
 StbaIlzrfiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKbZLgAKCRDBN2bmhouD
 17ZoEACLruAmBdVUQYdVGgf1ypibO7dLkXwjS6A52XCstq0B5vvYHZFF9C6I4i37mIonNLCvPQk
 oiTkDLHLd0XBA7acOAqIcEY2h1mGX2WU9nHLfGb0OAVIMqbFebxb7VKjl3IRK5svFpW/uf38ZbO
 e3Dv2qQMBVYTt0V80Ol8Br9a/jYtF5lwvL7/yXUqE88ZywKyzjHkv4FdsEHCrDksQgcHXErMbgM
 qFJbSP3aGTp8T2AJvujm6/RXD9sSN9x1dK5gMfNRmuzUCjbgfsopMcbt8y1vBswO/4ecv8y9v9n
 MleVR/L+aGMImotfDAQ5zud5pMjLOo69PHj2wGa+iygdWZetlkOl599zSRVC+0sCwV/1EJ5IAAU
 NeUyBF61YrWcs7FC1A8JwJsedDhdWVfZn5HeFiiOyNzpxW+DUEok2BX/mulXmtG4wu0649roP8e
 c2w7PlrzZO9Lamxh4mj8O2N+ck5uzqyosNnjK3yjTn9zcjX/Ij/F8MvP1kLzLwsi8aj6vRj1BlV
 mfmV3ycskX3b9RSwroFGIW+Z7YX8cRyfuEDvApCwyjuR/Sv8Ap9Yb11Yl8aIxJrseQJQN63tW7r
 FkNWwqkdsHTckcUWNrM7M1lTFy8sx4gwvpHrpfC+JBNgwMVh4u8Lg83VzBEtnLcMo5Xbp5iA4qZ ewZrZKm8AbE7WEg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

DTS example in the bindings should be indented with 2- or 4-spaces, so
correct a mixture of different styles to keep consistent 4-spaces.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/net/litex,liteeth.yaml         | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/litex,liteeth.yaml b/Documentation/devicetree/bindings/net/litex,liteeth.yaml
index ebf4e360f8dd..bbb71556ec9e 100644
--- a/Documentation/devicetree/bindings/net/litex,liteeth.yaml
+++ b/Documentation/devicetree/bindings/net/litex,liteeth.yaml
@@ -86,12 +86,12 @@ examples:
         phy-handle = <&eth_phy>;
 
         mdio {
-          #address-cells = <1>;
-          #size-cells = <0>;
+            #address-cells = <1>;
+            #size-cells = <0>;
 
-          eth_phy: ethernet-phy@0 {
-            reg = <0>;
-          };
+            eth_phy: ethernet-phy@0 {
+                reg = <0>;
+            };
         };
     };
 ...
-- 
2.48.1


