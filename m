Return-Path: <devicetree+bounces-183362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B521EAD03D7
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 16:20:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 094103A31B6
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 14:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9498E8634A;
	Fri,  6 Jun 2025 14:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="255GtuGk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217092AEED
	for <devicetree@vger.kernel.org>; Fri,  6 Jun 2025 14:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749219641; cv=none; b=A3TM+5impM8dt891gzaMnXfHwW+dPid+ERYYjwvbiUXnOG3Ok1MPRZqS+l09+D72LzWxU7ahqOcMBl1hvN/dQAg5aVDPG4gjS//ZvnE40CsEp8YD3MyK/KbqQZ49wys3XKBx6LmQMXqZXdp7PvY8eNvtmz7DFbayAEu9YcXJzb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749219641; c=relaxed/simple;
	bh=3MDKCzcRqE17jpMODKflA/mPPIlcttinXXOo2OBAwAs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lPtIlxrwp7VhEgw9XhQm9zKRzqDOmHgLS9otEwGkUylHrgzZcekqfEAVPLWYNT0yspPfvgeLEFZs/irtTZ3IOzbf1sSgutbAANKrvnei2vTl4cfttBHrBsaXKMrgWb6jx9itbDB7nfFAON+Qenv+ULJ8XUh8cXQaXKO0gNhRXTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=255GtuGk; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-450cfb79177so11829765e9.0
        for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 07:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749219637; x=1749824437; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BCECvT2ZqaLSupqrgHoRYTITFIBrUFbkXozj6gpUIgI=;
        b=255GtuGkBXlI2UOWybrmrBwbIHQffrjov0sFZNJKZ4dJiWV2B15jbwXmMuNSVgNMHk
         MEFB4VLhH3JwSO/n1AEyHblJF9NXlmASdp1uj51a0FxJFojjwDg/K+f3Dg3tQGDyE5Uj
         hyZx3lXNQ1Lfv5HaYGFDR4Aiab5ktwePsonZ5W7XSP5W8iJbkWmlbwkYe+IxKiFGimhN
         xUS3nXrnNuLp+NNfk4F2cfOqPupCwMdulVRMHik1PKSL5C8I5H6M8EDNfR7z+17hm119
         WVn2jqM7KHQtfYmvY/aHMs2LM2ioPTY+HD5z231YHjigiYzf8Xg3RYJkwSAjXDLC4Ctp
         AghA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749219637; x=1749824437;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BCECvT2ZqaLSupqrgHoRYTITFIBrUFbkXozj6gpUIgI=;
        b=wAAgH/N9l77ZGHof7YMhCwX4XBf5YZx4UUDnWRygu4Qg53Z+IIUPk3hNsTIuz1oxmO
         WFzDU6MFUg1KgnZYrCHjLBYVq/CUbDFIg1KkL3SxC76bqQldjp0IRp93qgl7+NsTDDFE
         e1DjWdiyY8g46gA/v7vWpJGXUSqxd/SKltSpEPnLTjrOtHU+Yg3SYPchFjSxCl9RWuBh
         f1MwysGNJDj0vD5OMpNUyFCzceV3FtTDNfXtrW3I+UWaXf7rFZywd3qf3BawNf0QfLhw
         xe5EFEP/034Rnlv+6SC0rERjWt9xlZ8yJRyb3iHBFF4YgHCyGlMh/rKjUS3KvimiDPf6
         vHSw==
X-Forwarded-Encrypted: i=1; AJvYcCU5Zrrw2ry0PG/9VmUAVEWg3c8pbrzZXbCEywtqYtDvNrSIq+bibgZrgPHbWrve5F1QwCatFkyT82q0@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+gkPSiM4HRErENiPhJwxIDlDPfuDWJINqCeDLNxPA5qGC6MMz
	I3rn4BadocrJ1qvXvmOCu65AezSnNUGy1cY++JOSNfVRchv95WyjFE/NnBofS9kzCmQ=
X-Gm-Gg: ASbGncu5b2YTrzV8bHVzhabV6WnkyrraZtDrp55SP1qy4eIwT5P5EdA8GjnLWguQDkW
	nLPCi1wGRvNjofWpiLyHuUfU4KLcfIk9N32qWgDrW6GnUP6pyqCX9D2kpsvEL9RJsidykR3ukoF
	zGl7FYrxmOj+jEL8hOBD8MasGGUXYaottObXnOSpH10j515bWu/qzZKGe2Sik8v+HT2GBnNUjT9
	Pnq9rgLGnoGIuMfUgUMAbNYIkpPaq/T+p6kl4nelBUwuMkLLhr9BWW7LKAC1IZBvEKlrMKhbnS5
	EAGPYFkBwzW1lWZ1jGFR2HKEFQeX7jg56ssSMOmPCNez7IMQBZO37/jVK+vb8nCH6vThcNMEB9x
	/GtCFJ7zv3o8xJAZfl6opeNq0E20pl2E=
