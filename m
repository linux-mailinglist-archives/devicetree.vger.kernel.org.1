Return-Path: <devicetree+bounces-222439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 78907BA91B0
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:49:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 371C61890CDC
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 11:50:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 847ED30505F;
	Mon, 29 Sep 2025 11:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U3yj2FzA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E347304BBF
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 11:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759146570; cv=none; b=Pm7lJ2qjTknJPu7nGpw1g/Knot9WUcMqDM8Bwq5pJGf5YT2tlt2wLkHPymRgjLws6DfClAUlMOzDDf7a8HP2hq7qmaIh57Ax55qTsvpXueOtOwsD4q/hIi69TuGSehK73CeD/8gPR/yNqdH8bA9Wo6cob4wgmgPM+AjkOJXzn9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759146570; c=relaxed/simple;
	bh=/3d+DNZ4lwjm+XshHn87ADcx87J0m4/hD0vp82cIobE=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VisMEfpJvFhi/DWOh6MGVDrNSLaDFej5L5yGRYIY2tl6sSyY6or1ISBseHwDIuaMPmPdMQxG8kig23vJPId7fresKdKLwwCWnXsCTLk8hUwMCBr4p6lgVyJ6oLniLi9zQChPkCGVjaTzxpGUYIcer0ELHrhf/tRRcDVlfS9Dahs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U3yj2FzA; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-46e37d10ed2so43575895e9.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 04:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759146567; x=1759751367; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eYKIS6AUB4jbN6LRMHpfAVlAKJeZBTFDpfK2oWN9FEQ=;
        b=U3yj2FzAbuZabJWr30ta6Vu6V0YKyL7onfjk7bUGso4t/c/EReg+D1o5KlwsyK1C/U
         mrwvK8dBP5xy+I4H6akbQRoOtbVOrSyOrpyXXE7lGbmKhZMJXJKgIvVYWvnrwFHVjaFO
         tmxoiO2vuX2XcbkKsO5KuGJivrWuM7TqmeXevvV0LSUwKqoLfZIvAkIrf4rZ2xxBcPPI
         730fAOBM6BCtQZkAv+5Rp8amAfbXoVczRblU+0sghTdqd00jVs06M5Wp4LOvV9avCFLL
         DQhLLx0IfMbebSiaieEFPO42UqT2BPM4/epx69XBW/BI5qgVf1xQnDndssv0NHBd25vo
         ZPMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759146567; x=1759751367;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eYKIS6AUB4jbN6LRMHpfAVlAKJeZBTFDpfK2oWN9FEQ=;
        b=uEdBy+kov7pmVP0ZyDtsyepDQVB+r34Hz95K5xJvvNQZljp+5i3I5ZTWk/EgyDZenU
         tKRryOh/0A4Np2XMAgvr2lP28yIelojCcv1lUqRSXEA6Olpz0uzu5avqOSxf0Y3MYN23
         N/gfN5iFneFszioXOYSp4Wr2FOB5ibgcW8iv5fnGCI24AmDLqzYz9rQz+MzTK3K0wiOw
         YlTLcb43poop9Zuj0+qVA7MKvQPsHvMQXRh3+Yv+NVUuGdIjhLERwJP2vrX/PQ/AIBJR
         /Sc6ol6Iq3hssc3zZ35e20qCtUfhBzGLABir7hfBgatcV9zw2NHN2HqBZFgPg714y3Gz
         ug8A==
X-Forwarded-Encrypted: i=1; AJvYcCVepEb3YhiowpIb+RbZJ2TScZnRE75KGZyqogwTXS+eUqhBKuT1UgdZIP9CG+1pY5FTbE7aBIl2ygyF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/mbuBbWF7mAQ4ZC/lx/dfWTY3qLzojtX2BxlvKBMkg8azePTZ
	4BF9BNfB/ttdUILpPsM+vpUxp+E6TAuu627W0PGpc5ajulmmDIpIAitb
X-Gm-Gg: ASbGncuShPrVLdTiKvBVZhZZhhSFVuh1hhPZNxdaEN1anuWIVRzGamV0Fa/9p6eh44O
	nhe2J+aQzaC8O92A97v2ZvsyU422m+tYooaEOQgJDsrlmHFpjRcjGom7ye0FIfFsh2wKs7iAzf0
	LcI2N/FICnu+WH/skbL/MgJssMGzNTEIPL2tradCxV+1ke80EuH3OxjXO6kSytu7R3V9aKn7a2/
	10iZq9sFNc5uY+zCcXLlU+xjgMe3blj9pdToI1rwaXPJdhAcmSyKpmNWOWeKq8oNTuiNMY8UEul
	tVEQUCfUEXG1zd5msoeGqq0xWdT00qxIH0P34cqwzD0IM0FOTxrHQdu/FDpRUSgKqk7zf6VxXB/
	hWF5ONIosg0xEQTtKKkEpbI0CCXzrj+Pt3tL7LJaW0jFNOucUfM22Y/HyqHEQXgsreFMeIo8=
X-Google-Smtp-Source: AGHT+IGuqXMPmewneHZfTKdYco1M53FvKmmiliFcGFMcT7OaxUtdD6+QR3/I0y4H9RP2qzHFLrfHpg==
X-Received: by 2002:a05:600c:468a:b0:46e:4705:4958 with SMTP id 5b1f17b1804b1-46e47054a6fmr69438625e9.30.1759146566851;
        Mon, 29 Sep 2025 04:49:26 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-46e56f77956sm10030835e9.20.2025.09.29.04.49.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 04:49:25 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Felix Fietkau <nbd@nbd.name>,
	John Crispin <john@phrozen.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v4 1/4] dt-bindings: crypto: Add support for Airoha AN7583 SoC
Date: Mon, 29 Sep 2025 13:49:12 +0200
Message-ID: <20250929114917.5501-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250929114917.5501-1-ansuelsmth@gmail.com>
References: <20250929114917.5501-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatible for Airoha AN7583 SoC. The implementation is exactly the
same of Airoha EN7581 hence we add the compatible in addition to EN7581
ones.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../bindings/crypto/inside-secure,safexcel-eip93.yaml         | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml b/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml
index 997bf9717f9e..2269d78a4a80 100644
--- a/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml
+++ b/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml
@@ -30,6 +30,10 @@ description: |
 properties:
   compatible:
     oneOf:
+      - items:
+          - const: airoha,an7583-eip93
+          - const: airoha,en7581-eip93
+          - const: inside-secure,safexcel-eip93ies
       - items:
           - const: airoha,en7581-eip93
           - const: inside-secure,safexcel-eip93ies
-- 
2.51.0


