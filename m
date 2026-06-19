Return-Path: <devicetree+bounces-313741-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 29fRDCAfNWofnQYAu9opvQ
	(envelope-from <devicetree+bounces-313741-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 12:51:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 850946A54C1
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 12:51:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=ionfzKX5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313741-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313741-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linux.dev;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2542307DE7B
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 10:49:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE476375ACF;
	Fri, 19 Jun 2026 10:49:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta1.migadu.com (out-172.mta1.migadu.com [95.215.58.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CAEE37757D
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 10:49:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781866196; cv=none; b=RX0X7Brslo9FBBOkuyFca6kVQ1YGCJJsnlB8FhmKgUeC/LVwRptmxaim/QEGg8MePugih5Cyq/hptGjh6x4mFh2VXinpwWDak3XDvh1A4eSN8qAfKfqX6cXnBsgntXPR2jqFoJQCfYgJAbCwmQNFCe3JMDike6BwwXbKC4FWTlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781866196; c=relaxed/simple;
	bh=aU5X5BoOUmPx0qj1LUcUPIAiTL3FZ+0HTQErgjJ3ipw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SxwHK1BmGzdFHjxU3S/UwjtoD7go+u75xCA/ASMrgN4hKte4ZBL2LhLk1r5k3l9wxfiERHj6UEO8rK2JE3GJXqrMYn0kpj4zF/VE9/wk5LMrpMzyjsD64GlX0zxpnX74YjNSCBm+TuU/zDi+BEkD0zKQrBfl7ZCGD8xnKr4dWHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=ionfzKX5; arc=none smtp.client-ip=95.215.58.172
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1781866183;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=In2axHd9UDaAPxtc6hOvWtDlYJS+YT889NEcxoMs1AM=;
	b=ionfzKX5o2V/lKkRClaZnARnd5KEhNg6tULA6lSf4SfUrOP6dPfvesRb2RLDk5sZMerJ5I
	Jqh6AX1ATeq45XR5eGzDajDLyXUTFSwFzxq8B9PpxIapznqkEh796Ix3yeAWi/R4bC7x57
	dkB5bitVcwH1IR8yO9ZkdGxAoKZw9E8=
From: Siratul Islam <siratul.islam@linux.dev>
To: jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: siratul.islam@linux.dev,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/3] iio: magnetometer: add driver for QST QMC5883L Sensor
Date: Fri, 19 Jun 2026 16:45:03 +0600
Message-ID: <20260619104524.10172-1-siratul.islam@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[siratul.islam@linux.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:siratul.islam@linux.dev,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313741-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[linux.dev:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[siratul.islam@linux.dev,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MIME_TRACE(0.00)[0:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,linux.dev:dkim,linux.dev:email,linux.dev:mid,linux.dev:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 850946A54C1

This patch series introduces the QST QMC5883L 3-Axis Magnetic Sensor
driver. It is a simple device with minimal magnetometer functionalities.
Commonly used as (software incompatible) replacement for the
Honeywell HMC5883L sensor.

This driver implements the basic functionalities of the QMC5883L sensor,
and intentionally leaves out some features like DRDY interrupt pin support
and power management for simplicity, both of which will be addressed
in future patches.

There was an attempt to introduce this device about an year ago but
the author seems to have abandoned the patch series. Since the device
is simple enough, I decided to start from scratch.

Note: I also noticed a patch for the QMC5883P variant. Despite similar
naming, the sensors are different including different register maps,
so these devices are not compatible with each other.

---
Changes in v3:
- Add trailing commas at list endings
- Rename regmap to map in multiple places
- Add and reorder header includes
- Update POR time comment

Changes in v2:
- Update commit message in binding.
- Reformat header includes.
- Remove iio_device_claim_direct()/iio_device_release_direct()
- Read the measurement registers before checking the OVL status bit
- Replace scoped_guard() with guard()
- Fix function parameter styling
- Replace FIELD_PREP_CONST() with FIELD_PREP()
- Replace qmc5883l_rng_avail[] with a 2D qmc5883l_scales[][2] array
- Update mutex comment
- Add a devm_add_action_or_reset() callback
- Use a named initializer in the i2c_device_id table
- Combine u8 rng, osr, odr; onto one line
- Various styling fixes
- Update maintainer email to siratul.islam@linux.dev

Link to v2: https://lore.kernel.org/linux-iio/20260616114942.37241-1-siratul.islam@linux.dev/
Link to v1: https://lore.kernel.org/linux-iio/20260612124557.13750-1-email@sirat.me/

Siratul Islam (3):
  dt-bindings: add entry for qstcorp
  dt-bindings: iio: magnetometer: add QST QMC5883L Sensor
  iio: magnetometer: add driver for QST QMC5883L Sensor

 .../iio/magnetometer/qstcorp,qmc5883l.yaml    |  52 ++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   7 +
 drivers/iio/magnetometer/Kconfig              |  11 +
 drivers/iio/magnetometer/Makefile             |   2 +
 drivers/iio/magnetometer/qmc5883l.c           | 517 ++++++++++++++++++
 6 files changed, 591 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/magnetometer/qstcorp,qmc5883l.yaml
 create mode 100644 drivers/iio/magnetometer/qmc5883l.c

--
2.54.0


