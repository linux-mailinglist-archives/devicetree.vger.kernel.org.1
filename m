Return-Path: <devicetree+bounces-116600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEC59B35D0
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 17:08:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4BD44281EC6
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 16:08:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B84491DED4F;
	Mon, 28 Oct 2024 16:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="B1ORLztJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A3B1DCB2A
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 16:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730131695; cv=none; b=oxPbZd/H2qKCCrdDoY+K8TcztCE81IXIGwMFvs9o1v+OFe4HUsoQEJkJIHqcVz3ld9uUwRwCA93MeDOR5mr2cKFdttxsGLnDmFmtVXryVgHyLE+iZ4fm3zOmd9hE+T8MIFOc6l8RjTd+ioltTy0hWIb4B8EjnPQd5mFb+i+YAs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730131695; c=relaxed/simple;
	bh=IT+H+bTxJcRgKwTMvHVT/h+R8TgmjcAxngUaS/K/JWE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=pd45iKNfcXgF+dUc9VaQSo1HlHx01x3QUp7pDGsQMCnw34BzZVZzEOvRSuDswqv0DyZblsUioKuoQIGf+t8W7X4o5KOVw6aXNZWzJLyvrDRH4++VwP66MjMQmpzcd5LDuymLJOHe9kAUI/oLrJhqKDs7R5cJ72mnz20zI/Lwi1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=B1ORLztJ; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539f72c8fc1so5479694e87.1
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 09:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730131691; x=1730736491; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hyUpiW4yCf0sjyacBZwkdJohAV+ABGG5uJtRNWH8ZpM=;
        b=B1ORLztJDf4muYIV5DRB1V009oQGRadruWqBY4CIjXu+i3QCnjU56McsTPQZUHLWHW
         UbZWWqqvLCiUX/5TLBxr0C9fkEM3P8bMl2OSKD2LEVNIMYX+qHvk8yju3j6030uz+mZr
         80cEsCgM0Yoem+Wd26xP42NwaL1scnACPzcKNbnJd+/R2dyKhup9BqKrdWEWQu073U7E
         yG9jI4F8N9+WWGa0QQrKy6Y2z5pwzxGtqahIap2CaCpgdac3Cs+tsUq5Ic8ZYr8xrJpF
         hecaCiD5+/H7OEGU+Jh4/00b8Hh4ZBmwJacAqVbB7Jw15Qm9LGFGuRLZGF7liRnfDbVw
         OfMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730131691; x=1730736491;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hyUpiW4yCf0sjyacBZwkdJohAV+ABGG5uJtRNWH8ZpM=;
        b=afv9GKcwEbWsiGF+jFELEEed1MkB0Lkle+hae8dhK4D7gCQ9FTp9gmhW4hpzbsgcte
         e9MY2SngHBeuZnO9XIRKNNVHwL2/IMuFX/PjIppxpwtT+tC0Vk3+RQLhV4uMhQsEp7GV
         jXjuiF3sHr5MFhHFBL5C7JIsbcT0BW5PHzUjZE9C1+J/aaV+0SjsTnzTMmoR5Z8iJ4Bl
         gwuzPTZkDzRbSUdgBchss9RbWZSOMAlh7IQV8CQsSMCe0mGbfhD01xO2DSMBmi1Q0MDx
         zd6FaK52KQOM2p9Byk6RtsqrynJXCxp7anaEPNL+eV8Mx/V6XlVyz6rPqLMF1oW65r2r
         ydOg==
X-Gm-Message-State: AOJu0YxWcADzkE648z+Bq020ysSmevVbhVlU/bvAVobjE7BaC5JxFArz
	qEEbBLdYHlcf+3Ctx+8qPRVZN6zywfeKdQS8xHvhGxSl8b9SalDGHV+Mun2FeRg=
X-Google-Smtp-Source: AGHT+IGSFcYfO62rtEqiUs7k9J42gO5NF951r4kDvZubKlCmPQOBPqYNu5rptSzpBdrRPiIQfMlq1Q==
X-Received: by 2002:a05:6512:230a:b0:53b:1f7a:9bf8 with SMTP id 2adb3069b0e04-53b34a34190mr3315283e87.55.1730131690894;
        Mon, 28 Oct 2024 09:08:10 -0700 (PDT)
