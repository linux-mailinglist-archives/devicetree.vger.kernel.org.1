Return-Path: <devicetree+bounces-141636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A8858A21BAC
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 12:05:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0EFF0162DC2
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 11:05:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 544991BCA07;
	Wed, 29 Jan 2025 11:05:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="yq/gACss"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C7A1B415B
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 11:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738148702; cv=none; b=GzPiX+cxX7ZydtAcKHRa8wUBh1sZyWbwVrH5OuQwKdwMXs3doK2qzNMYGah5hhR5hsJDIFXRcA6ZZBkRmWQi5nj9HYkzhI9dRvwu4FK6kgV+dFjYwJp81ubXYoLVepbE8EvXy8xjMP2i6O/U1bd+9i0407WarOJt26gmB3UIRvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738148702; c=relaxed/simple;
	bh=qTP9VZUeKRuaZ9Hqi5LnAy3vZJvi795fRxc+xbuF8Io=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Z80w5f9rp+oS2b6DFHnwPU07W/a0n8E8CgHJgloC4caC5XT1NkXq5WhZJTb3uwjTsDDcth5OXa2WOFwXJuNFIU9L4Kbhq+Q+m29fXipBJ8jagHokYzQg+ilrv6+qTt1O0d+aDA0dZOm2Nkm6beWNUBctYQSkaqu6LDEGEe5LRo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=yq/gACss; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3862b40a6e0so4740730f8f.0
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 03:04:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738148697; x=1738753497; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vjQqajOlG7CxEKLfZvVkKt1P2pyBeTRvUu/sCOgs0mw=;
        b=yq/gACssKX8rQhDMds6SLHK7d7qPBSLXuWCSIA+BltrjAMGOjRDPkIwLX+nm4tK7dt
         nNifzCSqvgDSHrFzAP7WqsR8VN4j/2nwUvbMZW9+4IPEgHiTyzIJPyH9HBufzxxi7q+h
         te0tHiakS2DZ7nSmIq+RMpur8kqNIQWvSyDSct6L7TSC3qypEU1EVyqnqjRiRYcyCmTk
         EuC1yzHKY352syOFjAZDV8gqwSiB34gYZlj8b/TR6XHqO/cylVpUzWQnsStSDjvtIuvg
         pik3RlgR9FmPDxKNoRHWT4JeYwaSnX7mXQS877HhHMkR5Ows7j8yE/YrjCzCN5PWFDl8
         vrOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738148697; x=1738753497;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vjQqajOlG7CxEKLfZvVkKt1P2pyBeTRvUu/sCOgs0mw=;
        b=izpp9IER531dkxkgm+2tW2uv4ZzJ/DXLiZeq+sWRJK7p9NM6XVcHIuBstXsKwsN8Cf
         YWwDdGWXKHIP38S+NejOWiyJe47Y3k3p7/XKVzehWhdxutyVa1DcPoKDZjEXmmI7aIMk
         MImbzw01rJ2CgM5KB7eFKTPs6fFTZnslGdH6pQKeZUsK2q84Qrk/h14Sl/HRwTCrm394
         KgzTy5SIEwFVGcPKTz/anwas6oRVjeztF3RlfbETdaR3+mgZm8GZe6iFOijg26Eh5zWb
         RRARjjUF4rglmV/JK7dLLknLF8GMSHHhhZbNsDmVrPhoDzlDoIRNR7bX0Q1vUHiW1C6v
         GpBw==
X-Forwarded-Encrypted: i=1; AJvYcCVc9sDT1V2NGdYrlB7Evyw6MZQl6CL838ASKqG984y/LreF/vARBcWZvZRAKV21vWK+FTrsoXsH6N1j@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4mroU/nlnVCUwLs8BHCExBBhmSo7eqa98AUqp43NOfoOgi2Wx
	XV+Q4SESmDE+ZG3cV6zq/c+T0cruQIPU1Vu9NdTlfZDAZcqDFWUTZOBFEUUP/PA=
X-Gm-Gg: ASbGnctJKOW5zVW9avQxkTpYl9zGr+5iGaEhIJ+JyVqvXUVqDcmIeGMyFtWlfjfh+KQ
	UpZUdJJMRc2J8f/dSEawVJykLqjXPWEycVEPxXPVS6HBvyrCInCvBseBbnjqKCiUtUQQg3mJoah
	1lvLLtJstvN1ARFJ8hBHdE+4sctHIHZA3UNAVO+/stjfkLmV4BEvhS+t+6i7FOcDbxbVaxXTUIk
	RxYQrCMjqc8Hyz78NFbCJi5Guii3tWHgthjjSl5NzndHD/Ww9Dn127uYxFBcVs+ob/1rJlEDbuv
	oIkfvMmSEoPfkozhjYH0uwOjf/KMcbG2CMaKToUNEBlEvWrRiXO2MM3G0IfZd2Yn6zL1zm4=
X-Google-Smtp-Source: AGHT+IGuZV55gZIAdwXj62dAal2XvKkGucrO0OnzpAfK3Sa3kD6jA1qfS4afbucGb1xx4G4rVbpYwA==
X-Received: by 2002:a5d:6489:0:b0:38c:246f:b0b3 with SMTP id ffacd0b85a97d-38c52097871mr2095096f8f.51.1738148697140;
        Wed, 29 Jan 2025 03:04:57 -0800 (PST)
Received: from [127.0.1.1] (host-95-245-235-245.retail.telecomitalia.it. [95.245.235.245])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a17d7a7sm17107364f8f.32.2025.01.29.03.04.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 03:04:56 -0800 (PST)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Wed, 29 Jan 2025 12:03:02 +0100
Subject: [PATCH v3 01/10] dt-bindings: iio: dac: adi-axi-adc: fix ad7606
 pwm-names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-1-c3aec77c0ab7@baylibre.com>
References: <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-0-c3aec77c0ab7@baylibre.com>
In-Reply-To: <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-0-c3aec77c0ab7@baylibre.com>
To: Michael Hennerich <michael.hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandru Ardelean <aardelean@baylibre.com>, 
 David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 linux-fbdev@vger.kernel.org, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Guillaume Stols <gstols@baylibre.com>, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.1

From: Angelo Dureghello <adureghello@baylibre.com>

Fix make dt_binding_check warning:

DTC [C] Documentation/devicetree/bindings/iio/adc/adi,axi-adc.example.dtb
.../adc/adi,axi-adc.example.dtb: adc@0: pwm-names: ['convst1'] is too short
    from schema $id: http://devicetree.org/schemas/iio/adc/adi,ad7606.yaml#

Add "minItems" to pwm-names, it allows to use one single pwm when
connected to both adc conversion inputs.

Fixes: 7c2357b10490 ("dt-bindings: iio: adc: ad7606: Add iio backend bindings")
Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
index ab5881d0d017..52d3f1ce3367 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
@@ -146,6 +146,7 @@ properties:
     maxItems: 2
 
   pwm-names:
+    minItems: 1
     items:
       - const: convst1
       - const: convst2

-- 
2.47.0


