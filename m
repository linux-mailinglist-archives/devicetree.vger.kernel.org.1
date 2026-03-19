Return-Path: <devicetree+bounces-277717-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJ5PISTcu2n2pAIAu9opvQ
	(envelope-from <devicetree+bounces-277717-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:21:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 724132CA312
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:21:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EDAB4302CB19
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52C293CB2D5;
	Thu, 19 Mar 2026 11:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ckoYYnC8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177733C942E
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773919225; cv=none; b=hilZLAJsj46RqfkyMKS5SkZFa4HBIngjkqLHuT5ubkwxAv866EIoAsAjmcuq+UoGauOWZAih4YkjSFHGEl7cAFMq+6Sjl4rOb6el00J+Qx3e8Ucw2DR3cKwXT2mF6h+6bIJLnDAo0OxWsq8wwgpIv1i0bEe7/M4Oy4h9ddckOPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773919225; c=relaxed/simple;
	bh=WgahGU/Pdizw5BXW+8aqmvvAzDg7Xgrdm1f9qWuR/Is=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=jBpiEvZZm8FVH9W8Sw68N1p5kXClgkqSlNEnTXy+IiXHlrynhqNVNC0o7hwWB6sLoKC7+ZdMVGfBkwD94OXRkNTE5IhkEVR7AcbZJPjEeCURhRdN+MBN+U4o71NoA7o7RBDOHGscoJrei970kLKrJT5z53hzKvseYoMfa+R0DMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ckoYYnC8; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2aaf59c4f7cso3780615ad.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773919222; x=1774524022; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=v39neei8o25k4D0ZjuJhQ38mRivgsoMoltQsRcBYuB4=;
        b=ckoYYnC8TNYM/HEPsVon+L+V77JTIKjhAaN3ytYZN136NXXatgL5PG8sOszGyJLKNc
         tDs1OIH17j1HyFiNBt9VlhyTj2EOkT0818crESUYV9Kfr1MRWpTp4KC2a732WNTfLRAg
         P8/Zba74ruJJR5zEctiOxNuWJiuCzshga5lcGLALgnhL7QkFkczPBNZ480phmKhO8vOV
         BxWvqwR2LidAOOUBOcInwdnJ2LYDfPBrEIn7+1ZEbE5R1gjNLcpktE6i8M+sCuWdvFMQ
         6xAkqJuOtz51uj3MmSf0vYpLrMj+xeip4oFiUq56ChgXLjp2EmlTW1G9SfHSsFasXk5O
         4rIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773919222; x=1774524022;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v39neei8o25k4D0ZjuJhQ38mRivgsoMoltQsRcBYuB4=;
        b=cUKIYoABEJzExX6tgKZTpxwrau4E1bOC9KGaC/0PnxfGWckkI12LuE4gZeYm95zImP
         eSbAatW7TnWGhpsVblgffetI84no1hlMEn6/U5tSRaoksrh6EllioJO/ybeb0ZkfY9tf
         /nY7oGEkJgo7vzgPmJPCAzDszb9AtpuVHxtQtcMtkWGT0Whh/Tdbei8VOWvVeObf/jTc
         BrVqhEE3G1NqWxz19FAtGEb/dye40ZokXExaxLrNvtxgUc9ztKrkJ3LiQH/nabU52oI2
         jCgVWHtRDkh90XINeSI9Sk0pSSddNga3h5fj4yahjkgSr+MaSEwFl7GwjbgejOnKLhmB
         kj1A==
X-Forwarded-Encrypted: i=1; AJvYcCWfArzn27YFNqzvuVUlWzotZZhqZ/9JeOiDa3UZyoSzOELSEFKzvjHgok1mpfmfXRhonXp9v5p6phCI@vger.kernel.org
X-Gm-Message-State: AOJu0YxAb4G9AGMorLaAhIf3ATY0LlUgt5Ede01xPKrBEcHShqnquiWm
	KpOeF56theTREM1Mgkyunm9Mbde2S+vIslSGKQjDdlx6RGnwge5OYfha
X-Gm-Gg: ATEYQzzIGpRnGtxtYVxzRVMtt8uumgMjzSO/4vb/VL4JgGzv0Jv/AAnaCQl5Gl5TXnK
	f1Mj3mY+pUYN8dkFtI3Jh37roItvZh4R0D8eXhMEbmczvDQh/OayUxZMnORxYRdxe0wzcETfm99
	okOnIBGkj0K6keyRiHbLN5VaElFgjlM4G5xJOvx1mYMw7O1liMwsRwdAeVTH3T/Xfz25d3cf/VS
	V4Xq93p5LHMds11f0FNMImEanmjKJ4dPsfmTOSkgwXas4KsLsuuSxfktXmsXYGBnHFpbJiwTNVc
	1cNdWDjN3oqdZXaOMuNYjJqoqdkiJO7EQsxM4dOZ5Dj7d1IBjGwziR8inQn8i6WNQeShVqBmEuv
	qlSa/dCe4X1SwRh5zE+k9y0a4hMPS1/H+jKOF1dwyYoizaFMeCWxiNwwxAWQkyh3n+ydmjyFZ4w
	RD8MKxyFxgqr1P9OYPctrgizVrDq4CHj/XwNFTaG5/aVII12XHYZeC
X-Received: by 2002:a17:902:fc4e:b0:2b0:6a22:5159 with SMTP id d9443c01a7336-2b06e2da3b4mr68943775ad.1.1773919222420;
        Thu, 19 Mar 2026 04:20:22 -0700 (PDT)
Received: from ubuntu.localdomain ([27.217.83.168])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e4199easm76524585ad.5.2026.03.19.04.20.19
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2026 04:20:21 -0700 (PDT)
From: Zaixiang Xu <zaixiang.xu.dev@gmail.com>
To: linux@roeck-us.net
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	zaixiang.xu.dev@gmail.com
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add GXCAS Technology
Date: Thu, 19 Mar 2026 19:19:44 +0800
Message-Id: <1773919186-17515-2-git-send-email-zaixiang.xu.dev@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1773919186-17515-1-git-send-email-zaixiang.xu.dev@gmail.com>
References: <1773919186-17515-1-git-send-email-zaixiang.xu.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	FROM_NEQ_ENVFROM(0.00)[zaixiangxudev@gmail.com,devicetree@vger.kernel.org];
	TO_DN_NONE(0.00)[];
	TAGGED_FROM(0.00)[bounces-277717-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.961];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[8];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 724132CA312
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add vendor prefix for Beijing Galaxy-CAS Technology Co., Ltd. (GXCAS).

Signed-off-by: Zaixiang Xu <zaixiang.xu.dev@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ee7fd3cfe203..354836eb8e72 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -676,6 +676,8 @@ patternProperties:
     description: Gateworks Corporation
                  use "gateworks" vendor prefix
     deprecated: true
+  "^gxcas,.*":
+    description: Beijing Galaxy-CAS Technology Co., Ltd.
   "^hannstar,.*":
     description: HannStar Display Corporation
   "^haochuangyi,.*":
-- 
2.34.1


