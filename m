Return-Path: <devicetree+bounces-249645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 65994CDD943
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 10:26:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 152563028F66
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 09:25:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7291319610;
	Thu, 25 Dec 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YKMWslUl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE59120FAAB
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 09:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766654753; cv=none; b=NQVnIvpNbJ2aRPLoWJMUFjyeyFVxUJc+gbPJ/j6ADk5XQZOf7owmueGdZIzXcNTUkghnTl6wBOFPHDuwuIHOuRFGczMxb2gHLnjt2IFvsUoLdiusdQGZSsax7fqbWrvuwXKMBwTC24H7TOHEPJ/Tmw0762pRwaNJWm3ruBJj1HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766654753; c=relaxed/simple;
	bh=lpb9/3DK7ALY+1M/QPt26J7EyO42orqOgUYOaDKIbU0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LizHu6wfBwmQ2Rw3CqRsJBlnLdEdbKWLHXiw+zaULyKHuEJZe7RRXbOgKKSBk/YhvpC7iBmdH2X2l5GMM6GRiYSwqTgP3eYQmM7SYMgz1NdyF/CO5MaztbASR0jsyqQmYz0Hasc2Me1r8lTuguUQtH/ALcmW0yNTQGMpKGaschg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YKMWslUl; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-2a0c09bb78cso47197515ad.0
        for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 01:25:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766654750; x=1767259550; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RJdCkCbfYuG1MRzNXkV+YupMxNU5tXNQgZDynoVb6bo=;
        b=YKMWslUl9hTU0VHjNySSPA9pzIAVfChv5OfgPrQYuXjLsLr621sCK8CZ+X8gUDA8D9
         e82E3Qblf+WlQokg72mkoSB7km6XRYEkgmVYOqXAaIAAmxxDSJOyCL10TQ469YWzDnHj
         +/ZHjgiwJTX8PH4d14x4mSjHzn00NV8pnFUqEAttvhCEWAAUbsQ5nT4UkBUsbhUGOeQB
         XSpCNtVQinCcJMT/PS/dES+l0YTrxVMXnRA5V0JTaLtAhWuwftbiLjcfpMiP7b+aQd36
         iivw9DyTOdON4YOhUzJu/Mppjq7EVvTbgQhK887T423WyfrN9Tr/PGxCLF76Z/XVfcIQ
         mbSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766654750; x=1767259550;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RJdCkCbfYuG1MRzNXkV+YupMxNU5tXNQgZDynoVb6bo=;
        b=t6wSAOhy9WHqOMAuVvzsGgsjGjjdSLuSWfENTCuC/4PhFsDu2futQ4wnSavFboPhdZ
         KnTkF5kU7M/Jiga1Ecotm1C33uj71cwdQM0jSrBUo0GIWOxb+HfCABD2Zi9e8SdoXALc
         iGXhqOQ33rTA/yxfTR+X+QdT0hEGcdJtt0Rlkwo1+jaafGEuFoJXs3lo8uh3VbYEjMwG
         VXXnVjNxNn4YpC/BTea6ESqTzms6TXus2NwUlZ8mBpPfd4oPmQ2/rX0Rd/f7ME8zWQz3
         e1GX2YR5nDPfEqWW3wOUhE/9IpYQL1VFndJt6gc3PddWlilvxGrmM+MoKyHgoSTFTj2C
         b5NQ==
X-Forwarded-Encrypted: i=1; AJvYcCU5RfN4rvFvh8lUWjihPpwp9++ejktJTWv71YMg7nfPHmwVgjIPRO6mZEfUM5cxrzJnza4Nc6nNBq4F@vger.kernel.org
X-Gm-Message-State: AOJu0Yxc5UOuiwCFxi1OLXqA7/y+Aey697lAEvCa5ogO7LF3MD5WywGo
	k17bpCobRA4xZaZvg0l0xZmja2jhVkCNKxUCmreYePW3S6/r0dmY0Rax
