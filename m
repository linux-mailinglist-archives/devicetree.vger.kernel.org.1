Return-Path: <devicetree+bounces-50249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DA43787A79A
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 13:31:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 87B101F24212
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 12:31:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF3CA1E891;
	Wed, 13 Mar 2024 12:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yKtsibkp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320E9405EB
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 12:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710333043; cv=none; b=Y9aKcD6smK4f4/PJL4mQYBUVOPfg7rktjk/hZVtMpavNOOSv9vZfHFvdw+N4sNel6XRVgd0y3+nKHUR3LeIsAjM+5LAdOvL8qxXvKfw4EAMzlXX+BoyiNOjRUc8MwGVo2GJl8hDq23yTzzS9jIXFpBDRzwsgmnFotMtJpsDjlHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710333043; c=relaxed/simple;
	bh=SrAioTk1aLdkCEji8jYLnfjn9WTOsV09v1sWQsQGbG4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SCzZGL+5Xj0RfJMf0kq6rD2nG9ykZ/QQtISNgsRAlol6QPVR9/RvHiC11LdUDRgA1M4jrTE8bE4A7oGr8nZ2ewOtDT4yB8tnoTawE/U42i9iQQ1Lz9xMFugb3tfw+FMSLbl1jFr0BiFr/ngh13NU16Y34R+r/aCGJp3aojcr35g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yKtsibkp; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-6e6c10bdd2fso245740b3a.3
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 05:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710333041; x=1710937841; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QdLSB061DdK5SIkVqCpCWsXG7iNw7MgvJnssiXq1BHI=;
        b=yKtsibkpzZCm5QSKaHyCaVKRUqHpT6iNn7SLxwUrTfZiKGgmBurFYcA6vPLaLXzBvj
         E9s+obtFjWMqmRXNpgUimjfwwlEhAPosgp0mou29kkhBOKL6+faE6OLGVbrEL4H+pVv2
         9+QIy+tWbOwrxqYqk0UkTy5smGEYkEsVXCB75+OblUNonaiwMoWXX0lEy9DjJkPkeJSw
         25ZWvM9g3BqeqovoXoquG0I7z1gvgDUG+/hOTVn61X0Qyk/PI0TbnoYRtD4jzLy71Yrv
         VgqBvFKoPyK26L92J3K+egyyLJ9UkQzqRqQQKSiUtnOm1HCVD+bVAJZzmN78Xov7yNnK
         ZneQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710333041; x=1710937841;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QdLSB061DdK5SIkVqCpCWsXG7iNw7MgvJnssiXq1BHI=;
        b=jcHmeHmYLD2r6tIQOSMs9ozzuAXS7JNiaFEN4yaSDUsrWnUG/vqrXeEb9KRdvcld1i
         KBohiMHr76OPRN5oHVCVP/hh56Fd/cagWCDfHba6PvnC/EHomIIo7XSg9vZvUgh6Tc8G
         1K5jGa84hLbjZNvjtNvQ2OV8709tT77V2ACIeL9t5EcJBlxwo29s80XLRB55ge84CGBW
         RQz3YH1vGjVkxVXWGU0A2j3ZL0K4PQszwXniD1CYVkBIJftz+Ve7+o+yfDPoGbfgSgCk
         Ln5+JrMoDBSgpJcgHIQOjKNT4olxX4pKELGtFuLGBJCbklsgKJ5X+50WqzW55l5O8GeB
         pI3A==
X-Forwarded-Encrypted: i=1; AJvYcCXn6BvGDmG/AHheilsv0bqM8YIGHQ6YY4boMy5kB7srtiQMEhsmJPQAcujadh/BtF3XTqPNTwyKyKL5kIUg6MqNjae5QBoYjLRkPQ==
X-Gm-Message-State: AOJu0YwSPMdUIIW6nkrxvfxeJW9SMb7y4Z5/r7qWyc0wmcnaFk5/R5n7
	3DsPfe9fAzYjq8axIpu/iHAv0U9BJrYQumip8pRlHWX8XF9by6EqydHmInSNwDU=
X-Google-Smtp-Source: AGHT+IHwdCicWXiY6iV5kAgTG75yeark6UiQTDpCEM6c6xWtzjNasB4Eyd/7dYAoqdbB0EzxqeimEA==
X-Received: by 2002:a05:6a00:10c3:b0:6e6:b129:1842 with SMTP id d3-20020a056a0010c300b006e6b1291842mr2219507pfu.28.1710333041589;
        Wed, 13 Mar 2024 05:30:41 -0700 (PDT)
Received: from sumit-X1.. ([223.178.211.36])
        by smtp.gmail.com with ESMTPSA id z17-20020aa79911000000b006e6150a5392sm7797307pff.155.2024.03.13.05.30.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 05:30:41 -0700 (PDT)
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
	laetitia.mariottini@se.com,
	pascal.eberhard@se.com,
	abdou.saker@se.com,
	jimmy.lalande@se.com,
	benjamin.missey@non.se.com,
	daniel.thompson@linaro.org,
	linux-kernel@vger.kernel.org,
	Sumit Garg <sumit.garg@linaro.org>
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add Schneider Electric
Date: Wed, 13 Mar 2024 18:00:15 +0530
Message-Id: <20240313123017.362570-2-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240313123017.362570-1-sumit.garg@linaro.org>
References: <20240313123017.362570-1-sumit.garg@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add vendor prefix for Schneider Electric (https://www.se.com/).

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


