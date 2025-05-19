Return-Path: <devicetree+bounces-178398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 092A4ABBACA
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 12:15:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 14CEE16C5BE
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 10:15:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B027A2749E3;
	Mon, 19 May 2025 10:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="gvQq8HzH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 884D4274640
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 10:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747649735; cv=none; b=Ra++7njz26fzg2uvaP/JMyAh3XO3+3RPwHZmAMuOCnLIuscXfvY4PisIHZqO7yKtuIe5qPQTUhQ5LXWRD5BsEa2ZC4j4MkGwzS3EiOPlTkJvPwtm9rFW9zjHgMdcaRUnukd80HIQORdBwxCr4++ce7GKOu/JnHnpoxrif6yIgX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747649735; c=relaxed/simple;
	bh=kAXfCDDkqD0YIX5fRdivLoZDb1cS9/ZqEEtcHuRvJc4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uNXGsoydAVpndlCzLlVR58ZAssEPEOj9zs0eZLVI+p0uu9rDJNxN5QuOnqDUeu1hU57nQCCTw9JK8G5kijtZI+H+SEAu5JkjaPA4N4XCTUXzmbiJkgwgG7fh1jDBp+bn92Ca70Cn+fBCVOIqe+98Z03FUDjvu0K/NArDl3rZRJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=gvQq8HzH; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-442f9043f56so21758555e9.0
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 03:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747649732; x=1748254532; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fCnfzj1ToVJ8veFs1TqP1KJeHenvC/HvjKycXP/yVqE=;
        b=gvQq8HzHrxAwosigLcKy+tRLlQSxdstOmMmayhHeowy7WvjKNfMUJCNqj3VIfLtNH5
         13kQ7eptQkqs+PSXdIyQ5cuGAh9ZrIFyj0dzASNro6XMp6cbm24euF4aSFADsKBXs39n
         VHDPyM6rZFUf5Ed25roBhiODBPDuqWpwXqVdKAJ+ppxpXtb9gi4W6lbcnAbpLq5UKaIm
         7RgvWmO8/FkhgRCz0wJfATYlXRm7MiT25OaEqTtbLGZ4OAzOlzcg/vBurLeBsTxNp4b2
         oJNv8eg7mqpcWa2/WpLcrYwsffuyOqrA+mCnzeOuI3hCEwXpe7DG/k3/g2QvMl/elbKH
         Ia6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747649732; x=1748254532;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fCnfzj1ToVJ8veFs1TqP1KJeHenvC/HvjKycXP/yVqE=;
        b=tcS3wO9vG5akKWL/aCEX/glJNSRj091wfgkKkLtb+G24wIL45ulFz1T+WcNU6Gj0wL
         LT1O89aDZCQxPlYY6mbJgzYyfyxQMS1fzMJxJY6oxVu+908RuaI5LWOwi9v2vaYgmf7M
         33WPSRQoNZoFObtGYQjBiuET435pKydCprDjmxtIybSw9nOkTQmzyiqFMkR8KowlSQeI
         OKjZ5C/Km5n/K4mmkYjsRS4RMPId1Mv6JUOWxscaIr7fXXQ53b28/7JLTQhRQzn8qVhW
         uLo3y+z0T/8cItxxU4DJNN/5K2w3cD/FFK7IoexCSD9RSYvOvlniSdvLC4FSbDs2JteD
         EPtQ==
X-Forwarded-Encrypted: i=1; AJvYcCWB7J2vVnIeJedFP+ImbGJ+6NI8d9KpXEPT+3ft2dFNza9WM+ha9g/Wbpw2N1OaYjCdcTGHQUjqH2ht@vger.kernel.org
X-Gm-Message-State: AOJu0YyRD5GOKIujCvghhjCSxvKUF5Rvh9i8O3PuOwRbV+XymQL+hqLk
	ws05RLDxxzmGU3+tSN2c0CnJZMOOr9uj8ZYvny6V54wPXLZud3X4gNv7s5EnLzYA7wk=
