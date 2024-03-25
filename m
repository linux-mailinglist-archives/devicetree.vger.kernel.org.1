Return-Path: <devicetree+bounces-52951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3101188AB65
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 18:21:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 338FCBC51AB
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 16:06:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7117C6CDCF;
	Mon, 25 Mar 2024 13:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AHXAU5mL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0AE845BFB
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 13:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711374610; cv=none; b=AgXmuuyHwC3mGHyT94ynFt3/gprfD9rI8q1WFdmI7zR6iTE2N5bBn4gzhUGKF8Gk90ooNNP2QKnVH0h+PTIHsE4unKF3w1YfOhLarYdMlvJ3TWxSMZ7bvq5GkMtGbUPO07e/NM7hEWUKgUlIYUBrAB8IWddKQGR01mzWL3wYMqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711374610; c=relaxed/simple;
	bh=q9M4zIA3ONzCtXDUYXWJF+nh7UxDlHrpYPY8m9fSLIo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Pdl01+rQo2C/Ml4hdqShsklOoUiZ5aJY5Ghl1xrJTZbgazpBJOC1YLSM2IGAiOosZZYq4FU7v39C1EVBDH9Pkn7KFo33JoyYdwy0JJ7ZqLeHoc2bEpBClTa9BfbiJ05+1vcANii5pPtlVz2OSh6NfjNnY+3O2D8s922btzw/dTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AHXAU5mL; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-5a4859178f1so2370635eaf.0
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 06:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711374608; x=1711979408; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BbJkqNdY66C3ZGpPlypuMpUlQgBvGG9nwBs5AHhdlTI=;
        b=AHXAU5mLiGWoWVbESLPZaztCV7WxKF9CQNq86E8cxJXGa63XY4BQb1QkmpS67KedWG
         SlOqpTZxqk8gRPgzMHQ2RT6z3JEAKCIJo5iBcpa0GAVV+m8fqQEkAJs/sUtKg4cVs/pi
         O13Wrt8yy86/wlW/aKch5SL9cLiQY81XNE3rF+g4aY2K7CTNmXdyaTGffJeS7+Vwrn+w
         gAk3HIVGYLscOudSw2R55AGPPF46Tb27LdQxIb6WT1/RMWt/WUg99qLtvXSMPbRvn89V
         ohDkLhEP+iUn7mTMB0wwKUbv09rL/tXDhg8uBAKX989KpAjNAN/j0B4IXLe8IYwvORxN
         wPpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711374608; x=1711979408;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BbJkqNdY66C3ZGpPlypuMpUlQgBvGG9nwBs5AHhdlTI=;
        b=YG36NaKP0Xv0sGSukl+4Q45gwDdPPFSyV7SF6oxMwYDlWUD/m/xPf+ws50rv6LNNYR
         URoISWuslkJnR4M9Cesb8DteGpuKZv+XeurFb3pghEsEQ+mGvMjPKwpsupB9VkNLLSh8
         1gR1EvUSYUdqKNaIJ0kEoNBmxM+9HeVXgKxHvfKgzIQelaDCW2X7HDa4rCqmmdHwN9go
         Oc9el+OI+FythT7GTrDXnnxh+SRS6W5er77Bjg5T2K45t/ZP394+rVziH9mcTnRofhnL
         CmVfgN2e1O5lW+eX8CaonVfawII1934OTlnghhJS8HRLrzMtzJ4IlNoOYWpe/rxsvLCb
         /KSg==
X-Forwarded-Encrypted: i=1; AJvYcCW56sx6CSkjpNnBDdlr0FSeg99kjqkNcVlUZm1Ea1eDPjJacaDONYUxRTuzNaFP4KMLsjrT22cP9UzPmlmwmMeoBcl5iXNaGYE/sg==
X-Gm-Message-State: AOJu0YwGUpwp9OOhDMOGwc/N1eSS3IF5BgFPYUnmzPWhr3l0lhBniiKs
	IAYlWSuRXi6ua3o2rM6aYnhaAzuHBJ+9XRjLUKrTRkdoINlzgzQd
X-Google-Smtp-Source: AGHT+IFn8uSOzi00+o3avwWfZrNmEtyROyQtLHm+wDAbt7YI8gO+mya+YXn8B4WCU3TqBLHIJUo6xg==
X-Received: by 2002:a05:6870:3041:b0:221:bf34:b15f with SMTP id u1-20020a056870304100b00221bf34b15fmr8485533oau.25.1711374607986;
        Mon, 25 Mar 2024 06:50:07 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z8-20020a05683010c800b006e673e2d2a3sm1118250oto.77.2024.03.25.06.50.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 06:50:07 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/5] dt-bindings: vendor-prefix: Add prefix for GameForce
Date: Mon, 25 Mar 2024 08:49:55 -0500
Message-Id: <20240325134959.11807-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325134959.11807-1-macroalpha82@gmail.com>
References: <20240325134959.11807-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

GameForce is a company that produces handheld game consoles.

https://gameforce.fun/

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index b97d298b3eb6..3def72060414 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -529,6 +529,8 @@ patternProperties:
     description: FX Technology Ltd.
   "^galaxycore,.*":
     description: GalaxyCore Inc.
+  "^gameforce,.*":
+    description: GameForce
   "^gardena,.*":
     description: GARDENA GmbH
   "^gateway,.*":
-- 
2.34.1


