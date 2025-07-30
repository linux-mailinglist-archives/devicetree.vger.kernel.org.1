Return-Path: <devicetree+bounces-200694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8835DB15B94
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 11:30:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C65917A6EF2
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 09:29:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A117272E43;
	Wed, 30 Jul 2025 09:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rQGCvexD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80564277CAF
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 09:30:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753867807; cv=none; b=BFyVTyN2Z60IJGf1hoDueztcXgDDyd/FDs9kGtOWsciQ94IEpUFZ9qLOAdiwi5M7HtvToDpI1RPQm1Ei6gojfzB/YPJ0+W8ruCQqWbZPPF0BJDv6oIcxUVRcIl1VTlEpM99d7TR2oEnqrZfBHXoLkcBYF00yurFasVwHRqWJUT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753867807; c=relaxed/simple;
	bh=AMFrLsSdDLsWD6Yxv/Xp7y8nsNQ2tGUP+On1wCM+8Nc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Mrjtv0raYfEAaFfEZHo3SNWnDyqUIzhqH70eNMm2rAWqEXVIuDsrpk3VsECSyQCqeipXD6e633/scuwvv965kr7cz93nyvPDSrI37X50nELDxMO0NFzqISGxxkX0W4Z2CyEu8UJuKH5bcnPi4bclHW0zejHUr1NDxj1iIN8KT+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rQGCvexD; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-74931666cbcso5811750b3a.0
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 02:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753867805; x=1754472605; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d4sv190EzN/L51InyJ6GGaDg9k7LvZRYe9Fp2o+cKoI=;
        b=rQGCvexDqtL77v5LZmfugAbQv5I96nUsvAvw8Z/pKYpMLObcMIOvlragYKp+UAH5sx
         Je771M8bpOEcO/NmefSj11XI50Ciqy6lzoMvO2srm7yV9KOynWMwh+UZoi2Bsu3xHrdw
         tw5BEt/9CMJEUkBolLJ/ibY+erPauKcvVyYBVcMI6yLFmR84kHYPBPQdiZw5FbJxA2k9
         zqtPvkGUbUzwAtGlBVGksPP4ZZxVGK8nUvOX8qdfYLtLPb1LUoVTPZPsV/7hfI8eMyTu
         +JgRolkIMrq7itxUkt2eDKjYhjb3RpoYl88hZiZyJGq6UNVOsEksslGfJ6gbjMoCcWLm
         zjgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753867805; x=1754472605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d4sv190EzN/L51InyJ6GGaDg9k7LvZRYe9Fp2o+cKoI=;
        b=m6DDgVI6XLANY//qqc7rzBaINt9L/iow5rHA8SwY4+DLswtrALzCnzOpTUc4cDLf7l
         Xr7tZ1X6+mzDp6VQ8sIo/kvYE6kc84d2B1nL0tsposXRJVCyYIN00CK2d+31tDrS46XS
         zs59JhfPUcwJUrlBPVWZbY1qwxYjQyhR3knM59xYov38G/0e0dMvBGjWJ+r11pckNWEp
         Tg9tdFH5hSKOy6lrXL/hnNKltdK2CXl1jr+wTMMXmYVzOFab6BDwpi0vDdNUcpywu7pw
         hpzoNwzkauZB7JnQyEJ/SB2Bg2FRDK1ZLuWIIqNO8j8pGn/COPGcsNd1z8gN7+b9ZxS6
         AIbQ==
X-Forwarded-Encrypted: i=1; AJvYcCWktqgcY4XOcT7qYB0RVJZ4sYmD3mukSN5isAcBVSbYdbFZeyEiFCE8eNWWgpPbX8EI1OYfRA2Bg80L@vger.kernel.org
X-Gm-Message-State: AOJu0YziJbgrVUXELBBgmPRVg5HG36ti42eAgiVl83kN2Hy49x5b2Tt0
	fs8m23OjYvxk48a+RFgWFZoZUepCRMBXCdbXAOhhG7Ur9kKmyYYcmb/+UdMRa6eGeds=
X-Gm-Gg: ASbGnctTaJo7E3ef6+qP2OZoFK/zCZ4+EH7u31d3+8x7ID6bBGLhVIPxG6w199rDFv3
	ktlclPlg1Toa6E2dqvZJdDp6qw7faIDX8CO6f1562F+0s7L2GLGnvLTWFxU5GWNeBBVmhyjZlt+
	eOjAHH8lTyVtzys99VuQsqqtxlkzE6gxowwTy6c7HnJwQzwxJSIwwZ/g+mh36MBXjQnNV3n+AMe
	QzMfExZ+sisNdxjdFZD+8gJqes1WLnPQtwkxGoUZpx0wHQOOsHw84esHVDcygAduExIYPrnPZSX
	bIU/8itMt127WldFZ9OareymN/QjhFOewcMC3biDxw8IkcbN4MYTEKBQdkg81gKY+j7ACndjTzs
	tnOAWREx1qHInct6EhHxFl88=
