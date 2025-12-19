Return-Path: <devicetree+bounces-248142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8925DCCF182
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 10:16:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 90A1D301910D
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE4102D8DCA;
	Fri, 19 Dec 2025 09:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="efI6r/hK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502182E091C
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 09:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766135806; cv=none; b=W5ONso7/rTRaTcW+FzS+dgkDiYGw9RXhts08M/hZXPgg74IdfwZq3SZDYyAEOusRKM3iKYRj6Mezz3t0axWVWRKIs6qYTBYHQBQhmX2HouMTKqHnDU0FubVA+DLXGQ7bZvw+/ENTgaCVRsf5kW+CHfw+J7DhWXCSzXBEhPWEVLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766135806; c=relaxed/simple;
	bh=7HeoStQpKexgF1k425uxtMhsA5Frc9lsk57AcimfEIE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=DlzAhe+YbxD9ODkDqH3AxVx6lMALNN8Z/U1+IuMZl8SoxFgLAaFncouLDMpUl++evvhfoxeCuOkXv/QKFG/xb98uUlvhUDjfUXc3plYuSIt6e9NuwrbwRAKRKuKwmq0jdh5wS9BQnjSqFkbonr1/+Ad/UYDGXixGqD1BUDFCdJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=efI6r/hK; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2a09d981507so11090525ad.1
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 01:16:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766135805; x=1766740605; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=seg1Djb22mG1EtBOW8bPVm9ZKhEV+FEwOFvHSuMZezs=;
        b=efI6r/hKi7jEeqQdDgr9NnNytgbHeWqyDuRp6c6x5KOgpCz4HRt1n3o/VbLcBSYyyc
         g7L2TOVQAy0OAm7yqy/Zl2ty/9fazNcy6fM8tsnexvVr3CvIenOwW12ALw6XBOcEPmH1
         Z5fM+/8alc4QvwdYArbyw+c5lVPv0KZ5efZ95s5ciAfKOa9i+Kx5DoVWmszjJyp7LwRL
         vcYR/wgym+bWGx2/PIDMwzKxqmX5LVBa0II2pGV76TRzm2pMujgfbl/A2YqubBjCgiJr
         5bOSf8rf/ushnyrw8m1JhITNK/9qHm0+s9D7h6n3Wpgp++o6aa3bKV81npHf7Wwcp7C+
         E78Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766135805; x=1766740605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=seg1Djb22mG1EtBOW8bPVm9ZKhEV+FEwOFvHSuMZezs=;
        b=fXtv2QDqr+h5+37qSerXk774P8UCuqn1P/3aoCLsdZwcvqFmyqaacLcwaQCjsiaJ5m
         TSDD5CHLiYdvrsNCXFVkSH/YsgAzvYTaw0yX7Q+nCKhtG944plZZo665pH+jhf2M/lJW
         eZu2kaHfeHr3h/KOTHGPSLn4YDNrWVFaNnnn3KELqF70fOjOvrqY0hcgK8WH7il0gggG
         XLb8CDxG0BFiiRUhxPl/Fr2uE9svdrDLq3VUj5zjLIjmRVt1GwiHQiqghrwiv9IzY3Kn
         n//oQ6i52Zkx//7tbo1NNgniCOBEiBalaMN1T0XUxmh/j6MB8GKckO9Nyn2B3GrkSQ0K
         v+QA==
X-Gm-Message-State: AOJu0YwhUZeammmbWjPpRUYlZL+cy5EMHCZS3yJxAKgddgfcZwitnnb6
	dbJe60GWeWe+9IB7D9BqpUSLLyUdqlUTizB7+tyFtVl/dZGl0bNx2YVI
X-Gm-Gg: AY/fxX7x3vXGRAKKuWaK4l/bSZPiL547CY8SWorYZRii+BJq9Run9WHdCcnRladNY9Y
	7uRZcpozeOOTaaXPh0QUgbpFD/vakhj5UKXt8CveZNwcfBwSjqmYj0jDEXyAfO6ZBrl/EIxg5qv
	q3nFKrNMpGtlrqsBXW1KtVDYjTX15IGbUpVwaWg98GQkkxUzlUC3QzScrOkTE8lD6uAnOI31n6v
	rZ0vTlnDzsjwizGp7yFJ5hxkxnxhLRXNRADRtHc+p+yGRk8F+P3fkp8iYfkNHSQBxrX39kt+dEi
	Eo1DD61WM8IAfCctS/OGH9UkRTYv1Yg3eTsh2mqkrZxncFTlRYFSyo56/kL4hrZQJNjljZQR4Ro
	IfHOoql4C9v6fnZzrW25b+ukikAhxWdbqciSm5UP67qMxoAo7gWDE1pgNVrkLabGcFAEk35bt1Z
	XFRAPTgELFI63n
X-Google-Smtp-Source: AGHT+IEJ9Q5qdYN7r5wkxKvXn/1Lu7RoXv9XQ+En4DMwtXVbXRE2hJNNeOmPbiwOSmaKWGCsKMsYAg==
X-Received: by 2002:a17:903:1105:b0:2a0:b432:4a6 with SMTP id d9443c01a7336-2a2f0d2db41mr23919525ad.15.1766135804477;
        Fri, 19 Dec 2025 01:16:44 -0800 (PST)
Received: from gmail.com ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d4cbb7sm16831515ad.59.2025.12.19.01.16.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 01:16:43 -0800 (PST)
From: Peter Shen <sjg168@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	peter.shen@amd.com,
	colin.huang2@amd.com,
	Peter Shen <sjg168@gmail.com>,
	KKrzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v9 1/2] dt-bindings: arm: aspeed: Add compatible for Facebook Anacapa BMC
Date: Fri, 19 Dec 2025 17:16:31 +0800
Message-Id: <20251219091632.1598603-2-sjg168@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251219091632.1598603-1-sjg168@gmail.com>
References: <20251219091632.1598603-1-sjg168@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch adds the compatible string for the Facebook Anacapa BMC
which uses an Aspeed AST2600 SoC. This is required before adding
the board's device tree source file.

Signed-off-by: Peter Shen <sjg168@gmail.com>
Acked-by: KKrzysztof Kozlowski <krzk@kernel.org>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 9298c1a75dd1..4cbd79363da2 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -80,6 +80,7 @@ properties:
               - aspeed,ast2600-evb
               - aspeed,ast2600-evb-a1
               - asus,x4tf-bmc
+              - facebook,anacapa-bmc
               - facebook,bletchley-bmc
               - facebook,catalina-bmc
               - facebook,clemente-bmc
-- 
2.34.1


