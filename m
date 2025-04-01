Return-Path: <devicetree+bounces-162415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6DBA784DC
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 00:51:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E9BBD188A692
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 22:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7B9421C167;
	Tue,  1 Apr 2025 22:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bCuzmVoc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D210821770C
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 22:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743547840; cv=none; b=LLIxzSaoMqClDSoZrQa9LVcE0QHedTDQJ1iuxsz7VAHwqvLUNqtzqTgKcTj1rd0fin22CZiAQ2mzqW15qF6t/5Pp3/sMXo70tExZBidf4zPMPMiwMAMObIs7meHBPgros0GdPbKIk+w3F+EVTBj0bgGM05WBIQEksXEI1zUElUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743547840; c=relaxed/simple;
	bh=wllrbZcObwGAw2NDOjEh96guXeIJUG4ySHs9Mzrn5qQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HB/9Lc5ZRjF2ICaUTqsh5ilZwl7cBtJ1qRIXEr2b75dKPuclmOSOZNBKkO+sgpUl7nAYIppsKpu8uUY6k5GvT/x4P/wn8iLsaEo6DS3C4ENCIUYMFDQdX/n7xKKmKpv/JLi6H2xaH/o2ZYikp59+ajP6KrjF4oZChMwkFlqUANs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bCuzmVoc; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-60288fd4169so1821557eaf.3
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 15:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1743547837; x=1744152637; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uY3LwKeQSjqjV8tkE42G4HURVFmjP7EU20VDalM/2sI=;
        b=bCuzmVocI9E3Eq/hhATmFlmERpucWHnxqY0UqiM/EG3dxoeB6UkKqDekxdcgg0ljDR
         3DikBxW7Ksh6ThBFM1OB16YeoR9E56SWFvOAHplXc13TmbswXBAK3Vld3yvJmvFzi44y
         EzPJf5QDBFxAL9aow0WhDODRlVWuPjo0hJYlESat9yIed6MOIP6lPOrx3Lv2wQAtBnKp
         2DGZ6cARoog9yxTOA+IcIdcf73p1UAbA6NDJSBiZZlDM88Pre64CRtqxvk5VZvb0NTtN
         GQbQcu+hUGJtM9TLZMKP4WxIWpIiK7bHV/Nzr/KO+8ekyYdNU3k3w33JUzlz33PPfGaU
         lnFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743547837; x=1744152637;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uY3LwKeQSjqjV8tkE42G4HURVFmjP7EU20VDalM/2sI=;
        b=v7VMYR+I7ydh0B0LWoyWsGNzWW02fLtGPKBZ865W/raU6VU/U/b2Eg0dWPxMD7CCsq
         o5rhNnn1kNA43UtRXDVAO6kLt0BMIhCEzkACAvZSBSff80m3d9QlT3NobOloarkcjeqy
         zUfmj86y0T7lZfnclfco1JscLPE3l/Pxu1miFZ4PJja9whXr2zBrpIVoZzdI/nmiZ3jl
         WN03dBfcUX21fE3Dzjoj26N4cppIvwGeq6BW+voAhXmpf5Lot6NXMVr5MLJWSz0ofxl0
         Isb/cgNf+3ivvx6R/OKfJJG89a6vI94hkyR7FnWO/qACou8s9cT/AN1w+7aNsrTbVOMq
         01oQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDV7v4D34Z82vYGSq77iowlLxSeYSC5A3MUNyKKesVjjLlKcgmurTpPT2gpbAiAVZeSmZzKO7Gnj2A@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2q//FRuN3saJgzAh4eqGgSJhnwrqxcn18o98tRBAcRHh1GGyL
	LplVuxN9Whua0tRjfsg9qrl3Ivuu3Y0HTzsAZQ/BBn47+hRptaYcPA1AvBkguyoqqaBMZAIFdCW
	i6E8=
X-Gm-Gg: ASbGncvnvNE2Oea3PoHjcucWyhAy+fJ4TQtsdYWJq06zbYQPGtMQt1lDgZX3QoY4qbg
	n72WVe3qHG1gPM8p4EnJn//mn37gXoK8PzJTpLIIK8FTMifI6OfbUOLpi18ub7IUSTf2puG3p+w
	SOu+xB1Ws5/hYI/vmAYtVy2l9z+3ZfLRw1hYWHKqbF0kM7wY2N5tw2I1wNqeiFnVMKf1RqbSNqB
	6ZA/bMQAuVjGoBvq3T8hwiaGkAKnxtvCM1QqDmYFxqSq9B35CkV62S1CN7uMRNC829ZsBqWz3gp
	/LAIvItDfs0QdObI4yex4Y0PlLUJm/iveOS42F1MrEHfzV+yTNS7BxPnhN8v5Hr1oxOe2Q86pG5
	g
