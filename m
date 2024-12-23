Return-Path: <devicetree+bounces-133449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C653D9FA9CC
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 04:44:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 223C7166252
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 03:44:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACC447D3F4;
	Mon, 23 Dec 2024 03:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WuypARtW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13B038385;
	Mon, 23 Dec 2024 03:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734925486; cv=none; b=Y34vTl1ZX4SXyYwXursA9+h9Eg2DcaJurGvnR+Bn6ezCvGtxk5fLx2t+h80zFH8MnPa4PSoJEVUVY7j9uqFQpIhKjz3iFuzddI5ifYBHLLc0X0D6POc5kGg4/s9K6tH2q5VOW6F45AafUCMRTgT2W2sA0dAHh+5CRGU/TqKyZLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734925486; c=relaxed/simple;
	bh=N1oO6n7jz4F2bvyIXKTMC26sF0wNIK17WTUzZwGcHS0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JItQykH7YwospXV6nWwDlHZRADkXMrK4XNm2oms5DyjHnB+No8Tt3rDtWroRy8xDM2F5sLUTUXfaTs2ARLHkVKsgmZzFnNKTWYTQHjTiov7a6SqJY/qNfdJ7YCLIgBfr8pXdYU3tX/4iLZJzxdjJ8KYVL61dpi1KmyFb2/TEHOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WuypARtW; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-725f3594965so3089477b3a.3;
        Sun, 22 Dec 2024 19:44:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734925484; x=1735530284; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AKKBjAh93qnAKFGi6NvkSBxaiPeXPV+xvQIPqMHhl/w=;
        b=WuypARtWHLU42ILv7dw4nJ/98wSMEDScX3Ght/IJJdH6pMkt+Pesjt02z8cX1p5wg4
         IReyF4oSvmSzlYqChULCCzW5dkw0YVgVEpYpA4zcklDRGtsTMUvrBT5ob/N3x5XY8Dh9
         4pAGPBdMLdkUK4y0XPGdCumj3Ofa9ltwrDI0hYL1QTFEBXoypcSczws7XgRq40mVNfLW
         sKOCmKwNp92GG3Mw/gZM9S5fOCrIIw/zqYFs9vt/XMdye8xdldpH3Rb5F0QiQlU2e7Fk
         dU2oc9uM6gjlXmJWupxSkzdjyPYG8unO2C1CEs0E4sjdlRCvUb0w/KDz84yK252TB1Fk
         WUEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734925484; x=1735530284;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AKKBjAh93qnAKFGi6NvkSBxaiPeXPV+xvQIPqMHhl/w=;
        b=CJMnId08RUJkx5oaxpu98dYN324Wu5mx1f0+fIxaEX3RR4HQpOIWfvLDAOjGXueK9G
         vaW24PILbXoJzmCeS8IAaW/EWKn22nTEhrLR9M2RQYt4YDYQQDKyhcobtfQPS9gqhUUS
         bChW+M8BQOpPv3jyCwHo8Q1yXMsngJC6LeMsKChwU7hoIzRezA24nCa3ZB7cwzFdafff
         YxFYNJzkNjJEZAAbPWvnSgysbB5XW8gdASExiyEU62qcDfH3+CcYJvpdwnrKBaBa5g74
         Qa2BjWj6bZWbw8ECCiUyzyoAFZqDXjywdWxc66MiFyBskUVk+XyvpNgP/UgqFsXb//sb
         KTbA==
X-Forwarded-Encrypted: i=1; AJvYcCVCP3i70aytTtLzCc1Ogto+mGJQfA2Piu7K8ng1sPQqz04t1+wEHErnj4kOH0Qj8M9mN2zT2PCplnYG@vger.kernel.org, AJvYcCW4bTvIQlRrwvhWL2j1c0/ye6xbpvRvY++yWFr4Mrfbp2MDXkOkWomreb0rjvHZlx2DcStOgUvWxebfYKt+@vger.kernel.org
X-Gm-Message-State: AOJu0YxL8HdHSSpvTLGtQ4eAQNOph6Kb4ks+wLotdfu9H4Dt7aqCFOkP
	ZrYoiQIKrs7LtnGa0ncX07a7YNWAO3KGo4KoWLWE4mVE0U6Gjh+r
X-Gm-Gg: ASbGncuds0nxZQ5MM2VTv2u3iIlHWbuhGgl9OSDrxSpp8sgRgvyDn+4cM6i1jC63HrJ
	rJosqYtiNncV+XETkftvENkhXujGJxJWr9lQCQjiT4kDNZsSmvtTK17ZGsRNFiT0h6UF7c6SzAM
	nCnN6jVmgUNKlyQ+odPKA4MtqTaRvCihoHcQf/KfhgSPQf/PiGPVJ0trt55AMHkbqufnd+TPk/5
	7/GBS7HrqKzFzBM7F1pPiW664uwvG79jOjtB1nXyNekN7x9Ce4MGnnqVAYeWzbWwec=
X-Google-Smtp-Source: AGHT+IGXGi/ymw5DK+48JcWl1raXbKyN3cY5McOhGfWJjt1shtNZRnrQgK6NwymLsoqIkIXdjweENw==
X-Received: by 2002:a05:6a21:670b:b0:1e0:d32f:24e2 with SMTP id adf61e73a8af0-1e5e081edf3mr20433594637.38.1734925484128;
        Sun, 22 Dec 2024 19:44:44 -0800 (PST)
Received: from guoguo-thinkbook.lan ([112.65.12.222])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-842aba72f44sm6388710a12.15.2024.12.22.19.44.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 19:44:43 -0800 (PST)
From: Chuanhong Guo <gch981213@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chuanhong Guo <gch981213@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: vendor-prefixes: add Siflower
Date: Mon, 23 Dec 2024 11:43:49 +0800
Message-ID: <20241223034350.215375-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Shanghai Siflower Communication Co. is a manufacturer for home router SoCs.
Add a vendor prefix for it.

Link: http://www.siflower.com.cn/en
Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 13222919da88..d99796e571e4 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1340,6 +1340,8 @@ patternProperties:
     description: Siemens AG
   "^sifive,.*":
     description: SiFive, Inc.
+  "^siflower,.*":
+    description: Shanghai Siflower Communication Co.
   "^sigma,.*":
     description: Sigma Designs, Inc.
   "^sii,.*":
-- 
2.47.1


