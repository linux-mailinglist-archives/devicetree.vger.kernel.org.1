Return-Path: <devicetree+bounces-231027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8EDC08BC6
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 08:12:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0D8964E6FCD
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 06:12:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 738BA2D47FE;
	Sat, 25 Oct 2025 06:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=iitb.ac.in header.i=@iitb.ac.in header.b="et3GuBvK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp1.iitb.ac.in (smtpd9.iitb.ac.in [103.21.126.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FC22D46B3
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 06:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.21.126.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761372717; cv=none; b=RhC06O4o/rMJa8KFE4sKuBUpu7sKzeoBORZXBMYz/SrrR3/IEYm+sKuuwgKzkMkKHT/QjpFljx7ANxyPiaFjwhBe0RBKOstqhCqyBzDOPmd4QxirWV+v7DPxy9PXLYa7uNDrHf5wp7qVBlh0qEAPLUD3Bv+Ksiu8HqneTGnrG40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761372717; c=relaxed/simple;
	bh=ht8mivIVcsrq/tkyABarOkXZzy8pnBOzGwAxzEl5OjA=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=I2fkp1vU9U+Eh7rzprIjkb1ZSQo6KmFF03BrRrnLLlVu0w0LF7NpAUEtPuW3vvISPMXIKgDoTmhmkRgAOxucI5alqVSOfxd5sEGnQXolH4uNdMcNCPfUIVPVbHJ7X+XNHiaz4aDh1v9252NdK3+BCnndYQG8gmPIAl20qEf/Zyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ee.iitb.ac.in; spf=pass smtp.mailfrom=ee.iitb.ac.in; dkim=pass (1024-bit key) header.d=iitb.ac.in header.i=@iitb.ac.in header.b=et3GuBvK; arc=none smtp.client-ip=103.21.126.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ee.iitb.ac.in
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ee.iitb.ac.in
Received: from ldns2.iitb.ac.in (ldns2.iitb.ac.in [10.200.12.2])
	by smtp1.iitb.ac.in (Postfix) with SMTP id 57F46104CBB0
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 11:41:48 +0530 (IST)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.iitb.ac.in 57F46104CBB0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=iitb.ac.in; s=mail;
	t=1761372708; bh=ht8mivIVcsrq/tkyABarOkXZzy8pnBOzGwAxzEl5OjA=;
	h=Date:From:To:Cc:Subject:From;
	b=et3GuBvKmfXQVN1T2QAZvZTfpAUPDtEy2a6Wj46Z+BTHUY7DLwTnya2FGMW9YbZm0
	 JXAoMCVCRwIrW7J1UZsdSK2oFLhL3MadaG9KffDlTNOMshH2AsRjNUMYmTUZjcoq5B
	 Ky0lYcGIbJBHGxoW56IL9ab3+h+4wT43JSlcfvYY=
Received: (qmail 23471 invoked by uid 510); 25 Oct 2025 11:41:48 +0530
X-Qmail-Scanner-Diagnostics: from 10.200.1.25 by ldns2 (envelope-from <akhilesh@ee.iitb.ac.in>, uid 501) with qmail-scanner-2.11
 spamassassin: 3.4.1. mhr: 1.0. {clamdscan: 0.100.0/26337} 
 Clear:RC:1(10.200.1.25):SA:0(0.0/7.0):. Processed in 4.604223 secs; 25 Oct 2025 11:41:48 +0530
X-Spam-Level: 
X-Spam-Pyzor: Reported 0 times.
X-Envelope-From: akhilesh@ee.iitb.ac.in
X-Qmail-Scanner-Mime-Attachments: |
X-Qmail-Scanner-Zip-Files: |
Received: from unknown (HELO ldns2.iitb.ac.in) (10.200.1.25)
  by ldns2.iitb.ac.in with SMTP; 25 Oct 2025 11:41:43 +0530
Received: from bhairav.ee.iitb.ac.in (bhairav.ee.iitb.ac.in [10.107.1.1])
	by ldns2.iitb.ac.in (Postfix) with ESMTP id E32553414E8;
	Sat, 25 Oct 2025 11:41:42 +0530 (IST)
Received: from bhairav-test.ee.iitb.ac.in (bhairav.ee.iitb.ac.in [10.107.1.1])
	(Authenticated sender: akhilesh)
	by bhairav.ee.iitb.ac.in (Postfix) with ESMTPSA id A68641E8160F;
	Sat, 25 Oct 2025 11:41:42 +0530 (IST)
Date: Sat, 25 Oct 2025 11:41:37 +0530
From: Akhilesh Patil <akhilesh@ee.iitb.ac.in>
To: jic23@kernel.org, dlechner@baylibre.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, nuno.sa@analog.com,
	andy@kernel.org, marcelo.schmitt1@gmail.com, vassilisamir@gmail.com,
	salah.triki@gmail.com
