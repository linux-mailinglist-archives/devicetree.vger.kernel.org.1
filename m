Return-Path: <devicetree+bounces-174367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C70F3AACF2D
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 23:05:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B9FA31B667C8
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 21:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD7F2217679;
	Tue,  6 May 2025 21:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="1TrRsykv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BFB82153DA
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 21:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746565524; cv=none; b=u58CsREYFTneaXpeUjU6CwsKNADAHML3/wPK++YPfP/l5jotESELUnqPqG14+zYNVETHxebXT5xjIP0pRgUcwHl6poP8KVp0jig6+mAox/Tzyd+2tzjBg6AFS880arbcsVSxf2MeTeQwh2y5RB83JFj+h4TUtD06QUyXrexXivI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746565524; c=relaxed/simple;
	bh=DtfGGT3IGxKqdB3FC1mVlHDnlo7XpWTSUsAjxMBNLfc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=dUrWQY7NeDRX+nRlR4zHRY+WDprWL3PAbY5HF6SIi5f1keUC7pWX+XRoEqyr23vToF2C5y+5mx7mxGNCvKBm3Ls4UD6fXwLVkkMMlp+yyaIzj+iwxYfjxuzxMgtPWoLKmGTDlvbv9hyc/4bUK7njPAxAiOM0JbcoHNP8UGfqwmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=1TrRsykv; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43cfe63c592so57633465e9.2
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 14:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746565520; x=1747170320; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m8JsgWUKbE/peIKbAfNn2XRYX9tbkW2uKeLMmFKymPk=;
        b=1TrRsykvF4Fk5gk61we8hdojF4BI4/1C44Ud6pNg8glqiDGCc5btIJ6SLfGPPPQMRJ
         aT2h47ZSbadDAC1TghvjlBuDuLztgyJhsHktgHlCknOxxeErSa1dgwNUamhHsQc1M+1R
         +lC/FvbkKhyxsi2/zkXI7z8O6lU8bHTYbodHULw39HaXtEUcLzIC9ZNEwT9kc1fuxVh4
         azsYDDhedRq9Z4kqOdY21QTZPv4pXFTV9Awc6OETG35dGU27c7YCm/zOlmsxDkcKvlRh
         HCbBgd7UB+Z/94s4ZcMWMekZjozDnqquFEZNphQiGek9sJykWoguir0A1jOfJcHUHYkG
         jWaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746565520; x=1747170320;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m8JsgWUKbE/peIKbAfNn2XRYX9tbkW2uKeLMmFKymPk=;
        b=UBFOQM7F3M/st331wmyeeboPOWdEoZvfi9GiEELhBgEzlJdZy96kMBHrsEEqNBpHDd
         jHbeVgyFWd1hsv8Xkz/zGo5s07eoRbFpOGgdFIDKau7HeToDbFvHF1MS6uiKnxpQ+gKt
         NqrRUiPP+unrComtbprFhyTlNOzrnDdnFZH9SFprJr5GoPE7q3g9ZTUtk9YQVCjdAd1Z
         HGdpLVln2uJSpa4zXvBC7B/GRPs0z2dd5+99fq4QkvGXGeyUOLvb+bVBtdsgnjI+0yo7
         LMVzcAXDdradykpD/4OurvvdZsjXnkpWs2uuDS4Nqkrb5NLaHsVVltYeHkPApVE6lN2s
         wh+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUn17KPOsfye50jOQLnHaMhREwcZMlZfpJta2c5xyER2RIaq9xVqU+D6q+2E7VQYI1GK3EZlJczm1PQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzpU85qwwWlAqAe344I3B2cuqAwAi8/uUjQS42vTYfY9yCp1PRF
	kD0BpmvDFNU7CETG/v8y0q7/kfcWDscg4AgUhafXEPzaKYpmDeo31bheG/bixhM=
X-Gm-Gg: ASbGncu/KeRP49v2TGuLgctLJFoeAioDtJNnLzVH3Xv9UZicJGpFVyC1KfrkBaLcaxg
	l0LT9vvOUMirN46rE9u56VfvtCj/VzcUv5taPjjAxhz48SKqmTbYuqmviCLBbF5tmgGGkHf1KPY
	KL0I7mzPvc2OTvwqP/QIAb9/2u5+HIkSRTUfSRcDCa08/nolw1slOsFAEoNQOwpVuFUDSwKCjMo
	yXfadVE6It+XhuxFj5jD+YQTlyc81N0iGTb3bjR0nt5bweZAUX/jBPMPUOEhUpQfI+G7ZfJ3855
	mVW0LVDmaNoY+vBN/Fe2bdEu34XnScgwEw8aZZreJdha8TAL6Zm1X/IDWcOxDfCRZD6e/mH7fGK
	aDxdacM4qibhDcFFVQrfPkmI=