X-Google-Smtp-Source: AGHT+IHFAGP1HJe5a9qKM+/ZDWC7kbnIisWwtDj1bGJ4lHuGMD0cLNRjCqCmnmGMtsYPaHtgs9ZyQw==
X-Received: by 2002:a05:6a00:ad6:b0:749:ad1:ac8a with SMTP id d2e1a72fcca58-76ab2b55c8dmr4076130b3a.11.1753867804853;
        Wed, 30 Jul 2025 02:30:04 -0700 (PDT)
Received: from localhost ([122.172.85.40])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-769b53591f9sm3880810b3a.35.2025.07.30.02.30.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 02:30:04 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>
Cc: Viresh Kumar <viresh.kumar@linaro.org>,
	Arnd Bergmann <arnd@kernel.org>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	=?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
	Bill Mills <bill.mills@linaro.org>,
	"Michael S. Tsirkin" <mst@redhat.com>,
	Jason Wang <jasowang@redhat.com>,
	devicetree@vger.kernel.org,
	virtualization@lists.linux.dev,
	Sudeep Holla <sudeep.holla@arm.com>,
	Bertrand Marquis <bertrand.marquis@arm.com>,
	"Edgar E . Iglesias" <edgar.iglesias@amd.com>,
	Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [RFC PATCH  2/6] of: reserved-memory: Add of_reserved_mem_lookup_by_name
Date: Wed, 30 Jul 2025 14:59:31 +0530
Message-Id: <feb4591cc48c70f9790c3f4d37c149fc336c3110.1753865268.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.31.1.272.g89b43f80a514
In-Reply-To: <cover.1753865268.git.viresh.kumar@linaro.org>
References: <cover.1753865268.git.viresh.kumar@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds of_reserved_mem_lookup_by_name() helper to get a
reserved-memory region based on the DT node name.

Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 drivers/of/of_reserved_mem.c    | 27 +++++++++++++++++++++++++++
 include/linux/of_reserved_mem.h |  6 ++++++
 2 files changed, 33 insertions(+)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index e0a86c3fa656..b94c3b1d14b6 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -758,6 +758,33 @@ struct reserved_mem *of_reserved_mem_lookup(struct device_node *np)
 }
 EXPORT_SYMBOL_GPL(of_reserved_mem_lookup);
 
+/**
+ * of_reserved_mem_lookup_by_name() - acquire reserved_mem from node name
+ * @name:	node name
+ *
+ * This function allows drivers to acquire a reference to the reserved_mem
+ * struct based on a reserved-memory node name.
+ *
+ * Returns a reserved_mem reference, or NULL on error.
+ */
+struct reserved_mem *of_reserved_mem_lookup_by_name(const char *name)
+{
+	struct device_node *np __free(device_node) =
+		of_find_node_by_path("/reserved-memory");
+	struct device_node *child __free(device_node) = NULL;
+
+	if (!np)
+		return ERR_PTR(-ENODEV);
+
+	for_each_child_of_node(np, child) {
+		if (of_node_name_eq(child, name))
+			return of_reserved_mem_lookup(child);
+	}
+
+	return ERR_PTR(-ENODEV);
+}
+EXPORT_SYMBOL_GPL(of_reserved_mem_lookup_by_name);
+
 /**
  * of_reserved_mem_region_to_resource() - Get a reserved memory region as a resource
  * @np:		node containing 'memory-region' property
diff --git a/include/linux/of_reserved_mem.h b/include/linux/of_reserved_mem.h
index 3933f1d39e9a..d6d187597b7f 100644
--- a/include/linux/of_reserved_mem.h
+++ b/include/linux/of_reserved_mem.h
@@ -41,6 +41,7 @@ int reserved_mem_device_init(struct device *dev, struct reserved_mem *rmem);
 void of_reserved_mem_device_release(struct device *dev);
 
 struct reserved_mem *of_reserved_mem_lookup(struct device_node *np);
+struct reserved_mem *of_reserved_mem_lookup_by_name(const char *name);
 int of_reserved_mem_region_to_resource(const struct device_node *np,
 				       unsigned int idx, struct resource *res);
 int of_reserved_mem_region_to_resource_byname(const struct device_node *np,
@@ -78,6 +79,11 @@ static inline struct reserved_mem *of_reserved_mem_lookup(struct device_node *np
 	return NULL;
 }
 
+static inline struct reserved_mem *of_reserved_mem_lookup_by_name(const char *name)
+{
+	return NULL;
+}
+
 static inline int of_reserved_mem_region_to_resource(const struct device_node *np,
 						     unsigned int idx,
 						     struct resource *res)
-- 
2.31.1.272.g89b43f80a514


