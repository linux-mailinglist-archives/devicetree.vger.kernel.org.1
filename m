Return-Path: <devicetree+bounces-113560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6446A9A60F8
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 12:02:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24BFC282F07
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 10:01:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1C7D1E6DFC;
	Mon, 21 Oct 2024 10:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="eYp4iOoV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6861E5708
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 10:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729504822; cv=none; b=p9UUMA5NHSPC5D4r8lP/ZS0/eLHN6YpWji/NoFJF//uRjOT7LAOxPrwFxLhXKl8Gs2hjiig7eSMsEUcZq2Ihw4ycfBvfZN9Pa8R97dlA9aXtCArDh/1bD1qtzv3ljbnD/XcOqCu2SA7VIv61Y3W+bp5aPLtbDgwdY7UlPxyjpXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729504822; c=relaxed/simple;
	bh=JVqTtX2R5tgI5AgbA4RUFWdiRHGbpSlYbypt0KFdYVI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hojnaoW4gS9T+6zLysuOohDewH8oXffeGaYMbXNVbaAp73nSvyhsmWuiwXZ/1HXEcTWddsG5prCTCh3kA/8CiEtyFA/kZBjPFSZvO/IG57m2FJhniQlEmzd4P7hCBmRqr2oTXM5rvsYAHlfL7pOpUvP8sbzN54Y+sCUKyW5XhOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=eYp4iOoV; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-37d4b0943c7so3146645f8f.1
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 03:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729504818; x=1730109618; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y2t5+GdX8LkCEmUcnfMgk3trAyT7R5nzR/wNUS1TNBk=;
        b=eYp4iOoVIUlQdZubB9EHihRjM89bOqrYWf3HP2erVXi02iFeDUFkiF7NWHGXXkB7mk
         gRi94g0Y1ZKHUL62if5mkalzcZ8UpTc9qeKXhOiLcpZVEEFArV3FZN/Q6LJLAQNHB6mp
         eGub/aYantxYDSxn1ou9RrP42nVFSDd50EwzYGzWhdGWQl4af1O9pIBJESLAQbrxmew4
         GjjJARhJDrCMe5N3s7M2NJ7t+BNatG2eBT4ZnHKyxsUK5ukV4HKUXQ6gRkn1M/9J8tl9
         P6kVVixjP4RvYv0RX5/OIDSeya+Ch/NE4rEUzIpZnF6mY/123u1oNzSX+aFhirLA6PTD
         Z3rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729504818; x=1730109618;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y2t5+GdX8LkCEmUcnfMgk3trAyT7R5nzR/wNUS1TNBk=;
        b=t4N64cv0ZJ/4yhkuHTf8+2JHAL5uk5VeyrskLmhasmB7kQSWml7P5mKk0/zIUUe35S
         xfuGcyJnvkUm3vAR2h6EnWYikHoTgRBHEw6GEt2UmQDY9+29tvaBgx+IMH9rsrpK+jwM
         PA0wEvKdFVO69BYssfIG456pzv+fRUpqgsc4NbLeRCjtIHEc+9+ZFV528nTcqfjIHV1q
         8DTEummlEkPNaBkiCabVUFO/ABoVu2as/5dXdRwgx8OtztqVUDaZfXOT8h84VTYbyA/t
         PTBT87hqUqrHca7G3f5fPVRWtLYxvKm68FnHfrhyQq0eKJGjD5letHd1FHN6ShSGYZuo
         soJg==
X-Forwarded-Encrypted: i=1; AJvYcCX/bA7W1dd8EAdS6YtBqLGoQ0Bp8k8V2SzJb/3FHtELgGxi0yBhUfRmyE2IlKixkFDzA6eg//6OCH0g@vger.kernel.org
X-Gm-Message-State: AOJu0YwtvsRqrYWcSgqpglVgb0hsmzDofXBDvzm02/RXwjdkHD8MeMxV
	ovKkxtMTM4rLJhvu0iyiem75SCjjLm1LziaWJrgGZZtGHZV5WEVRFXvYaArU/Ho=
X-Google-Smtp-Source: AGHT+IHvplc2wMXT1OorBIg0HcGCuXTDErHL+CnzciKozIpFOxqNccmTzrhFCLXXNzwzzh3RuSgWHA==
X-Received: by 2002:adf:ed11:0:b0:37d:45c3:3459 with SMTP id ffacd0b85a97d-37eab75b5cbmr7425151f8f.21.1729504817015;
        Mon, 21 Oct 2024 03:00:17 -0700 (PDT)
Received: from [192.168.1.64] (2a02-842a-d52e-6101-6fd0-06c4-5d68-f0a5.rev.sfr.net. [2a02:842a:d52e:6101:6fd0:6c4:5d68:f0a5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316f58bbaasm52375995e9.23.2024.10.21.03.00.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 03:00:16 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
Date: Mon, 21 Oct 2024 12:00:13 +0200
Subject: [PATCH v2 5/5] docs: iio: ad7380: fix supply for ad7380-4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241021-ad7380-fix-supplies-v2-5-2ca551b3352a@baylibre.com>
References: <20241021-ad7380-fix-supplies-v2-0-2ca551b3352a@baylibre.com>
In-Reply-To: <20241021-ad7380-fix-supplies-v2-0-2ca551b3352a@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 David Lechner <dlechner@baylibre.com>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-doc@vger.kernel.org, 
 Julien Stephan <jstephan@baylibre.com>
X-Mailer: b4 0.14.2

ad7380-4 is the only device from ad738x family that doesn't have an
internal reference. Moreover it's external reference is called REFIN in
the datasheet while all other use REFIO as an optional external
reference. Update documentation to highlight this.

Fixes: 3e82dfc82f38 ("docs: iio: new docs for ad7380 driver")
Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
 Documentation/iio/ad7380.rst | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/Documentation/iio/ad7380.rst b/Documentation/iio/ad7380.rst
index 9c784c1e652e9afc116fd206a6cdb70fa6e2adf0..6f70b49b9ef27c1ac32acaefecd1146e5c8bd6cc 100644
--- a/Documentation/iio/ad7380.rst
+++ b/Documentation/iio/ad7380.rst
@@ -41,13 +41,22 @@ supports only 1 SDO line.
 Reference voltage
 -----------------
 
-2 possible reference voltage sources are supported:
+ad7380-4
+~~~~~~~~
+
+ad7380-4 supports only an external reference voltage (2.5V to 3.3V). It must be
+declared in the device tree as ``refin-supply``.
+
+All other devices from ad738x family
+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+
+All other devices from ad738x support 2 possible reference voltage sources:
 
 - Internal reference (2.5V)
 - External reference (2.5V to 3.3V)
 
 The source is determined by the device tree. If ``refio-supply`` is present,
-then the external reference is used, else the internal reference is used.
+then it is used as external reference, else the internal reference is used.
 
 Oversampling and resolution boost
 ---------------------------------

-- 
2.47.0


