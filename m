Return-Path: <devicetree+bounces-210729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE65CB3CA57
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 13:09:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93D5F3AFA72
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 11:09:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A66B8279792;
	Sat, 30 Aug 2025 11:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R+6edmvS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19E227816E
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 11:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756552190; cv=none; b=lUfgR15UNnETk2J/EnIvJA/MDKvCgeQAnDN+hn7BguWBWEUGvqLqvoABbiJmLBFTvnjDYzhioDVHP9x3iw1dh9lMJvdHjhkXtLtSaAYFPcOvjd08mu9ZJYHSfrTZxAQYVDGPTWCa7rO6TpZT5bm5h6mbzNJWDeWHJdGRZ1+/TsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756552190; c=relaxed/simple;
	bh=MPAHQXQUpXiLCTcNCqhvtB/HRnhI8NNTl4O+MlOI1ks=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Jl7k2Tl1Vv4nX7FhvST6TUMDr50dl0/MgQA+oEf+LZ415xiB46+0VkkN+gHrZRUz6b3ScexKlsfF0BJ5m5n4s0tq1igp6w3ESHBI+jUYGU5ow4U5teabH3jTPPyPuQamqY3HAmN4Bp+4lPH87iMGdcw6kR8qmHaG5WWnaT9NDM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R+6edmvS; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-61cbf01e472so507682a12.2
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 04:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756552187; x=1757156987; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=q1bivzFpeOn6zdj28AqutzvHysf6y4+jJdipsjR0D+8=;
        b=R+6edmvSTgpZasaFzAsQ+lD6ZV873Pt854QEgZ40y/MFYMC7Xwbco+yPP7kyWy6oSE
         5O7Bp2enDhmqbAeKjqlm2hFrPiRSwZm1MVzYs4tm48ziY9op8WLxxlpX0CCU6zT9kg3J
         3MmK5PsmYUatKBpDez5MXwjqOHGmqxsjNw/xtBsCYatZUXZ2RESef2Ef3xEp+/qdRsQ+
         KdOhW8ph4HoL9NBkVa5Vo2tK9AAcxeg6IZN6d3ZApGN1DxrQGMF+/Bo9GEX8caAQBg6P
         PEOq52fcO7QI3vnDTN/ODaF7YNp0pBrSG9Kfqzi75g/U218x+pA7cXcHuJmc5RqQetqZ
         CDHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756552187; x=1757156987;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q1bivzFpeOn6zdj28AqutzvHysf6y4+jJdipsjR0D+8=;
        b=vXHj6O6qZM4hjz8C7awmPKpayZ/2Utc/+8C+724t5ZzX3FS9ip/Pjac0Ta7oRVwVKC
         CXem/t6chkfwYzMWbWCBgZzP61BSf7EO5FLva5cIyqd3Be5ASNtVQ3UCabnDA+YlmEYw
         bSDXCWIb+jQtOx+RpD/GmKezABf1RNl2nBnIUK+HnNI1ILgRyqGfQilhy03fQ/Y+jX5m
         plqhs9NUwifY+vHlDchRTRNOypCzVl/CvGttFC9pnR+K1VkcxiqZYpn2vYHauKOtMgX4
         8M2f9IBMnBsEtlkPCEkDP7zHOqid+jLTonKRw3UZn9XuQzuaj0hMvsNViI7UGS3Aq+3Q
         s4QA==
X-Forwarded-Encrypted: i=1; AJvYcCX/AinFWi/rJ8MTjUE0Sl6XfrFx6ss0KwsHGvdaHX//FZV8K7Dahpxzd1mXZAXnufMvNCLGrmHldxNT@vger.kernel.org
X-Gm-Message-State: AOJu0YzgcUZEr9y4zLMIt04qoUdDNpU4Ub3KYmBCVWzZjPzUBpCXQga/
	A6dM4S0nxy630oWrZiSLoab6+o6LkGchlFwk6I0IC0ZVq5kpsozGgaFyzY7wPrhOv+8=
X-Gm-Gg: ASbGncspnlUhE0ZRu1m57/8iEwCYRdrrGgJm+l+PutSWeXFgzDTKeT9hvHnPuulVRPG
	4L+iKOmL0JrfSGuZAkccBe2b3obM8d1PaplbdtJR7amhIBZAUaur61DmbDRIJ2gi1S0Pp+ZUXJj
	2hCyen+j+3HWyebGgaoWTCWFlZLe6aSZraXl8dBhar4Cm98j4pKXEXcsg8xqFZWoU9uivxb4qfq
	GAoSJVjMTEFQX4l5GSbQrnG4KcBja2ClEYaO+egb7v212O8V8llg/1G9GUOuTnZh5j6wj2ZyiAE
	j+kufGeU1ybMucqMY4lSfMPuDGa4qiJdNS+GSYs2lpUX+2AzcwGoEcbaO7BBmOBJbbYY7xV/uKP
	SRVdnDb5GFjlosoRU0l5gcLu3TktsM03+KalBx00=
