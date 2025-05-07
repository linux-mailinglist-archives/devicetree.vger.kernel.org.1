Return-Path: <devicetree+bounces-174827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F8FAAECF6
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:23:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD2BF1C44A5E
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:23:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4908828EA6E;
	Wed,  7 May 2025 20:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mC3rSMMK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B689428ECCB
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649362; cv=none; b=qjKbUvFu44rlofldl+EHBMyc1a3ygMKNVkQbCbbPjZs5DbP+dj+syKJ+lzL3YGnHovBlpAek203ksqBOehjjP3bO9Kd5qz8yz+NCodF4gMJhA225GDDWVsUbwp9ncXbHnYCw/IzIkVzS1CQAAz4jsW60mSuITPXbWJ0i80aPbvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649362; c=relaxed/simple;
	bh=CZWjxue5DhLhHRyqfTbQekPw1Iq5iA8TiEXNw3OsltA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FkqEHzVdDy00JFJTnBXJ/s+4VWeqxe4STtUEhIhWm4lYIYZwXc7BBcyal1b9vW6o2qYnHmsQ3LorV1MtTYsBiNHSo7WFFT6jkPVLoTV/LHDY0iZtqtE+7LVJ9+4WPcSaJogG1q36UkU0+/pALFUEJhQRUphHahGBeBq1J996YII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mC3rSMMK; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-72c09f8369cso98958a34.3
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649360; x=1747254160; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RPj3FTwSrOy9EqQq/nrdWdKgDoZV00cUqzATiabesYI=;
        b=mC3rSMMK9+LFufRiNBopOFCi+rWSI6e0wLx5iT9cq2WjmqpWFmOVW87unkYB2YN5Mn
         cpggPSAxLQ47y3hB8oBSxM2mOYE6dZBRXmlwS0MIJSCO7oUTmlDFw7ualJeJveUQ2let
         mvRXuKGB8RaOmhr2loS8M4ZGBTfdC+P3CaYGg61zkcDTNQJSMO1P+ycC/ZSsE2HAkfmn
         0UIh7KLAI7TD6OIuaDJgiwO1vQ8APOoIynLV7xKedN+jm4OwFV0NAc+8EqiOpU6kouWP
         W7N+1dgD/roPOplou4a2VrIG+7yoi8uEE5qJZ/wIdslUVvhlbVQmIJc8dERV8kcThCCj
         J5Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649360; x=1747254160;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RPj3FTwSrOy9EqQq/nrdWdKgDoZV00cUqzATiabesYI=;
        b=Gr7SBwhk2CUnVF6IrPNqZNmGZF+pYrhuXLyNR3b1bgjVkr+qNd39G2+2UOQ3hKw3fH
         AaPFLp0G6pDuKmwyoBi3Sss5X79msT0bp4xmvMrdHAL2im67vfE0TS2SUIYi73ub9Ff1
         z4Ygm39c9DkIUEqtJjJGSeVLKIOcWlDyLsjzfwAEHxR9j6TUlR+Wm3s/M92p17kZmqtj
         6GY3RdXtwBKWVMARykkc7OjNV6zlbqAu/sPmACTvSm79fkh5u9R9JeOwkkASsjcA2UTi
         w4m4wVZ0jvvXKLHJYni2iQ/3fITcKfpVjjiTjCtbnTRn198fOXV9EY0XJfvjcIHRIEuD
         Fryg==
X-Gm-Message-State: AOJu0Yx0aJgk6JGzpjrcgtL++RYX/G8+i/XycA+UdywO0bsIoQKP303Y
	L9SvMIwlGrfkdqzAaE+xBXhLyVXaEDP/5CLi0eDRCU6WZqzmIbXA
X-Gm-Gg: ASbGncvXEhj2G7qbPu2SOOPl7pPKYd/inGWb1Xl53bvbqlPNJAZYD/ZngpGHbCefUSU
	K3rlh8HcSWeRv9c457opq+qzusGyGblLYRPf9kaBD7kYio7+9KoVUDFMB5BRZuNYZZlUsHD/jrJ
	u0qyvq2z2Xpt6UuHQ5P30PYr2gLlflDbTjp8QEvXkQdRvyrdGiLXVnj4yBaDRQTRa4E+Lo12Juj
	lhVkkXymqjCx2gMYoEsdWTxEKE8WQ9FeG4uUkGkeibeVsw3RGbY+vXL1OrLvcSupYWTfbpmGxg9
	lmrZReib4rB0KoQMUa+6b9gMSbSBzgjz2NgrlXAdlfTE9/ltZu+omP6Iau68
X-Google-Smtp-Source: AGHT+IEQwmN+1OPKx+ExT0H0gstwaIAT4meGGbZXVI6b4Kwtw9G6/+vEj9eQFHV8s+c0s/9Df/IAFQ==
X-Received: by 2002:a05:6830:6202:b0:72b:7cc8:422 with SMTP id 46e09a7af769-73210b15634mr3494887a34.20.1746649359658;
        Wed, 07 May 2025 13:22:39 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:39 -0700 (PDT)
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
Subject: [PATCH V9 16/24] dt-bindings: display: sun4i: Add compatible strings for H616 TCON TOP
Date: Wed,  7 May 2025 15:19:35 -0500
Message-ID: <20250507201943.330111-17-macroalpha82@gmail.com>
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

Add compatible string for allwinner,sun50i-h616-tcon-top with a
fallback string of allwinner,sun50i-h6-tcon-top.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../display/allwinner,sun8i-r40-tcon-top.yaml       | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun8i-r40-tcon-top.yaml b/Documentation/devicetree/bindings/display/allwinner,sun8i-r40-tcon-top.yaml
index 7d849c4095a3..80f1e49f5b7a 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun8i-r40-tcon-top.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun8i-r40-tcon-top.yaml
@@ -39,10 +39,15 @@ properties:
     const: 1
 
   compatible:
-    enum:
-      - allwinner,sun8i-r40-tcon-top
-      - allwinner,sun20i-d1-tcon-top
-      - allwinner,sun50i-h6-tcon-top
+    oneOf:
+      - enum:
+          - allwinner,sun8i-r40-tcon-top
+          - allwinner,sun20i-d1-tcon-top
+          - allwinner,sun50i-h6-tcon-top
+      - items:
+          - enum:
+              - allwinner,sun50i-h616-tcon-top
+          - const: allwinner,sun50i-h6-tcon-top
 
   reg:
     maxItems: 1
-- 
2.43.0


