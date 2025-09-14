Return-Path: <devicetree+bounces-216901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65052B567EA
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 13:30:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A10531756A5
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 11:30:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14AD525F96B;
	Sun, 14 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zyq+5QBF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A99248F5A
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 11:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757849393; cv=none; b=keUliM9ZRWGEveiO6bHm9zHnMkwkzmEDBf9Ql0OAk6w62eQQ+YB8CTWM1ZlCj5Nv6Jxc2UJbCTQu8r8OV8HJKjbLfqhk1xm+mxfGdgXjDeto/cTTO/LQuHScKsSPRabTybmbHeaZ0Lj+xnG1Bn86D2yOR+RDKlYMSQMdUZ9OY/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757849393; c=relaxed/simple;
	bh=eGhvv9/N66YsxzDcDqEg58aZlG9m/MLJsOnFOeq3D8E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sw1OMVFe2Pu8v1BJ0ympg9p5g7nTTMjJGpPhqE0KJiCLUy43aAWkk4xUOGASfChx7tV/vOIh+5c0Puh8WHNMKY6NF3tpB6+Md7mvzUhyj9il7YDOGutlk0SVwvx2in/n0pV5H86jxC7ZL3ZHAM7EnI/z0S5rfdTYBILFtCJ/bq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zyq+5QBF; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3ea3e223ba2so240037f8f.2
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 04:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757849390; x=1758454190; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8vsQY4Dw+NKWkDueuyiKs+vcdnaBKygRmkUmRr7JUuk=;
        b=Zyq+5QBF5hC+ZTkBwgK9TPRZ90TD9wnHf8TOy9nCbJFiyTDPc9uGAWShZlA9I4evU2
         EpmncFCJZtFPNvCRXnNmaPqxKq5TqR7lCobsFZlqxd7oaWVj03WYIGQLpetSsMP50Wqz
         96mioUN2ADah1apBDjrdpwJJtfRxfOo9CZrg8WXR6Nbgk4XRuf/6koK8aD1+41L1Q+91
         F+hvGmrYy+IUUFSxtdvdSg7YDh4JuNd5mrcuF1ceYJmOxTiJkoadtLk3m8UFvK5qjjOZ
         ua1UKEFlTqa8Uv1ARJOjo8ASgVLTkdaMBlxz8gMEcKVxX1R35UTQWneSewEZWO3JT8my
         TDtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757849390; x=1758454190;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8vsQY4Dw+NKWkDueuyiKs+vcdnaBKygRmkUmRr7JUuk=;
        b=YIWAlqVYMCoOR08Nqt6dWNqdmqAOVMXdjRIGvUqZybU0g+NkfNiugQCrzdBZGbgLU9
         wDSuTgB1rR55l+8OBuOIufaMduTgBbLuF7MZWJr7Ppzk/FMC2gZmEh/fu+ATw6/e6+op
         Y288xp5OFKp/RnfY35GPI9YSAgytyTOy7aGwq7g+ULNnPF6Xa/H0Pep73pJpPFMk4zoe
         yVekhLfrY1Mvo5NxM5DFFVFCFHJgNI6R1MQU06yeLjYXpjZudZRpVVh4XdKrNyvIyUzJ
         6z5zYw1CXS5VqqyGN7Q1q4TiTV2OK4Ml62zrJYZEPLCWXt8xj+PODxovjx1D5PFMd4r+
         6AVg==
X-Forwarded-Encrypted: i=1; AJvYcCW4AakGCgsjRf4NXDLsU4RvusvoKdETFmnBzKvxHDMoBAo0I++r7kBEYfrSEGlvT2zkp1mPCZikWW9V@vger.kernel.org
X-Gm-Message-State: AOJu0YzhMnWVlazAT7glp5NM4JU05nIxqG9NOXIvmz3SaBGpM4oH+b03
	KyX0m6vHl/NjAw4ESZ65iH4RWApvkOnizvCkL2+WFHFcYA86lEpojkuM
X-Gm-Gg: ASbGncu/I01JuXWEtOW2o5ozf4M06xBuH4LaL/BtqBwv7Ltjov3Ar+2GEZMhKkCBgbU
	0dN7m7l6HOqmF/59tWEp7oURO8lxwf8QWh5nVy+LARkwxye5CVFnMl4LXUmMRL6bUAwytPpn3Ek
	U9lIg9Q0GMSNTnopoVUpUdb4T7ANLOX37lTJjeF5wTye1uNq/29qP5RWgSxqtmn2BMg4Az2lxDG
	BbYlnGj3ukDkYUACCR6/LBVfTJv1rdc/PrSaL+V6OeuCbvxtZUd1+MQyp+DVGfFnBh0Z4o5YaHu
	+AV5tUXmzS5jWSv463qJ3I3cewBvP0C208ehkhseke04IPAjeVG0GTJ8G6mDueG+hxXsd7VXQmT
	sSDgGg3jA+QcG6RA3YxEPiqI2IMR5e8xBUVgvZ5BjJLXnAdqbd8a+p4/nUIDxTAuJRBtVmvgdQA
	==
X-Google-Smtp-Source: AGHT+IG7cUFQKEKzCWjaXCRFkeDZbrdH3vz4KY4We/ahlJdKQNXRJ0ZP4meSLxgeXXNpvydWJj/Jiw==
X-Received: by 2002:a05:6000:2584:b0:3e7:5edd:ce07 with SMTP id ffacd0b85a97d-3e7659f3bc0mr9180559f8f.40.1757849389608;
        Sun, 14 Sep 2025 04:29:49 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e8346defd3sm6591268f8f.1.2025.09.14.04.29.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 04:29:49 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/3] soc: samsung: exynos-chipid: add exynos8890 SoC support
Date: Sun, 14 Sep 2025 14:29:42 +0300
Message-ID: <20250914112942.2604194-4-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914112942.2604194-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250914112942.2604194-1-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add exynos8890 information to soc_ids tables. This SoC product id
is "0xE8890000".

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 drivers/soc/samsung/exynos-chipid.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
index c86f1058c..02466f916 100644
--- a/drivers/soc/samsung/exynos-chipid.c
+++ b/drivers/soc/samsung/exynos-chipid.c
@@ -57,6 +57,7 @@ static const struct exynos_soc_id {
 	{ "EXYNOS5800", 0xE5422000 },
 	{ "EXYNOS7420", 0xE7420000 },
 	{ "EXYNOS7870", 0xE7870000 },
+	{ "EXYNOS8890", 0xE8890000 },
 	/* Compatible with: samsung,exynos850-chipid */
 	{ "EXYNOS2200", 0xE9925000 },
 	{ "EXYNOS7885", 0xE7885000 },
-- 
2.43.0


