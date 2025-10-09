Return-Path: <devicetree+bounces-225065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EC5BCA1F2
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 18:18:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 646143ACA96
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 16:15:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D29F22DF9E;
	Thu,  9 Oct 2025 16:10:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z4mwxk0M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB4021770B
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 16:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760026244; cv=none; b=U2FnF29bswo/MOMtkeMLIdaQKyh+DegEBCSvk2iO1/f31j8V0zi6BR7IEIpJLYBzkHpltUIt2OjFEdjvqcZNZeu622n2Tr/q96lnf2k/83Pd/KJ8lBW4bexhjY+n6yGYiTRd8lj6FXwv3UccA/NDRHyT9ighBTOL+t5pgQIqfb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760026244; c=relaxed/simple;
	bh=/QroLiiLgmRbmdtmGaHJCJNhy+ofzWFn4TKF76QlkYk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Na6MiYDRg9KnP6liGY2IpDonJPSumxuFhdrTcZuymRL16UY9beBxlBwXRWHcrF2ay+Te7lavIuMRs3Umrx5es2nKrNoOQ3mX+QOJU4XtLHZ9PwMToNFtuF6bSiVKzNco/EDwzrC4qwAx9BU2VoAn4vqUqHJSXceKOCKz07N34dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z4mwxk0M; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-4256866958bso689225f8f.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 09:10:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760026241; x=1760631041; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6dY4iN7PdWChYRE0ifRKVqt27FKLXUFTSH3kC0uyt14=;
        b=Z4mwxk0MvyrZdFXnQKSqPEdN9X1LovenCzi72wyuMoW9OyBRTFTWEyvJ8ePWzQS2PV
         R/hnO/DJJN2SVVdoQdtJU5Pd1jfrrvoU+0cpzo/bxtH6vq+7X7YWyxFG99iaZpv/4zZG
         yIg4qP3tGh+eRmUmax33gKdVK343PWNWJYxt20k/ap9PYcMYFgyQT0lp7rlXEcoHs2sK
         9P6QL2IF5jiYrcH+qK5rpY8t3u1AEGd6imssvgDt5EjjbiY2CmeYVKnJSne4HABuWLGm
         hYMO0/mhCe+Bv2OmpMHZ0B7juulGXUHFbK6qh/D8GunZ7ZkM2WESbWvpkSQ8xgGuo9MM
         8NLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760026241; x=1760631041;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6dY4iN7PdWChYRE0ifRKVqt27FKLXUFTSH3kC0uyt14=;
        b=UfbLdBexWhEJEluivB5wKNQcFC4dWDgbLf1rVu5LGWLVn9VNeEKtofOxYD0iC28EA3
         6kv1sUT+50m0/IT+5x8FtBhd9pAw5yUb0RRbA4+q0xbjhlcpXyv/sVEYwM7A59ZoJFGQ
         +F/LEtDuYmOkrbhHFfTIww2Tq5WiQg9mt3Hv0IYAuG/wAOmtjL7zDvTWkm3zwMMvQH8k
         1FVG6WrkV0syYbZouJDMedhdj1sVqNyBzyCCxUB/267VZiKg6HADhrh7M0ns8QUo5Xqu
         ERjSqPXoVQeT7cXjxybh0dnWbcPHPSzMkpBLjxuPN0TfNG05cJUbsYA/ClngyXAzFHDN
         D+ww==
X-Forwarded-Encrypted: i=1; AJvYcCVYkomA4h2b+KLfMVg4VaUMvivVm3aPY0jo/US/FsKbK7LI+IEdvqMShcfOqn1UdAfYZ+Y1cSBpgRmC@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5SVRoXEZZ2eVOhKl18Fi6Kin9EAjrsWMcaGB3LALh59mWuKJM
	1Bqg4RBlf+ZchBbSb0yUmBFZcvjFoftO9SJSWwCcx0SVkasHluVNVAI9
