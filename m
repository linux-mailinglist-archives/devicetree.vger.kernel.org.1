Return-Path: <devicetree+bounces-91231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C16479488F7
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 07:30:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E5F9284839
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 05:30:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39C2A1BC9E6;
	Tue,  6 Aug 2024 05:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ArZifdn9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7331F1BBBFD
	for <devicetree@vger.kernel.org>; Tue,  6 Aug 2024 05:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722922226; cv=none; b=TOJzuStjDjhRST52BfzYGx95+RzVB89B0b5Tbu8lgnubJFftkYRxCYwd6wY1gyY7nruCJ5vaETH2k50Vh4BkgAMxc2y7Q2qLwDrvqU/TY384q1rXH0Qbmw5hs4m+4js52y4oJjiZUD/qvs4k/eRaYDNLqd1hD4VFfnZWI21IcJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722922226; c=relaxed/simple;
	bh=lsb6kbh6k72R3qIL5aRMx1yf9phwSqZ6jTpVRAmf60g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oLOeYKYLXtfeXk8VRARVe0g1SjjAkgtd9lK8fAcD+A6JB26U/RHZcQPyUS79kW5/06umWOiV0bdbwzDbw9xTfU0x+Cf266oulTms+PmED4Giw4X7AF1JqZyppkTmSEUB3RW9a+BMGMl9H3Vhul2Y9N4ianqmHyYkeL7did5y4QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ArZifdn9; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3687fb526b9so90641f8f.0
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 22:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722922223; x=1723527023; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EPCVAIHeH9S7ZymysDPzhcgJG8KdopCxzMAed2EX/U4=;
        b=ArZifdn9b22o3OuuW/z63a43f82CmpfDcN0NOHoR5LF6NKDUy5kcIuDR1TPJoVeQsr
         42lHAvBByRhNoqKgjvgKewNR2n8gMdFVUsnbJT11n+m9uc6V63EtSCn3rAkQDdlteUVl
         n02zl3SuBypN+QS8LMTZoOjDFW9Rk7FPLFxZqiEMkbchki7d9Id/BUjFDJ1rcZ/LzQsu
         7W3E4ymSZCDuP9bQdZN0Z46HotQPHfPAQBke1mVudSsoKNshAEGrSZmFkWdA0L7OZ5UT
         Z0GsQDdTe34N+3qpytcXp3KPuUKlc7+0CqC9thXdfwoD4nLz6DLIZ/bM6SQWlxdiq/j5
         SdbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722922223; x=1723527023;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EPCVAIHeH9S7ZymysDPzhcgJG8KdopCxzMAed2EX/U4=;
        b=uLMk9CxTspYPSW5xMzZrl/Oo/6Nw3fTk7CebkY8EFlgLLJaY4DwlZwvVO1d3g0a2qI
         1sz8S2ibT4DqQhfk0KlkY5fj9EfbamhoT25JiDCGzNyKrEPWnBsVNbGcGgcpDdEgfQXo
         KRGDsCaodnRAQqcHWdblv11sQSxWWBuXxkknlOp+Vpm18bmyNYX9ndNSPiVVXCXFngv4
         OMKJykBNhUbctbuRx/AaUTJuiOwnH3MkeJQaYyLwpbURJ6lAKH6YGIhkqDYO4t/TE/5n
         CjzXqwFO47+T7FNmjgrSSh3EE4IcxjMC6IYHqXHsumgu6R+uk455e2ZA4NoL4H1O7ebh
         ky1g==
X-Forwarded-Encrypted: i=1; AJvYcCXRoUKWJxBbOhen23jkiD2LjjQSiMCW6I/a5n2s+LMe8MLDKtQ/HNFWkDZWTm2a9wnAbY8g/29EE2KWcwyPq7jrWAamV3lIaAUzgQ==
X-Gm-Message-State: AOJu0YxbaIexKAdn9I4ZMcq0Tau5wp5p5pkfOkLBvfB3fqaSiPUmz+YJ
	vc4ifRSSb8Ae24izr1ylIMqzfgPluXUHeer5Tqa3A2nIPWsVu0dYf6e9Q1lH2f0=
X-Google-Smtp-Source: AGHT+IFlbaZQ/fAx/6gzC6eXx57K1nLvOSyzyU5cUkM/2Lv1iisv8vdtktS+T7sHVnjYtvhEvfewFQ==
X-Received: by 2002:a5d:47a4:0:b0:368:35db:273c with SMTP id ffacd0b85a97d-36bbc0e435amr11296225f8f.18.1722922222155;
        Mon, 05 Aug 2024 22:30:22 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36bbcf0cc8esm11685000f8f.19.2024.08.05.22.30.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 22:30:21 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Albrieux <jonathan.albrieux@gmail.com>,
	Matt Ranostay <matt@ranostay.sg>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] dt-bindings: iio: asahi-kasei,ak8975: drop incorrect AK09116 compatible
Date: Tue,  6 Aug 2024 07:30:16 +0200
Message-ID: <20240806053016.6401-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240806053016.6401-1-krzysztof.kozlowski@linaro.org>
References: <20240806053016.6401-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All compatibles in this binding without prefixes were deprecated, so
adding a new deprecated one after some time is not allowed, because it
defies the core logic of deprecating things.

Drop the AK09916 vendorless compatible.

Fixes: 76e28aa97fa0 ("iio: magnetometer: ak8975: add AK09116 support")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Offending commit did not even bother to Cc devicetree mailing list and
DT maintainers... Lovely. Let's ignore submitting patches and
maintainers just to sneak my important patch into the kernel.
---
 .../devicetree/bindings/iio/magnetometer/asahi-kasei,ak8975.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/magnetometer/asahi-kasei,ak8975.yaml b/Documentation/devicetree/bindings/iio/magnetometer/asahi-kasei,ak8975.yaml
index 9790f75fc669..fe5145d3b73c 100644
--- a/Documentation/devicetree/bindings/iio/magnetometer/asahi-kasei,ak8975.yaml
+++ b/Documentation/devicetree/bindings/iio/magnetometer/asahi-kasei,ak8975.yaml
@@ -23,7 +23,6 @@ properties:
           - ak8963
           - ak09911
           - ak09912
-          - ak09916
         deprecated: true
 
   reg:
-- 
2.43.0


