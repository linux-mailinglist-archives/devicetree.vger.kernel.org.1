Return-Path: <devicetree+bounces-67517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2D68C8802
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 16:25:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2DCDC1F2721D
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 14:25:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 889D05F860;
	Fri, 17 May 2024 14:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hCAAGTvD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC145C603
	for <devicetree@vger.kernel.org>; Fri, 17 May 2024 14:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715955771; cv=none; b=qIUTmFlvzDMhaK6zGs1uW3E86KZwxTrG6Q0kyhFcGKVuxDeYCEYHqj7+KUMRqc6biksYib88BudwWALX7flBtIb+G7d/6r2ufoYnC2AxsWpX1cP7a7Q1Zuc5kaOxipvboHugN47FcwMdJ/MYg2KGTX7kHjYHtBZ4tvBjFj294+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715955771; c=relaxed/simple;
	bh=3HO4qcYXJgZg4FhjGTJW3cruo/JKZwmUPV9ToBYsSAo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fKIw5lFCbzXdJyEagDR8iNuphmq7T9AMwi9AXgzxRd62dGKnIt5/ihYYvFYd4zMNB9BPFKDGPYRm2JFUv/kfZB3wtl0Bl8R0svymWpSrDftofPow38qm0aMCc/6SQeAgcwbdM78lj78EKp7luOtQg16V0mWmPwX7Wj1/GSVf4L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hCAAGTvD; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-571be483ccaso4956730a12.2
        for <devicetree@vger.kernel.org>; Fri, 17 May 2024 07:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715955768; x=1716560568; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wof1SP6Ref2uPP1r74EXX3SjtI/nnHeBDVdJ5oPu2bE=;
        b=hCAAGTvDgjrhIms6gFi5YbRnJFYWE33SskuofW9QFge6pabMYIOKG3ax1z50604RHO
         cUNiQj4GRFWQFF+4Q/08w40uvi4AvsNzh3jQxi4yXSbcnHoYmAyOKryYRDhpylUouhqb
         WzDKMWbigNKWp0SGBH5gUAVMxNVt/uUWzFcItRA9puBQYqHt5juiohiRRPLG1nDQUGXi
         0NWQMNoS/tY3OSkiTHpu8Mk30fXiwDWNSEZOaqzhsHjVhuqLoXGEqjujQ+VguSmYD9V4
         9tGcIhjyhashpviINBhxrfODMyBC85oF/pJn+LrdJ3BNkh8ljVQR/o9BTRmZabHS6fgY
         d/vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715955768; x=1716560568;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wof1SP6Ref2uPP1r74EXX3SjtI/nnHeBDVdJ5oPu2bE=;
        b=RxGDQrzeK/EtSgInHBL61tQvEcRj1PHYmFq9KvQidrsAMd3xAwYGWDSQsq0BDX5vKe
         D6KekcrnnOhK7bPOOl9MBGgSl150WFlsKWtUqXXra74UGHfb+56YNjEN9Jhhb+bYohFF
         rhObwmg9MDtXtY5ufuk/TGS8K1xRAQB06C5wzLoDo/r6rUQnJy2JO/YekoMLX4IjPeT1
         l97Cfwi3J0Cd6w49Hlo+HADMXfgEbkLQUPVLnrMX2wlUj/Ih7Mk4NnSBIybnkE48TBJN
         FBTaVZQFjR4PqvBzE6x9CasR1oJTqRmhxFbBXCZs6Iy0Pwm6hY0q0eMeeHImke6gobGy
         5wIw==
X-Forwarded-Encrypted: i=1; AJvYcCW7e40s5tE4cMyfiruV/6YGFTmWU9LZ3pZwjqdraANM/axU1zqKgouOu9gbOsLsoMtm/o81Qbwi/fTwfdVA6dDCO9j3qP0xT84iiw==
X-Gm-Message-State: AOJu0YxQoMcwyR4byXJVeHFd14sBpVnnq+cGgiR6WeBvb9IVAWZYEaaP
	99GZ6NuirdiZZluP9HmXG7Ll38DVNOA8sfe6mmaMHXhUuEjtVNMyKT0katyzBmI=
X-Google-Smtp-Source: AGHT+IEkGFHVxFI3gRZzrlJGe980Qfv7LG73mPGQFgV214HRmjJFEmkOWFb/l5SnJ8wpr5zF8KkFKw==
X-Received: by 2002:a50:cdcd:0:b0:575:954:7ef with SMTP id 4fb4d7f45d1cf-57509540de0mr3627635a12.3.1715955768236;
        Fri, 17 May 2024 07:22:48 -0700 (PDT)
Received: from krzk-bin.. ([149.14.240.163])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5733bea65aasm12016784a12.5.2024.05.17.07.22.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 May 2024 07:22:47 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: soc: sti: st,sti-syscon: document codec node
Date: Fri, 17 May 2024 16:22:45 +0200
Message-ID: <20240517142245.178556-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

st,stih407-core-syscfg syscon block comes with a child - the audio
codec, whose binding is still in TXT format.  Document the child to fix
dtbs_check validation errors, while allowing later the binding to be
converted to DT schema:

  stih410-b2260.dtb: core-syscfg@92b0000: 'sti-sasg-codec' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/soc/sti/st,sti-syscon.yaml       | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/sti/st,sti-syscon.yaml b/Documentation/devicetree/bindings/soc/sti/st,sti-syscon.yaml
index 5f97d9ff17fb..fc933d70d138 100644
--- a/Documentation/devicetree/bindings/soc/sti/st,sti-syscon.yaml
+++ b/Documentation/devicetree/bindings/soc/sti/st,sti-syscon.yaml
@@ -30,6 +30,15 @@ properties:
   reg:
     maxItems: 1
 
+  sti-sasg-codec:
+    description: STi internal audio codec
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: st,stih407-sas-codec
+
 required:
   - compatible
   - reg
-- 
2.43.0