X-Google-Smtp-Source: AGHT+IGpcs58MTRBzy8QSSt3KOW9IS8qh2Op0/WrgMhV43qjpLPuJ3b/P2nf8GBfY6hwmjebLcg+qg==
X-Received: by 2002:a05:6402:13d0:b0:61b:6c51:4005 with SMTP id 4fb4d7f45d1cf-61d0d5f33e1mr2017383a12.6.1756552187107;
        Sat, 30 Aug 2025 04:09:47 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cfc21542asm3285666a12.18.2025.08.30.04.09.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 04:09:46 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/5] iio: adc: samsung: Simplify, cleanup and drop S3C2410
Date: Sat, 30 Aug 2025 13:09:37 +0200
Message-Id: <20250830-s3c-cleanup-adc-v1-0-de54dfb1d9ea@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPHbsmgC/x3MMQqAMAxA0atIZgOxUlq9ijiUGDUgVVoUQby7x
 fEN/z+QJalk6KsHklyadY8FTV0BryEugjoVgyFjybeEuWXkTUI8DwwTo2sCe+qct4agVEeSWe/
 /OIzv+wEe2WmDYQAAAA==
X-Change-ID: 20250830-s3c-cleanup-adc-71ac80978520
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=823;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=MPAHQXQUpXiLCTcNCqhvtB/HRnhI8NNTl4O+MlOI1ks=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBostvzlCuQP5FPquq2lhYn0JmEK8niYeKAbQ7wN
 pTrsnpP9/iJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLLb8wAKCRDBN2bmhouD
 12FBD/9nHRQw5vlITMhdnscAzkVchRhGAmmUR0TsJVYZWXUEaliQJvfLbtxlpMeVMjuKYp0I3pA
 bucWOuH6Ru1FmVobvchYI9wYkYN/bJbW/OrqEW0da4IFhoc257hS5IfAxMI8MPFiJ8FS72/Pnqq
 EFadIC0BdIb7wuTUBCsrjCwVK3qiCEl9x6hHgvr41iX2PXgh++T/iQ+g4ahIohcjpEKxqMEvZpN
 gPr54LMn0PJQfjpDQB7GleIm79NEzeWsE8Mr2dZ0J83ScSPtGfTkC7lM2iVexgp+rVvImGVnEwE
 lBPOiFT2/qDlh7Wo0ENT5OoUPG0ExHz8SKPOInwTgtKcQkv2/SwFc8ATWh+cDQApu5gUAp+wkMu
 ta/FWCmlApsWAqbrikqJ+1s94VlIUvF7YOE0Xhk2fIDSvGEYyVDWTZddzrR40IvAVRFTQAwJaHo
 uYuyL8iZWiFRE9lQkoeSBLVwHwIw/iWoEkTnxYdl17Q2tXXycUhEEk37c+tyOlySp+WVnvcjbkg
 6Y1zuMGNTygyiy+nbBP6cip/YYpNYxyHnsw7G11ysixC0kyoIQo/6Qfitz1RZTZjLE4m0qZ9bTp
 DiOYn1YxdktqnDSox2RwMIYtrNSpoPuoeBDLBCdEOJw70Mx28pgx92gz05qDEGKsTTBQXajEYx9
 5eOIUs/+TCK/y4g==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

S3C2410 is gone from kernel, so we can drop its support and remaining
related pieces.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (5):
      iio: adc: exynos_adc: Drop S3C2410 support
      iio: adc: exynos_adc: Drop touchscreen support
      iio: adc: exynos_adc: Drop platform data support
      dt-bindings: iio: adc: samsung,exynos: Drop S3C2410
      dt-bindings: iio: adc: samsung,exynos: Drop touchscreen support

 .../bindings/iio/adc/samsung,exynos-adc.yaml       |  23 +-
 drivers/iio/adc/exynos_adc.c                       | 280 +--------------------
 2 files changed, 4 insertions(+), 299 deletions(-)
---
base-commit: 3cace99d63192a7250461b058279a42d91075d0c
change-id: 20250830-s3c-cleanup-adc-71ac80978520

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


