Return-Path: <devicetree+bounces-45414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 86268861D0C
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 20:57:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2763E1F23404
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 19:57:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB70F14532B;
	Fri, 23 Feb 2024 19:56:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="P/5a1fmc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C28C143C77
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 19:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708718217; cv=none; b=sEr2q7tLkrXIx0WU0wiK8/UV1BM7qkWYXY7iAjIwT61wUiAowZxet+ube5+u1gfGkQXisORIrd31u7/CY8+pKKTK60CQ2bke7k1tndDKXMFV4btJDZ4ySJItLLa0IuZrfx+yFzE8O06Q00HPzBNYwrBZZEoAWwajFC8KoxVnV0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708718217; c=relaxed/simple;
	bh=2Er/E/YWR4ziMDKsjtcUbOnth7XzrgxHccJF7NTGcdE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=LBiwUYmpbQdehfBI/JA1YQVsQug4RTJR7A6HSvX/C1G/Ooh7oTmUkC8B+MK/+9GgWGprpqgzbJv5MKMTQXz3kIEeCi3+IkmcoG9GuTeCfzXHnLTjoME+yTvqX5c2Rfjnd1PsrcjoF3Ouwj2vLQDHo1bYBgOb8zZWpr3aG69F2xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=P/5a1fmc; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2d26227d508so9016731fa.2
        for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 11:56:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1708718213; x=1709323013; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pnKaa7U6yo34FD6yjr/0ko1wRd4z14aSOMgBBceVmWE=;
        b=P/5a1fmcCxe5wyHwutsdiUG9UZcP/ZwRjF2b9ewOuy/awYBjVn1gRNaiA6gZNaHtqJ
         Xg+fQcNPwx2rzs8xtcSHFOFjuSRnWRdzZwKSZ/MZL21h3wl+br2crCXZ++5TsvvZ3i7H
         olu4yLHYL6/qkyS36Xps5T7aHVVMWXmGP0pEbAt1EjlpOwebF0ts2Mk4sIp1RfiqW7En
         7i7E+6VqpSJnHVoaQ3yGzpSU8Mpuueu1oIo6pl52BCpW6sq29C9vJQXbbVuKqx8QW07w
         o+FcD+JaA2z+6QPeOky88C/P6pYNqR7uHhPY5VsEsk+tHFh4c9E4hEFn9fbgnDco/yyE
         kzWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708718213; x=1709323013;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pnKaa7U6yo34FD6yjr/0ko1wRd4z14aSOMgBBceVmWE=;
        b=VpCJ5tQy7HdyKjHO5+zD4G2ncs3Jaybuwc6LTsd0V0pABMqqOjpx9XGwbY08fDkZna
         fYkIVtF4w8Z+tDKYITqaeZuCsVOZ1YgFcWQvVItrrl1aiFcpmt6ZWL21MZCfw7ZVuUld
         s47R+gRg2F23SS31PR55dXCHsOLCQ7Vf/QOEhCvILgWU5AEa054cSf3ySIS/PmRkRDut
         aHWYqhDVEK0k2h/SufkjXKVsyP7Y3J10WAd3gLHs/e4i8rLdq8oRJS78Lw1WPyqiPLzX
         t87gI+zWAtohgiXNeol/0t7f0qJxO4xd+hk8P3PCd4/wAf62QDNffqqEhlt9u7d4SCTx
         MmmA==
X-Forwarded-Encrypted: i=1; AJvYcCXswz+zWPeo+LJM96t7/hUY+uo4wFtG1kstG9qb4KA3Xg44L/bgFFMomRFsAXDDYVJN3yzpRu0pobEtwSs/rFIqXcj1xrJfAKt/2w==
X-Gm-Message-State: AOJu0Ywd9maTt+RKiIECiV9hLVbwJLSmy47QxKifYaQVYv9HI/g6h7/p
	LoQiKs+DJ4g01yDcZ4nRmzfu4XbYkVQJXYy8HxgcjB9BZMFlaFlCP7SX20K4GSmDVRAGx7nDfBf
	Oqeg=
X-Google-Smtp-Source: AGHT+IEszpjkvVii9Ofn9U98ZBWGg1toQDRx9xo+HuBlNaQdnBY246B7GBYO8EHTSbTKFXUCPiDO8w==
X-Received: by 2002:a2e:9c8a:0:b0:2d2:31e2:ec00 with SMTP id x10-20020a2e9c8a000000b002d231e2ec00mr82847lji.30.1708718212975;
        Fri, 23 Feb 2024 11:56:52 -0800 (PST)
Received: from sleipner.berto.se (p4fcc8c6a.dip0.t-ipconnect.de. [79.204.140.106])
        by smtp.googlemail.com with ESMTPSA id bf2-20020a0564021a4200b00562149c7bf4sm6658334edb.48.2024.02.23.11.56.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Feb 2024 11:56:52 -0800 (PST)
From: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	devicetree@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	netdev@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Subject: [PATCH] dt-bindings: net: renesas,ethertsn: Document default for delays
Date: Fri, 23 Feb 2024 20:55:26 +0100
Message-ID: <20240223195526.1161232-1-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.43.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The internal delay properties are not mandatory and should have a
documented default value. The device only supports either no delay or a
fixed delay and the device reset default is no delay, document the
default as no delay.

Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
---
 Documentation/devicetree/bindings/net/renesas,ethertsn.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/renesas,ethertsn.yaml b/Documentation/devicetree/bindings/net/renesas,ethertsn.yaml
index 475aff7714d6..ea35d19be829 100644
--- a/Documentation/devicetree/bindings/net/renesas,ethertsn.yaml
+++ b/Documentation/devicetree/bindings/net/renesas,ethertsn.yaml
@@ -65,9 +65,11 @@ properties:
 
   rx-internal-delay-ps:
     enum: [0, 1800]
+    default: 0
 
   tx-internal-delay-ps:
     enum: [0, 2000]
+    default: 0
 
   '#address-cells':
     const: 1
-- 
2.43.2


