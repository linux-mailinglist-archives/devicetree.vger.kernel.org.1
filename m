Return-Path: <devicetree+bounces-211489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CFBB3F3AE
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 06:25:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE9D3204EFE
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 04:25:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 258E5270551;
	Tue,  2 Sep 2025 04:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="MqKvnxMs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A150F25C809
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 04:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756787096; cv=none; b=g+0fDPuSt7EW5FUBo+rkeE94Zuir+miVE+u2VBfjzFwMIY0+dBUUlAsftl6FVr7m7UN8Cv7zLkHlgveZrI85iMcgasFdhGPFdejXMXsyic29DMB/CSFYAuzzSh7voPP2OAMOk8pN1by0TUOOnxlO8bP6EPHpL3J/lErqDY3Fyws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756787096; c=relaxed/simple;
	bh=+YpuvhJCI/yShT1rtWNvOFpxGI7l/ehsFRhKIaNPItU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IH6Zq0krXFK2I3PMbkSQXfd313xw2Y7H9NoeU0eHSc6aDq2rkMeW9A2334ssZM//2KwoZ6bKLuBV2U18H+nHUk7qBULqnjOkEqbpiv3RxQyAGkai8ruWVqY8vX8PQmVAzIYyYuUtFGaUMGhofwI7+hwkk94CiBMg+1xTXImycUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=MqKvnxMs; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-327f87275d4so3442649a91.1
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 21:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1756787094; x=1757391894; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kcpuRb5Zady/Ndj7TK1NVXuo7wdyupAjCmRtQU7qg78=;
        b=MqKvnxMs9oxnfQM9c+e6IHQnxwkHh+5AQUzrc9UCetW+PYZz5pANqlS09oQInpbLLj
         ifOptgvMD2g2+00O7DuPF97ujSfGAWKpuR7yNrZUXZ/Ai+gXI8dx3rbG51ZsJNX09fWL
         FlCiJMv1U1j5XuSsG6h9BWgrBDGQ+s7RNCNkRHTX8/kDjX1cljUVFiouSvM9IkFASlcl
         vtKZK76y/jVD0cfbImNVdjD/jo7QZcSXol2z3tlxWbcUJE2fIyn3aJWRYjtFpJjZDHEp
         yGXJEheH8C7rkZiZVohRnB71i8PHkcL1sUTrrPPa0pmCABEFReuHNOepGWGe20sYSUGm
         eTUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756787094; x=1757391894;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kcpuRb5Zady/Ndj7TK1NVXuo7wdyupAjCmRtQU7qg78=;
        b=AgRNXzFtDy6DAS2P6BfgcGSsg8PrUYfIE7k8VV27o4FSeSUZtATFTR0DEwYUXja0eZ
         P2vaF87W/tKrSwJGy12GKAuWamCeuAwlnprbwldBnNfQUf1kAn0WBOMzkWKVFpGlzrY2
         KMTjFAdnEcj9+aspvuX9o4jdd90n0wEMLWRY90Iz1hHzxIuccGErsfWcQXrYmkQ3poE4
         Zgx2wCDoEANxOi9GQvrUHyDkzjLh+zfeCRs0fL4BEzgpYghj4+TWEOfnH/sXCg8wEk3B
         9W2mRhL08Put25eriq4OqZO7LZirtZaduJUDMwq9pB2kcz20v0RtTZ6T1S6UHYdi3ul3
         GULA==
X-Gm-Message-State: AOJu0YyO66UR4S+sspUYv73YrCslCJe534sOkPsIeBiXX/WdJmkAevJA
	axDgY3fPxkn84BuYZ4e52kgK2UQW8N8eS4xdUtBQA43jM5N4e1FDkEC+5jtQXek/yQw=
X-Gm-Gg: ASbGnctkENGhkP1zl8qoTsE9hVYZMXpP56EJivTG69DqsO/BJfnoDeuwDBpETbz22ZH
	f9mdhDos07xW6T+PK+DP0JPbAYdwwB/sKVkxfZeH2BGT2BtRC7xiXzYP1BsEdEl9cTw7XdaLqw4
	B/0Y65woVwR3019+i7fbA8kYPyXrQG7OZlD9VV4nPEZN6xOX9HSQkuPsmZOlACX0eH6k/Y7Wh0y
	bVQKAPym+D0qPyhblxaO1XF5pJu3JsLM2TsFLLW8dKZ+OQcI7noxdb9PWaWBlOI+2DY5JR2nwdQ
	cNVmRL4VACLvfBKFqRBaFO6ZqR3N3j0I2jCi4YAPrivOv7XCqV6Yz7/qxk2oHZhvW3eQmbK1A+B
	QO47QTuat8q3yEYM//Vziund5lytiOOZhrO/5PuWGy37/0twhk8tNNp/lcfnp80eGDGKJryxVom
	qNQRwYI1z0jiuvVwNsuxo9Lj2aC5PhT1RhseXvlxVZS2bv3p2TXXRB6Q==
X-Google-Smtp-Source: AGHT+IEnmNFl2IKFCyIgBswInELByShKQ4l0hZtC5CN4ow3TwqNmWqqVVXxHS00T0raVklLsDS75bw==
X-Received: by 2002:a17:90b:3c83:b0:328:bff:12ae with SMTP id 98e67ed59e1d1-328156c5707mr14802701a91.18.1756787093860;
        Mon, 01 Sep 2025 21:24:53 -0700 (PDT)
Received: from J9GPGXL7NT.bytedance.net ([61.213.176.56])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-327e21d14a8sm12216706a91.2.2025.09.01.21.24.48
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 01 Sep 2025 21:24:53 -0700 (PDT)
From: Xu Lu <luxu.kernel@bytedance.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	ajones@ventanamicro.com,
	brs@rivosinc.com
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	apw@canonical.com,
	joe@perches.com,
	Xu Lu <luxu.kernel@bytedance.com>
Subject: [PATCH v2 2/4] dt-bindings: riscv: Add Zalasr ISA extension description
Date: Tue,  2 Sep 2025 12:24:30 +0800
Message-Id: <20250902042432.78960-3-luxu.kernel@bytedance.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250902042432.78960-1-luxu.kernel@bytedance.com>
References: <20250902042432.78960-1-luxu.kernel@bytedance.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add description for the Zalasr ISA extension

Signed-off-by: Xu Lu <luxu.kernel@bytedance.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index ede6a58ccf534..100fe53fb0731 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -242,6 +242,11 @@ properties:
             is supported as ratified at commit 5059e0ca641c ("update to
             ratified") of the riscv-zacas.
 
+        - const: zalasr
+          description: |
+            The standard Zalasr extension for load-acquire/store-release as frozen
+            at commit 194f0094 ("Version 0.9 for freeze") of riscv-zalasr.
+
         - const: zalrsc
           description: |
             The standard Zalrsc extension for load-reserved/store-conditional as
-- 
2.20.1


