Return-Path: <devicetree+bounces-243274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 85333C96384
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 09:42:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CDD293A3000
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 08:41:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CACBD2F746A;
	Mon,  1 Dec 2025 08:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Sa2YeI9y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EFB2F39C4
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 08:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764578508; cv=none; b=IbjVu3PGebedf2S0uKtABKIhItU9EMOvWxjFifb/V4ewqXLnnKQyGyiMqrAu+Dyv4HeUZwIYgDoxV5wgyS77XjbZmHA76sPkRIpemwp9EpL9bTsM5n6lPugA3O7eMl4NzVUYrJvLOJFmsrn7VRG1lNMjKOUE2znZkX6YWxcKn1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764578508; c=relaxed/simple;
	bh=nNgblLGLQe3i/6ifYvSzOVejCV7m5z5PrHA4W8DoxO4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=odo4EhSHTbOVamrMaQ3ASDiHSZhMsO7UjIdcV8xFp84vqcbgaGEBoeAw91azXB6wSJV/C6fDbPd2HvDPBEqV2eZD742A9lBZ1gtwRcpQDtBudytpaIgepB2aXESjRrzsIdwO0MfWtpCYdRDO/DR33fSbdsRcPvyX87L1We3RGYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Sa2YeI9y; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47789cd2083so20957755e9.2
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 00:41:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764578505; x=1765183305; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D9Kxz2boStuvWtrnpIwzNC+tX+6IpQ3zEJOWuPBhZo8=;
        b=Sa2YeI9yYl5pz+bXgd2rMw0+lZofo2UYvguKSNvph6XrYar9h28KXxghAzc0WN32sp
         zqtEHZ/ZHRyG5Ymezhk1frBt6qan8+PXJrGv78rsIH7PJVN6tN+Pc1lCeoYo5yHtzWed
         o6KVejIM/U9g6eO31LleftcPf1khcCx5fXWOkRg+9go5/+cgmQ9LOWOw/XwAP/CCr3BH
         PWMvRlfVpdmmOkgOPv3ZKcbFJrOGIqkIjqw4wweRAN4VXQH7IOOzRWZc0EIrh8dRu7q9
         ScA/RZ+MdFuUl7DPhcNDh/Hhrx8/RniS5v3I5OqLLIsFBk0xVu3fgx0HOdVMWc1tAVr5
         CsWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764578505; x=1765183305;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=D9Kxz2boStuvWtrnpIwzNC+tX+6IpQ3zEJOWuPBhZo8=;
        b=SExNFCpplKna3xyE7k7Cg1tgoSgTfyk2mj/MLxIYSeHHNnjuDaeyPikn5cEzJA82k+
         uJnh9Z1NCDQOz0iEVm0lzoKG5dRqmngx4u3Pz2LTc3x6Db/d2jSm4PQ3e2ckCL/t4KN9
         KjmERztwEvdgLBlx2WT0VN6TkHk1ObYQGqWFhd6Zex3BYe3ZZ/wji4xw6yKxfn+zN61k
         q5Xqi+ESChCwgrL9+NxAbuOUJixgAB/Qz3ZJ/HqANaSxnCOy6ch4V95nKVODGhBT3yPP
         gJeJNFQz+1t5TLUCcbHYeTHPMJb9V+3pZbm1hAGEbXx53C4uK6FazBqaFMBja/vXGghR
         xZHg==
X-Gm-Message-State: AOJu0YzQjLYA+L8TmHteGtjeBPFN/81BUcdDq/ohrMtEINU/o1tLQraQ
	OWhN79+xnl5sjRAg2zEq+6dLlSiLzDkpJAMkH/MEJyTjfkLAT9BF8c7cq0UE6g==
X-Gm-Gg: ASbGnct93iwCeHrBpXdtxcsl0yH4BLbJ/iiI6QoAzr74JL0NRHVNAVqhIHxYxykdavX
	03cjO7Om8Rmd0frKbjoQ1G/ZyCEYunv3QFmGP9O0CAhcFXcOEVx3fjotPneQ/FGKikd7tdT1UTy
	i5CBqprJnkzFg+4X5pn1LFB11AgsqjaOUmqkw37Nnza5aLArhi3v9/8F4kV4Rod0wI7ftAapvfL
	RSGPAtQFnK0vsgs63t917yOwiOXnUQDLorE+n637fqhP317CWk9P/nygC3xzObtAAkIves1iscL
	OT7uj7+y4Mf9cO0aK7LuUdve48CRjJdwoxVhvypyi196EPNha3/rxgx3qs/+i2A7hyoLxMhdNoZ
	kmZiItRKDfIXmJWA282XHjH/fceY00NNJ2fKcsmd6oMWftPhwCXLd6TDPcrhldyo0ArOQSekC1b
	R9zk2APdMsWaOKcQZ4jJ8=
X-Google-Smtp-Source: AGHT+IEnTnqv/BVPJGKstQYgwzeSPIi3tETUHoDIIqI5/ruaMqH+Im+W1UD6HeMiZEeYg0CJUfiIJA==
X-Received: by 2002:a5d:5f83:0:b0:42b:411b:e476 with SMTP id ffacd0b85a97d-42cc1ac9c8cmr40375471f8f.9.1764578505080;
        Mon, 01 Dec 2025 00:41:45 -0800 (PST)
Received: from owl5.. ([2001:861:3201:3d10:4ab6:6efe:9b65:a6af])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1ca1a4bbsm24186087f8f.21.2025.12.01.00.41.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 00:41:44 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Gary Bisson <bisson.gary@gmail.com>,
	robh@kernel.org,
	krzk+dt@kernel.org
Subject: [PATCH 1/5] dt-bindings: vendor-prefixes: Add Ezurio LLC
Date: Mon,  1 Dec 2025 09:41:36 +0100
Message-ID: <20251201084140.376058-2-bisson.gary@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251201084140.376058-1-bisson.gary@gmail.com>
References: <20251201084140.376058-1-bisson.gary@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Ezurio is the new name of Laird Connectivity after it acquired Boundary
Devices.

Signed-off-by: Gary Bisson <bisson.gary@gmail.com>
---
Cc: robh@kernel.org
Cc: krzk+dt@kernel.org
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f1d1882009ba..e76e6c5be726 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -547,6 +547,8 @@ patternProperties:
     description: Exegin Technologies Limited
   "^ezchip,.*":
     description: EZchip Semiconductor
+  "^ezurio,.*":
+    description: Ezurio LLC
   "^facebook,.*":
     description: Facebook
   "^fairchild,.*":
-- 
2.43.0


