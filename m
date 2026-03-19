Return-Path: <devicetree+bounces-277747-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDHAOrLmu2njpQIAu9opvQ
	(envelope-from <devicetree+bounces-277747-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:06:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8A02CAE21
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:06:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4FD4932877EF
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:00:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B4DC3D0931;
	Thu, 19 Mar 2026 11:59:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C/ju+rrn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C15453CE4B7
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773921554; cv=none; b=cOhBcGAPicODxLTzqsWp6PFB6MiAsCEIPg4G5555hZWX0GFNQQ34McE0FVzLGQNsKEslaSfrePD2k69M2o0TgUVs5VB5j1h3Hpeza1lg0JciyDuT25hpJh16t8AIbUjK84YK3L1EUfvNuB/sJlHhj6FuUCBnRNM9nQKzkgxoEWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773921554; c=relaxed/simple;
	bh=1E4pd2YlmrhsMWoBYpF9Kx2qDHKMBYeRsjxeemOUgUs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=HZAir7aJL0BHrqU4alewU54alFzaKTEWCr2xb8bEdzYO3IcaeCMudAeEVnLtSd1MvfU8g2/jrkie+PFPCHKiE6K/1PbJRxcFYt5GOud2BObnE0U5J+u+o2I7nCh9y2GEXlGANmSIWVT722cZRkYgaZLsyQivj2WxF5/K1+k0ijs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C/ju+rrn; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-667acaeae82so902315a12.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773921547; x=1774526347; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IAgP3WIG5lWDJY/O2OUHFGAnFa87nCTWJrnk0yHPluI=;
        b=C/ju+rrn+3ZRpWK5U7+UOtxDkEUI6N7ZTUOGO9KzRKyAfBNwGncXU9LwRat4TkLdrW
         KGU3FRJgpcB/gp6BlbU841r9iZK9R5NOrDhTqG0lURWXqQCOZzMcqmjytj44f3aooFCv
         DWdtK6h+7r8bPBC8ndl7mfXPaDPSGZOdUlZxSPeF3YyaTDs9VsrAexITvPczr6OM3nJE
         HFom6rrxCXvk4nZbcLlct0mJ5DWoffDC7DFjGE9OwrPc7C1XfBpaETo1dlV9u8yHhOHE
         bU8k5sTTvph8sU8RxX57LUktnCyCKAm7SSHv63zl1Tw8rhWUVXhMEi5rZj97vs49pgQr
         +IkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773921547; x=1774526347;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IAgP3WIG5lWDJY/O2OUHFGAnFa87nCTWJrnk0yHPluI=;
        b=RmCP8vObVjS7JW8QJmV/LQeCPRGd0AyqLx5EmrnJc1JBGsnicEOMm4FOBWGHebZ1fE
         uiupMte6xBSnsf/IC6cVVdhX830VCEoWFgHdeG9IBqvDKQv6qUqn5G+0MFhoBlNLm5gc
         A3Y8ATASikEwNE4g75n+Ef9asaxUHjX4q8e/MSaMX9wUnL+7oNUOa2J+ohxUpHXWZi4e
         Er/rYuu+ZMF2YkUY+6rCEoof6P6jhuVUAS3Jt5t3K2VyTlNauZu2xiq2PAbmfmPsUxj6
         GAkJ+JSgqOc4DJEWL22CTDD6oBccRFXKyucYtIXRjKiEabLhOT3lObyNf2Zmkumf3bvt
         1kHQ==
X-Forwarded-Encrypted: i=1; AJvYcCUuJr0SDkwnI2MP7GlQM4TtSz2mFbRZYPt13RiFjEpdpqlEb/1k9BQR9guFWoeat2Lz+I5w2nk4n6hZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz56UvNHyEtTJ5hguvxC36vBQIZAUzjBToyrXWv7I2qPmuL5G7z
	wRFLDYbiB286S7BQdT2V5dvsykXIsz0po8JUbOaIkj8IWW9exV5FdwJ/
X-Gm-Gg: ATEYQzwv/kIhqDsTg0EkojmGa5Dhbss7yA9Th+zVU87MyMt/TeuhBP2qwuRe4tvdTEj
	M2MvbjLT7NZWIfUF046V/kaqsdYQVvKdrPkFOxONIFRgLdbHGvCt9DsLkJHlrSahGV+JEAONXSI
	83qbBRxU6HIeRqidOAAeySUv8sMdm+3JZ6b0qGSR+GzJ5HFdR0pgrqE5XWzW7NhQssflzR3PMnj
	ZkmK7GwK+1aDJi+2DPYZy07znbi4zerNAa5G+0Lfh8qDPw7hNLbF2Jg0V+ETRe6gMzcvX9ROhDy
	olfvOVQsKUTmoyQlfKKdN2Ft5uT/lQg9p11uE5hF5kA7SXX8PSS+oZ/mFyrW9gN8AyhlLr1e/Y7
	/9QC+LYmLR3hhQ30w5Y5x2FkxHD0v3Frll3kRTwmz2fwg49El4IoNz6Lhkh1T+/4bw/5DUJrND3
	9OMWrErofWLBj06bVk5xlx3AvLEw==
X-Received: by 2002:a17:907:60d5:b0:b97:b379:b3fa with SMTP id a640c23a62f3a-b97f4aa62dfmr468806566b.39.1773921546437;
        Thu, 19 Mar 2026 04:59:06 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f16d3380sm461399166b.42.2026.03.19.04.59.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 04:59:05 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Subject: [PATCH v5 0/8] iio: light: vcnl4000: add regulator support
Date: Thu, 19 Mar 2026 13:58:38 +0200
Message-Id: <20260319-vcnl4000-regulators-v5-0-a025d3332805@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/23NTWrEMAwF4KsMXtdF/q3pqvcoXViKkjFkkmK3p
 mXI3asZKIQhyyfe+3RVjWvhpl5PV1W5l1bWRUJ4Oik652ViXQbJyoKN4AzoTsvsAUBXnr7n/LX
 WppFGgymDIY5Klp+Vx/JzV98/JJ9Lk97v/Uk3t+u/Zw69bjToGFEaiThE9zZdcpmfab2om9ft3
 rDHhhXD4sCIhBhSfjTc3vDHhhPDkc8+DQ7iS3w0/N6Ix4YXIwU/kuU8Bo97Y9u2P0e2b9iCAQA
 A
X-Change-ID: 20260310-vcnl4000-regulators-bcf1b8a01ce6
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>, 
 Raymond Hackley <raymondhackley@protonmail.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277747-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com,protonmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.966];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8F8A02CAE21
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patch series introduces support for voltage supply, I2C and cathode
regulators. This fixes an issue where if a regulator is shared between
the proximity sensor and some other device, and the other device is
powered off, the proximity sensor would be powered off as well.

