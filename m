Return-Path: <devicetree+bounces-111332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 805DD99E252
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 11:09:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 373951F23D64
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 09:09:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C91BB1DF970;
	Tue, 15 Oct 2024 09:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="V54wJyEK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99581DC04C
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 09:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728983354; cv=none; b=n20hebExIv/Mk/HnyZhGO/PqG5q0lZCVcjFPdlxEuaEAYAql9CzSlT1D3vPErXxZ/tpPfgc2rc9wiHIKQEzj5irUXoPvEr6cW/ky9QdgFv7n4wF1MXGmX/vm86+S8m6y1wygpXuEZbmsaNlZnXHEcQqXU2QcrL9aRgmdS4bpgxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728983354; c=relaxed/simple;
	bh=Xf+1p1dhNaBSOlyYJsyHP6TW4PzwOUZ7+GLCro93QzI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FFtQy3S4PJWxIqTkpbAJFZ1V2j7WUmtk3H8PGfvdqyzRwpekbya86IlO9u/E8+NIkD61ip2EYqZ3st0QXvoA4lVh8W8qZpjBGPSHTnvN62YOXOMc62mOFRMKxFs8p43pGyAoW90dL9ohL/p5B7E7MRjlNwX/S4OtndKmigtjhfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=V54wJyEK; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-430ee5c9570so60280525e9.3
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 02:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728983351; x=1729588151; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0uiUgc2lMDswctm/8bBLpifbXnHpYVOogncCBqrFxao=;
        b=V54wJyEKeFL0R/9HTBYUmOXBHmTOTKarTmRjYb4lc6gEbq62XqT6O4Mt+iSl1g+WQY
         SraV8m3ZRWBPfYZkW8Vj6pxBAeki44iE0unoqLy9zhqRadZXahwzqgHfoRXHP1NmeRQV
         4QL/2jO8QOUV1yCQ1hchWCRgtUzU0oLdWoVzDvbiuP6SXrq3iLgjKqdFj5yQ4FI4jYLl
         78+QxmsdrlhVpjfPMZPMa8o/vTFDATicLjK9DuRM69r2YuGfMQtQl5jmRmnNlt/Ip7/K
         Femp1MYZ0WD9WgplK0LNNsPY9yGQp+cSEoxvWEfNs3NeVeJz24mCM/dI3p4qqNRBRjDD
         FoRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728983351; x=1729588151;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0uiUgc2lMDswctm/8bBLpifbXnHpYVOogncCBqrFxao=;
        b=OvhJrLBSXY1/U3Zg/dHbK52EgL+EZlRVTUAz/I773eZCneq1ne57YSzrACnBftzFdQ
         mbAueXcIYQTG1aUPqAzr91YXY8neZ2+VqVX3C2bEUhxWROFDpRZRsATdjvxP9t31xeHb
         E7fgwKfVBn+tHWUXoPA+SUNzvw7RTOpOBXW+HR7mvbVIipfFF+cnS4uzWp5eSVfFObKJ
         SdKTQv/FN9WfruFHj6IoVGrjSeAD5E7uaEanrDlbwwTAyeYU4F27r3mp4ytHRSVZ1NcD
         nS7qT8EGVwvpmV6WX9RnNeoYJYbH+QOGK6iEy7HMiIXgEstbRKQJMdh8cbljmOz3mgD5
         y0FA==
X-Forwarded-Encrypted: i=1; AJvYcCW3LfFW8dRrQ4BIQoHXUuVijLbt6GloSXbXI/50KlaAOFe1Y3yHAXW3J1I7RDqIQ8jRtv4IuTGCriDj@vger.kernel.org
X-Gm-Message-State: AOJu0YwUK8mO0lI4l2vnbIo4fgrJlEvN5SXn4B57etRMph1vEJ3W5XAv
	VPzfJVedsEWCStnADbL6p2jfGnR83Rv3C1g59griip4DxUF2mjXa+xWF/cquRKU=
X-Google-Smtp-Source: AGHT+IEUX37M/knbAn5SKR1nohLrXr6gCko+RdOrWyp0Mui4xUOkxNxxb3hi8uVAPtADPhLB4yiVMQ==
X-Received: by 2002:a5d:448e:0:b0:37c:d1fb:82f4 with SMTP id ffacd0b85a97d-37d600d2fe3mr9913019f8f.36.1728983350979;
        Tue, 15 Oct 2024 02:09:10 -0700 (PDT)
Received: from [192.168.1.64] (2a02-842a-d52e-6101-6fd0-06c4-5d68-f0a5.rev.sfr.net. [2a02:842a:d52e:6101:6fd0:6c4:5d68:f0a5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d7fc123dasm1012882f8f.94.2024.10.15.02.09.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 02:09:09 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
Date: Tue, 15 Oct 2024 11:09:09 +0200
Subject: [PATCH RFC 4/4] docs: iio: ad7380: add adaq4370-4 and adaq4380-4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241015-ad7380-add-adaq4380-4-support-v1-4-d2e1a95fb248@baylibre.com>
References: <20241015-ad7380-add-adaq4380-4-support-v1-0-d2e1a95fb248@baylibre.com>
In-Reply-To: <20241015-ad7380-add-adaq4380-4-support-v1-0-d2e1a95fb248@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 David Lechner <dlechner@baylibre.com>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
 Julien Stephan <jstephan@baylibre.com>
X-Mailer: b4 0.14.1

Adding documentation for adaq4370-4 and adaq4380-4 supported devices. In
particular, document the reference voltage mechanism and the gain
parameter that are specific to adaq devices.

Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
 Documentation/iio/ad7380.rst | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/iio/ad7380.rst b/Documentation/iio/ad7380.rst
index 6f70b49b9ef2..eeffd19db642 100644
--- a/Documentation/iio/ad7380.rst
+++ b/Documentation/iio/ad7380.rst
@@ -27,6 +27,8 @@ The following chips are supported by this driver:
 * `AD7386-4 <https://www.analog.com/en/products/ad7386-4.html>`_
 * `AD7387-4 <https://www.analog.com/en/products/ad7387-4.html>`_
 * `AD7388-4 <https://www.analog.com/en/products/ad7388-4.html>`_
+* `ADAQ4370-4 <https://www.analog.com/en/products/adaq4370-4.html>`_
+* `ADAQ4380-4 <https://www.analog.com/en/products/adaq4380-4.html>`_
 
 
 Supported features
@@ -47,6 +49,12 @@ ad7380-4
 ad7380-4 supports only an external reference voltage (2.5V to 3.3V). It must be
 declared in the device tree as ``refin-supply``.
 
+adaq devices
+~~~~~~~~~~~~
+
+adaq4370-4 and adaq4380-4 don't have an external reference, but use a 3V
+internal reference derived from one of its supplies (``refin-supply``)
+
 All other devices from ad738x family
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 
@@ -121,6 +129,13 @@ Example for AD7386/7/8 (2 channels parts):
 
 When enabling sequencer mode, the effective sampling rate is divided by two.
 
+
+Gain (adaq devices only)
+~~~~~~~~~~~~~~~~~~~~~~~~
+
+adaq devices have a configurable gain in front of each adc. The appropriate gain
+is selectable from device tree using the ``adi,gain-milli`` property.
+
 Unimplemented features
 ----------------------
 

-- 
2.46.0


