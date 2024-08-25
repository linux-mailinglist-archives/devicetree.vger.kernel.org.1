Return-Path: <devicetree+bounces-96448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDC195E2D4
	for <lists+devicetree@lfdr.de>; Sun, 25 Aug 2024 11:01:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 95FA91C2095F
	for <lists+devicetree@lfdr.de>; Sun, 25 Aug 2024 09:01:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7A2C59164;
	Sun, 25 Aug 2024 09:00:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M9JhP8FM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1943054645
	for <devicetree@vger.kernel.org>; Sun, 25 Aug 2024 09:00:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724576459; cv=none; b=Y9fg+DpYqtZKsAxrQQ8Uoi4M17f/prnOK/XQtQ/bBUsHFHJltS9FXgzTKujHl7pKWzSBQCtih2CYRBgQZpgSYI6NZhCsTLGtFMMYgs8o9M+VA0FJNvW1ua+TPanCofh7j2n+gjMUvFd6Dg9ZvENNlzhcMM/khXC0ednUZ7JJVmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724576459; c=relaxed/simple;
	bh=zPtjJAHCcjLGpjo3WyxKQTDsk06tKU7xrLNNHU1rVLQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kb7BdyRNtDPK1pEN9FdBoljnEix8C2Qf+UlykIWdfjMa/RtUiuDayZ2XZy1XGdvRgRMvF/4J88n45EXg4HYxVhStwPrLdFmxz3m6iEEGsH4Ptd7UWyctFeSdYGhp8QPnnGuAuDhTGZ4v++Q4Dm7eSV/cTM8MdsJ4UGzEuKTIY6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M9JhP8FM; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3718ea278a8so477632f8f.3
        for <devicetree@vger.kernel.org>; Sun, 25 Aug 2024 02:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724576456; x=1725181256; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3n4NDcotA3y63waYC9ChSZVHTLNYfnqOEMaVdu0sMbA=;
        b=M9JhP8FMjlF2apUeaNN8juMH9Cf7KhlaebXoQygh6FNjJb1K60K5K5rJ74QFxC6cwy
         h8YsYlfwb+b93D6/ikPxXLqtSyu1HBrQhOx8sAWBXVnfNHzNH1bhlYzWjvh/+amvU1NC
         ieFPqwhOzsYZtfRuuYcxuhUQx+OHNaWZNKwe8rYwa8ghzn35GTSNIUt5BUHfNAkFsA4A
         SI8xQUJiBYb++Y2AJuVa9y7GESdPbivJxCEIYNmyNz/TIxoIQERxksY5RD21hJWoKb8O
         sRGEiOZkTzNoddVTN3+MLsv6ND4iyQbiTSN6IQmL8zUZ0m+HB24rSG4t0hFXDC+MtcdU
         lEgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724576456; x=1725181256;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3n4NDcotA3y63waYC9ChSZVHTLNYfnqOEMaVdu0sMbA=;
        b=DEOn5WYBHnrv2oFY8vgtMIxd3DgLGOw458rMb6bVsd+JiS0HHdpvGDCajHhJTsg78l
         aE89oqYjAtQ3gcK10FZE48lNTRDUUUb3FWnE8elwvQ7pVbsW9TCWGUKEXvp53Ob1NJ7F
         yIl57+EsC3bPZMANmk2pTNFT9kAsRQZQY6/hBRRQPmRkYij/yQlKCIgkLfshUypeG7yR
         rdkeN6GBZxy51TlSc7IV//oBXKQGzpXAgKxNs0W/rCtiJdJfnwAzkjHeoHk/d4mo0v9P
         b/jWN4wqDJAoQ+/H+H/QPkzSbJa/GExFSZp00siFbdYjJj8VLHoUHYQ86XbUvdm1IH3u
         Bjwg==
X-Forwarded-Encrypted: i=1; AJvYcCXOL860CrJsUy2MSQnBT/Dit/L9RjHw8c4CzjOacPBEZJdKECRnG7ZqvGdabWWU0Mf/ePTcAd+qcI9y@vger.kernel.org
X-Gm-Message-State: AOJu0YxboP9i8qNBRcJLWG1qapGta3QNqRTpmxzlr+sfTZD6a+sflDKJ
	+/5hp/VauQvnImi9PA0DaH3sGrmfiD5ilxPQxnNZR3d35Df1JrgI2ThqsZNaj6c=
X-Google-Smtp-Source: AGHT+IFM5MEyUzYaYhlWSvMHBGsJqUVqINFe9O3P8umMlD6v8D2dpc5UOtJx+T8nsUJsdyoIoUZK5w==
X-Received: by 2002:a05:6000:154f:b0:368:4c5:12ec with SMTP id ffacd0b85a97d-3731191d5c5mr2656753f8f.8.1724576456307;
        Sun, 25 Aug 2024 02:00:56 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37308160586sm8237298f8f.58.2024.08.25.02.00.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Aug 2024 02:00:55 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Inki Dae <inki.dae@samsung.com>,
	Seung-Woo Kim <sw0312.kim@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: MAINTAINERS: drop stale exynos file pattern
Date: Sun, 25 Aug 2024 11:00:52 +0200
Message-ID: <20240825090052.22135-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

With last TXT binding converted to DT schema, all Samsung Exynos display
bindings are in "samsung" directory, already present in maintainers
entry.  Drop old "exynos" directory to fix get_maintainers.pl self-test
warning:

  ./MAINTAINERS:7539: warning: no file matches	F:	Documentation/devicetree/bindings/display/exynos/

Fixes: ad6d17e10306 ("dt-bindings: display: samsung,exynos5-dp: convert to DT Schema")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 MAINTAINERS | 1 -
 1 file changed, 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 028186bb4e8d..c75918994a53 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7536,7 +7536,6 @@ M:	Kyungmin Park <kyungmin.park@samsung.com>
 L:	dri-devel@lists.freedesktop.org
 S:	Supported
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/daeinki/drm-exynos.git
-F:	Documentation/devicetree/bindings/display/exynos/
 F:	Documentation/devicetree/bindings/display/samsung/
 F:	drivers/gpu/drm/exynos/
 F:	include/uapi/drm/exynos_drm.h
-- 
2.43.0


