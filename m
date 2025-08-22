Return-Path: <devicetree+bounces-208114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C8126B31972
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:27:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 20C82A21660
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:24:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60C832FFDE0;
	Fri, 22 Aug 2025 13:24:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-188.mta1.migadu.com (out-188.mta1.migadu.com [95.215.58.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9453B2FB607
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755869053; cv=none; b=H0kb0DCk2aEXmInWqmEYzn0agc4B5Su07sSVkLqpIsT4qK3IrX7i8PEtyUQCI+eYrCINPjS2SRWj2QIZEpDvJqvUw8yon3GP3yywoO1SxGGxmgO14wC7Ji1Ax0iAEfnwSTx/JBW+CluivVH5qpcd5HczslKRKyRRqf9dL1q7HMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755869053; c=relaxed/simple;
	bh=fEvV/+Ani8LY6L3ztHsoTyS0k/1ewvS/N96D8j5c0k0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=De8MMp2nK6lf7wavxYET+vGlWSR0ZJV/4hXU+y6KYJy1Smz55AOzy6GpcxWhLN8r/S9Hvc4T/xzE0gkhRNG9u/FlHllJTK5N2bM0EhdO4Di61egbCOlHGvMzmSbmbN8Hbsv59TGFt3VWoE78cLI6EVQtfA5ZgHu8xFr7mnY8oWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=watter.com; spf=pass smtp.mailfrom=linux.dev; arc=none smtp.client-ip=95.215.58.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=watter.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Ben Collins <bcollins@watter.com>
Date: Fri, 22 Aug 2025 09:23:50 -0400
Subject: [PATCH v8 1/5] dt-bindings: iio: mcp9600: Set default 3 for
 thermocouple-type
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-upstream-changes-v8-1-40bb1739e3e2@watter.com>
References: <20250822-upstream-changes-v8-0-40bb1739e3e2@watter.com>
In-Reply-To: <20250822-upstream-changes-v8-0-40bb1739e3e2@watter.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andrew Hepp <andrew.hepp@ahepp.dev>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Ben Collins <bcollins@watter.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Migadu-Flow: FLOW_OUT

As is already documented in this file, Type-K is the default, so make
that explicit in the dt-bindings.

Signed-off-by: Ben Collins <bcollins@watter.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml b/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml
index d2cafa38a5442e229be8befb26ae3f34bae44cdb..57b387a1accc776683500949a22ef0290fc876e8 100644
--- a/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml
+++ b/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml
@@ -37,6 +37,7 @@ properties:
 
   thermocouple-type:
     $ref: /schemas/types.yaml#/definitions/uint32
+    default: 3
     description:
       Type of thermocouple (THERMOCOUPLE_TYPE_K if omitted).
       Use defines in dt-bindings/iio/temperature/thermocouple.h.

-- 
2.39.5


