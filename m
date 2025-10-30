Return-Path: <devicetree+bounces-233336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A29EEC21377
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 17:35:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 559D01A256D8
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 16:35:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32DF026CE2E;
	Thu, 30 Oct 2025 16:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QZoYAMV6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3F5D23909F
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 16:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761842083; cv=none; b=WXLuvTjufe0LOCV0B6Ur2oDbukxs5+f9g3w4rLXjh9Ib2JCwApseuSeU9mdr/NoV+U+O65mokKoXMiFg5BXp6xu1w2GM69HShyIJmriAwaJwPYD3OmhNcHn8BNZe6XatE2tpyg9pRBeWGnm/Ea0kI403lsL2ecT/AXcOUfGXhUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761842083; c=relaxed/simple;
	bh=49TrQUGUtrEr2yZhMBoKYVsIAJVY+BeJ0rODJ0UUTWw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Mprz4UVFmBr845xud7gC2JFDRAbP7+3PUYJU1V9i7H9Zk3LK10mtEma5twLcFzn5KTvjiUljat2wzkOP434KXSYhvcqYlHuYCjQP2jjS5nR5M+vj1qYNNcJO5/d+KfVIjJ41OuZYY7Y244whZrSM2GoAPdt7f5tRTKaiVaHxHnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QZoYAMV6; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-b6cf3174ca4so985434a12.2
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 09:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761842081; x=1762446881; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2GemJnWb5rbunzFGiUAhg7eKB3QXcsT4ACvgb/nKBts=;
        b=QZoYAMV6azRsYI4wMMudbgzETPhyCF0uRFgnDj0kFCm6BbFRka0ARsNJ8jF1RWdhYL
         l8UCmeOlhwEA0ur39my95Pcv6um2mRoe1UG51/CVUOZmadDqZKtaSfsUeDyjiPhNUtLR
         6QMy9UJG2BW19AJ886nRyzTdX9mEsfyzEkUqTJOGtzN1KdpLUzjBrBzjfJyCIjGGYa4e
         FR17otrwGiMGLBF70OWq3PaAnZ8hF/TboHyMnfo4E70RJxITDV8sv2zgYvpxzBgksPTD
         /GM7woueWkZI1Eb399L0zwKUP1IIF+JwBI/UXpG5pfzB3Gs6NJqfJbyRFcfeBgPhMJsh
         FX5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761842081; x=1762446881;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2GemJnWb5rbunzFGiUAhg7eKB3QXcsT4ACvgb/nKBts=;
        b=JXK8+5C0PCHwgS504UfhUa1u1biilf3VtFnw8weNbAjVI0UgSHiOpiKq3zVlmsozPB
         c0NrIFAy7842kDuJVlPOftgcv5LaWKLOPH2y4C2JKCkMCYwe4xPzwH0yYttDB2/nGsJW
         i33FzJ9JIjo6EJqoNHyFEifZt4fmEj4zloUZa7tuUDDkMixFbs2A4HVG0kOUGl/L0XXl
         JjUr6+t6QfFiw4PR9N9Fv7hF0/yGMYuel+QcAQsnKi0EE1RBY3GCPu4Qint+ZfTh+KSs
         JvSzvPgQxp9k4iOntqrUlg3EV/ogox6y8FMVXy/oLVJcdVNcQ28Ry9z7TnCbn8wmxhbX
         vrNQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwq8Wo3kQMtrfko9tljxTjMPeM6/j7RDKt2Exor2WtMpAY1s3/RHLYr2gOtB3qCh6piCCSgTC/KJF5@vger.kernel.org
X-Gm-Message-State: AOJu0YwLBPxKNbkwI3k4CPvCj99pxD9Gz84d340XkT5G9S5asXGZF0hQ
	qI69v5uIuE6itLEOE6bxo7tbfT4chi4w2W/5g9J7xg0L7rH3ROY/Sf88
X-Gm-Gg: ASbGncukaedEQ4XyYr9Ggq+bpjcZimnpMkndcMoDKVCOS91xFoSV+eV5p0+OFVgNFKp
	mgU/Fi74SauBnnYNK53ZRqfhLJuZTIbTLErCn8NPAotyZ59A+7OcQ9ZXvHpaZj82PI1cbcpfDHI
	CvO31MuALBgRJkAVXibGHlJlCLJSu3r/cavqmPzX2xjqm4OeQzMRSbzPbGExJ4UmrqLviKkrm2k
	JTq/W/0CAiQNLajXKER7dy0uC4HzdqBlTWOrpJTl5dBqHnuQ71E5kPTMLWFtZgrEPQD4Zww3xJm
	vxxvKm6JK+ScgmFvi916eL0iZ1Xq2b9kxwubw6Ruaj6MdQBG8d0J1xkGnBON/GILfm3HCPOpz7t
	OJW2aIeNQsALCucLImetagvpV/BTXPC1/LYbzmygyzdIIsyFtgTRMm4LIEK32XnHQWD8SFPqp6F
	JiMn2re1S+WwoDv0jr+ROpe1/tm5TZuhtjP3kWLKPHOOzSazncYeJY2hjkVOlkEgALUZ3fWQPWL
	fbL7JEdXc2u/42ZA2oPmnSkbuS6TVZ2JBoGkC/3vvOfXwI=
X-Google-Smtp-Source: AGHT+IFhVPa23fECGvV4dUIAld5HM4HNjatO6IlpoUW53cLuqxeeqTXNZkPLMxgkK1m51ToYYLi7xQ==
X-Received: by 2002:a17:903:1111:b0:267:9931:dbfb with SMTP id d9443c01a7336-2951a526f47mr3589515ad.54.1761842080791;
        Thu, 30 Oct 2025 09:34:40 -0700 (PDT)
Received: from ajianan-Latitude-5591.. ([2402:e280:21d3:2:339d:c9c4:e069:47f7])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498e429d9sm190932845ad.100.2025.10.30.09.34.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 09:34:40 -0700 (PDT)
From: Ajith Anandhan <ajithanandhan0406@gmail.com>
To: linux-iio@vger.kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ajith Anandhan <ajithanandhan0406@gmail.com>
Subject: [RFC PATCH 0/3] iio: adc: Add support for TI ADS1120 ADC
Date: Thu, 30 Oct 2025 22:04:08 +0530
Message-Id: <20251030163411.236672-1-ajithanandhan0406@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This RFC patch series adds support for the Texas Instruments ADS1120,
a precision 16-bit delta-sigma ADC with SPI interface.

The driver provides:
- 4 single-ended voltage input channels
- Programmable gain amplifier (1 to 128)
- Configurable data rates (20 to 1000 SPS)
- Single-shot conversion mode

I'm looking for feedback on:
1. The implementation approach for single-shot conversions
2. Any other suggestions for improvement

Datasheet: https://www.ti.com/lit/gpn/ads1120

Ajith Anandhan (3):
  dt-bindings: iio: adc: Add TI ADS1120 binding
  iio: adc: Add support for TI ADS1120
  MAINTAINERS: Add entry for TI ADS1120 ADC driver

 .../bindings/iio/adc/ti,ads1120.yaml          |  50 ++
 MAINTAINERS                                   |   7 +
 drivers/iio/adc/Kconfig                       |  10 +
 drivers/iio/adc/Makefile                      |   1 +
 drivers/iio/adc/ti-ads1120.c                  | 509 ++++++++++++++++++
 5 files changed, 577 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml
 create mode 100644 drivers/iio/adc/ti-ads1120.c

-- 
2.34.1


