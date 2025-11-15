Return-Path: <devicetree+bounces-238930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFDDC5FF12
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 03:58:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2DB753518A9
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 02:58:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 922A022129B;
	Sat, 15 Nov 2025 02:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gXdrB84f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138E7222566
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 02:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763175515; cv=none; b=ntM5ccRoDk0GO11HUPvGu1dkDCmVVBT8PWzpUzOX9TkT2S6oKyLzjMeTL9Oft2sX1Q4mUh2VGc5nCbeYczp/Nu9IECcorWONFa3dwAunyrurz84wSjQi6D2njfnOO8GPQlHFAjwL4WbgdxQwqW7Dyf3bOn6HSdH398B2jIAl/SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763175515; c=relaxed/simple;
	bh=QOaAE8KIYLOudNRcupE67hh1JJ/10JXBHCb9juJjzhs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=eUCdtq+2el0bIbRp+QVmu7Q+yT10G47Ys0WSRyX7h1qY4qJKAFvRsJ4I/hRR7fBJEhI8W0M6rgpXU1foLYpzE4IgksAVwXyybHqInjiSoX3lvy0PS8slMTzkZZ0IRfJx1mFr6+2rUKUaTWktJSIAnJyel0uHR6QP65ZvCQfCi/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gXdrB84f; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-bc8ceb76c04so617243a12.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 18:58:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763175513; x=1763780313; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HaKlOOe8PG+1WJEBDWO8CZyWUDBqxc5etFMnzffAPZo=;
        b=gXdrB84fHd80ebPYPa0JTnVQItmRhe5pHn2Jk8Y9TsAXXYXD0C3dXz7fKfzDFVV763
         rbpJN/48T/C25ct9v+W83D3VKMyjS6t/u2L6xjPsPnmtZYxxfCPduBAQ4kfsf8fjT0Kt
         JnmF5xMka4E9f7uUzPZsX1Zv2S4xMEhhI7s1xyVAqdld8+lDd+Ps5nKECFFWDrjUHnpL
         o9bmx8sP+zmiPWp0jHqJXcChiVgvhe+1eNm9g4Cq9w7gJc6JjeUoDshum/oiWletA+Qw
         eNG4LDc03keS2EZ6UmA7+VbGvTxBffKqKU0ej/CH5lmTF82a1aG7SYzUSDlxB38Z8Ulv
         W3bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763175513; x=1763780313;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HaKlOOe8PG+1WJEBDWO8CZyWUDBqxc5etFMnzffAPZo=;
        b=Nrw3laUsQo0BKIMm/N1UOgpkraC0FgXnaz5zuu0cLgia/rShVXZ6poOOqIlNBvJEDo
         4A4dR5uHGmf9IUUZipFz/EkePZVdOQrzCQFEFDcZG22hDG/FGI4ei+qN3Lwf//Oc1Vro
         w7XPkt0bo2+FKZyj1ZFHQ9yVmzRWrSDEabBjcLmofy6RKskIQkXyoGT3WWwdR/kS1Vpi
         cCK2jZZA7qzv2h3d8aViTaQYw6Rm26MjkX6ZWWORjRlpik8V+8a6u9bIHxIxVlgex+go
         AZrwWu2EyJWfZtgzcOeroLzQ+jRYhmlRIIDXL6Www6698zzXcO9VhMH8zjv+k6fhHWnn
         4xBQ==
X-Forwarded-Encrypted: i=1; AJvYcCUmVzBVooMQkd/eG7648W+4GEdYdb5rvSG+6t15oqUAaRUE1v0cYmst7tY7mwD8DROoMDlmr5Ze5Zs4@vger.kernel.org
X-Gm-Message-State: AOJu0Ywerg9MiUAq2IYBBXVqSoWTycUD+VE+mTikho7Gm/6CoSRn9DCs
	N1bVyj9NV9JBovIaiRX5DSlCYPHNkeZ1zARH0M6+8YS110Vuj23zmeNJ
X-Gm-Gg: ASbGncvy0rEaCDVgJs7vNbLe8fKe7kd/5wdwB/NhN3Xv2pv92YgbMdjXMSS8VGCs7dg
	XnKdwWRnJ8Dj/wUDeznFuTeUcavp/P4vpyxkvCKFIfBJ8jlL+8IUE3ZTABbIvkKuF0KGO5j3SRu
	+yBXRL+K4mr0tOXZkE8qIci5VbQey+iS3Vy1W0T52/vhipzPZjfphSHBghEQPe3i/pZLCg7xAZS
	npspWQGx7lxfbOkhgbxYkAEB/seAETWJayuNXDc8b0Am8oC/3UVpus0nCXtG/UGCwTftuHJUtj6
	cUqJza6TEXAOQEkyti/hPK6nDy2eqsqEOi/70Ocz73BQs6Jk/KQKR5MqSI4apck5z9hLJlUcSwf
	FLDjGLn8iFRgdoVFIfpj+XPhZKCxbKcmZIFzNQRMDWLOQrYWBlLQ6Kr6uplrZYMVQoMOsRBoOWK
	UxLg25g74AL5TkjIGAgTV1Twf6zw2rMnVf3BY=
X-Google-Smtp-Source: AGHT+IHKlxZsii9JW5aWv73UUgouY+qMMyR2lx+Nbu0qmZxDu/y7ZT2bZ44uInHdZ8oV9LE49XHmgQ==
X-Received: by 2002:a05:7022:6885:b0:119:e569:f609 with SMTP id a92af1059eb24-11b40f9b6a9mr2151042c88.2.1763175513243;
        Fri, 14 Nov 2025 18:58:33 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:735a:fcf2:fc15:89cd])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b86afe12esm4215227c88.6.2025.11.14.18.58.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 18:58:32 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: neil.armstrong@linaro.org
Cc: jesszhan0024@gmail.com,
	dri-devel@lists.freedesktop.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Raystar Optronics, Inc
Date: Fri, 14 Nov 2025 23:58:25 -0300
Message-Id: <20251115025827.3113790-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@nabladev.com>

Raystar Optronics is an LCD manufacturer based in Taiwan:
https://www.raystar-optronics.com/

Add a vendor prefix for it.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 42d2bc0ce027..781bf2be88d6 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1335,6 +1335,8 @@ patternProperties:
     description: Raumfeld GmbH
   "^raydium,.*":
     description: Raydium Semiconductor Corp.
+  "^raystar,.*":
+    description: Raystar Optronics, Inc.
   "^rda,.*":
     description: Unisoc Communications, Inc.
   "^realtek,.*":
-- 
2.34.1


