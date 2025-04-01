Return-Path: <devicetree+bounces-162419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F89A784EA
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 00:51:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5798B16C048
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 22:51:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7319021E0AD;
	Tue,  1 Apr 2025 22:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Ftxaf8Fu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C1D21D581
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 22:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743547845; cv=none; b=hxTDCZQUGbOj7hfY3D1U36WuwprVrcBDgxxg8yTv+QVIXkr2wJB1EAGFuDmA3WNd4VoAh0rE1enWOYoAqN4T+0A2fjKupIvrnJbWARkQAj6Sc7+lsYySLWLpwV+39g2ot9qFOyE+DTouksySzN7tc2GBYgcxikNnnFTQcIckzic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743547845; c=relaxed/simple;
	bh=l4ovhFo/GzqCAr/tJep6ZW+QzYV4DEuHtmNsouGPBYY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Z4dyV+swf5F8a7IYboHGlZbzJSH1/6HfsjAqUMFcFiIAEHQMQoXyBbRxq/BRWJs5SVj6wo+D/oZ39s+LfnfJko/JOlZr/f+kA0wLYY52k8VG3FjgQWu4ZZ1fZ/2AKoqw6tUaPD5778CXGCNDlzq0yj33lq4+9Ro6bSAAsXDpvCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Ftxaf8Fu; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-2c72cb91e9cso175483fac.1
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 15:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1743547842; x=1744152642; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nBCDwaIxUQd/u+f/hpgM4pDWmpkYUglr1PKpMsLAoic=;
        b=Ftxaf8FuQ49cmFyUjyzNc5t9IR71aC6bJ+k/VcsagAtpUWDOLkx22ArEGiEug6CHAP
         dEywpVTsvC5ElTsFqHrlGwbTOYM5OKi8Et+1hgqwqrtg09NKWF5Ei+cAXNoLYCFMkeS8
         sV7YPT/qCWpf5gZU8PyuzoKE5/na7+ZEcIoTtatTfF3rBGXENK/VeBk5RPkxdkzooRFZ
         EcoM/H52az8JHBUVaaEdNWSvXLjmdgszFonU3Xp2lAuk2kY82VmdFX1HbejBHZuiMSaV
         DKukjbYUT0ImLHhQSumUQJ0qn/2DbNrI674DG29Tnv/ZpVKDTz+lZpTouvsqxdKhNQV1
         a8BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743547842; x=1744152642;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nBCDwaIxUQd/u+f/hpgM4pDWmpkYUglr1PKpMsLAoic=;
        b=T5HRFnXowpXz+OJSSz9UhByoS3nBQp/mgPilIxkpxJmgmQ/QW5VvGxos3BAZevQBic
         mWlEdrWO/S/C8K/4DcGaeApJWkSHP3CgNrcdqwfB0IL4VYGI/cZDpUIVGpDLvC4q1mxl
         pnfJnH5vzL6laNnxec9kGhq8yJv5/VVHVI96vyJX9WuqJ7AflmF8cIYeSAIT8cMdbQnE
         8amepyBvyIWjWZQZFe7n5k1a9iVAwIFIiUbkhOIXljKq14iCXzBtCbwGlHplvmTkDKZ6
         DU4gxYVoKlwCedqe2aRDZDn6w6cU5EA1oZRjq0aLqavOh2HfPhG8zJbtRuEvhuqa4v+D
         DiNw==
X-Forwarded-Encrypted: i=1; AJvYcCWtDUWu1QGnVKRYD1XNgZwvlaON2eq6CgQ5qeU1PhIA9tOGSMcPg7EbrHAwQvjLtS49vInssPvqmQXJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzPx/AqIiGwc69aFnUElLL62KbYI+tpAMPKs5eoyId23xrsWEFE
	VkCBPprB8Yygswx4cyekx+Jo37eq+M2z+U81zJozSTRn+29B19siku4jBmiuL4qopIRTo+WPg+l
	8owA=
X-Gm-Gg: ASbGncsDIHIf4Q9CbK2LkL7AzE7U+iaq20NzYClKM+0g232FTVnDIkMiIMmVENjyQBM
	tofpvLG75fmCuTiWb/V3PHaxGyikbIgdquRQrHyryk9H1swacTltrhV/mdclUQ94M7RYBEEScdh
	TAR+IHHhArAYUILpSWuv45xLN9VFYDlGGk6gnaZEKq3t7i/o9ltzsEitJudFxGHdQudq8/cDuua
	NSQrb2VDfj84T42cUO3ldngYXjA3W5vxfNKjh9P/is2TxGECkw0s4MCVtQ8GlAHV7FKHjURxlX7
	4ULbuFt7gF4GLFKsjFmWTmiM16JU9Y2Fdf0Pu9e+nU+QHaJUmwG1jRn/NJFSpTds9UjxIjXvvZm
	K
