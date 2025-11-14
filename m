Return-Path: <devicetree+bounces-238670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CC2C5D12E
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:20:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3E99435B92F
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:19:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12ECF315789;
	Fri, 14 Nov 2025 12:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b="PWE/AiHx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9757B22FE0D
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 12:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763122748; cv=none; b=ny0eiiH7DwS2aEanrVY7+pWGXvkgLCwRld1Kfi9HjukKaUy/K0Ps8VCiDBAjTH2VaWeDOdA/sxZQ8rJuhTxDS6PmSuEbLXjFBS0748zr1LYXIPYlRjTQ6yEX/LTwLE+AeX4Sb0in9mLqV9LGz4iueXZVdflYGh0hiAkNF5o7TQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763122748; c=relaxed/simple;
	bh=8hJpcHQrq1WlSpHUFoerPHpeHijwN2l3PQGmvu2ZaR4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZSUsEjOE2d33HYK3/tipLDpv4axvuaBScE7TPV4xko6aT6ecI/4w65cGcOloC9mqivyeduPtEERLrT+c2hRFH0bjhB3Pv92BAOE5YYJPoDZgjQ9MYeyOHaNuGPKPWyrS1DwijTIINZ9rYKrba1/hILTU55duG73UUXtVnefQPRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc; spf=pass smtp.mailfrom=arduino.cc; dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b=PWE/AiHx; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arduino.cc
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-6431b0a1948so3336430a12.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 04:19:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arduino.cc; s=google; t=1763122745; x=1763727545; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+V+ZvIG5EFfPVUmOq4TzkXuM/WpB4BMHn3sJtW2UJNE=;
        b=PWE/AiHxm0RMBWRHYKmHKsRdAjDKNN5eOJWAgm0uu0lr5dmtJ+ECZ2Cdf3Jvnb/QS4
         4zEOxYe4XG/gEiqiW/Z4qXFeUXk2Ko01HAB+wEde3Hiu2rTro/S53kn991czB2oM5lIy
         g0oa0BcXjzE47OltYUnNXmZZgDrhJipKsTpVc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763122745; x=1763727545;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+V+ZvIG5EFfPVUmOq4TzkXuM/WpB4BMHn3sJtW2UJNE=;
        b=GJLvNj6XxNUhArotEq/O6pZv7Ian1UrgIxQQkPV6K6Y+u/5h6JbfSkdrzaRQQuHybl
         zwsNgtJUzF5ozxNElox2at+edYdEA6wXaYsi9FN46gy/CDpcWYHUMUV0R9HK28G2vul5
         mMuK5bam8LgeSzeCr0d1M7zvp5+1ocQSN8rnsTuj0JwFaukJ4VZg43OvBpqHYTsMihQP
         UOa0flsniMBQQlufZ9v7L5qwolk+y/J7iIqJLloPkFS+WiObEe33mNbacPk89c2YBT4L
         /HGhVABaVxzhq4N2D0S3j5hTKS6D9MoNf+OyV/IVsY+idFV2/YMulgr/4KoJsXXENHPv
         O7VA==
X-Forwarded-Encrypted: i=1; AJvYcCUFosgJpCKKxCY5eV/tcq8VvChvG6Kx0DqFsKORzIIAQTsIT+PrMFJNGY5A66MrzfFbLV6HbEcKrzT+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0Gs8y3JvfheEu1dEzqM3Uczh7jjktpwV7hqrp2HCSBIGqjot2
	wAylveqxyB7RI7LSorjgrWEW7DqoQbfueOxWURZl/8zUAeJEwYKfCVfjaJp1h0+0Fyo=
X-Gm-Gg: ASbGncs8b+77JsebRENUXekWmrGbqbi8FpMz6LBYJhZ9KhULBXHojB+63Sm+goBPzrl
	OrmDF9B+lngA0xI7jKUMyW+CUFBV3HWl6itfYdo3n9ZOHbMFSbuAtDzzRLlvTVBbzOWOz6qFIjJ
	g5ONn8uJzwTs6b+YZAAHQe1U21DJOCsx8shJ0+Y8pvKAKfNSCa9FtwC/pDQRF8EfzLbLhBAM9S0
	eIYqoFdtmiMhtpAWlEPNLqJx7J79gothkFPa/3oCA+zPB3ncNN+v5MwyMn4c6+61TrksutwsJ1m
	lYye+vtJsJDi/FUduST3DO+z4Tq9NKrT9Ob5WrJfRnsvxChdN4DZm2XRBcbb+e5Dq2ZpOOo+SM3
	+ee/O1aztGU37lfWWyypOpSt362grCPk8VMJEwoOacjezr5MHR6/zbJVCzSTjUUzatm6OX1Y+qc
	d9SMBiG5egZ8F9x6f4B/xi+wuNWoDTy0zw9iOXd5Cp1rCA19E9ize4WdOlHdg=
X-Google-Smtp-Source: AGHT+IGp6/yIo5H99FIs0TSP0/qTcse3avxJmiIaDDcLjedaK2Z/WFNPRyyMTJ5VxQzJ1aHlVnlu8A==
X-Received: by 2002:a17:906:4885:b0:b73:6e0d:4f6b with SMTP id a640c23a62f3a-b736e0d5e13mr114394966b.36.1763122744938;
        Fri, 14 Nov 2025 04:19:04 -0800 (PST)
Received: from riccardo-work.fritz.box (host-82-52-164-74.retail.telecomitalia.it. [82.52.164.74])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fed6315sm375295666b.64.2025.11.14.04.19.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 04:19:04 -0800 (PST)
From: Riccardo Mereu <r.mereu.kernel@arduino.cc>
X-Google-Original-From: Riccardo Mereu <r.mereu@arduino.cc>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	broonie@kernel.org
Cc: linux@roeck-us.net,
	Jonathan.Cameron@huawei.com,
	wenswang@yeah.net,
	naresh.solanki@9elements.com,
	michal.simek@amd.com,
	nuno.sa@analog.com,
	chou.cosmo@gmail.com,
	grantpeltier93@gmail.com,
	eajames@linux.ibm.com,
	farouk.bouabid@cherry.de,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-spi@vger.kernel.org,
	m.facchin@arduino.cc,
	Riccardo Mereu <r.mereu@arduino.cc>
Subject: [PATCH v2 1/6] dt-bindings: vendor-prefixes: Add Arduino name
Date: Fri, 14 Nov 2025 13:18:48 +0100
Message-ID: <20251114121853.16472-2-r.mereu@arduino.cc>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251114121853.16472-1-r.mereu@arduino.cc>
References: <20251114121853.16472-1-r.mereu@arduino.cc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add entry for Arduino Srl (https://arduino.cc)

Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 42d2bc0ce027..07a285c9387e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -158,6 +158,8 @@ patternProperties:
     description: Arctic Sand
   "^arcx,.*":
     description: arcx Inc. / Archronix Inc.
+  "^arduino,.*":
+    description: Arduino SRL
   "^argon40,.*":
     description: Argon 40 Technologies Limited
   "^ariaboard,.*":
-- 
2.51.2


