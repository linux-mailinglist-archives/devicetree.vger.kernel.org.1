Return-Path: <devicetree+bounces-248547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E33CD3D07
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 09:39:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F0ED30056F5
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 08:39:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A52D6274669;
	Sun, 21 Dec 2025 08:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l9XpxzEb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F63A78F2B
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 08:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766306371; cv=none; b=TKsZfkYv7SMiQPAEz+ifBp/Eif+f9P0SlRku3+q2Kho+cOoC2mIuvrSk7hHex63bCR0mZNj6nkkt+aVkS0K3m3mVtoED130/KHLoC+Jls5a6QeW6/oLqTwO4z9sHN9GR3kFXmeRYfPLj/qmM8bvRJTc41LX28e98aiarmP02JpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766306371; c=relaxed/simple;
	bh=lpb9/3DK7ALY+1M/QPt26J7EyO42orqOgUYOaDKIbU0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DLkCT6fI5GuGkoyMsoiuwGlP5j0yttrL4zDLULapdDyN6E4cCOmpmgHVL7jHUQGsEC3gu2dedV8yxk78be49HvthLtRjCDeI0k2qrsRGAvviy38HTtnQLbPLfngUAWvc+0vO/RLIkUhtAP66TFIiE6KJSH00LCEKedj5lrvE7yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l9XpxzEb; arc=none smtp.client-ip=209.85.210.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f193.google.com with SMTP id d2e1a72fcca58-7f89d0b37f0so2049640b3a.0
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 00:39:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766306369; x=1766911169; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RJdCkCbfYuG1MRzNXkV+YupMxNU5tXNQgZDynoVb6bo=;
        b=l9XpxzEbLlqsE7+L2lAqI9s68YtjlTHYppSGxUJ4eOI2iFJRHScEVJNqva0ur35v4D
         pG0SU4IkhyInnMySn//R4AEXPSTEkqX2i5EdtPHcja4lwWM31FSXvPDK6GCaX4Ua+cmK
         0E1M22eYcRusAjs71twZqEx3X+2TG3jI7C/MsDws8L+Ylbdv9q/UOAKLvpf5GAWqSoc/
         vjlgLPiMxOWSC8IP1PLh8qGSVTNRewrbpPE0n16+q+LN/CkkFAELWmotyHHHrdbtnNji
         74M7PFZVcRchv9V3IkuqZE5GFwuBZTCZSbvRQriAf3J1EG7joUd2RCh8/TazpkEIuMyk
         YKDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766306369; x=1766911169;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RJdCkCbfYuG1MRzNXkV+YupMxNU5tXNQgZDynoVb6bo=;
        b=qrhieWc0IqlIgW+WN5ajirRtKPKvmJmo1c7iVDWN44FYhLrx2E/nFw5MQl9PbxXpny
         n/f+MzjrM7HbAehQ47AuG8z/Yt9kE09qpdQ/lQO8FOTH30e3RLAP6TYs88SGo00cMNmO
         5ZKSj/qtZzKMSxMRtx/3K4zp+iZvqvGdzdWp+OKQuXmP5veOpsvYHe202r/AIEzN/0Fd
         nldHlzNNGZ1d90ponXLXB/opugn97Z7S0TE/Orxi1/iempGYgHqF0nma7dK5Jw7YTXwc
         OTH2Xob3ghTnGlyyZVXfYfJCf2yrOAqfaiVj9J1m7vXzC15V2EnW4f8ZZohUGBS2w6iN
         eEvg==
X-Forwarded-Encrypted: i=1; AJvYcCUkaZeNTC8wIeQVrJ1tUyo36dJeWK75opLKi51fZmIFUPn4aZlXnTrUUjGpdcV8uqogEnWVqaN6pivq@vger.kernel.org
X-Gm-Message-State: AOJu0YxesaviXX7haBT2y0yyEh/7hbSSyFFzOBV6kt1LsjBHS+TLx0zD
	eBoXarH6CaJtkZhhYWTufUZ50esNMkLbb4tmVGd3Xs7kv03NTAw/vJ4N
X-Gm-Gg: AY/fxX7C8MXhMOPi1tZfWVZpxvhAjJXpAb6NG+e4YUpJ0PCqrJpablhweItP/+Gt/vD
	0YnCaPVINrCIwHWew9Gug6LBcOXMS+XJ6z+lCb9cSJ0xDCfpcPbISDrjUCC655/tkL5y05aknZo
	xEXoh94TV/yIdBojSDJUKm4BMo+xt266wGYfX8b8NPNkJXlxCOdxwR0YZxqiWUvZ1z+azf+cj6Y
	ushjaQCWKiF9LLK670kgfdzDU8MqUyqCGaM8YRVmfHMSwkIhaqw9+4gz9jn9sFyzt5fjkx7e4pE
	Yz2fzWjmvMgKVyEt2b1us/aR9gVCsMdapzuhb5Ii2ODGQawMm0tCAKrpU7muu/e8FhyldWDZe04
	popnYLfLMWuoNf+j07D6Jqyp+rR0GtBfLkfgy5Zp4JNkprKdyvj4Wocm0AgGQpJJ0e98t7+l9rD
	IyhiLkmLHORHJpnA==
X-Google-Smtp-Source: AGHT+IHXUQeCPQBqGmqZFoHhbNBLeMa9tKpuVdgrE/dzWGTwr6zB+0eGuvqwal9ABefR5JWG7Cqztw==
X-Received: by 2002:aa7:930d:0:b0:781:1110:f175 with SMTP id d2e1a72fcca58-7ff5330cca8mr8545745b3a.14.1766306369511;
        Sun, 21 Dec 2025 00:39:29 -0800 (PST)
Received: from Ubuntu24.. ([103.187.64.31])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e48f258sm6932678b3a.47.2025.12.21.00.39.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 00:39:28 -0800 (PST)
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
Date: Sun, 21 Dec 2025 14:08:58 +0530
Message-ID: <20251221083902.134098-1-raskar.shree97@gmail.com>
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


