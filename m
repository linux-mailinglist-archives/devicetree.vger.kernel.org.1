Return-Path: <devicetree+bounces-53753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8372688D696
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 07:39:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B51F21C250C6
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 06:39:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27AB122EF4;
	Wed, 27 Mar 2024 06:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IT0Myisn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACBC38833
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 06:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711521474; cv=none; b=RllnBCRtGIbNQx1qesILv0ih51gWwZS/nfdbql1NDV7QqMbHuRNs74lwPzNN0PvxWxk4jWMsu2a6dHmbXFgZ3/ZQ7EGSgyJN4AViegVw4JdGt1YBrjHaJqGNe+ceSTJesRzm4RrHS6abvcB5z9b7OkQ4LQeyI4HF7jneWYH3aqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711521474; c=relaxed/simple;
	bh=rPfFrJBnAulSY0rHFnC89I3kUqU3f8YhptHrQUiyOjs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QahEzbns6Q2VxDjx0DqyxfYSlniTl5RCyUCZuMc9+kkWl4/VNJy6qP4WXDjXkoIYvNdPIGltXTi57d2+YvXPHiFwh07e0Z29tRWrFJhR4srF6tx+b8kHxp2LH1exdI+HsprwB2uTOs4okUOyJ/oKiyYTzwC3Qwrg3JrIL/J6mec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IT0Myisn; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-5cfd95130c6so3549651a12.1
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 23:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711521472; x=1712126272; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BaoVf9eqjsot1BqIU97nmYIfRRMIaK539UE6et7+tDo=;
        b=IT0MyisnLu4Th6GpX55SDgnroU7masedlLrvG08ZOL+scjcNIkfgk5aE/tD8gW9Zg7
         h+YZJGrJGTaA1EBx/iCh+Vd9y98qLGrmzPJ/SoKUnzmxQpVCgd62QvFQD96j6Z8m77bA
         7gWnkf5msU+0xxeTmogfa9gNrwU/ToQedEzrhIPMBWdg34k5/Lyw07PJAfgJL3T5zaOk
         0qYLEn/txe5NWG1DBkX9c00W8nEDgrOxcj0SncobiY9mcs/UwEAUtn02XGTt1aIJeSao
         1bfuePGCXiyem6KA6+yPLt0JGst4ctb+sf39c3U/i4DXaUqwvuqsRWcO539Z09Lqs2On
         Gr1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711521472; x=1712126272;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BaoVf9eqjsot1BqIU97nmYIfRRMIaK539UE6et7+tDo=;
        b=CidgxeHcXndfk3Z5meJUTICHShieUQ5VGfQRnHzftEnk1s6petILDbjAi5KrmAp6IH
         gbHHeZDzHEYIAf8GcxsDF3Tt1yNFMnpKAb4JgbiStZgAKcS4Y4jfVBilNUgfLNLBvidG
         DrowGxSjO6br/CPICRBEBJN/Sj+RJZG/6bpCRh4WXPtfdJWIOiDGCFacUeX+OVvWWZSV
         NAaNKON/Dgr39DZwzW0uYNJB78YvQ1xoRBVjFdsY8Ea4087RvarziHRaIVA/OnCQOiY/
         +2SpTa6KyiFZzYsxXPVUeJuxMu2ewKYFUz78weJ2LJlJ525ZKQazsQdJP9kMyuGFry5L
         Rb5Q==
X-Forwarded-Encrypted: i=1; AJvYcCW6jHQFD/Fr+cte64sVvFPvEXllrrRFYHzPGiHVsHsQ+hxbFtZB+DZBDpHo/Fteg6tUbp7KSPCXyVEOKRgoDhcytQOXwgDRnDUfGw==
X-Gm-Message-State: AOJu0Yz3BV+rBGwhOqr4tnV5rdpYGuBemqPlGMN5KlInzci+dA6ZsSwQ
	3L//2MddXJQvVTh3NdmmRwQJeskEKCsEFkhhLEdBMBQcQBVV7lkLNn033VXTCXZxDQRXEEEubQT
	F
X-Google-Smtp-Source: AGHT+IGMuZtHvazZJBQcFvWTWdLA5CF2Rtu8zNn8wDCz0Gyn60Y05qjs1srXfeJjghEVBNqAlY80gA==
X-Received: by 2002:a05:6a20:bb1f:b0:1a3:685f:9f48 with SMTP id fc31-20020a056a20bb1f00b001a3685f9f48mr259413pzb.30.1711521472055;
        Tue, 26 Mar 2024 23:37:52 -0700 (PDT)
Received: from sumit-X1.. ([223.178.208.127])
        by smtp.gmail.com with ESMTPSA id qd5-20020a17090b3cc500b002a02f8d350fsm772765pjb.53.2024.03.26.23.37.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 23:37:51 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	stephan@gerhold.net,
	caleb.connolly@linaro.org,
	neil.armstrong@linaro.org,
	dmitry.baryshkov@linaro.org,
	laetitia.mariottini@se.com,
	pascal.eberhard@se.com,
	abdou.saker@se.com,
	jimmy.lalande@se.com,
	benjamin.missey@non.se.com,
	daniel.thompson@linaro.org,
	linux-kernel@vger.kernel.org,
	Sumit Garg <sumit.garg@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/3] dt-bindings: vendor-prefixes: Add Schneider Electric
Date: Wed, 27 Mar 2024 12:07:32 +0530
Message-Id: <20240327063734.3236117-2-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240327063734.3236117-1-sumit.garg@linaro.org>
References: <20240327063734.3236117-1-sumit.garg@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add vendor prefix for Schneider Electric (https://www.se.com/).

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 1a0dc04f1db4..4ef38573e411 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1211,6 +1211,8 @@ patternProperties:
     description: Smart Battery System
   "^schindler,.*":
     description: Schindler
+  "^schneider,.*":
+    description: Schneider Electric
   "^seagate,.*":
     description: Seagate Technology PLC
   "^seeed,.*":
-- 
2.34.1