X-Google-Smtp-Source: AGHT+IFdcNg9xalwI/vP6wkduaNeYlIs7UH23AvEcqdx7FJHsBxWlW0U2gNA2iDaY0NitktQrxSABw==
X-Received: by 2002:a05:600c:5252:b0:43c:f44c:72a6 with SMTP id 5b1f17b1804b1-441d44bc466mr4438175e9.2.1746565519709;
        Tue, 06 May 2025 14:05:19 -0700 (PDT)
Received: from [192.168.0.2] (host-87-8-31-78.retail.telecomitalia.it. [87.8.31.78])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441d4351abdsm6794475e9.23.2025.05.06.14.05.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 May 2025 14:05:19 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Subject: [PATCH v3 0/5] iio: adc: add ad7606 calibration support
Date: Tue, 06 May 2025 23:03:46 +0200
Message-Id: <20250506-wip-bl-ad7606-calibration-v3-0-6eb7b6e72307@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADJ5GmgC/43NQQ6CMBAF0KuYrq2ZDqWAK+9hXLS0yCQIpCVVQ
 ri7hY2JC+Py/8l/s7DgPLnAzoeFeRcp0NCnkB0PrG51f3ecbMoMAXOQWPEnjdx0XNtCgeK17sh
 4PaUVR9BZpbSCLEeW9qN3Db12+3pLuaUwDX7eX0Wxtf+oUXDgzkgrSxRGFHgxet7O7lQPD7bBE
 T9YDvgLw4SJQhoLuoFSmC9sXdc3preGCBIBAAA=
X-Change-ID: 20250429-wip-bl-ad7606-calibration-20a396a60352
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 devicetree@vger.kernel.org, Angelo Dureghello <adureghello@baylibre.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2206;
 i=adureghello@baylibre.com; h=from:subject:message-id;
 bh=DtfGGT3IGxKqdB3FC1mVlHDnlo7XpWTSUsAjxMBNLfc=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsiQqnR3nG7z87zWxa9ntFJKyu25tzlxzixg4px1Z2uM9
 4+Ht/8e6ChlYRDjYpAVU2SpS4wwCb0dKqW8gHE2zBxWJpAhDFycAjCR+L0M/0vunzh8b1VD/Kb5
 E805vU4vtAu4nmrN+by6XCWr846Dzj+G/yFR7PeMLZKTgq/ULuMO2ulU0NYt6BR5KPL3wXe5yen
 r+QA=
X-Developer-Key: i=adureghello@baylibre.com; a=openpgp;
 fpr=703CDFAD8B573EB00850E38366D1CB9419AF3953

Add gain, offset and phase (as a delay) calibration support, for
ad7606b, ad7606c16 and ad7606c18.

Calibration is available for devices with software mode capability. 

Offset and phase calibration is configurable by sysfs attributes, while
gain calibration value in ohms must match the external RFilter value,
when an external RFilter is available, so implemented through a specific
devicetree "adi,rfilter-ohms" property.

This patchset depends on:
https://lore.kernel.org/linux-iio/20250505131544.0a7477a2@jic23-huawei/

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
Changes in v3:
- fix dt_bindings,
- change sysfs calib_delay to convdelay,
- fix sysfs documentation accordingly,
- used u32 for reg and r_gain,
- used DIV_ROUND_CLOSEST for setting r_gain,
- minor syntax fixes,
- Link to v2: https://lore.kernel.org/r/20250502-wip-bl-ad7606-calibration-v2-0-174bd0af081b@baylibre.com

Changes in v2:
- change phase_delay to calib_delay,
- fix dt_bindings,
- fix gain calibarion fdt parsing,
- fix ad7606c-18 calib offset range,
- fix calib offset calculation,
- fix calib gain range,
- Link to v1: https://lore.kernel.org/r/20250429-wip-bl-ad7606-calibration-v1-0-eb4d4821b172@baylibre.com

---
Angelo Dureghello (5):
      Documentation: ABI: IIO: add calibconv_delay documentation
      iio: core: add ADC delay calibration definition
      iio: adc: ad7606: add offset and phase calibration support
      dt-bindings: iio: adc: adi,ad7606: add gain calibration support
      iio: adc: ad7606: add gain calibration support

 Documentation/ABI/testing/sysfs-bus-iio            |  24 +++
 .../devicetree/bindings/iio/adc/adi,ad7606.yaml    |  29 +++
 drivers/iio/adc/ad7606.c                           | 216 +++++++++++++++++++++
 drivers/iio/adc/ad7606.h                           |  13 ++
 drivers/iio/industrialio-core.c                    |   1 +
 include/linux/iio/types.h                          |   1 +
 6 files changed, 284 insertions(+)
---
base-commit: 2f122cfb4c5d0ee7e44ed34ccb2d148d4146c0a5
change-id: 20250429-wip-bl-ad7606-calibration-20a396a60352

Best regards,
-- 
Angelo Dureghello <adureghello@baylibre.com>