X-Gm-Gg: AY/fxX6dL7cmHh1V17v+7Ux9rwkHJnVi5MBuNJ8zZHvaeo8aNGB2ftsy8duJ2KsAJDG
	fQQDjxHvIdmLB+Bvxb8TmINjroVtJHQ3LxnBmPbkJ1nYzgbCeDIICRXgd8ZLtmsXqYsMNZGfNGw
	llQB/ILQ9/p60GWnKRdyuiKNFGH3pF+z0LUZFV0yS/FHQa9hMqba8hOtQaptqaskjpYPCHGsOST
	tFaNRHe02RbThFDGdvV8nnW4g9XvnZCw57MJ9Fu8GjxZJcCVPjCEOcq8bEr4RxDan9ktdqp5XHo
	hELaC94FwT36JkHdn5oK99iMe7zN90Tcb5kMrIpEeCTeXv/1BrHyuZM3b5BLCI+27TUlkzUxKga
	yAvq0ag5nBVVSG+0elpjH3/bQGTnW9VM5AJgan0YlYYHmrfmNjGIJzLv4vL2kf5yGKLNTwC06qE
	zDabKBkF8W/pejoA==
X-Google-Smtp-Source: AGHT+IEgGuutywGEcx7A6zRarRYg29s1/vlspKVocesMq7EEjWyY7y18FGpFz7WOtxAgfWf2sx2Xlg==
X-Received: by 2002:a17:902:e78c:b0:2a0:d0ae:454d with SMTP id d9443c01a7336-2a2cab4335fmr203328535ad.22.1766654750230;
        Thu, 25 Dec 2025 01:25:50 -0800 (PST)
Received: from Ubuntu24.. ([103.187.64.31])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d7736fsm178970115ad.92.2025.12.25.01.25.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Dec 2025 01:25:49 -0800 (PST)
From: Shrikant Raskar <raskar.shree97@gmail.com>
To: jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	heiko@sntech.de,
	neil.armstrong@linaro.org,
	skhan@linuxfoundation.org,
	david.hunter.linux@gmail.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Shrikant Raskar <raskar.shree97@gmail.com>
Subject: [PATCH v3 0/4] iio: proximity: Add interrupt support for RFD77402
Date: Thu, 25 Dec 2025 14:55:07 +0530
Message-ID: <20251225092511.9020-1-raskar.shree97@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series adds:
 - Add RF Digital vendor prefix
 - YAML binding for RFD77402
 - Add OF device ID for enumeration via DT
 - Use kernel helper for result polling
 - Interrupt handling support
 
These changes enable DT-based configuration and event-driven
operation for the RFD77402 Time-of-Flight sensor.

Changelog:
Changes since v2:
- Add 'Reviewed-by' tag to dt-binding patch.
- Update commit message in OF device ID patch.
- Update commit message in the third patch.
- Replace rfd77402_result_polling() with read_poll_timeout().
- Add 'struct rfd77402_data' details in kernel-doc format.
- Arrange includes in order.
- Add comment for completion timeout value.
- Remove blank lines.
- Indent the comments to code.
- Convert mutex_init() to devm_mutex_init().
- Remove 'IRQF_TRIGGER_FALLING' flag from devm_request_threaded_irq().
- Drop the duplicate message.
- Replace 'dev_info' with 'dev_dbg()'.
- Update 'dev_id' to 'pdata' in rfd77402_interrupt_handler().
- Drop 'interrupt mode' comment
- Use 'if(ret)' instead of 'if(ret < 0) for consistency.
- Use 'return i2c_smbus_write_byte_data()' in 'rfd77402_config_irq'.

Shrikant Raskar (4):
  dt-bindings: iio: proximity: Add RF Digital RFD77402 ToF sensor
  iio: proximity: rfd77402: Add OF device ID for enumeration via DT
  iio: proximity: rfd77402: Use kernel helper for result polling
  iio: proximity: rfd77402: Add interrupt handling support

 .../iio/proximity/rfdigital,rfd77402.yaml     |  53 +++++++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 drivers/iio/proximity/rfd77402.c              | 149 +++++++++++++++---
 3 files changed, 183 insertions(+), 21 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/rfdigital,rfd77402.yaml


base-commit: d8ba32c5a460837a5f0b9619dac99fafb6faef07
-- 
2.43.0


