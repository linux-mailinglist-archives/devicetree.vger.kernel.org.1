Return-Path: <devicetree+bounces-224786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BD494BC8046
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 10:21:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BB03C4F6276
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 08:21:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F093F2BE652;
	Thu,  9 Oct 2025 08:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="d4zz/Djs"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E2627381E
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 08:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759998093; cv=none; b=p1fETIWzQU7I1GfWKW6MUzYYL8rwB1+G/WKWXyYsiqytvkhV5gB7FIUaNDOR5T4G/vhRvcipJ3j5N8pI+qkI/ht7N7vgp4FzGoMFVv96tMwvu3VTJa5Nat5IOhcVrn8jlZ4IO3wJxTy1POnI1hhgXkUSaRlqV5XPkxLarSscs6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759998093; c=relaxed/simple;
	bh=oUu13nAPqZ9Sk+3NClMhwJiqKDOxqXNHAlUK88P0GdQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GJLm0XdNidYpa6O9r6DsRsxUEAxuhrG9w4yNPDSiTvnWXamm9dDEm9zR/LxvNY/YpDCALmN9G78UifugUWGeptrkk6xBaGUqn9UBzAPGqqmYC4oxP9qQ1JU5BK8d+w3R/swSgm4hS7TqN2DGjNMVds9eDOfiwB7Ba1fcTTZAgvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=d4zz/Djs; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1759998090;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=69ME3BFXEVp+2f1cKazmVJlzdaHKV1pAL9MxTHMgn2Q=;
	b=d4zz/DjspnM8qYx4RtxSLuocd8oR3znehTabqIkBXz64qDS0OvbODrQu43OcxKadWS0qwF
	JPpmmCq2xaDaXsaLRB9MpsPqoZp8T98d5cxTYnx+lQQreM7R5N5kWoRhxCezi6EJ18Y6xp
	jmtA85FJ0d2atQzPSBIepDVbFBC3+jA=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-75-PXxdDQmaN_yLj1mAn0yo9Q-1; Thu, 09 Oct 2025 04:21:28 -0400
X-MC-Unique: PXxdDQmaN_yLj1mAn0yo9Q-1
X-Mimecast-MFC-AGG-ID: PXxdDQmaN_yLj1mAn0yo9Q_1759998087
Received: by mail-ej1-f71.google.com with SMTP id a640c23a62f3a-b4ba17a15e9so84645166b.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 01:21:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759998087; x=1760602887;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=69ME3BFXEVp+2f1cKazmVJlzdaHKV1pAL9MxTHMgn2Q=;
        b=nHrHvI+C8wkLI5bNd5izzsBQmyfciXLPUxaHzr+QOchn5W4TwrzrF56PFMpYmHW44+
         43OjlY/EO9Ovy7NpmqghXDmHvV4fRTXYob+i2QindMS/rqRktj/DH8OmrDt/diAEEzRu
         0EzypH7WbNYq0t89ymhmCO28hqN9n7KDURafNLKeskWgGKDkBWQHsJZoJiE+cUyK81IG
         wYLIxFy9rBDV6BxphZUwcvExTVl5+YcCe4pHzpiXf7sweGwSyvO4gM2nKOEJyD0jssNO
         Md4W0WAJr9YmVKLk5jeYUkAPQCPF1vEzsLmZxEIfW25hLmSJ49YZjRnj/uumRpWPLvGz
         NXPw==
X-Forwarded-Encrypted: i=1; AJvYcCXDpgm5RzQubEsm2h40O0RID572W9EES9vKFe8A7GzHTJFgPUFcbW8Vspjm4ulleLZkXc7A+A/ikcdB@vger.kernel.org
X-Gm-Message-State: AOJu0YxQmchwNwBFunZhkz4mX9Q18QFfnzsbG4GKkbUXc5cVtEpfC0AD
	JvPmLqoKRIXnMmTt+fQn9Eoe/siiEHWquQ0eVygu334n+cWMsRXM+ocsuN5a3RyfLV7v1F0gxke
	13IqfEdN+RQu9KmmeleNmuGjw/jFDJzrmpH0WV2aiTY4Bhbg0tTcSa+DHjtB4ZaOloZYvUcw9QQ
	==
X-Gm-Gg: ASbGncstvETNkBOfAZ2/Jr5TiG9sFNjW+0FE2vsDQJuA4R4KK3kgqcMkzC4BR9iBZLX
	k0EpRR0dlt2YCUqTUexQxVgALkVufgMau+M+XLBXeRSL/oRDR8Zx0yHZrjtmkAljbDEBp1WalJe
	RcGGCMqF6PHKXxlBpknQ6HIESzWiKnORaOzwvxBBBhgGUp+e3ddm+m6w1+YD3Sa3c1iceQlXISl
	X1TdfBSiXIM67xt0kYdzgdWQcRi0sGhU6ebVy0voOeevMxP9QQ2Yjpas2Mmvc38eONTEMs6zfM9
	eTdJ8ZzSSlY3LEqXQI4Tpk10NOTDaCMVMb8+J3mYq/VBFiOHn7uM
X-Received: by 2002:a17:907:a4c4:b0:b2a:657:e733 with SMTP id a640c23a62f3a-b4f429f034cmr1151761366b.15.1759998087382;
        Thu, 09 Oct 2025 01:21:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHVjMgqntPb0Ku3WrCmKlIFeEE9zkajxUeW2OCAErcWYVR5IHLUb+ylRoCc+fH0u/EYTD7qaQ==
X-Received: by 2002:a17:907:a4c4:b0:b2a:657:e733 with SMTP id a640c23a62f3a-b4f429f034cmr1151758366b.15.1759998086937;
        Thu, 09 Oct 2025 01:21:26 -0700 (PDT)
Received: from holism.redhat.com ([148.252.9.235])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4869b4e27dsm1832988266b.70.2025.10.09.01.21.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 01:21:26 -0700 (PDT)
From: Lucas Zampieri <lzampier@redhat.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: linux-riscv@lists.infradead.org,
	Lucas Zampieri <lzampier@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: add UltraRISC
Date: Thu,  9 Oct 2025 09:20:11 +0100
Message-ID: <20251009082013.1331361-2-lzampier@redhat.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251009082013.1331361-1-lzampier@redhat.com>
References: <20251009082013.1331361-1-lzampier@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add vendor prefix for UltraRISC Technology Co., Ltd.

Signed-off-by: Lucas Zampieri <lzampier@redhat.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 123456789abc..234567890def 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1642,6 +1642,8 @@ patternProperties:
     description: Universal Scientific Industrial Co., Ltd.
   "^usr,.*":
     description: U.S. Robotics Corporation
+  "^ultrarisc,.*":
+    description: UltraRISC Technology Co., Ltd.
   "^ultratronik,.*":
     description: Ultratronik GmbH
   "^utoo,.*":
--
2.51.0