X-Gm-Gg: ASbGncuRz8pOzFzpnNsaz+kk40vsfZxQ+FYqrWm33hE/dMZbjSh0HRf6ca7c5dFjv32
	BNlH3LcSF9rUYzsk4lzrmK+XfPzfPWUaZDJtp4wMPJZrO+eD9lQ6dk8xbjwhQ61N0JwcIXDKHPC
	1GLXAnvmFCRVSzkGnSQ12Lw78epbpLfXCPzRpxtyqI/qUbMMQZKwSvqmhptY2WgKYOuB3ewVeqK
	s6QVFJEa+NtX1dS3g/8pwtDSDNYMtEEEOssEWHMEyu4daipy700yYReIuYV2/TLzNXZskhxxXX6
	OuuWPLqemW6iAVE2oQ73iTsrXx6ToZWoL3jY2PWHlc+WRjIgF1UVJ6UdIRijvEJXMp7gK86COWN
	DpGR28XekBxp5lHAeHPmcQLTzuQSLBYmgfvWsy1KV97LnzSAp/hF+BNSBa/MaIz3m2+T5x+QBAV
	TyMY6JsNj6MY5Vl7L//rtv8EFufPUiZmwtCbiwjqAnDaTh3zjBBQ==
X-Google-Smtp-Source: AGHT+IFkwHykrA+wYAhn/zJi5eTUQsxL1dfc4QaEW+3rGUYXDO/GVtri/nlITfJ9TCBVb2Nii4lSVQ==
X-Received: by 2002:a05:6000:2504:b0:3eb:f3de:1a87 with SMTP id ffacd0b85a97d-4266e8e4483mr5631337f8f.56.1760026241085;
        Thu, 09 Oct 2025 09:10:41 -0700 (PDT)
Received: from localhost (p200300e41f28f500f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f28:f500:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-426cd9a0310sm47995f8f.45.2025.10.09.09.10.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 09:10:40 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jon Hunter <jonathanh@nvidia.com>,
	Sheetal <sheetal@nvidia.com>,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v3] dt-bindings: power: Add power domain IDs for Tegra264
Date: Thu,  9 Oct 2025 18:10:39 +0200
Message-ID: <20251009161039.1766845-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>

Add the set of power domain IDs available on the Tegra264 SoC so that
they can be used in device tree files.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
Changes in v3:
- rename to match the nvidia,tegra264-bpmp compatible string

Changes in v2:
- remove _MAX definition since it isn't needed

 .../dt-bindings/power/nvidia,tegra264-bpmp.h  | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 include/dt-bindings/power/nvidia,tegra264-bpmp.h

diff --git a/include/dt-bindings/power/nvidia,tegra264-bpmp.h b/include/dt-bindings/power/nvidia,tegra264-bpmp.h
new file mode 100644
index 000000000000..2eef4a2a02b0
--- /dev/null
+++ b/include/dt-bindings/power/nvidia,tegra264-bpmp.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)  */
+/* Copyright (c) 2022-2024, NVIDIA CORPORATION.  All rights reserved. */
+
+#ifndef DT_BINDINGS_POWER_NVIDIA_TEGRA264_BPMP_H
+#define DT_BINDINGS_POWER_NVIDIA_TEGRA264_BPMP_H
+
+#define TEGRA264_POWER_DOMAIN_DISP	1
+#define TEGRA264_POWER_DOMAIN_AUD	2
+/* reserved 3:9 */
+#define TEGRA264_POWER_DOMAIN_XUSB_SS	10
+#define TEGRA264_POWER_DOMAIN_XUSB_DEV	11
+#define TEGRA264_POWER_DOMAIN_XUSB_HOST	12
+#define TEGRA264_POWER_DOMAIN_MGBE0	13
+#define TEGRA264_POWER_DOMAIN_MGBE1	14
+#define TEGRA264_POWER_DOMAIN_MGBE2	15
+#define TEGRA264_POWER_DOMAIN_MGBE3	16
+#define TEGRA264_POWER_DOMAIN_VI	17
+#define TEGRA264_POWER_DOMAIN_VIC	18
+#define TEGRA264_POWER_DOMAIN_ISP0	19
+#define TEGRA264_POWER_DOMAIN_ISP1	20
+#define TEGRA264_POWER_DOMAIN_PVA0	21
+#define TEGRA264_POWER_DOMAIN_GPU	22
+
+#endif /* DT_BINDINGS_POWER_NVIDIA_TEGRA264_BPMP_H */
-- 
2.51.0


