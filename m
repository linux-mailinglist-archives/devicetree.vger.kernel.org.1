Return-Path: <devicetree+bounces-273678-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aOQ9G4FZsGmMiQIAu9opvQ
	(envelope-from <devicetree+bounces-273678-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:48:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCFF255D8C
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:48:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C5F6C30333B6
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:48:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CBDB3D47B7;
	Tue, 10 Mar 2026 17:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eQ88UCSW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB463C9452
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773164926; cv=none; b=ItxjWtFLoe9DnXt6lS26OH5PpB73ZX8v+q7mh9lf+atLp3ES3uww+VEs4VcHHk37k99/3BKwEzYxc1xd48S4KqZFZ0dhvey93aa+KRYd1pYB91VPdC6kKY6d1cvUSyRtlAUTUuJcAGe1EcyJGBfLrEWF8FWyv8S605yI2esxjPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773164926; c=relaxed/simple;
	bh=CAt5rbLDMhxVLmOqiqlVM1mP0fA6B6zhT5OMjhjh6p4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=URDvGCJiCWSSxnD7uA5lalqV7zsEUBJm7bJyIvL6tsCV2PjEyvucBTLTHYdsuUnBw16IogSufQfvfMM566/RwHOV6lcYT+TD4T2OJqwyk3l6AAmnzGuAPUI8prpMF9Zw9qFW65gsDVIFv17+OfDDaFembpjcZqKft9HRawj/znE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eQ88UCSW; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-48334ee0aeaso107800105e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773164923; x=1773769723; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2dldqyonvLVTQ/Lexaotmy5KRFPJ0gpKjoNB+Wq1yLo=;
        b=eQ88UCSW5DYGD7Ov835QPzK1xYqpr8tVgdb5t3TiSL3lJ1W1HjNPFWHNqVgEXbZdnx
         IIG/MMZkalA3fAfMURSphGYxS9bJWt4WSO5DKWEVYikHb2DhZtpYQRm3RJCa/3Xnc0xd
         5bmSWHLNPsoeiYA/3nlzXhR/TDqY5kpmz5CeWkG0RZzilsKL8dNOCxKfxfcPh/7rhXMU
         G4q+JsIWD8tZCrrfRkaX+91A4y0BirPAbLurkZpMEB+hVQgHOupar+Q6s57Bzbki2s5J
         hQwnAL7SCiuegeioHEWpi7hD3QDPZ67hpatdjsoaB0u8Sz2AuDKvmcNk9ZRMFrAk+8ct
         LPRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773164923; x=1773769723;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2dldqyonvLVTQ/Lexaotmy5KRFPJ0gpKjoNB+Wq1yLo=;
        b=AMIhaO3jvquOb6EJd/rl7VWHVFDb06zzfYOutV/rUJzt+4KPOyu/oBoTfm5LDJb1RW
         hmD8itxxQQmvrU5yHT5wXAnVnuPv1I1ruqb9FsVFcQSp4k1tNGj7CP4didQ8gB7KBb2U
         WZuPgOez2+Uun2I0TSZgIS4s+Okb2x057xx0Uw6ecrNrrmlaor28b7KbbeBjfO2LF8q2
         /oQvUkbF39xFL4pvmGIqatuUeKuTD9BkikKjyRkgNQ0MJx2mcMgTa0nP7gdrlB+1KWB4
         1i5RSKuy0ywCdmcGdPXuSBG4TsFECDE/XGsrhUtacCwRYA6l4NdZ5Uv8Od719Noixtzm
         d7KA==
X-Forwarded-Encrypted: i=1; AJvYcCVnMF3yp59R1z+ocbWJEzU/oqApL04DEgA90oJEaW+kg7gnhIJy6kwEfdgYdXt+G9JF+maT8eKFg4CU@vger.kernel.org
X-Gm-Message-State: AOJu0YyqU4ZbLO1y736j/+pAkeoiNU1YrJPxfBqbC31bziE1UuS8Mf7S
	0wq4OTTJkcrGqf0HhzUEnnnz6aI+socuc3JbWVoF5HDlXweVKN+JXY5X
X-Gm-Gg: ATEYQzxyjeZE1ralU3zxVr1fk1YmMUL9+OKkcDZPas+HKwid8/cUSyqayfwrcy3m90l
	yd4Urgq5cTqT+PkZPqfeOwQL7uXAKGM8kwoVr7X2pjmBxgDrITEKlVUqnBeX3Lw6AoR/tKvgGbJ
	GJOmNOstLBxSP4a3sHJaGGs47jwDLXY0zcPytJo32YdC6AjOs1aL9UBV6Q8VRBvnf9ZrVzHqAaO
	tBEftgEGdo9XsRLTFDNb6G+YgcaY1Nhkj53pS6lFY95is6AFOXl9bQj4kwDpyrr35jRh7HOTG+N
	VK1QYrD3xvx5vSZ63IZZMSOXJWd3Q/TyVdpd8kN97mjJRsW1UgE7tLmSE2J+8/hBvmIr4snUzyO
	3nKj/BDzWCnN7U/NuGZk1jlKIXJZqtyfW74VjWQcNj+XJHWGVWdL4DpGTyvcGe0q1E4vORAdVhI
	3ilS6GKLlIbAsICof3R7rRGNPIZzZrPwh6FBeHeYHaltYmbfG4RRhX6l7lSOcIqBgkwiex
X-Received: by 2002:a05:600c:35d2:b0:485:3ca4:4eee with SMTP id 5b1f17b1804b1-4853ca45255mr123439525e9.34.1773164923066;
        Tue, 10 Mar 2026 10:48:43 -0700 (PDT)
Received: from db07.1337.ma ([197.230.240.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae45786sm42986166f8f.32.2026.03.10.10.48.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 10:48:42 -0700 (PDT)
From: Taha Ed-Dafili <0rayn.dev@gmail.com>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	skhan@linuxfoundation.org,
	me@brighamcampbell.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Taha Ed-Dafili <0rayn.dev@gmail.com>
Subject: [PATCH v2 0/5] iio: dac: ad5504: fix voltage scaling and add missing bindings
Date: Tue, 10 Mar 2026 17:48:30 +0000
Message-ID: <20260310174835.24209-1-0rayn.dev@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: DBCFF255D8C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,linuxfoundation.org,brighamcampbell.com,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273678-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[0rayndev@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

This series fixes the voltage scale calculation for the AD5504 DAC and
updates the devicetree bindings to support the necessary hardware
configuration.

Previously, the driver calculated the scale based on the VCC supply
voltage. However, the AD5504 has an integrated precision reference,
and the output range is determined strictly by the state of the
R_SEL pin (0-30V or 0-60V).

This series updates the bindings to use standard IIO DAC properties,
aligns the driver headers with the IWYU principle, and fixes the core
scaling bug while adding support for the hardware's optional GPIOs.

Changes in v2:
- Replaced vendor-specific adi,output-range-volts with the standard
  output-range-microvolt property array (Krzysztof).
- Replaced adi,output-range-gpios with standard range-sel-gpios
  (Krzysztof).
- Refactored allOf block in bindings to use not/required logic
  (Krzysztof).
- Split header updates into two patches: alphabetical sorting and IWYU
  compliance (Andy).
- Used MILLI and MICRO macros to replace hardcoded values (Andy).
- Used a local dev pointer to respect the 80-character limit and realigned
  function arguments accordingly (Andy).
- Added driver implementation for the optional CLR and LDAC
  GPIOs (new in v2)

Thank you to Jonathan Cameron, Krzysztof Kozlowski, Andy Shevchenko, and
David Lechner for the reviews, schema guidance, and C optimizations on v1.

Note: I do not have access to the physical AD5504 hardware, so this series
has been strictly compile-tested and validated against dt_binding_check
based on the datasheet specifications.

Taha Ed-Dafili (5):
  dt-bindings: iio: dac: ad5504: add output-range and missing gpios
  iio: dac: ad5504: sort headers alphabetically
  iio: dac: ad5504: Align headers with IWYU principle
  iio: dac: ad5504: fix scale via output-range-microvolt
  iio: dac: ad5504: add optional GPIO control for CLR and LDAC

 .../bindings/iio/dac/adi,ad5504.yaml          | 40 ++++++++++-
 drivers/iio/dac/ad5504.c                      | 70 ++++++++++++-------
 2 files changed, 84 insertions(+), 26 deletions(-)

-- 
2.47.3