X-Gm-Gg: ASbGncsp+pQ+h1XfLJX+otjTdcZWYmQUUq0pN6pdtHOhP2E1g4Ue9fS+++Foi+LWgVP
	xkmWd1z2jcN3GeQGsu/emxrcJYdoiiulqjLTsqpz8jmTz8RRbNyvZGIe9JgybEPpN15Gk2mlyqu
	ibBCClCQFHtbwvFYzRS/eDRX7XdPgtWLngGNeVuqvwb6X7/tcwPAIC6RByEvhJIY0COrJuriiaS
	MD3WQa6oSwSH1p6fBqGB7Rd1dzcSEmFqa0BolXazYwpQ6QSmAyO2ndbQOHjJmS25av05c6o5hM1
	TN10GVPDSWNL4VuiC9IDdPgjDsQ18Sqp6F1iEqXH7nGKUfYwBMGIeQcfTvO6cpV6p0OJAsbF91L
	FP7ZJhGxhXQzSQaNdsto3P88UPjh+XqU=
X-Google-Smtp-Source: AGHT+IEkeNEpFV4F4DukOo+8s4LSL5goJzYTBy9MSihVWCaRY8jONp/y+12U3eIyMbpPCa2we8wGpQ==
X-Received: by 2002:a05:6000:4313:b0:3a1:f67e:37bc with SMTP id ffacd0b85a97d-3a35c7dca79mr10651186f8f.0.1747649731714;
        Mon, 19 May 2025 03:15:31 -0700 (PDT)
Received: from [192.168.0.2] (host-80-116-51-117.retail.telecomitalia.it. [80.116.51.117])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a35ca4d105sm12499021f8f.11.2025.05.19.03.15.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 03:15:31 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Mon, 19 May 2025 12:13:38 +0200
Subject: [PATCH v5 1/5] Documentation: ABI: IIO: add calibconv_delay
 documentation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250519-wip-bl-ad7606-calibration-v5-1-4054fc7c9f3d@baylibre.com>
References: <20250519-wip-bl-ad7606-calibration-v5-0-4054fc7c9f3d@baylibre.com>
In-Reply-To: <20250519-wip-bl-ad7606-calibration-v5-0-4054fc7c9f3d@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1861;
 i=adureghello@baylibre.com; h=from:subject:message-id;
 bh=WN6HkM4XgPmjxefJhFewSDj6qFVZk19CADasf1AQmr0=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsjQZol5vdl757rEBKY8s/9MKk8Ze+XZkpdHzDG+kv5cZ
 KqkGmdWRykLgxgXg6yYIktdYoRJ6O1QKeUFjLNh5rAygQxh4OIUgInsW8nwP4736t0wBo0JtdrO
 SmfirR6Ka8y0VZ+zzOurms2nK7prVjIyXF5wLK5dLoiJ49E/VlvFzCY3zdo0iSUhprvXFPPLvHN
 jBAA=
X-Developer-Key: i=adureghello@baylibre.com; a=openpgp;
 fpr=703CDFAD8B573EB00850E38366D1CB9419AF3953

From: Angelo Dureghello <adureghello@baylibre.com>

Add new IIO calibconv_delay documentation.

The ad7606 implements a phase calibation feature, in nanoseconds.
Being this a time delay, using the conv_delay suffix.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 Documentation/ABI/testing/sysfs-bus-iio | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
index 190bfcc1e836b69622692d7c056c0092e00f1a9b..4cf482eca3d8a0a80b051fbb496f82f836ab76f8 100644
--- a/Documentation/ABI/testing/sysfs-bus-iio
+++ b/Documentation/ABI/testing/sysfs-bus-iio
@@ -559,6 +559,30 @@ Description:
 		- a small discrete set of values like "0 2 4 6 8"
 		- a range specified as "[min step max]"
 
+What:		/sys/bus/iio/devices/iio:deviceX/in_voltageY_convdelay
+KernelVersion:	6.16
+Contact:	linux-iio@vger.kernel.org
+Description:
+		Delay of start of conversion from common reference point shared
+		by all channels. Can be writable when used to compensate for
+		delay variation introduced by external filters feeding a
+		simultaneous sampling ADC.
+
+		I.e., for the ad7606 ADC series, this value is intended as a
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
+		If shared across all channels, <type>_calibconv_delay_available
+		is used.
+
 What:		/sys/bus/iio/devices/iio:deviceX/in_accel_x_calibscale
 What:		/sys/bus/iio/devices/iio:deviceX/in_accel_y_calibscale
 What:		/sys/bus/iio/devices/iio:deviceX/in_accel_z_calibscale

-- 
2.49.0