X-Google-Smtp-Source: AGHT+IFDp0AhTF61Q48nqN3yJ3kD3UvIIm3ZCEgDN5dT9w+U8dAZ7ndt8F2LawR99JrCPDj14Qxqeg==
X-Received: by 2002:a05:6870:6110:b0:2c1:4e25:e67d with SMTP id 586e51a60fabf-2cc3822a497mr2416377fac.24.1743547836885;
        Tue, 01 Apr 2025 15:50:36 -0700 (PDT)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2c86a860267sm2541894fac.36.2025.04.01.15.50.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 15:50:35 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Tue, 01 Apr 2025 17:50:08 -0500
Subject: [PATCH 1/5] dt-bindings: iio: adc: ad7380: add AD7389-4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250401-iio-ad7380-add-ad7389-4-v1-1-23d2568aa24f@baylibre.com>
References: <20250401-iio-ad7380-add-ad7389-4-v1-0-23d2568aa24f@baylibre.com>
In-Reply-To: <20250401-iio-ad7380-add-ad7389-4-v1-0-23d2568aa24f@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org
Cc: Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Corbet <corbet@lwn.net>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1749; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=wllrbZcObwGAw2NDOjEh96guXeIJUG4ySHs9Mzrn5qQ=;
 b=owEBgwJ8/ZANAwAKAR+K+IyC93wDAcsmYgBn7G236w79skU8tariQuUPZDNW+cVxj4WjqBK51
 SAIlOIvdJuJAkkEAAEKADMWIQSKc9gqah9QmQfzc4gfiviMgvd8AwUCZ+xttxUcZGF2aWRAbGVj
 aG5vbG9neS5jb20ACgkQH4r4jIL3fAMwMg/9Edgch9EspXTEYY+1JOhAYpgOz7/utZQkuEugP1+
 WwGFOvvz3YncY1JSOHxF1TmFSzva8wuhTzJIBcQegux/n4r3/3sx89zqemdZXUhd/HGu8C9lxg8
 kUbW+hr48TcPubsoCH43NMmedD028osLHS8r9Dn70MpvCOT/rGmsCMHQjgXGKoPNeXVOmQFH2rq
 tOntr5Uy0Tq0QFnTUKh/WhqEiBcN8m0pp8QtHn5/b6sOkTI/2iPNFeK8TSDl2NpYZlmyqFVaHHI
 7I/FDCdm7li0ksgc80/NcF686dsh2fDXTjcKJMaB0kawSXWMl1K7GfSTQJQYOxHmEr8cI1ZEKNu
 s66jwGniuIFVo/+oBarBcXjMtCCB5ZNvuRTHWRn4D5Ivi37y2fYK8qgWAyT4SxFdobT4VYXRj2M
 KtMSMoJ+F3xE9zTBbwX0kYduwfQbwjFp+X82PdGbmYXXaSOnzx5glS94Z/eLVeYRPd1FOfbQoup
 v7319GkkzQm6ZTd9q8yVn56dIHnPdNIFxQr9HtuQRhibTIYIoprOtFokmkDy0rWIvzDAIqfrX7w
 4Dj3CNXlRjX1rG9wDsF1o+l3WZBeOH+ArChguo4PrOzybCsf0abvL5HIpNuQQ8QH8x6cWpKVUj1
 LL+QynRMc1Sm7ulcHfPuGhzaiN71DRyd5rt17XvlyhKw=
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Add compatible and quirks for AD7389-4. This is essentially the same as
AD7380-4 but instead of having no internal reference, it has no external
reference voltage supply.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
index ff4f5c21c5482b77ee2774b01ad6d426e68cf207..8dae89ecb64d723dcf2b4af1e0505fc5db49595b 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
@@ -25,6 +25,7 @@ description: |
   * https://www.analog.com/en/products/ad7386-4.html
   * https://www.analog.com/en/products/ad7387-4.html
   * https://www.analog.com/en/products/ad7388-4.html
+  * https://www.analog.com/en/products/ad7389-4.html
   * https://www.analog.com/en/products/adaq4370-4.html
   * https://www.analog.com/en/products/adaq4380-4.html
   * https://www.analog.com/en/products/adaq4381-4.html
@@ -49,6 +50,7 @@ properties:
       - adi,ad7386-4
       - adi,ad7387-4
       - adi,ad7388-4
+      - adi,ad7389-4
       - adi,adaq4370-4
       - adi,adaq4380-4
       - adi,adaq4381-4
@@ -213,6 +215,15 @@ allOf:
       properties:
         refin-supply: false
 
+  # adi,ad7389-4 is internal reference only
+  - if:
+      properties:
+        compatible:
+          const: adi,ad7389-4
+    then:
+      properties:
+        refio-supply: false
+
   # adaq devices need more supplies and using channel to declare gain property
   # only applies to adaq devices
   - if:

-- 
2.43.0


