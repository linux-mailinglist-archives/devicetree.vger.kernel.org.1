Return-Path: <devicetree+bounces-251988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4F4CF944E
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 17:09:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 54051303E403
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 16:04:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61053338585;
	Tue,  6 Jan 2026 16:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LCSE8S4+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50025334681
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 16:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767715440; cv=none; b=PU8wvTq3uvYL65bVqiCLueZcHlW9IAneuWmQEP85P2mYB0SHD15TLXzLfksac01G90leO73S/zB0uFaFBLlidvpX03kxatP0hmruC0q52HxrFLIthdYOlK+eXxaJVvMAIQ/sGM0rV4oF/ULQ51IWP25VCMjoQ/6hJuqjf7zvU2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767715440; c=relaxed/simple;
	bh=I0zxWpz+WdShjD2pMGdi2UhhCOsQ+dRFjOiqpqzQPZY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Yaje5MIHlx6ajWmTeHUhHK4yvn43MKChU6zW8G/c78ET4i+RSE7pckUiRYj+EARTtR16qMH7yDEkuK3Jyj7qpFkhk32p9lQLxkV6ziUPUB+CAi8QF4hPH+KMmulLMM6q4t1tt1eb8NZ2GAaabauyw8SvuIUvriHxuvjx3TgRywA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LCSE8S4+; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-64b560e425eso1519042a12.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 08:03:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767715437; x=1768320237; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xQLRuTGhgEXwZ/IQ+OAx9oAMT59BlPYHzpxFvRzsfUI=;
        b=LCSE8S4+eEHrVAnO0r2lzGjyQpbtK442V+TeNU99Wa20rlhNlYGSD2LTSfB5m8yoZu
         FYUruRloUCXLa1qPEaFaal+7wb/F5xGb8rqyewAjLGnzhmlacM7aYgt7Ng0CRoBqtaTo
         3iWc/l0DFgDyr3OKk0bPve/mTCvHem0FKU0ACiLQK6tt3rCnsoBSPtmHHHzNpNEyDcmk
         yk3wwooefoomD+bjTTb5YatyggNm8HUyREmfOMBy/8EDofER+cXJXfqCr5GJXnJHHrkh
         Lj+B8vSNOcC6wbd+y2YPvJodJSqxfELz3QuIFXAGuWA4NGShbM6EhVEq9aPzQTW8yeHV
         arhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767715437; x=1768320237;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xQLRuTGhgEXwZ/IQ+OAx9oAMT59BlPYHzpxFvRzsfUI=;
        b=iLAoMzG0kcLQcNFQQw2J/RnGLdITIAnDBUq5O93UX5LUl+Oh/k0b2OgzQO0mjykZCc
         OS4SCE29s6pneWk1oCypEd0WmOMnFcHvZ89qYdTOdKebN1Uk5kTvLYv9/DyN5pIzSURK
         pWHyLKWy5ydjS6QynPJEe9J2JsL9uUcQeb8Llxuwbv0z1XjyCvQzj1tyL0LdRNk5O9HZ
         R2al06Ka4TcZqnGIFcJA7SoULRl4y1XbQLmWD8qHN/BY/xVodH0migvkKbE0wtdS+rgO
         2fGsq7hrEBkZs0BYr/DV1JVLpt6WPKT8/Fzj5LDjMUCpx4ItUF4jFRBpLzhLk+Qhv6mW
         znJw==
X-Gm-Message-State: AOJu0Yxq1PizglJANGXYOET2m9h+kVmhLricQtCzOIwiGciGiEpYcmuL
	1bfRyVedtmNGO7bmapfpjkqvG8nu6e69/WF3u2Dt15MoljtFCrjyBF9d
X-Gm-Gg: AY/fxX73ytGJgsufvLZ0NqiyphGDT/FCcmM8D9P4tH4XkpiSkO5CHfpHNCVsTvtCMi4
	DDzWiLl8891KjajvX0zMTE0zRUE3Vt8WT68QVumkAQFk/QBujfm/+GZcVhxdLXlRJJKhEQGguDJ
	8kW2mTEXqLvmDw4bRUlYxrQPX5o27+Y7rJ1Wnad+AqG5OOQNBYDPT+NbuwwXYG400+FmyqGaY1g
	yukh98EGs4Usfs9oLtrddpglv0eUATdj54OOevMRJIYlZQ0CTWsyUWK/lMXny7BiMgxpzl1Qmz1
	tzPoSu0hmjRSAGpV9gAYFXBjizLu0S+gkz0JGgmZ1bBrMCYDRZXn44t3QdBKt58bsWxbvOrGR5s
	s02K6RjCKfTUQOV3rX7gfEnIRUvIdqIe5pNbUxAtNIx3pYtch4pHGj1x+S3ow2q/t1ag2Hnh515
	fPlNpp8An46c/x2rz4z/Zbpa4=
X-Google-Smtp-Source: AGHT+IHmXCVGX+Kat7e6+urgJ0JLM+ij8FS1Zj4byI1uScqqDLQYyO7sz0Nhw6oxtw/w3yBCbK2uyg==
X-Received: by 2002:a05:6402:2356:b0:649:aa69:dc07 with SMTP id 4fb4d7f45d1cf-65079321af6mr3038310a12.12.1767715436346;
        Tue, 06 Jan 2026 08:03:56 -0800 (PST)
Received: from vamoirid-laptop.. ([2a04:ee41:82:7577:80f9:d6dd:93b5:e2ef])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf65ca0sm2474912a12.24.2026.01.06.08.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 08:03:55 -0800 (PST)
From: Vasileios Amoiridis <vassilisamir@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux@roeck-us.net
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-doc@vger.kernel.org,
	Vasileios Amoiridis <vasileios.amoiridis@cern.ch>
Subject: [PATCH v1 0/2] Add support for HiTRON HAC300S PSU
Date: Tue,  6 Jan 2026 17:03:51 +0100
Message-ID: <20260106160353.14023-1-vassilisamir@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Vasileios Amoiridis <vasileios.amoiridis@cern.ch>

Add support for the HiTRON HAC300S AC/DC switching power supply in
compact PCI format, with a 300W rating. This is a simple PMBUS
compatible device.

There is a small caveat with the internal registers of the device and
more specifically with the PMBUS_VOUT_MODE. As it is already described
in the driver, the device does not support the PMBUS_VOUT_MODE register
and at the same time, it returns the voltage output values in Linear11
which is not adhering to the PMBus specification (PMBus Specification
Part II, Section 7.1-7.3). For that reason the PMBUS_VOUT_MODE register
is being faked and returns the exponent value of the READ_VOUT register.
The exponent part of the VOUT_* registers is being cleared in order to
return the mantissa to the pmbus core.

Vasileios Amoiridis (2):
  dt-bindings: trivial-devices: Add hitron,hac300s
  hwmon: Add support for HiTRON HAC300S PSU

 .../devicetree/bindings/trivial-devices.yaml  |   2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 Documentation/hwmon/hac300s.rst               |  37 +++++
 MAINTAINERS                                   |   7 +
 drivers/hwmon/pmbus/Kconfig                   |   9 ++
 drivers/hwmon/pmbus/Makefile                  |   1 +
 drivers/hwmon/pmbus/hac300s.c                 | 152 ++++++++++++++++++
 7 files changed, 210 insertions(+)
 create mode 100644 Documentation/hwmon/hac300s.rst
 create mode 100644 drivers/hwmon/pmbus/hac300s.c

-- 
2.47.3


