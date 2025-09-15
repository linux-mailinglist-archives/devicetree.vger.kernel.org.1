Return-Path: <devicetree+bounces-217133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 922C9B56E04
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 03:53:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B1EB16D6DC
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 01:53:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CCB3221703;
	Mon, 15 Sep 2025 01:52:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FUyL43dy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEB1121CFFD
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 01:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757901177; cv=none; b=Ea5WzRGoawYMRfAK8Uwg362G41k/WLGqOwripcEp4P4PseO6X4WM0RctS6aU7BgxGnG0S+0bbyqsygmCsvXuIcPtPc5RGc386zf/2U6lVEkaeqTKTzPVmny62ZODrq1PO4NSBgzZAfjz440Rl3oDpibcwLeTN66kV3yw/y+h4kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757901177; c=relaxed/simple;
	bh=hIWxj9zV2KpfWd9HN2GYWeuxu7uVsrIcQRAZP2bkNnA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dJPPrI6ni7GIjMv6zcmIOnGLbLB0p7DtUz5CvUD1DCclmGksh5ivCmn/LTrcSnIpE5ZOqrx69vHcbVuUYk2esckZjbMdwfnD0YAmR3wbJ2IVPmXxNLbJKxvywnDxXBp+Aix3lEClwbucvmshnshvSWbv4Y+XiwV3u732qP3h5fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FUyL43dy; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2677a4d4ce3so1005775ad.0
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 18:52:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757901175; x=1758505975; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4lKauwi606JW76n+c/E/TFgwwggsMIGS0qNvVRFiPKQ=;
        b=FUyL43dypwVO8pfgc894/z+gXv+xP1DhZq8hLnkEcXd0j/NXG5iialhM8I4egZMchb
         6BYY0PZBg91UeROPng7xCps8t7R8y0j2T2OR+pWR8f26kMBtrRcaftApgE7U3wXXkzsS
         40dDDCocdsvI6pjwRNcU639S0hjqoafrcdByG/U1IZ4gGRhua/pRUxUl58rs0k9f7xWZ
         +lAIMvpFyU2Jr/BkAlgB+m8wVV/pU46KUuQI8u0gzF1zOBd+rIdkQZuleeyw3XYcfrdr
         Qqs6Mnj4meGa9VwZb6E11AbFv9gqMFxJeqqV96C18mmVOTwiP3UBRW3xWaQELu2XAD4S
         cwLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757901175; x=1758505975;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4lKauwi606JW76n+c/E/TFgwwggsMIGS0qNvVRFiPKQ=;
        b=cfL1/vJFzgLMp++4n/kpks+E81OpdYoQKADkUrMdk5d6qBmxq8TOLMxQySiRyv2sV2
         dZPMA3RvnwFhnkiNEgmPujf0u/wk8s6rdv+h8sJkz7UIRkuGGQGcS/EvyDp/u3HUwxAv
         +8etqsFGa58N9OyrJDnpzIw5WgMogaX2JtBN2zmGf2X5vfw9gukeSZ95B4P27kCbI75X
         ShQhYxckNawS38hYS8OjqVfraNjqPmEgXujyJcFMC8Enrm3aXLiRCNSe19lmHlIyMhv7
         ycx0at985rKb6K386+raQvWCUQzVqRAFngHb4GTwlFQ+F16Tm+13j63WWD+HDW0hmO1Z
         byWA==
X-Forwarded-Encrypted: i=1; AJvYcCW1x//Ao3Y5aYxDWb9I/N5tzgGKd+HVHSZlbQdxFMXB8Y3qcSHZydHz6Tbv2euhGHn5YQQUjJ6jARGK@vger.kernel.org
X-Gm-Message-State: AOJu0YzYENbLQVD2hFJW3MKEdonqJwhZ7DbFJOWJv3RWSum8El+O1WsQ
	D/p9L99rzHsYTiZQRh52AM7nv7slPgq1ACbnkGqkXLHefmbLffezUQI2
X-Gm-Gg: ASbGnct5kYCoxKzSkYMNNp/G36aJ2jvVCAMmSYRg9CUlxvUI71kVgzzqxrnXrUXtixx
	M30PKz2dnj8t1MZvoQxZkOtVRMBY0V6+utW1/wFwDMWzV+5KLRCFSxnNNyCIg4kzxHlL6+D2PEJ
	ppMOlC0Sqk5Dvg7gx60oPLhncEJqqwBUsJW+g+0xGcbCl1xzjOfjANiepm9IFhKuJ4w2ESRTbSv
	SoVd6+yI9wn/201tptmxzFzq54LRqIo6IioYLJUrh4cyKIsVMJN29N3eC9uELVJilwMlBbnqOof
	0qm2jUcECuxV2FwZU6HjINzvGqBOskA/MkmTlsUIKY/NcyHUO2/4licbPeIoU7zMRNNsHYveaOw
	5kvQaWvTMpN8Cbl5iZCdUdTPdjff7cjctYOI=
