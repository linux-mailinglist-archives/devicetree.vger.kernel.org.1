Return-Path: <devicetree+bounces-294009-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDoGOy2K/GleRAAAu9opvQ
	(envelope-from <devicetree+bounces-294009-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 14:48:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 915CF4E8704
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 14:48:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D76B83028EFE
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2026 12:47:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86A783BAD96;
	Thu,  7 May 2026 12:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nOLQ4kBJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FF03F0AA1
	for <devicetree@vger.kernel.org>; Thu,  7 May 2026 12:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778158063; cv=none; b=Qyd1uPLMUv6jk2khCR6krXtkLKcYuq/jG1aD5EigjYEXmf1ABeYYdu798ff+zk05kMFFoJf+K/oeFD6ZB8hRlDsAGHkmUWc/DUwcFboRY7vprJVN0wnzBJo5mH20JYi0EmnGGPfNIjxzPKgVDezl40J0W8g6Rcx42OSzplfJ6r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778158063; c=relaxed/simple;
	bh=eyd50cmuYyLr2wIaBreZG2Fb1acqfssCP8kcgHPtsK8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PGjzEAAAlgj1dQmc4Abg07sRGiosoRkMLo6TNZMO6qDHkbXtTRa0YGV/a28v8lHpwpXqU6ik0zntG3nDWVumcIa0nA42F8eUhRkJCMJ8buu1jNJelC9DW5egWr/dNIJAC5tO36bsQSCULX+g1S34QooYVvAsywChZAFn+5VsQxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nOLQ4kBJ; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4891d7164ddso5141895e9.3
        for <devicetree@vger.kernel.org>; Thu, 07 May 2026 05:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778158057; x=1778762857; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ONViZRNlsNaxoC7NqpsyYL/lwLto2zHXbx8xCpboj00=;
        b=nOLQ4kBJZ+KRvt9BQ/Zr53/+tTJm5W8Ayo7ujTSzP4leYZBB5U4oHhnGyfSlDSAZMW
         5Efuyei+z6vWKk6eG8QSdF03p8F1usEfnJJqkzarJwG1ZT3oqokkSKDw4IIXOuRV2v/Y
         nUEVqjUc6m7CRW565kNH36sR+70eUI1GI81c+LpXkhiEQvEbSxdwntQyxwasatCryspQ
         /shUpxOAil8dZhob8hlyFlmXPKVw8wEW3RuTOKXW+x4rK8tYbgo/OuhWepwfRHYC4wiC
         1s3ydR5fR8TPY7W8XsaPE9mhSVufgNb6DOjn4hQN04zaI/5F6LRQeObiNCkGXyNbQ0ih
         ppVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778158057; x=1778762857;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ONViZRNlsNaxoC7NqpsyYL/lwLto2zHXbx8xCpboj00=;
        b=PCnebwdXWLCa8fUT6EtZVcv1ZjszHYvH1SRaawbMljorl6I19EkejGdoBT3pQL8LRX
         O3h2gviqgLfkTYJ1YHkApIpczUVUEd08GMoodHrM6hY/ReGz3Ugp2a1MlTZA54gAUasQ
         5Ct92wEB6ckddNwRfeUYrT51wRXyTfBUxoIK5h2I1V/G4ey+5Gu85vajVuj1G+JUi5bk
         f6dz6aFbhiXS1g+JiRgBDErDQqrXwJa+SQaAeF2pIiYmqmAAdfytxvSKBSETvCeM3D9W
         ugwt6EP1LKCJA2O+yDmFX8r/sFTsl9kT3szyzaV1SjcuVCvsHa1kkqNKXnKPw3RF+ob1
         npmQ==
X-Forwarded-Encrypted: i=1; AFNElJ85RfD/FKIzg3jDrq2xXyTAURfA55RgxwehNN0X1rPg8owjkV5YoOzPhBuF4d0hgz98bwH4f/nndT1A@vger.kernel.org
X-Gm-Message-State: AOJu0YyXmmyUMrj70/H1TX2EqKxihCacm0oNQLvPJqoKG1gaQFYQM9CU
	+YIkiYT2qPDi6njZ9BWhV7QXzWPhBiUkDsJRNuOBzKDHs0F+OPCSlj4x
X-Gm-Gg: AeBDietQsslA2sUt8yM9V3ZT1p0nrvALcudWVqr67lBZ+waZ4OU9Pcp1n7auxKnW2fI
	anPi/j6W4dGvmUA3b3HyJWvAu0/2Zh6XLVXfkf8xc6jDFyNKzZxl5I0kudV/wgzKghLJMAm6YUY
	EMLUN8ePN6YwRR4TX8NJURVfpBl92s/imRyeHsdJrg9mpMNjt8kKklGa/ArddUWojnwzkdkkGHs
	tAzL354cCjrz/gJBOB8ShuXwNuP834qRR0suqBb0jvp58u73BB9IPX/sdywbcQQht9EOhKAAARo
	mlNCk3lPUpQiIvPuXhmDVzveBXooTD2Kq7xrYeth9rfY7Fchlmk62V81K14K3+/+iwTVournvI0
	j6Qyz6+EZTJhKVsQaTfOss0y/T5XDZILfW4YQNIxjg01vmq9VftPji5Gi4hwKf8gMUOgq5Kqmhq
	v1Ipo2MTI6oMsK9PMj9ElGfvwOh/bGxVF2k9Cb0YN/xTEgWg2QCKRND60gRvwc6UUEz6ZnrZ23n
	roPRURck7XrWAepzITzU5f7lcSaYA==
X-Received: by 2002:a05:600c:b8a:b0:48a:56de:d620 with SMTP id 5b1f17b1804b1-48e51f32ac3mr131868335e9.14.1778158056987;
        Thu, 07 May 2026 05:47:36 -0700 (PDT)
Received: from ai-node.taila4f726.ts.net (89-139-15-25.bb.netvision.net.il. [89.139.15.25])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48e538b6e9bsm209228145e9.10.2026.05.07.05.47.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 05:47:36 -0700 (PDT)
From: Vladislav Kulikov <vlad.kulikov.c@gmail.com>
To: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Vladislav Kulikov <vlad.kulikov.c@gmail.com>
Subject: [PATCH 0/3] iio: magnetometer: add MEMSIC MMC5983MA driver
Date: Thu,  7 May 2026 12:47:21 +0000
Message-ID: <20260507124724.813043-1-vlad.kulikov.c@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 915CF4E8704
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294009-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vladkulikovc@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Add an IIO driver for the MEMSIC MMC5983MA 3-axis magnetometer over
I2C. The driver provides raw magnetic field readings with per-measurement
SET/RESET offset cancellation, giving 18-bit output with a full-scale
range of +/-8 Gauss.

Tested on a Raspberry Pi 2B with the sensor on I2C-1 at 0x30.

The following chip features are intentionally left out of the initial
driver because the public datasheet does not provide enough detail to
expose them confidently through stable IIO ABI, or because they still
need more validation:

- SPI transport: deferred because SET/RESET polarity behavior has been
  reported to differ between I2C and SPI, especially around SET/RESET
  timing and/or SPI mode.
- Temperature channel: deferred until the temperature output behavior is
  better validated.
- Continuous measurement mode and Auto SET/RESET: deferred because the
  datasheet does not clearly define the interaction between CMM, TM_M,
  Meas_M_Done, and SET/RESET sequencing.
- Saturation/self-test bits: deferred because the applied test field
  strength and bit lifetime are not specified.
- BW/decimation filter tuning: only the documented measurement timing is
  used; no filter response is exposed because the filter topology and
  coefficients are not documented.

The driver uses a conservative 500 us post-SET/RESET delay before
starting the following measurement. The datasheet describes a 500 ns
SET/RESET coil pulse, but existing sample code and practical testing
indicate that a longer software delay is needed before taking the next
measurement.

Vladislav Kulikov (3):
  dt-bindings: iio: magnetometer: add MEMSIC MMC5983MA
  iio: magnetometer: add driver for MEMSIC MMC5983MA
  MAINTAINERS: add entry for MEMSIC MMC5983MA magnetometer driver

 .../iio/magnetometer/memsic,mmc5983.yaml      |  38 ++
 MAINTAINERS                                   |   7 +
 drivers/iio/magnetometer/Kconfig              |  11 +
 drivers/iio/magnetometer/Makefile             |   1 +
 drivers/iio/magnetometer/mmc5983.c            | 330 ++++++++++++++++++
 5 files changed, 387 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/magnetometer/memsic,mmc5983.yaml
 create mode 100644 drivers/iio/magnetometer/mmc5983.c


base-commit: 7fd2df204f342fc17d1a0bfcd474b24232fb0f32
-- 
2.43.0