X-Google-Smtp-Source: AGHT+IH59aMsKf3hdHtSKVIfRUVq4kAbJbYNUCQzRJeoDhtgAosvkcg81rm88rY6ZYDHdAP4zhIZwQ==
X-Received: by 2002:a05:600c:83cf:b0:450:b9c0:c7d2 with SMTP id 5b1f17b1804b1-452014146bamr37850795e9.11.1749219637319;
        Fri, 06 Jun 2025 07:20:37 -0700 (PDT)
Received: from [192.168.0.2] (host-80-116-51-117.retail.telecomitalia.it. [80.116.51.117])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45213754973sm25686345e9.35.2025.06.06.07.20.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jun 2025 07:20:36 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Fri, 06 Jun 2025 16:19:16 +0200
Subject: [PATCH v9 1/7] Documentation: ABI: IIO: add new convdelay
 documentation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250606-wip-bl-ad7606-calibration-v9-1-6e014a1f92a2@baylibre.com>
References: <20250606-wip-bl-ad7606-calibration-v9-0-6e014a1f92a2@baylibre.com>
In-Reply-To: <20250606-wip-bl-ad7606-calibration-v9-0-6e014a1f92a2@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 devicetree@vger.kernel.org, Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1850;
 i=adureghello@baylibre.com; h=from:subject:message-id;
 bh=HL+KRQj9p0fzRWOWKu4itMjiQokyOUQbf/17jsDSPRk=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYshw+vEsMrwlT6QtiT/9adzuwK9LpP7aftApjC3T3F78t
 4r7zcHdHaUsDGJcDLJiiix1iREmobdDpZQXMM6GmcPKBDKEgYtTACbiHsfwV9iXRbItQ+bak6zk
 qAqt8zvrmLdqZXKabucRPPnj/Y9D3xn+Sr/y+8PxyzuBNSWTM1CF80HtAc3bwXqTMkVr7+Xr29/
 gBQA=
X-Developer-Key: i=adureghello@baylibre.com; a=openpgp;
 fpr=703CDFAD8B573EB00850E38366D1CB9419AF3953

From: Angelo Dureghello <adureghello@baylibre.com>

Add new IIO "convdelay" documentation.

The ad7606 implements a phase calibation feature, in nanoseconds.
Being this a time delay, using the convdelay suffix.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 Documentation/ABI/testing/sysfs-bus-iio | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
index ef52c427a015cf47bb9847782e13afbee01e9f31..3bc386995fb6ddf5fd0718587a84d703cb973d70 100644
--- a/Documentation/ABI/testing/sysfs-bus-iio
+++ b/Documentation/ABI/testing/sysfs-bus-iio
@@ -559,6 +559,30 @@ Description:
 		- a small discrete set of values like "0 2 4 6 8"
 		- a range specified as "[min step max]"
 
+What:		/sys/bus/iio/devices/iio:deviceX/in_voltageY_convdelay
+KernelVersion:	6.17
+Contact:	linux-iio@vger.kernel.org
+Description:
+		Delay of start of conversion from common reference point shared
+		by all channels. Can be writable when used to compensate for
+		delay variation introduced by external filters feeding a
+		simultaneous sampling ADC.
+
+		E.g., for the ad7606 ADC series, this value is intended as a
+		configurable time delay in seconds, to correct delay introduced
+		by an optional external filtering circuit.
+
+What:		/sys/bus/iio/devices/iio:deviceX/in_voltageY_convdelay_available
+KernelVersion:	6.16
+Contact:	linux-iio@vger.kernel.org
+Description:
+		Available values of convdelay. Maybe expressed as:
+
+		- a range specified as "[min step max]"
+
+		If shared across all channels, <type>_convdelay_available
+		is used.
+
 What:		/sys/bus/iio/devices/iio:deviceX/in_accel_x_calibscale
 What:		/sys/bus/iio/devices/iio:deviceX/in_accel_y_calibscale
 What:		/sys/bus/iio/devices/iio:deviceX/in_accel_z_calibscale

-- 
2.49.0


