Return-Path: <devicetree+bounces-174873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F40AAF2A6
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 07:12:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 481D67ABEE7
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 05:10:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6685214809;
	Thu,  8 May 2025 05:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="dw/YUKVY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f201.google.com (mail-pg1-f201.google.com [209.85.215.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDAD21018F
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 05:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746681104; cv=none; b=g63ZQTpduAPa+Ylndwalc6qBo2WBfhgkKnXxEazEcttD/TAvNNgf1cwr56dMXD+Bx/MX7Mt9iEOdrX/y1iHbsiaO09qOIGwmXH4HB0B4iVX/ttsA7HCQjpQqtq/dkAKIK1a4t3Xun1Fd8lqGOr1PGQfBfzsEAgqoXpMcIaInzes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746681104; c=relaxed/simple;
	bh=w2+W2tZnQfiMOlFUaZpvMdhzpNLFFWuvCuO5WujfTCQ=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=S4jOldsPDvvYBmrvkn2XfrdWWPmfQf/KkQfTRHOC+XVmoSx4L4MJiAXMIJuD+fP10+nc1VPJvD2xpIQ4Ci9p0eTEgE9tMaprjEautNFUEAOcRUi6P96EdmPCQp6yS2oRkMPjtSgoXdC6etF20ke+Q9w9FWtf7H2pgmkJoff3QMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--amitsd.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=dw/YUKVY; arc=none smtp.client-ip=209.85.215.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--amitsd.bounces.google.com
Received: by mail-pg1-f201.google.com with SMTP id 41be03b00d2f7-b1ff8085b54so355276a12.3
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 22:11:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746681102; x=1747285902; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=R+xYDH8ZA1ujcqXzLdWECgpqE3X7iFSqlkU9E1XnNX4=;
        b=dw/YUKVYDpruNYegrlaMRUFUwjnSp/HPq5RS49bssBaA5iFMMLAAE2OXtwxuUAc6+x
         pOMqjsigEmSVTN4mkUkHnmide0ZyS6k09YZ2gltkUMvqgTVGy8sSsoNXbUFjes+XZ7Hx
         K/c+RFcvX2wGyKlOZAIgN/Lg6PNAx+mi9MaZLbks9byydhtEm2hko3JZutv5EKzIf2lO
         BdJhZFxl7EzcB5s+PCgr+7YwYtEKDwENtP3ri1L/kHeoeGjgZwWycZ0UD2deLvV8Ic0V
         3ITl0LT3HchQzmb1DeUZSlNuA2qoNPotrRYy10MqfEa65hvTN5Gs2Cj5rOC8X/MqmpEk
         lAHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746681102; x=1747285902;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R+xYDH8ZA1ujcqXzLdWECgpqE3X7iFSqlkU9E1XnNX4=;
        b=WiO1bRs+NtKTLISHd+OvXZVyTYmsYkw42yy87meixYgVGW5Sa+rMbuRa59Q1uAiqhH
         2/YDgDDWIL7URWo3alLklgBd8E1qZD8fGgPyLawX9I4IC3KB3/0xpWoMg/ZahGW2vRu/
         HULeDjGFFJMTZlNsKnK0+t5UbECF0MVjZZxRF5hf4opgMMc+s29BNPB5gHoWiXHkbtYP
         +6RoiJdhSptrznh9oYZR+bYjbttinJbD/8XgxZnLP9zAGnFLvcx+Nf4p8CVBChuxUszp
         XgBKUalK7eo0HVdG2X0MXkLgnNskkClat3WbzXTf+QTleNiUejYjGpseLe+KYPiFQajk
         oiDA==
X-Forwarded-Encrypted: i=1; AJvYcCWoI5nCRv9l5UxohE9qTd2esnSQIpdw/5OsPmjUl6JqvKn+qEIIfo9iSxGNs4eGcrkUu1XuTOOghAjq@vger.kernel.org
X-Gm-Message-State: AOJu0Ywyidpc349CprOtXbr8Te4ug7ZZYjPLW1ChD9McFUVQhRG1eJLZ
	g09IkEuBKBJjTXeNqLviEmUL9pCYkqViW0TIIF2d/3laR0pZNgdk10m9tJzbHu1eipbBB0HVpkM
	PAg==
X-Google-Smtp-Source: AGHT+IERIVcMryduPU+3ecKegN+A1vCg/pfEbS6Jj0XrVd99pcxtEPjMwKwdWRUuqmNGdI0hOKLRwX5lI5w=
X-Received: from pgac18.prod.google.com ([2002:a05:6a02:2952:b0:b1f:ddf9:da49])
 (user=amitsd job=prod-delivery.src-stubby-dispatcher) by 2002:a05:6a20:158d:b0:1f5:7c6f:6c8a
 with SMTP id adf61e73a8af0-2148d332422mr10163138637.35.1746681101676; Wed, 07
 May 2025 22:11:41 -0700 (PDT)
Date: Wed,  7 May 2025 22:08:51 -0700
In-Reply-To: <20250508050856.674782-1-amitsd@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250508050856.674782-1-amitsd@google.com>
X-Mailer: git-send-email 2.49.0.987.g0cc8ee98dc-goog
Message-ID: <20250508050856.674782-2-amitsd@google.com>
Subject: [PATCH v1 1/2] dt-bindings: power: supply: max17201: add port property
From: Amit Sunil Dhamne <amitsd@google.com>
To: sre@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	peter.griffin@linaro.org
Cc: andre.draszik@linaro.org, badhri@google.com, tudor.ambarus@linaro.org, 
	alim.akhtar@samsung.com, dima.fedrau@gmail.com, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Amit Sunil Dhamne <amitsd@google.com>
Content-Type: text/plain; charset="UTF-8"

Add port binding to represent an endpoint that connects the power line
from the battery to the Type-C port connector

Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
---
 .../devicetree/bindings/power/supply/maxim,max17201.yaml     | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/supply/maxim,max17201.yaml b/Documentation/devicetree/bindings/power/supply/maxim,max17201.yaml
index 4823021ff16b..50c2d672cabf 100644
--- a/Documentation/devicetree/bindings/power/supply/maxim,max17201.yaml
+++ b/Documentation/devicetree/bindings/power/supply/maxim,max17201.yaml
@@ -32,6 +32,11 @@ properties:
   interrupts:
     maxItems: 1
 
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description: OF graph endpoint representing power line (VBUS) connecting
+      with the Type-C port connector.
+
 required:
   - compatible
   - reg
-- 
2.49.0.987.g0cc8ee98dc-goog


