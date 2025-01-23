Return-Path: <devicetree+bounces-140572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 42063A1A61E
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 15:50:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 32BFA1888120
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 14:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDA392116F8;
	Thu, 23 Jan 2025 14:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NvKyUaFJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146D820F971
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 14:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737643817; cv=none; b=aQj+H+dFGsaIT0o6VetIty6NqAqoP4WEDC/bnXhezX6i+jr0MPt7nlVxkN3yol53If0Zldd4GEuUlYN968xPDy0QGPAwd0VnzERZpvkNj9Hakd48NL9gd/BfTdUdg8NFDDGn1HuqHGRAi2W7qpzB9FubNUFFEuKRyuefAii4E2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737643817; c=relaxed/simple;
	bh=pzL+hwWSZbLpe5CZkNXpC39Vd9f5AF/lHgVQ/J2PNqA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ivypjTmV6T41YEY1Uj2AmyxRzCb9eSk3i/Jzy0jAOSJveEpUVc2wbxIraIOayqEtJkyq0bjbIH20VrW2hcSqOZOIRlSCLAEaqcXhGSnI5JPW3YvJFuY+SVUgDnn5fz/B1pIZKfyt/8yRm8VVnHmMs00UQJ4bV8dexofe8zMApiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NvKyUaFJ; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-436230de7a3so1504615e9.0
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 06:50:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737643814; x=1738248614; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0fYiDpg49XhpxJtKhKrLmW5WJA9Zrs3LZVuQhIUZhrQ=;
        b=NvKyUaFJtJdCphih5zwGo80NE7mclka7rGTFEVaBNPqaz1BNVnm32TS397AzSbfp0O
         ef0Xz8rVWFy2czhYrSy++oz8qM8mGZdaICGQgOGDh/qgRAzK0/mCmJecXAx9WHwdzdl8
         nlHTNFlUDwW2x4LDliHsZyE9j2buIQI/ikEGA2IqZfrdfx/T/Eo+lAowoKhdFuBvllb8
         oXa0Fq75WNbb2oUov/JEfCfuGrOlVe6p52zPgWGmS2L5c92AneCdwgdtU8tyQSYkbaX5
         Y5pDKf8Fynmq3NJNbNmKotmj0HJ+BZeNc4iDF89f2T0CJFpFH5VsWDn8ySY9uPjf2Xus
         cH1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737643814; x=1738248614;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0fYiDpg49XhpxJtKhKrLmW5WJA9Zrs3LZVuQhIUZhrQ=;
        b=glo1uKuyJPyU89KbdpB/YpUh7uEG6MKMbHXcGVurO97E3b+9VaEaHjDticD5r8UNRg
         WEwO+50HJy113LXFl4Y4C5jrgo31aEcUqBRKmCv5baYI9IG7KpiBhx4PfWqBJNRxTIk8
         LYaDmOHnFXqXgtapTkHDD9KoiQv2KHxCRvUr+OBNSQ1oKbPMB/VS45AzFYTogE0LFNo1
         jo0tpUaSvZ9KD5y7Xx5rGjV/yD6CvRHbxK+A++bgs7WSfmgrIeud4T8iNLsYHq40iXbf
         cZoP87WssrxQ/Si8HsJ1Kz+MhO77Odgvb4+8v+2t7WtEW/PlDRSCdDuqiICBefn4Z0ha
         2gqA==
X-Forwarded-Encrypted: i=1; AJvYcCWv+9x9beiFXWDdawZ57Iw92uGn/QohP2JJkIUOz0K8cjADyw5dDtX6gzcp0tenZ8+19SnaJoPSvH6L@vger.kernel.org
X-Gm-Message-State: AOJu0YyP7VLyWeAha8RLYws2wb4i04Y9M9D4yIZugPRwWYbrzZ5gz0wS
	b7tx4Ow34hwIGroW/U6RS5vfD58xgaTk/oXYRkqfzYQlUVzqsbyeRePxnr53ahGGW59HA6cqfQj
	j
X-Gm-Gg: ASbGnct6Q/g3cIrpc/ADYqp6KnKV12TxtbgfJtk6ceEYVZ+bPR7JaYxAKjsBH7Kt+XT
	QMCYA7jF/loJ6ptnlaOmhvPRC/kfS4Kxn6Gfx0KhAqzcsV6GAGh3oGeltNce9msK0pzmeZnLz0t
	zBCLCAklNBFL3D9UXqZsNx4U230OCLgXD/HqFsiLa3eZpKz1TMCGzf1VcV1WgMk0dP+SSdfoOE9
	RIx/dJfLnrcAYRRz/Vz0lcmbtV5pd41EruC3NJAearyMLVGU5XPg4nVhdgHTupwoBQodezPXwCz
	n0cGOzXvZ89+ObIqCnU=
X-Google-Smtp-Source: AGHT+IFraZskWSiAncX9nuxTsqA4Sy1YAJqZYJinqrdSh7dVc0J69TsH8PLargeQw26B/Mm6NFHXDQ==
X-Received: by 2002:a05:600c:4f54:b0:434:f9c1:a5b1 with SMTP id 5b1f17b1804b1-4389141c9cemr93720135e9.3.1737643814329;
        Thu, 23 Jan 2025 06:50:14 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38bf3222bebsm19625898f8f.30.2025.01.23.06.50.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2025 06:50:13 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] docs: dt: writing-schema: Describe validating one DTB
Date: Thu, 23 Jan 2025 15:50:09 +0100
Message-ID: <20250123145009.546923-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Running DT schema validation with `dtbs_check` is time consuming thus we
also have ability to check only one DTB target like:

  make -j8 DT_SCHEMA_FILES=gpio CHECK_DTBS=y qcom/sm8450-hdk.dtb

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/writing-schema.rst | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/writing-schema.rst b/Documentation/devicetree/bindings/writing-schema.rst
index eb8ced400c7e..6dea741c5962 100644
--- a/Documentation/devicetree/bindings/writing-schema.rst
+++ b/Documentation/devicetree/bindings/writing-schema.rst
@@ -222,6 +222,10 @@ separated by ':'.
     make dt_binding_check DT_SCHEMA_FILES=/gpio/
     make dtbs_check DT_SCHEMA_FILES=trivial-devices.yaml
 
+Validation of one DT source by providing Makefile target::
+
+    make CHECK_DTBS=y target.dtb
+    make DT_SCHEMA_FILES=xxx.yaml CHECK_DTBS=y target.dtb
 
 json-schema Resources
 ---------------------
-- 
2.43.0


