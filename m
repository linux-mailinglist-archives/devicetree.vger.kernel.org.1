Return-Path: <devicetree+bounces-271489-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHhUEz9ZqWkL6AAAu9opvQ
	(envelope-from <devicetree+bounces-271489-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:21:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C037C20F9EF
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:21:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B667D301584F
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 10:21:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC18E37F018;
	Thu,  5 Mar 2026 10:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dXuMygBO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7579C378D9C
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 10:21:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772706108; cv=none; b=TVj7D+GM3JKGUlPhBZKC/fz71Im+weRO89ge5Fy71qMX1PaGelOqulyRMRdZOg4ehdVXh3IDqMOuhCPycjFCniAINqRhG1GcYI0MhcwvOmumu5ZCIFbcic5K/NJr6wTI9pNWHA9cm/I0wyDNlMPhKPGKpkp0BSM0fyrBodawgvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772706108; c=relaxed/simple;
	bh=kCf0b7r3+aYWKlEFLmr5M/pVZbkqCg9FOYJ6cnxL51E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RMEYOSpC8nm4cvu/oWYYVXcJns7zpCk8HzsRPPyGEPqyQHK/+oZFjw/Ly3a9WNjo/BH3hwEpUoNFkHhlPWKzHShBEngpqE9fN5xndUa0bmV8VZra0kmzG+TwqhOYMag9FY8hS7STIRLQct7hl7Ahr76zNIFzKyPblJmcqvgYZW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dXuMygBO; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-439c92a193bso1620253f8f.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 02:21:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772706106; x=1773310906; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xq+iU3O0H56kjgqFLX7flDI07VtXwGN9nbYmC0naI+o=;
        b=dXuMygBODYDtjGqDZ9xTMu3FlmkqBKpaZPd0RtwDfyyt9wlF9a8MjB0gN0bbKRJSSz
         67NCvw12Gzw7gqAYcvhvuMKdmsl/h2d7sEquqzBPV5oek6eNs7uzhAC80l8p2zLFGvVP
         Hnlr0rM0ZTXEQIvmOLzQ51L+QMr7CKaxBCRUtxHg1SkfX+RIVMrMrL3Ar5f/sFC6Mz75
         jrIn1kxL9HGhmYxNjX8ZqABxGcyy0SjheWxJPQio498Yy12LSTP1foDRQ0vRwgsZKKXi
         2zsVE1Yul2TO/H/KsgHnm0ciOwbtCpL927qfrnv0uebNPUOYJoqTuCLqiRMfmvPYde/u
         o9IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772706106; x=1773310906;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xq+iU3O0H56kjgqFLX7flDI07VtXwGN9nbYmC0naI+o=;
        b=rz5I7y9CWF1zyUJa7CEzEaMPn30GC06txG3EU+quWgx5c6HelqrfGzXqpSzBZbEqS/
         eWuPupa7+i2g6Tntdu7O0u37PSlnWYZwe6O28pLRHO6inSEF1g9fUHVJODx03g59/Rrv
         QjI1oCltR9dLzckTPB9aJwmkvzga8NRaK39yiswUIPWruflk9UKMiThtBD3E0scOUFHs
         cheH6QO856go0BrNVnkxTfLc1Tle6IKYiPZ88bvBGnW1eUW7OByp0TJ8JZ5sHm1aH7FA
         BM1ruEtEsqHKrBcTT8Yd5b+MR2y5fBoowj5Tk4kWszAfhcbtZZB2QhnRzx8av5lnmwxt
         /40Q==
X-Forwarded-Encrypted: i=1; AJvYcCVbMSjVIl88Bsdy7N3mCG900riqJ2xWXeRPsF/JD6ctnxuPToE6ltsFJMEA7X8g/g6CWnmr6KPgbFS+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5+To7yvhXqJHDvnyggWv1/oyT/iDPgrZOoPSIOPU6GSdGJhol
	uWZlcQRblNH3j9nk2COGSnXm78YBUPQ7CaR9cZ9y4ejdDtDHrY+BaoDQ
X-Gm-Gg: ATEYQzzvgYJZfTqcWMF1zyKZghtRo7hBLPN07PAdRPKdlHUOuw91mcHbo90KLYPZJwT
	RDHH4q0gWHZd+j+pENlwdfMt+tQDNDm9xBd+Xta9cngwQm0PLpaKfwSg7/j15TH2rwEnzgMVPC4
	rXmkqXTI/SXr1sMsZNC3Orl6C9bN+kkgablRhT7hof7Py5C2s6190B9w678rBDKmv004RZ7uSOA
	Z+bq/qgTj1PEPE5CWwTZYJccriJz0Pg48+usE5NmNuhD99rLNKe9IYk5LlB9MkDfj5NPzSQXA+f
	PmJ3JUTDkzWrlDWmYg2IX6iS9X7m+dRsvXIEmWv7ZeZXm7c1f988aB8/8u3AYtNHm8sg07aadvW
	cEtD9K7AkF12xm5FjHAKnXv1YxnkK8SgGcRzfRfkqRveJsPN7a9UslJz53ZY+uyv0+ZhVgj2iiG
	pFeO7Vcnvdaemr
X-Received: by 2002:a05:6000:2011:b0:439:b6f9:b438 with SMTP id ffacd0b85a97d-439c7fd955dmr9774946f8f.33.1772706105447;
        Thu, 05 Mar 2026 02:21:45 -0800 (PST)
Received: from xeon ([188.163.112.72])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b503425asm32625444f8f.25.2026.03.05.02.21.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 02:21:44 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/2] media: i2c: mt9m114: add support for Aptina MI1040
Date: Thu,  5 Mar 2026 12:21:20 +0200
Message-ID: <20260305102123.17216-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: C037C20F9EF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[bounces-271489-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[ideasonboard.com,kernel.org,linux.intel.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Slightly different version of MT9M114 camera module is used in a several
devices like ASUS Nexus 7 (2012) or ASUS Transformer Prime TF201 and is
called Aptina MI1040. Add support for MI1040 into MT9M114 driver and
document it in schema.

---
Changes in v4:
- added mt9m114_models_default to ACPI data

Changes in v3:
- state_polling > state_standby_polling
- added check for device_get_match_data

Changes in v2:
- dropped conditional polling of command register 
- switched to device_get_match_data
- cosmetic changes and typo fixes
---

Svyatoslav Ryhel (2):
  dt-bindings: media: mt9m114: document MI1040 sensor
  media: i2c: mt9m114: add support for Aptina MI1040

 .../bindings/media/i2c/onnn,mt9m114.yaml      |  4 ++-
 drivers/media/i2c/mt9m114.c                   | 35 +++++++++++++++----
 2 files changed, 31 insertions(+), 8 deletions(-)

-- 
2.51.0