X-Google-Smtp-Source: AGHT+IHWuYTbEVpZyLJS7fo2wvFisOiIUIQdPnNoSbXPJNsFdx7r09O0spNATU/bO9TcPnESAwBMXA==
X-Received: by 2002:a17:903:19cc:b0:24c:cb22:8221 with SMTP id d9443c01a7336-25d243efcacmr120111695ad.3.1757901175108;
        Sun, 14 Sep 2025 18:52:55 -0700 (PDT)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-262df893ec5sm41565255ad.46.2025.09.14.18.52.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 18:52:54 -0700 (PDT)
From: Nick Chan <towinchenmi@gmail.com>
Date: Mon, 15 Sep 2025 09:52:24 +0800
Subject: [PATCH v4 1/3] dt-bindings: spmi: Add Apple A11 and T2 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250915-t8015-spmi-v4-1-758620b5f2ae@gmail.com>
References: <20250915-t8015-spmi-v4-0-758620b5f2ae@gmail.com>
In-Reply-To: <20250915-t8015-spmi-v4-0-758620b5f2ae@gmail.com>
To: Janne Grunau <j@jannau.net>, Neal Gompa <neal@gompa.dev>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Sasha Finkelstein <fnkl.kernel@gmail.com>, Sven Peter <sven@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Nick Chan <towinchenmi@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=982; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=hIWxj9zV2KpfWd9HN2GYWeuxu7uVsrIcQRAZP2bkNnA=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBox3Fw0lI+FDkxbVsnvMxk4d6qhiOLERJV93n27
 tRJib2kXUCJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaMdxcAAKCRABygi3psUI
 JJvvEACoCQwgoPlFXhCu6aP1Yzfukrb4xs2OuMeTleGduVEcbjvhnY7+8noTnDVwUxB9QjHDQJ8
 cXdwqikO3XMly1/8zAbFzYc/UlWhNitGrKvG7HVP8Hp1xZmdPzl0hYKzrNq1/pk2fwIYNaTF1Ng
 9I4sj7rSjOxUT77j0KDQO35Lw8c1IiZX7rDN5gGrDAHhOwUZa3GvSMRStssqPMeOeIhXMJssO6N
 XuRglKBrjfXCq/YnM6OeJkAiJ0iAl5Tn1cUvkpI4VB1Aavoy0KPIdc1dF/ad3Gn4LoI2WGcXd05
 /fkRoAihhT+BUuoWw1ljYwCB4/tsScaBLTT4R10+iArSkGo4ZO+pohJ4rDpEfEkhoggMbvAmnU4
 6TcKbaGKCgeZmAIVxvbENvknuebGJgYEKO3zQVEpqPVUkwRue9PFdP8q+VDH/wXT54hEhxNEWFO
 2RQ0g4pu+17+L9iGf/mhqdjze3xjHY3IMAPrgxlr8t5P9UD35TDTx/iX3RPZ95AkUlLyC43SrkV
 ipe5Nm0TP9qGqsGEY3/N/oM+0w0R14mTV+J8L6118du7GWmbQdHtk0mLx1EHHoKrZP/tylT1V6X
 ucju8hHM5S4Rv78omdfawQeCBwiyaSOhJaM84vjHkiY4paUHrGpIAfSDrvD/BtVr532U2Cys4IQ
 q/8pFvmjRLnyvcA==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

The SPMI bus found on Apple A11 and T2 SoCs are compatible with the
existing driver for t8103's spmi so add their compatibles.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 Documentation/devicetree/bindings/spmi/apple,spmi.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/spmi/apple,spmi.yaml b/Documentation/devicetree/bindings/spmi/apple,spmi.yaml
index dbf09ad0ecdecab82074344aa6a840a820bc448a..ba524f1eb7049dc5ba7c5f83f734d3f2f7e905b3 100644
--- a/Documentation/devicetree/bindings/spmi/apple,spmi.yaml
+++ b/Documentation/devicetree/bindings/spmi/apple,spmi.yaml
@@ -18,7 +18,10 @@ properties:
   compatible:
     oneOf:
       - items:
-          - const: apple,t6020-spmi
+          - enum:
+              - apple,t6020-spmi
+              - apple,t8012-spmi
+              - apple,t8015-spmi
           - const: apple,t8103-spmi
       - items:
           - enum:

-- 
2.51.0