X-Google-Smtp-Source: AGHT+IG0RQHyDvXPFu8JV/9+WZdcEeqrgyW20fSgLeCJLHlRPKjnuoZzwGLndZZ6UfK8jDOTJsiFtA==
X-Received: by 2002:a05:6871:aa0f:b0:2bd:607c:c804 with SMTP id 586e51a60fabf-2cc54fd24femr1065837fac.6.1743547842472;
        Tue, 01 Apr 2025 15:50:42 -0700 (PDT)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2c86a860267sm2541894fac.36.2025.04.01.15.50.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 15:50:42 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Tue, 01 Apr 2025 17:50:12 -0500
Subject: [PATCH 5/5] Documentation: iio: ad7380: add AD7389-4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250401-iio-ad7380-add-ad7389-4-v1-5-23d2568aa24f@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1360; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=l4ovhFo/GzqCAr/tJep6ZW+QzYV4DEuHtmNsouGPBYY=;
 b=owEBgwJ8/ZANAwAKAR+K+IyC93wDAcsmYgBn7G23WMhCW7TbNSZvazzPiomXbl09MZazclNtB
 fCYnNnM1zSJAkkEAAEKADMWIQSKc9gqah9QmQfzc4gfiviMgvd8AwUCZ+xttxUcZGF2aWRAbGVj
 aG5vbG9neS5jb20ACgkQH4r4jIL3fAOq2g/+OjQ17WKD87fY99tB+cemDltxMECfTBSuDgl8osf
 /FWPmdyiaR/AWO5B9bC1JRXevV31aslR861AdpEmjzcUEEYwJaUfce7VnRFrTDB7wfz6/4m+oFA
 RojezRzqmUPMZjtSUhRELY6O9N9NHA3c0Im8959uL1N3RlCV4eFX6Rxv3U0I21OYTN7kutRcyqM
 DH7j1P6wFnBD86mVNukSIAPgy9l4iIOpfzg9Kr8B2I5GBUItHXh9YrCcKaQah3usts0UDSGNtz2
 CJPOsdBJa3ccu2dlzBp81K5sL8EoavDVJYHgen3fowvsw6ypXqFw4C6N6KDmEdAXRYlnnEeQo1c
 zxz1lbFaoE7Cfnm9gZ/x8Sktwliobva92+S/ZEzUJhLMVXCo43STxd0n0iEP5mdsZZQVpIeeI3W
 JPYj4VNKj5yZILUTA+Rf3Bq1/YfKgG1E9E+OeFUCB2Qy+3HnRGmMed2lj8HJ5fqpg9ytDGjvgMl
 j4AOGGmmTZZ50cJxSqBji2uq3rRqetlqzAV3tmHQl/CjyfIfr8CgLhjCLdKGWaUSnptxazRP+Hu
 oywwWA2266i+1QH3rf+nOpP6vMGZhg1dbvPemWc7vVsEwX2y/+oSZDF8ZAKipXsluVNwrzUoJnr
 qGzVhyUpoFvcU0b9VcXDGokYp7hDHe1loXC+alFkhkz8=
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Document support for AD7389-4 and it's quirks.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 Documentation/iio/ad7380.rst | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/iio/ad7380.rst b/Documentation/iio/ad7380.rst
index 24a92a1c4371db6b59ef47edf06cee860641ebbf..d51f9ee3e939c9d33515ce79701fc7c89f5094f2 100644
--- a/Documentation/iio/ad7380.rst
+++ b/Documentation/iio/ad7380.rst
@@ -27,6 +27,7 @@ The following chips are supported by this driver:
 * `AD7386-4 <https://www.analog.com/en/products/ad7386-4.html>`_
 * `AD7387-4 <https://www.analog.com/en/products/ad7387-4.html>`_
 * `AD7388-4 <https://www.analog.com/en/products/ad7388-4.html>`_
+* `AD7389-4 <https://www.analog.com/en/products/ad7389-4.html>`_
 * `ADAQ4370-4 <https://www.analog.com/en/products/adaq4370-4.html>`_
 * `ADAQ4380-4 <https://www.analog.com/en/products/adaq4380-4.html>`_
 * `ADAQ4381-4 <https://www.analog.com/en/products/adaq4381-4.html>`_
@@ -50,6 +51,12 @@ ad7380-4
 ad7380-4 supports only an external reference voltage (2.5V to 3.3V). It must be
 declared in the device tree as ``refin-supply``.
 
+ad7389-4
+~~~~~~~~
+
+ad7389-4 supports only an internal reference voltage. ``refin-supply`` and
+``refio-supply`` properties are both omitted in this case.
+
 ADAQ devices
 ~~~~~~~~~~~~
 

-- 
2.43.0


