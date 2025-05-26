Return-Path: <devicetree+bounces-180499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 736C7AC3D98
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 12:04:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E5210188B167
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 10:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7647B1F4CB1;
	Mon, 26 May 2025 10:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="SgetagGs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 800A11F463C
	for <devicetree@vger.kernel.org>; Mon, 26 May 2025 10:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748253886; cv=none; b=HeLQfaL0eVK+L97Bt6HGKnghGO//NwzLjI7944+kMYxVOW2xkIUKJinpr162Spotx+rggGYFEMN6o6pQVZNW+4kw2NgSYbWKurehMFJN5sVPY7slfCjq9qaNHFOstxJz3PbELL1vDZfprczfIUygpthyM9Ydj0TkqAR7dMwrD1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748253886; c=relaxed/simple;
	bh=vFlQmUYfvlbdocc1660HFvFkLaTTtU9EJLRp4LGDp64=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YdmP3Y71ebaTn9EVWFVxccCyT/QyHjQder1k1TLJHRwOL9xq6/aLH8EcujK+fuGcGktT/ENoEeP6CpP9R9BtqcswDaSCP30TBTYxq0KODzaZIWiQIF7IY+9FWVpesMtL2vBUKp7GCPceqS1UF8nX419kcL7ls27MpitflEYc4xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=SgetagGs; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43edecbfb94so28928405e9.1
        for <devicetree@vger.kernel.org>; Mon, 26 May 2025 03:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748253882; x=1748858682; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q8aakW4/a4S4nlb27SNIiYOlQ/gC3M9NtCJYtqbcxPc=;
        b=SgetagGs8PSOW6gjJUzHNSL5KPbyJ1sL9I2V/IWqwD9YnWWb+38p2+oQ5gavmbAq2R
         Cos+w2j0ZKhg7kX6jByUIJe0/VkA0DW7Gh+YevRwbNaSY6L+AsWY6l7Hh6ctUTCK34Fa
         zYwtbajXaADGRALvhHLSEQLtgfD7E6zJvvSP27ZJcJH9aSK3nrTHNGAfVLQ1QIkCGZ92
         VOzV4eNytJypC2RL+fhijepz5q6co6urg0mTcKb0/fglon9LLv3etlyz2oXCNUMzdv1A
         7iDLafPdp561ZoLxGNWDMhRB+PHnnU18E3shRmU4hudOlmx75TP1k1fWSzzovZUCOoed
         pj8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748253882; x=1748858682;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q8aakW4/a4S4nlb27SNIiYOlQ/gC3M9NtCJYtqbcxPc=;
        b=KO8w22QoC5lusnaFwaBornyR92jSd/IhrvxinpZQJ3YpewPlJi7P09uw3z1vayAR7d
         iPXlslNU2fNBV3fQId4JkRy+dCqEO4AaSoH2dKioWU8CyDo/TOVgjCHqtUCgVSKEgYYN
         c1JRilQjK2cA01CDdea917LxQXw/9YhN0dRkE09z8jyCkA+MjErTsRSP4a0LCYVhYubn
         Tbx1ZhFWxNzzdetXEs+MSzTm5UhuXf3iVU+xUnviIY9SYhCfF0iM081Q4SQHX4w89MIy
         x5zsxeipEPFt7D45iqlcdxKZwLzT4IoYzUQ1ygWxRD12/fQcgROi315P0Tl7SCzxIacd
         oeRg==
X-Forwarded-Encrypted: i=1; AJvYcCWm4bNZmzSIpcm2Lvv8RuRhVdCw15d36WTusFIgz09WUbi71a0L2DlG+G1wmaqVflEz1A3T84LdG5yb@vger.kernel.org
X-Gm-Message-State: AOJu0YzWM8M6S7k9CdLlfZykV49meXYY1vjEn5YaDEPspoiYRQP3PPoZ
	wqyeq2siponbaHI5oPdRPAAkdrgXJhaNipVylnT52ki+CSMzevLwm/RCQm/NINRXoFxWb3GhSgD
	Q95pq
X-Gm-Gg: ASbGncvkfoiqM1LNghI0AgNxPna1GqCYfmoH4+z1VJFZvjztnNGvVBp6C5sLgNuSOSQ
	jGRoDqnEXmZR9sot4EI55dtUgU4CxflSqavbF94NYHDfhQF1PqVfghPowYYpJEWo5XrEDo5AaTp
	bQeNfLLxyeXg2DGB6O61uo+JFbT7kdQTReYqPmUxBxFl3ur4FjHI30mSPLRijkHutjCRrCT6WCA
	9WzlC26YKMgCW3rIfj8DaHueIEuaQx1S+SzL7Od3ovCzX4KekP7RnpKFAYEEM7aDRzc5MLq6mJB
	87jA4N32aMbBuFKzGdWNlQ99SUshXa0i5+FyA4sCCYUKkce29j6hXtoqy7+9NDNKxdm7gJ3QUyS
	MZcv28PDR5Iw0B+4g+XuQP2o6TrQfPOk=
X-Google-Smtp-Source: AGHT+IHV9Jp069LZjK2ZpV1/c9KQ2bNBfj2JjLVwtRuY/y1IZo9228sqOpSdgVRYYQ5s3ofRpZ1qNg==
X-Received: by 2002:a05:6000:2890:b0:3a4:d7ba:940f with SMTP id ffacd0b85a97d-3a4d7ba9678mr2708636f8f.8.1748253882426;
        Mon, 26 May 2025 03:04:42 -0700 (PDT)
Received: from [192.168.0.2] (host-80-116-51-117.retail.telecomitalia.it. [80.116.51.117])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a35ca888fcsm36141834f8f.78.2025.05.26.03.04.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 May 2025 03:04:41 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Mon, 26 May 2025 12:03:16 +0200
Subject: [PATCH v7 1/6] Documentation: ABI: IIO: add calibconv_delay
 documentation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250526-wip-bl-ad7606-calibration-v7-1-b487022ce199@baylibre.com>
References: <20250526-wip-bl-ad7606-calibration-v7-0-b487022ce199@baylibre.com>
In-Reply-To: <20250526-wip-bl-ad7606-calibration-v7-0-b487022ce199@baylibre.com>
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
 bh=m1V9a4luyCqmxst4hAeMv2hk5LxVMC81ZTSMIekPDQ4=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsgwscm+fy5Mqzei19Suf4fkFLsQo8JKtimLciJnL1fVv
 jD/l71ZRykLgxgXg6yYIktdYoRJ6O1QKeUFjLNh5rAygQxh4OIUgIlcuMHIcCtPn2N1a1fJdps5
 zQYczLLeXObN5X1tyVenx8b8/N27ieF/za/ClMUGpWdEI1I6DNz1f95U+JrCdjH5T39aaHUP6ww
 eAA==
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
index ef52c427a015cf47bb9847782e13afbee01e9f31..7e59cbd5acb85fd0909c1d56f9d76a84933d418a 100644
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