Cc: skhan@linuxfoundation.org, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	akhileshpatilvnit@gmail.com
Subject: [PATCH v4 0/2] iio: pressure: add driver and bindings for adp810
Message-ID: <cover.1761372227.git.akhilesh@ee.iitb.ac.in>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patch series adds support for aosong adp810 differential pressure and
temperature sensor driver in the IIO subsystem.

Patch 1: Adds bindings for this hardware.
Patch 2: Adds driver code with device tree support.

Overview of adp810:
This is digital differential pressure and temperature sensor from aosong under
the brand name of ASAIR. This sensor can measure pressure from -500 to +500Pa
and temperature from -40 to +85 degree. It provides simple protocol to measure
readings over I2C bus interface.

How to read from sensor (Protocol)?
To read from sensor, i2c master needs to send measure command 0x372d to
start the data acquisition. Then host/master should wait for minimum 10ms for data
to be ready before reading. Post this delay i2c master can read 9 bytes of
measurement data which includes - pressure(u16): crc(u8): temperature(u16): crc(u8)
scale factor (u16): crc(8).
Host/master can optionally verify crc for data integrity. Read sequence can be
terminated anytime by sending NAK.

Datasheet: https://aosong.com/userfiles/files/media/Datasheet%20ADP810-Digital.pdf

Testing:
Driver is tested on Texas Instruments am62x sk board by connecting sensor at i2c-2.
Data communication is validated with i2c bus at 100KHz and 400KHz using logic analyzer.
Sensor values are read using iio subsystem's sysfs interface.

Changes in v4:
- Revert reordering of other entries in pressure/Makefile. Only add adp810.o at
  alphabetically correct place. Makefile reordering will be separate patch.
- Added additional include files types.h, array_size.h and error.h to follow IWYU.
- Fixed trigger command sending logic in case of big endian systems by using u8 array
  instead of u16 variable.
- Removed ADP810_MEASURE_LATENCY_MS macro and used it directly in msleep() with 20ms
  delay value. Improved comments for it.
- Tab and spacing cleanup at .read_raw callback.
- Added comments at adp810_read_buf struct declaration regarding usage of __packed.
- Link to v3: https://lore.kernel.org/lkml/cover.1761022919.git.akhilesh@ee.iitb.ac.in/

Changes in v3:
- Followed Include What You Use (IWYU) by adding additional include files (mutex.h, dev_printk.h and few others)
- Improved error handling of i2c_master_send() and i2c_master_recv() with additional transfer length checks.
- Changed style of structure initialization from {0} to { } 
- Rebased on top of v6.18-rc2
- Link to v2: https://lore.kernel.org/lkml/cover.1760374257.git.akhilesh@ee.iitb.ac.in/ 

Changes in v2:
- Wrapped yaml binding description to 80 lines.
- Dropped block scalar ' | ' from binding description.
- Carry forward Reviewed-by tag from Krzysztof on device tree binding.
- Grammar and spelling fixes at multiple places.
- Ordered makefile alphabetically.
- Ordered include files alphabetically and used IWYU principle
- Explicitly mentioned unit of measure latency macro in MS (milliseconds)
- Added inline comments for explaining CRC8 polynomial for CRC calculation 
- Used scoped_guard() for mutex for safe and clean lock handling.
- Used resource managed mutex_init() -> devm_mutex_init()
- Removed dead code in _probe() function.
- Used __be16 and related helpers to handle big endian data processing.
- Apply reverse xmas tree guideline while declaring local variables if possible.
- Used parent device pointer in dev_err() calls.
- Hardcode device name string in _probe() function for simplicity.
- Made default return value of _probe() function to 0.
- Rebased and retested driver on top of 6.18-rc1
- Link to v1: https://lore.kernel.org/lkml/cover.1760184859.git.akhilesh@ee.iitb.ac.in/

Akhilesh Patil (2):
  dt-bindings: iio: pressure: Add Aosong adp810
  iio: pressure: adp810: Add driver for adp810 sensor

 .../bindings/iio/pressure/aosong,adp810.yaml  |  46 ++++
 MAINTAINERS                                   |   7 +
 drivers/iio/pressure/Kconfig                  |  12 +
 drivers/iio/pressure/Makefile                 |   1 +
 drivers/iio/pressure/adp810.c                 | 225 ++++++++++++++++++
 5 files changed, 291 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/pressure/aosong,adp810.yaml
 create mode 100644 drivers/iio/pressure/adp810.c

-- 
2.34.1


