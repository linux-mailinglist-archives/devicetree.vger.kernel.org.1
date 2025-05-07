Return-Path: <devicetree+bounces-174818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BC5AAECD9
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:22:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D0FB9E2359
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:22:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74B1928EA65;
	Wed,  7 May 2025 20:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Vsyr4wql"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5E8928EA75
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649355; cv=none; b=Pfmm6uvu9LlYELCkwz8Qy6IMKUPL9HYvpsP1qbSjuM92SIWHGwbQxR3rHZ8uvqYjU49lqUgw7w+C2F5ui2FC922/f/1v137vlYMqwE89sryyIAlQpIJIt8rPPbCbSp48lP1I2jQb5gZAH1qPyZRy1FEBy87Yy3ESppkFg6tndAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649355; c=relaxed/simple;
	bh=HHC+IGGOoswomMAN4+ZC+pED0MP376pXx7EjCzIFbBU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PFD2bHw2QDPh5Z2bzCeHVqL1wenn7rKR8u9BJSI8hw+I72QGguBme03pi6hat9bcc16lBMvPL3MenD6oVgMQl9Q/G3AqG6fm2SPsSYGCdysrzwClqdjs1PGCcUn9Pqa8W9Eto2oAt/FYFFKjK2TjrmI1jBhSU1EWvvs1u/S3NJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Vsyr4wql; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-72b0626c785so153188a34.2
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649353; x=1747254153; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mxQUx7fKiHIH0j8UlXMnlb4egqRRUOvhz4vjyisGI3o=;
        b=Vsyr4wqly/FM10k3J2q5TxI+AAREYwEppPihUP4aCP59GORsn+jloMujY3SPjWrqXq
         DZeTPp3nyXGbSnha5NBHYCWcwIifL0P89FUj5/UTrrXlQvJMi1tfSgb4z8EJAdmnToMG
         S98M3+srIVh30xQAIY+8jTa3wrte6dwpSBC6ch9SjwNchTda2f3buNfmh8nPS77BDoyX
         MaQLmpEjk+99oOlYuSBl2Kbp7F/a6316Ffpyg48D0oRZpmhMomlZcc51wJCfGcYv+bJ4
         92ixH6HpvY6QhGYERaxNdA9YA0bZQmfcL50lhkMUJ80VxbAS2EADWF8gjWoTO73yaJ3x
         c0yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649353; x=1747254153;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mxQUx7fKiHIH0j8UlXMnlb4egqRRUOvhz4vjyisGI3o=;
        b=p+GORWdY88j9r7M9kQS7c6JcZUb6z4miXml8i2rSvdqBoCcWYVhrPZ4KPXhz+rPWv8
         HO9gQZS1+PqOgcJMubIAtGkZPtZBHGTXv+cQNEiIAKReHNhE/oBQh1TxbYdRSJp7jout
         8TuKJOhMDAS4NBm234MGnsKwPu4Eo7H6Dt9bngsHvPDjVCND5cSJMRrKX/xxcMTvvrTe
         h9N6NaTBe9wUrS3h4IsIFm7zh1unJk4ahfoswXSiw5F8DpkKLqMNuI7pdKwDp6yh+sb4
         u+lDhHhJg9d51fIGiW9zoVWBS/EooWLcMpSDnyxSWVa7FMG+9oCWrOhjBb/3D+wjvldg
         Ni8w==
X-Gm-Message-State: AOJu0YyPZ0m2vwSR+88RtxxLZ42Np7pPbauQRNUuNUCH9skD7vd4jBwm
	wMSlsCtcudvBHYCnc8uIng8OVf4yhKwFPCDUNzprWlsJHff8lrrm
X-Gm-Gg: ASbGncuVqYf4Zc6eCYgV86RbndeDJdj4C8kBWLOzC9ko2OjDjww6Vg1MGKgYnp2oAnT
	hVwt+EcH16pciOne8QRx2qcPgvOq93+cVwDFiDdBjl3nU6f4xN0kYO1rVQAo4+C7Ljc3U0paHJF
	NaLCxP6nYdwvaiq0vNQ3QNKf/LFKGvyUldaO5Foc6T+HQDIXkLbLtapcI7HIhCmbeHy1Gn8+iFP
	CtEzBjj67IzwnyGJUSlWfD6hvX5Ol32RVbHbDmWohq2CvPkQUQh+w7BlUiNlxLM0q0JIhSN+rgM
	upXWGicXmbNNacc05NF/qARQJ/chc+/agNztcTRpc+5xcjdcO7M25LlvCDqbpjvWgFkiUaE=
X-Google-Smtp-Source: AGHT+IEMEct8naOkTFIeGyQPkn5Ud20cBlIEl2qRYyNEjMLi4um0W9nrFDNK/o4EsMHn/xzNU9D3pg==
X-Received: by 2002:a05:6830:3489:b0:727:28a:1ca5 with SMTP id 46e09a7af769-7321c56f3cbmr461230a34.16.1746649352889;
        Wed, 07 May 2025 13:22:32 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:32 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ryan@testtoast.com,
	macromorgan@hotmail.com,
	p.zabel@pengutronix.de,
	tzimmermann@suse.de,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	mripard@kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org
Subject: [PATCH V9 07/24] dt-bindings: allwinner: add H616 DE33 bus binding
Date: Wed,  7 May 2025 15:19:26 -0500
Message-ID: <20250507201943.330111-8-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250507201943.330111-1-macroalpha82@gmail.com>
References: <20250507201943.330111-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The Allwinner H616 and variants have a new display engine revision
(DE33).

Add a display engine bus binding for the DE33. Note that the DE33
requires 3 register blocks instead of 1. To keep things simple
remove the maxItems value for registers for the child nodes and instead
rely on the bindings for the child nodes such as
allwinner,sun8i-a83t-de2-mixer.yaml to enforce the max values.

Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
Changelog v1..v2:
- Correct DE2 bus enum to reflect fallback devices accurately.

Changelog v2..v3:
- Separate content into three patches for three separate subsystems

Changelog v5..v6:
- Increase reg maxItems to 3.

Changelog v8..v9:
- Remove maxItems from child nodes completely and rely on bindings for
  child nodes to enforce maxItems.
- Remove reviewed and acked tags due to changes made.
---
 .../devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml  | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml b/Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml
index 9845a187bdf6..9d9418c40b95 100644
--- a/Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml
+++ b/Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml
@@ -24,7 +24,9 @@ properties:
     oneOf:
       - const: allwinner,sun50i-a64-de2
       - items:
-          - const: allwinner,sun50i-h6-de3
+          - enum:
+              - allwinner,sun50i-h6-de3
+              - allwinner,sun50i-h616-de33
           - const: allwinner,sun50i-a64-de2
 
   reg:
@@ -47,9 +49,6 @@ patternProperties:
   "^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}@[0-9a-fA-F]+$":
     type: object
     additionalProperties: true
-    properties:
-      reg:
-        maxItems: 1
 
     required:
       - reg
-- 
2.43.0