Received: from localhost (p200300f65f0c3200f401bf2b6011cd64.dip0.t-ipconnect.de. [2003:f6:5f0c:3200:f401:bf2b:6011:cd64])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058bb4b27sm9895239f8f.117.2024.10.28.09.08.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 09:08:10 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Dumitru Ceclan <dumitru.ceclan@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Nuno Sa <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v2 0/4] iio: adc: ad7124: Make it work on de10-nano
Date: Mon, 28 Oct 2024 17:07:49 +0100
Message-ID: <20241028160748.489596-6-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2183; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=IT+H+bTxJcRgKwTMvHVT/h+R8TgmjcAxngUaS/K/JWE=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnH7bVGghWcColz4VieIZh0b7JUi4GMgRpXaM1/ TWyVRs17kWJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZx+21QAKCRCPgPtYfRL+ TnbaB/9cnKAVNPyOD3rhRK/TDoyXQFBVRx61pWiwJUa7fKoAulgn61SiR672ZBr9lk30V4Uiewn 7TEY/n1hTPasmF6qkkEGd2LnKMP4tYtWgtpVvd5uVf+YKpCIJBn00U4oibuBVQ9TY6JZMhUi97o 1f9dQ5qGuW9e31NK18HmOQCTmktM8qcA49NG3H3b6LKOug/qRcNo+SfF+2sxlrWFrrW4bqxrdGF jH1IdR/0CV93m1bD033zOVvedfgeRNi5vJGXi8fyHhJcgwsn/zcRGbMt1LPEx2WPSk9I+/KjuD/ P/lQl4Eh6YLQhUbu61nmMOaQ85w9dMX9UEItJ1ZSL6d5wXAY
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

Hello,

this is iteration v2 to make ad7124 work on de10-nano. (Implicit) v1 is
available at
https://lore.kernel.org/linux-iio/20241024171703.201436-5-u.kleine-koenig@baylibre.com.

The changes since v1:

- Write 0 instead of 0x0001 to disable channels. While 0x0001 is the
  reset default value for these registers (apart from the channel 0 one)
  there is no sensible reason to use that value (i.e.
  AD7124_CHANNEL_AINP(0) | AD7124_CHANNEL_AINM(1)) as the value is
  reprogrammed before use anyhow. This addresses the feedback that the
  magic value 0x0001 should better be constructed using register bit
  field defintions.

- Add maxItems: 1 to the new property defined in the binding patch (Krzysztof)

- Rename property to rdy-gpios (Rob)

- Use rdy-gpios only for gpio reading and continue using the usual irq
  defintion for the interrupt (Jonathan). I was surprised I can use both the
  GPIO as input and the matching irq.

- patch #1 is new, and use GPIO_ACTIVE_LOW in the gpio descriptor
  instead of 2.

Jonathan voiced concerns about the reliability of this solution and
proposed to implement polling. I'm convinced the solution implemented
here is robust, so I see no need to implement polling today.

Still open questions:

 - Is rdy-gpios the right name. The line is named ̅R̅D̅Y, so maybe nrdy-gpios? Or
   nRDY-gpios?
 - Jonathan wanted some input from ADI about this series and the
   hardware details.

Best regards
Uwe

Uwe Kleine-König (4):
  dt-bindings: iio: adc: adi,ad7124: Use symbolic name for interrupt
    flag
  dt-bindings: iio: adc: adi,ad7124: Allow specifications of a gpio for
    irq line
  iio: adc: ad_sigma_delta: Add support for reading irq status using a
    GPIO
  iio: adc: ad7124: Disable all channels at probe time

 .../bindings/iio/adc/adi,ad7124.yaml          | 11 +++++-
 drivers/iio/adc/ad7124.c                      |  3 ++
 drivers/iio/adc/ad_sigma_delta.c              | 35 ++++++++++++++++---
 include/linux/iio/adc/ad_sigma_delta.h        |  1 +
 4 files changed, 44 insertions(+), 6 deletions(-)

base-commit: 9852d85ec9d492ebef56dc5f229416c925758edc
-- 
2.45.2