One of the commits includes a Reported-by: tag without a Closes: tag -
the report was done outside in a Matrix channel. A link to access the
report requires sign-in, therefore it was left out.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
Changes in v5:
- Renamed vddio-supply to vio-supply.
- Added parentheses to function calls in a variable usage commit message.
- Moved the redundant "proximity-near-level" check removal into its own
  patch.
- Link to v4: https://lore.kernel.org/r/20260316-vcnl4000-regulators-v4-0-854fc2eaf54b@gmail.com

Changes in v4:
- Reworded device tree bindings commit into imperative mood and
  clarified where do supplies come from.
- Moved data->chip_spec->set_power_state() calls from init functions to
  probe.
- Removed explicit less than 0 checks for ret where unnecessary.
- Moved the patch that adds regulators to the end of the series.
- Added an explanation for removing duplicate prints in probe.
- Fixed indentation for devm_regulator_bulk_get_enable() and i2c_smbus
  writes in vcnl4200_init().
- Removed a redundant check for "proximity-near-level" device property.
- Link to v3: https://lore.kernel.org/r/20260314-vcnl4000-regulators-v3-0-3c4a48d30676@gmail.com

Changes in v3:
- Added a more detailed description for supplies in the dt-bindings commit.
- Separated sorting includes into a commit of its own.
- Replaced all occurrences of mutex_init with its device-managed
  counterpart.
- Moved client->dev variable declaration into a commit for adding
  regulators.
- Removed redundant dev_err messages in probe function.
- Replaced all direct usages of client->dev and data->client into usages
  by variable.
- Link to v2: https://lore.kernel.org/r/20260312-vcnl4000-regulators-v2-0-2bdebbcbb58a@gmail.com

Changes in v2:
- Removed double quotes in includes.
- Reordered includes alphabetically.
- Enabled regulators before the mutex is initialized.
- Replaced direct usage of &client->dev with a variable.
- Link to v1: https://lore.kernel.org/r/20260311-vcnl4000-regulators-v1-0-66b6038ce563@gmail.com

---
Erikas Bitovtas (8):
      dt-bindings: iio: light: vcnl4000: add regulators
      iio: light: vcnl4000: sort includes by their name
      iio: light: vcnl4000: move power enablement from init to probe
      iio: light: vcnl4000: replace mutex_init with devm_mutex_init
      iio: light: vcnl4000: remove error messages for trigger and irq
      iio: light: vcnl4000: use variables for I2C client and device instances
      iio: light: vcnl4000: remove redundant check for proximity-near-level
      iio: light: vcnl4000: add support for regulators

 .../bindings/iio/light/vishay,vcnl4000.yaml        |  7 ++
 drivers/iio/light/vcnl4000.c                       | 90 ++++++++++++----------
 2 files changed, 56 insertions(+), 41 deletions(-)
---
base-commit: 8e42d2514a7e8eb8d740d0ba82339dd6c0b6463f
change-id: 20260310-vcnl4000-regulators-bcf1b8a01ce6

Best regards,
-- 
Erikas Bitovtas <xerikasxx@gmail.com>


