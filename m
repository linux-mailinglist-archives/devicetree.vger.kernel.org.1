Return-Path: <devicetree+bounces-102867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A6F978956
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 22:09:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D27F2830BE
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 20:09:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A37C3146593;
	Fri, 13 Sep 2024 20:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DjZpl69O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06432BA2E
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 20:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726258157; cv=none; b=NbuoPQ8JYR+EaiezHukoaSYbJhLw9VVIyju4YFq7+7ShFtIY8on2TcTUb+JTlKfFPV4c7dz3EMovnqU7R+JJ3aj/kY9uG14QttptcHYFH6C0i168EwdZ1upcVrP6y+XdB3JE+037V2ueWiWOBJajznJy8Ahp4RQ5f4p9GvaslLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726258157; c=relaxed/simple;
	bh=mUGXago5NM/R3PQpk7w0605H5od4K3L9MRpzOjv1v0E=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=umYN7mNKow2vJYnHzJto8Yh0iG1lmwAXsdT2vvzWCCnoLvBCe2TOIbgMKvbKkAt8UvH2mXtS72yKqDHp9GSLczQ7ZFzsRnlfjXGX5P1LYNqYNrW9uuLVAzVA1D2YqvK0yUWNp8D0FAbis2w2vUpLtDWmXurl5xfKO6C6iTKxbtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DjZpl69O; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-2da4ea59658so1219864a91.0
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 13:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726258155; x=1726862955; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ARnUpdN7rAyOwShU8c9dnFx1rO0QdMuTepsKf4wpc6g=;
        b=DjZpl69OgmtOKQQ3tENvV4F/PPWRN4Eb/Hgtz2bM/SxGmzuTsBRlhe1Ry/KMCSYgxG
         6SR0jMVCd0KMviqzT/TOVC3EayKRRIA5HUH9YZwJytHpwvcv205Mcd940yo+sEztju1p
         wsnrINa1gfHQLkCQX1MxvkkEmlpF9BktMpByxS/gAs7JQiZKLaeBHLllIEAkY74Diz2J
         kfCQCJLhWogmfRN5QEtI8DNXWChVu9Z5SeZhtUzbTFtQiGfGzVhRC/EFzpQnWCrJBot4
         6mG1vFTQSkPmvpUNb8BoSBe71obS8MRaRiMrq/nt6twy2BV12qsCcuHVcgXmUeXi66T9
         dHXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726258155; x=1726862955;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ARnUpdN7rAyOwShU8c9dnFx1rO0QdMuTepsKf4wpc6g=;
        b=l6C9qbJ+C57j+TJHazg+vgUxNl1d0gJyOtkNsgJtOGjHiOrzDghg9eoAaesfDeNFEe
         D9fFLpuf2BGG+UTYbv9rX0tmaE8uBSqTPCtYgbnZQ1R/6RiOgG1LYYT+2vkkhN7WcTbM
         25PqBWZmqBgvNPogDReebTZuytUTYWJbqgr5rahGP0IyyGYN4E+FmpYKw79q8C6ffkiv
         fvG98gnAy319dzMTKZqp90dQohjG5MAwhZPcldg9BzE//S6rQQ+bEj2ovBtzkz34iOzZ
         KSZoWQrbV1Zm3D1YQLqo1qv5j+rxnezKqeaoFB5uD4GbRzM3CKCSyYr+Iu3y1lnGgsWc
         fd9A==
X-Forwarded-Encrypted: i=1; AJvYcCX9s/yZQ6dVLavEQuE02tcM/NMQGntgINIXWf3pjWE7ENRuf3eaRfuJaDVZNx8RQJ76mtoz6wyJPZAo@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1urmjL0Vm4wUGrE7B6/QQ9DUKuxs7y1nv8eXCEVxswmuEIWaL
	RwwNdbcq4lt9+QusZe2Y42v9/KrfgMCmHiazUgMAxQoDm73agtDt
X-Google-Smtp-Source: AGHT+IEMuvkTlNcltSHogOH5KQ9HaI28SFiD39tc89r4FtY9O6iAN/n3KSCaurF52xGhhpTVx3mL6w==
X-Received: by 2002:a17:90b:3b4b:b0:2d8:89ad:a67e with SMTP id 98e67ed59e1d1-2dbb9dc7906mr5608061a91.1.1726258154803;
        Fri, 13 Sep 2024 13:09:14 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:f375:804a:5c89:62a])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2dbcfdc06b0sm61545a91.55.2024.09.13.13.09.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2024 13:09:13 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add an entry for ComVetia AG
Date: Fri, 13 Sep 2024 17:09:04 -0300
Message-Id: <20240913200906.1753458-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

ComVetia AG is a professional radio communication platforms
manufacturer:

https://comvetia.com/

Add a vendor prefix entry for it.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index b320a39de7fe..ae82d64174a4 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -312,6 +312,8 @@ patternProperties:
     description: Colorful GRP, Shenzhen Xueyushi Technology Ltd.
   "^compulab,.*":
     description: CompuLab Ltd.
+  "^comvetia,.*":
+    description: ComVetia AG
   "^congatec,.*":
     description: congatec GmbH
   "^coolpi,.*":
-- 
2.34.1


