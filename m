Return-Path: <devicetree+bounces-233255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DF07BC20557
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 14:50:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F3B081889638
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:47:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79DAF21D58B;
	Thu, 30 Oct 2025 13:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="LG69tbqm"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56EF20297E
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 13:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761832007; cv=none; b=IfvDiAZkqcRkZcjA39d0b1IatgcwaHe6nhMk6fO7PIleKNhWIWYMaj67786fwkhHnef913ZjAUBiPgSAR1mWQQ0WZuMFV6IcOhsT9Ys/ROo4ky4uxE96hEbybpzH8djLJADs5HJSum87P7MgjpxzLYc3BGhWT02OsWpzMb94Cz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761832007; c=relaxed/simple;
	bh=m/qQ+Ye47boxFRojPi93NDRLf547F5zOAg1Vvu5tBSc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MGkSwzvgyuv/i0LJ7L+L2Y6bUohuFkoAS9/fNJ75U9IcpWQk6LyU7LaY+4JOQ81FfczBGx2YOXJDGumSYZsIV1+vFr0RP8yO6Sk9VDlentLmYQ7CjD32qdvSQG2RDooD1Xq7PKeO1IjA09HKZNF0GVlYCAVQP4kVAYJZFnAA07I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=LG69tbqm; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1761832004;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=qXVeC5x4UjvdpdxBQtQYDv2PCBr6tJQZhEasSYJVqpM=;
	b=LG69tbqmsarS0cLiVVpoSmkrdr4Mfij6gcKGsrrRmkDxqBmMvnl55TSvDTTp2U6GzI3OHv
	r39v27r/kM6nWlhQFPlmwhnnalkiVojDql6jnXiNRTuY4H/dsTBUKBmgd0MUFBhipRjJdH
	rrrHaEH4YykmbcOyWibFPf7Sviw3RpQ=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-74-z3mXvopWOyWCeH3plGczwg-1; Thu, 30 Oct 2025 09:46:43 -0400
X-MC-Unique: z3mXvopWOyWCeH3plGczwg-1
X-Mimecast-MFC-AGG-ID: z3mXvopWOyWCeH3plGczwg_1761832001
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-429b8b8d9faso366350f8f.2
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 06:46:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761832001; x=1762436801;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qXVeC5x4UjvdpdxBQtQYDv2PCBr6tJQZhEasSYJVqpM=;
        b=Jk/4/fraU6F68wqdbQmvRvMx7uOI4vEkNYiqgs8FT1pJph3lZYCjcqpdHa1HEbhpFv
         sDbHVutX0AzewDG3u4t71x/jF5Aw9jH+3uPRcGAdRFsDV4zfthKK2L2FSqV+IsddbEQR
         PKJGQWDuQXSh7j6SPkLF63vz7a2u4ZdAZXDEWvXxYOUTrFlVRZrFpsi2EDmfLOF2tvaL
         NefiUWY12/9sRu3Dz86imAhniUTniZFWcG0yIYv6dIk0gZ4TlKmHLaI2WxdC2LeeN5V8
         YvKhxQFiBJx6LBUz2Qb+j96OAKxQ6nm9FJ6BnCKLYIaTQmWV3uuad3bFtRTJIp+597Cj
         xCbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXzQ4L6FkhyKdssyPWNqNVQy2+Lod0B0mH0QvTaxQBF1FVzR32TYVMIMnT6Y9xuWX+xrQ8yXELylP22@vger.kernel.org
X-Gm-Message-State: AOJu0YynUDgtkCiKYzemgCRA1Kw39NaX0gwY8QJok/dgafl6VftWtq6j
	malBqMcFRZ5kw1DoIl++Bh+VcfjHx+MwQmwGDsEJmc69l+nTdCsxC7PZYI+igkYyqOataychnoa
	YiTJY8mA9TEVjzi3uDV0l0yNX5sxFjRDRaKMcSha6nnvt8evxboDheAJB9hCx0V4=
X-Gm-Gg: ASbGncvH9w6tpAMo3/WQiar7SrwJhKKZcEemInU3pipuGcrgJla7wMT1etd7mBY8xBi
	vJfM/T9sVYXdMRrhROChjtiG3c6Am4RIMAIcYYhAaRMuwt5+Doxxu0cWSCS797vb7vHAYlHjGG2
	mfI+D/cfy4Ofm40HK29PIGInARplTmJOc206KiSuoZovkiXw16/ZO7ZhORLpv+mAnaaRC+0E5za
	UiaVwxQCa3ljhZElggnnqmOn7FxEz/Yo41/DMtk9NZ6ZzmpOl/eibZ+ltu9QhVFptgmNtvg1Xym
	ORhXYsRH6c02/WQNrc7KvGTcNALc2YT1FACjCwHQFpETCKVSZW6MC8hH9gvZ/vkPqQxlAldosCo
	agNd3ikBYryks+bP1TKJrQJ5D2I7bm+aTt+LaD7M/4fB+sAlI
X-Received: by 2002:a05:6000:1786:b0:427:6c7:66f8 with SMTP id ffacd0b85a97d-429aefbdf05mr6876973f8f.52.1761832001291;
        Thu, 30 Oct 2025 06:46:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/4DJxIB6GKcBndXz26LErjJv4VyAkibid3kK/z0tZJxHwuSAecj/C6Y3Ult2UaXNcOJzYMg==
X-Received: by 2002:a05:6000:1786:b0:427:6c7:66f8 with SMTP id ffacd0b85a97d-429aefbdf05mr6876945f8f.52.1761832000863;
        Thu, 30 Oct 2025 06:46:40 -0700 (PDT)
Received: from lbulwahn-thinkpadx1carbongen12.rmtde.csb ([2a02:810d:7e01:ef00:1622:5a48:afdc:799f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952b7a7csm32483487f8f.8.2025.10.30.06.46.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 06:46:40 -0700 (PDT)
From: Lukas Bulwahn <lbulwahn@redhat.com>
X-Google-Original-From: Lukas Bulwahn <lukas.bulwahn@redhat.com>
To: Tim Harvey <tharvey@gateworks.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Hans Verkuil <hverkuil+cisco@kernel.org>,
	devicetree@vger.kernel.org,
	linux-media@vger.kernel.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@redhat.com>
Subject: [PATCH] MAINTAINERS: adjust file entry in TDA1997x MEDIA DRIVER
Date: Thu, 30 Oct 2025 14:46:37 +0100
Message-ID: <20251030134637.134024-1-lukas.bulwahn@redhat.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lukas Bulwahn <lukas.bulwahn@redhat.com>

Commit c423487bf667 ("dt-bindings: media: convert nxp,tda1997x.txt to yaml
format") renames nxp,tda1997x.txt to nxp,tda19971.yaml as part of this
dt-binding conversion, but misses to adjust the file entry in TDA1997x
MEDIA DRIVER.

Adjust the file entry after the conversion.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@redhat.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5f7aa6a8a9a1..4d739e18aab6 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25233,7 +25233,7 @@ L:	linux-media@vger.kernel.org
 S:	Maintained
 W:	https://linuxtv.org
 Q:	http://patchwork.linuxtv.org/project/linux-media/list/
-F:	Documentation/devicetree/bindings/media/i2c/nxp,tda1997x.txt
+F:	Documentation/devicetree/bindings/media/i2c/nxp,tda19971.yaml
 F:	drivers/media/i2c/tda1997x.*
 
 TDA827x MEDIA DRIVER
-- 
2.51.0


