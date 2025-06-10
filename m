Return-Path: <devicetree+bounces-184205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BB0AD33C7
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 12:37:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED32517599F
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 10:37:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0FDD28D843;
	Tue, 10 Jun 2025 10:36:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b="LYREfVdD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA9CF28D850
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 10:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749551790; cv=none; b=WaaXvn3y9GvG8B2v+/2I1jqvanRkKd6riHufqR8r6eDR9XQ8FNLz1Hs5q8xw3GEq9NPV20HWYLmbotTWoPHZ4cDkjUr1Xb3QFDWC6INS6ZGc7v6MFZwJO3VwwH1fzcK8514DReqfElgp7akM2rUBhVvTu3M/gP3yynonVECOk9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749551790; c=relaxed/simple;
	bh=DdIhTy3q8p6bXogIHoQAqq/ZvjVwNbGYehglCiP06dw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qB7JPwbagcUDfvM1bxgT4Z7828wcGCTRDqC1DWQs24APGtXls1a4LUSkBYgSee1Vxa0oM+v67UrtEuBRv0n5cYg6rd1A//ogr8+/YjTMM9ALiYgo+BrYudqC+MMnypxlyhYkgXRdktNBioZK3ymaq1zaxA6J7au8n75Q+8e3iGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com; spf=pass smtp.mailfrom=inventec.com; dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b=LYREfVdD; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inventec.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-3134c67a173so4125385a91.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 03:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=inventec.com; s=google; t=1749551788; x=1750156588; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rrcg34+lsviAoAZUAGZxbxbJA9K//cWkgoq+Xni+Ow4=;
        b=LYREfVdDAHmQ+TAMgT4LHmhThl8xQ8qBqXzVZpeCG2Yd6bU4cEWGV2bUWlZQrcek5F
         VVRpG/YzlYGxBAxFQvHeG7Cq3TADIoWQxy9GMuU1C0eTb8vAe/rGHxy1xt0w91HbZIZ3
         vHTyp4T1J+djusfo444bsJ/l2EWCAntbAaHfV1jlKv3bIvDt6be8QU3Z8ncUFhA8odO+
         ByDrYEzrRbIHzFfgaQ8udTlnqGYUs3RV5Oc9i6iBm2JFYeWohUU9ZM2MWSeY7yb99WvC
         2PvKT74WdccDbHKLymt+l5TC/lUDxaWU37eRbsxfKiARqRbKtbcd+aBR4PkI7jJR3eh1
         X+uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749551788; x=1750156588;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rrcg34+lsviAoAZUAGZxbxbJA9K//cWkgoq+Xni+Ow4=;
        b=NQ5KeYHqQaeMdc6U7Ha7/keiGCoz0qI8PkTgluYVnDV92AMLGJa7KGZ8wIowMzUl0R
         RQL2pxJnfkMjmEMyyft1b/ojSs+jpdBVMjADpziKJmtexEVmDDwuXwD+cQZsEQ/aw4ui
         lhYpoF+fwpj96C0TSPO4kRNfwm5V/EY9M4PmDmm8T9LZoYud7bOa57kJsy8v1bjr2siC
         cUyEvy0T6kgGljxi88kSH4Tvcz2PZ8cR/XmAbrp1t3bOrB7fmxgi6CLy4z7L30ZyEqOS
         hvFXeHvzU6DufabnubyR/bZb8cT2Oxxh1Cb8/qLQgsu0wmiEcsZFZEoN0x0SZAdK/xDm
         e4Fg==
X-Forwarded-Encrypted: i=1; AJvYcCWTNflkRYOSVjOf76jTdFtrPgN9qSvP+yuoiK03uBHQanJv7nIeCfuYMPYH+P1cGmieHxKiH3PDiPIP@vger.kernel.org
X-Gm-Message-State: AOJu0YwO57mGnxBrOqcEJzX1smuxugLLK0RbUeLvyRXY4y4HSQOcTXVR
	Zp/aWSQTvpOCyQX8AsICANN1Uc+Qa4ii+rUvNz2ufjdDsLrwwgvJJxpoOIfGxmuHJ19TQZCtKl/
	YUS9h
X-Gm-Gg: ASbGncswdkP9ZLe2ngDhiaKelgXMLA528ljN1NoXg8j2DHwJlRiFxi/KUAJ3eY4VYDp
	MxubfmTR+t+G+W1uOGDmAM5MU2eqYXqOYb01Q3yqEEMD9CrjgAfBHSMpVcwiDFnA3YehKpu2OjP
	5uao7wyhtlkAIduHrKnW6d6Fj0cRv+rO2HtICiZ6t2qtBsLuytYD/vXcVYo33sPK3xpEi/UhVbL
	m/RC9Sk6RIi8ciHnldGR/aLnSjfYX0X3PWHUKbOCYeIuTz/N3FARLu9lLJ8c1w+B/v7eto/ZgOA
	yu/fiEjOb+s3cIegjZYix0nlr0Lo0pxoxLZbZ/kkHqiXj2ZTm8UWk6Z21U15g9DqusqSqRS5E7Z
	4hU3kG3dB3zvHrh9jZVSgjgINFTrS+8dncuuv+ullzHI=
X-Google-Smtp-Source: AGHT+IEXd1Hcw9c3aT+Co83iBRXaANe5QdZsyUaTImfUlQrhm5qcc9u+SApj2W2xKK1ATcOsPs45wQ==
X-Received: by 2002:a17:90b:2ecc:b0:311:e5b2:356b with SMTP id 98e67ed59e1d1-313472e9005mr25567000a91.11.1749551777007;
        Tue, 10 Jun 2025 03:36:17 -0700 (PDT)
Received: from localhost.localdomain (60-250-242-163.hinet-ip.hinet.net. [60.250.242.163])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31349ff7e14sm7800595a91.45.2025.06.10.03.36.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 03:36:16 -0700 (PDT)
From: Chiang Brian <chiang.brian@inventec.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chiang Brian <chiang.brian@inventec.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v9 1/2] dt-bindings: trivial: Add tps53685 support
Date: Tue, 10 Jun 2025 18:25:54 +0800
Message-Id: <20250610102556.236300-2-chiang.brian@inventec.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250610102556.236300-1-chiang.brian@inventec.com>
References: <20250610102556.236300-1-chiang.brian@inventec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device type support for tps53685

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Chiang Brian <chiang.brian@inventec.com>
---
v8 -> v9:
- No code changed, correct the order of Acked-by tag
- Link to v8: https://lore.kernel.org/all/20250602042454.184643-2-chiang.brian@inventec.com/

v3 -> v8:
- No code changed, included Acked-by tag from v2 review
- Patch kept in sync with series version
- Link to v3: https://lore.kernel.org/all/20250515081449.1433772-2-chiang.brian@inventec.com/

v2 -> v3:
- Fix the order of patches
- Link to v2: https://lore.kernel.org/all/20250424132538.2004510-3-chiang.brian@inventec.corp-partner.google.com/

v1 -> v2:
- Correct the subject and commit message
- Link to v1: https://lore.kernel.org/all/20250314032802.3187097-1-chiang.brian@inventec.com/


 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 27930708ccd5..a613b9c3f6ea 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -396,6 +396,8 @@ properties:
           - ti,tps53679
             # TI Dual channel DCAP+ multiphase controller TPS53681
           - ti,tps53681
+            # TI Dual channel DCAP+ multiphase controller TPS53685 with AMD-SVI3
+          - ti,tps53685
             # TI Dual channel DCAP+ multiphase controller TPS53688
           - ti,tps53688
             # TI DC-DC converters on PMBus
-- 
2.25.1


