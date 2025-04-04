Return-Path: <devicetree+bounces-163123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B53EA7B973
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 11:01:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3769A3B67AB
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 09:01:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B49A1A5B86;
	Fri,  4 Apr 2025 09:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="PMRy9ABx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3169A1A316A
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 09:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743757286; cv=none; b=flq05XLFpkQI6Sc27TxPEAZDnb8qC4OKGs6QrhfgQaK9Bjhy8xH4lukTPp7/nIywJPK11p9NqLXK6WfcKgk5pXD3PnbAXaq+oQSHq2/YeZbVs3UgR7nXt7ed6mduh2BfjKTzb21TDh+QQhbqf7KUkyaJkW/x78BElm9nBZ/E4/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743757286; c=relaxed/simple;
	bh=YzcC/8IF6WlBpTBBJmagM6VLu/QII2dkapejxYRXF+E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ODudT2DpVSCeXRY0rSxOik3vvE0kRot5q0MEk7/K6ADKIuSCRSHEQHZmDyk49HPkUSH1fhcRedeEcb8aiiOR1g86pQEb8DOqhc2v+7yiChcyp9aS3CcmpOY/W1aga1ME2gU/+3odpWdZ6ONgG7s+MB2Stw8lpeFUSJXPfOBMgT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=PMRy9ABx; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 3BEF3403ED
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 09:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1743757276;
	bh=xut80Yyq76Rm1brNcTNysemzqDnut4empLNRrM1YUC8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=PMRy9ABxH276AB/M3YmThknrnAF/dM8LHrH4US4GdoO4K6nE9CF8MAA8LFBlva0YH
	 56aO/KcmKJapwCwy/isvVkTyCZb8WxnXCJJVoWs+N8yxM2hK/KfqzyBpkmKj7AcnUI
	 N3Q4zekU4k0viRZhryzHkTkvAsxG22+8N/Qr6sXOZ1uP1NDPUmC1vJjpZtk5i9gZeZ
	 bJ0/ZzjOfSyjMmhd/VktYw1F6FWrzV0r/8NWxs0nY40gxRxKRUILzzkvV6ltXgG93l
	 qKOdyMpT9TIYY4jqn3mc3Kr2k2z0+gbkT2UT5sHVBZD2hUU2ijx8JkDS47LjiaC9Sd
	 Jzef4sMTtBqfQ==
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-43ce245c5acso21441185e9.2
        for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 02:01:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743757274; x=1744362074;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xut80Yyq76Rm1brNcTNysemzqDnut4empLNRrM1YUC8=;
        b=e7cZTlc+X5q2UaLdkQYLRQEQWMm0WMVrkLbcm7SEh17pHDPXqAM5qrgxcIhSpHjLeT
         gJq8+ZXDseQQCSKMT/OKIvwSc4CnI59G+THeqx7JrPyQuj/3H/cpskjrST6OkjerjP6/
         ap32reVyUtGxg4+McVjlcjAMYFpd3FjAwgGnZ4/hwEMwHTbZ/nqhP9vLj9338N1eUYEB
         u/WE7jF13f5HTRXpIEpt8OaKU4TTt1l2eCTgpYMMtvisP7gy7wy5W/3nRW9FlnGpNv24
         /07by7wuWiZAXWwi9xHgUTXjbvPlWHkwMvsEaddIbmI0F2bO4izXqSLQEK1Sr8y1nUVh
         EiVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhlC9rHX9eDLBcdbbzPpj43dAiflQZYty8CY6fmg4TUhecvLrSv9q3mBwI4Zo1ZUFgXuItoiVOA6P0@vger.kernel.org
X-Gm-Message-State: AOJu0YxdvrHR0Zt+1uwuu4mbOQqJtTHCyJLaqrDFnCs5ejSKoaUz/SPb
	TCZDLglDsMu/Hoct74FbAeCVWnr4vSosTQTnjXzIm0YYc7eV+5T4NMds734l9spk1NWhwypZSZh
	2oiaXG4f+bnjI8dJFjslxpKKcJVgoQJt7JzuYcIMpNNkOhZknLMo/fq0KwUZMSVRclGJ49aFGf2
	s=
X-Gm-Gg: ASbGncuV141nmBgDnaikSdWJ92a+vA6GlYEZ/o5Bi9CE6OyYOM2Pb7cK4gMkdsS9N0y
	cagPt5uGqSlWz8k9locILrwEMaq/6jE5wqx8MGQx0flOTY9EJwC5KhPaXASfGZ/6dRsUTmB4Vvp
	T85cn1+c1HkGlHcR2VotnQs3Z1LSVoMsMr8fOW2qj0tuIzJA00+ombwKQxiB+Wh/S0wiwW1lL4X
	FvvZvS+zsSAjiJU5kmqFiQLboZiHUal4Z/0vehKbPBmx1ZJRQtv/Qzk5+dcIgyASs9DcDlntPBV
	OXR9sHz2UFtiCnrqTJO5VQkq70xMTemeEXQXaxf+RRM8TD8JyJt8AnC4KmiS
X-Received: by 2002:a05:600c:3b13:b0:43c:f5fe:5c26 with SMTP id 5b1f17b1804b1-43ed0b481aemr19668095e9.4.1743757274438;
        Fri, 04 Apr 2025 02:01:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEdpABidDuATXZ706ls87vLzgKf56I7dN2yooTu5/p7/hh9qVoP7Z4UPtu+CCEZh9am2E7ZrA==
X-Received: by 2002:a05:600c:3b13:b0:43c:f5fe:5c26 with SMTP id 5b1f17b1804b1-43ed0b481aemr19667775e9.4.1743757274077;
        Fri, 04 Apr 2025 02:01:14 -0700 (PDT)
Received: from localhost (151-243-191-194.pool.dsl-net.ch. [194.191.243.151])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c300968a1sm3895816f8f.11.2025.04.04.02.01.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 02:01:13 -0700 (PDT)
From: Juerg Haefliger <juerg.haefliger@canonical.com>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] dt-bindings: arm: qcom: Document HP EliteBook Ultra G1q
Date: Fri,  4 Apr 2025 11:01:08 +0200
Message-ID: <20250404090108.3333211-4-juerg.haefliger@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250404090108.3333211-1-juerg.haefliger@canonical.com>
References: <20250404090108.3333211-1-juerg.haefliger@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a compatible for the HP EliteBook Ultra G1q 14 inch Notebook AI PC.
The laptop is based on the Snapdragon X Elite (x1e80100) SoC.

PDF link: http://www8.hp.com/h20195/v2/GetDocument.aspx?docname=c08996392

Signed-off-by: Juerg Haefliger <juerg.haefliger@canonical.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 6260839fe972..1f2a26ac33b9 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1133,6 +1133,7 @@ properties:
           - enum:
               - asus,vivobook-s15
               - dell,xps13-9345
+              - hp,elitebook-ultra-g1q
               - hp,omnibook-x14
               - lenovo,yoga-slim7x
               - microsoft,romulus13
-- 
2.43.0


