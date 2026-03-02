Return-Path: <devicetree+bounces-269920-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UD3mDnxtpWlXAgYAu9opvQ
	(envelope-from <devicetree+bounces-269920-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:59:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5081D711D
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:59:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 82015300CFFA
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 10:56:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84095339858;
	Mon,  2 Mar 2026 10:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="vMrOXNLw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D1035AC3A
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 10:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772448974; cv=none; b=VXHyXteJ1XVBZsz98EGwivpyZutHy94W87TsRm4+zaFRNn6Msc437hbkNddZh5wJTnFXgfl+/E/11HKU0gc2Z34e5ZHL5wJetZIFh7LTSjL5hVzTMJd16+M0iosMkLDCdtH1GMzqwLcV9rkEMZCq0LTQLGTQP+vNZ8WW9TH1W7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772448974; c=relaxed/simple;
	bh=4HSKZzGhBURWAag1eSLNRfotJ7fSctcWyvc0D54FZuI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=CVSO8RyayL4CYZ1NtFSqqa+WCQcKSofLE1AMGWFkAgN3SZy3YTQB+8UckA9WqJWGRq7jPsmzTsqX8AhYUSCLZlcoKh8mWKHylk9YOHV5xLM/vrAh1KiswA6iLSNxHecROrFLNZui2jnHJz1P988rykoRyBUzvvnRTUyWAML/vMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=vMrOXNLw; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-48373a4bca3so25390025e9.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 02:56:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1772448968; x=1773053768; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=b/u8LOKf6Nlm4OlaRu+tmbKm1RfDAT6qwhKI1+hf3Ts=;
        b=vMrOXNLwmaOMICBSAEuSaAOCvPqiPLJ0xkn9wBxNlgbu20uY/2pkNvCBduE0v/iaH9
         iwk/wTDFEqCYA3/f6P9ygmQN7Es4SLIBE1wjCs5l9k2TFmACFihoZ8tvFYMPYFfkOST1
         C7JvK9HVjoIJOTiKvaBhW8FCn1FFDL6+36/Oxa6OBMMuUJ2Mpt7LRpcBxK3G5IzFLe8S
         6Gz+DPyOHu2p/KvspjNMtDXIZmXbB7bb6XRYKSpgSD9CiswMSfLqFF9mXZJ+2DRWIy5E
         WJGseIOpcFgkN/gixPqt+t6cYeajeMK45OfYdrf/t7I8A1lwbxTT7g/yPIKKmiSCYzQK
         Vr1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772448968; x=1773053768;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b/u8LOKf6Nlm4OlaRu+tmbKm1RfDAT6qwhKI1+hf3Ts=;
        b=t4vWzQ9kW8Hvis6QbVuaYJiPKjVPh1bjnEG2PCo3c2G0xgKW5NIh3wf3WWaPB0PBWC
         bvR64Dc35FPXx1I+M8Z9ggBvRrDc5+mkorM7B0GgtaHVfYhCCTp62rdHQlA4s7rdfMGN
         EnWYXO4yj1HNQ9IUt3buiDjKMeMa9HrcBzhgRl0LnI6I6TToJvh6oVfhlGhABMNPcx1r
         DCqpsHqIWMDF40qy8YzV8eTCHefrE5vEV2x/Q1TKNH8gtUL+DSDyJznR4Q0BKKS8M/0V
         lE/NDEuWsgPK8asR1YQ8ZRz9SBhuG0hlqN9X19GBzvNOvArKXGbRCBa33iFWPjV+UJXI
         1XGQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbHCU/ILOI6L49mVV+eTsZoaztYIsaTkO6h03T8l/EGgMy7qaAV3dYbabLsZhp1J9onYDbKjPBxd43@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7ufCYDFirZ3uPwWoBeequmeybB/pVCSG0mnPmRR4bOlWKBJFM
	ysEue+yGqHcvN6ZVzP0JiXzNhfv/e7H2NcAjFk6CKNZ+8/DCT7dsKe4v83yr/Tf/eyk=
X-Gm-Gg: ATEYQzzw2wacPv1G8pCapJ2zfy941Gxr7TMr9EOqBCyTgiV3M/eRvDsi7dP+e0MowS6
	NMYD0a2ml6EhvrzZxZHff7RQ9IffFtziuM4GoX0DcJwdVobWK2IXwtqwRWiGbgDZV9T2AwzeoaH
	Vq3xBKpMyE9z4ajGOTok5umkJ2eEXNleEvaT4twE2q+/l5sUfXHn4ac+uO9x0gKJUdswYxgX24J
	u26BSqW8xY4t/6+FkTqOLNHRNVyW8KRTld0iHgPfTlpfPLsAgZi/kioZoqZOWwU4yAqawDj1R5C
	LPJl9YgIKQXqwz0Z4ll8Yn+8QIpRZo7823ubuYZcdb45VPDcC86VY6nMyJf+XnNRwMf6z2V4bKj
	8G8FCE47xuQLYX/mx69f6kzd70bpTvmeZdGSrPX95rD1SvB4MiIu1cVOajIs+SR5IjyQgNLK5+Y
	7dF+9duNfa95/F15UYqbdC2nZ/mmByT4l8mWedfy1A7hfkaZhgh+vZaPbVXuMPp5NyBNC20kQyE
	C4=
X-Received: by 2002:a05:600c:46cd:b0:483:702f:4633 with SMTP id 5b1f17b1804b1-483c9b9433bmr202932855e9.4.1772448968314;
        Mon, 02 Mar 2026 02:56:08 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-44-101.alshamil.net.ae. [94.59.44.101])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfccff00sm133263075e9.25.2026.03.02.02.56.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 02:56:08 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Subject: [PATCH v2 0/2] Add support for Texas Instruments INA4230 power
 monitor
Date: Mon, 02 Mar 2026 14:55:54 +0400
Message-Id: <20260302-ina4230-v2-0-55b49d19d2ab@flipper.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALpspWkC/z3MQQrCMBCF4auUWRtJpmk1XXkP6SKaqR2QNCQlK
 CV3NxZx+T8e3waJIlOCodkgUubEi6+Bhwbus/UPEuxqA0rsJSoj2FuNrRQnbSVqaVTXOqjvEGn
 i1y5dx9ozp3WJ7x3O6rv+DOz+RlZCCoM35cicldP9ZXpyCBSPnlYYSykfKjU4eaAAAAA=
X-Change-ID: 20260219-ina4230-74a02409153d
To: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Alexey Charkov <alchark@flipper.net>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2422; i=alchark@flipper.net;
 h=from:subject:message-id; bh=4HSKZzGhBURWAag1eSLNRfotJ7fSctcWyvc0D54FZuI=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQuzTlZocIoy6BXIjYnnVHlgaT2WYUH75zZhIo6efrMX
 h7Lu1HcMZGFQYyLwVJMkWXutyW2U434Zu3y8PgKM4eVCWSItEgDAxCwMPDlJuaVGukY6ZlqG+oZ
 GuoY6xgxcHEKwFR/dmRkePZp010BxwKBp13p986fmFv6q6/F8pJofNt8T65lDRETbzH8FVgouCF
 xNYvT2nNBn/dHGP1tPqZYPmn3o6685WllbhW/mAA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[flipper.net:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269920-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,flipper.net:mid,flipper.net:dkim,flipper.net:email]
X-Rspamd-Queue-Id: AB5081D711D
X-Rspamd-Action: no action

TI INA4230 is a 4-channel power monitor with I2C interface, similar in
operation to INA3221 (3-channel) and INA219 (single-channel) but with
a different register layout, different alerting mechanism and slightly
different support for directly reading calculated current/power/energy
values (pre-multiplied by the device itself and needing only to be scaled
by the driver depending on its selected LSB unit values).

In this initial implementation, the driver supports reading voltage,
current, power and energy values, but does not yet support alerts, which
can be added separately if needed. Also the overflows during hardware
calculations are not yet handled, nor is the support for the device's
internal 32-bit energy counter reset.

An example device tree using this binding and driver is available at [1]
(not currently upstreamed, as the device in question is in engineering
phase and not yet publicly available)

[1] https://github.com/flipperdevices/flipper-linux-kernel/blob/flipper-devel/arch/arm64/boot/dts/rockchip/rk3576-flipper-one-rev-f0b0c1.dts

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
Changes in v2:
- Replace u64/u64 division with do_div() (kernel test robot)
- Add an example with ti,maximum-expected-current-microamp property in
  bindings (Krzysztof Kozlowski)
- Include the newly added binding in MAINTAINERS file (Krzysztof Kozlowski)
- Use dev_err_probe() where appropriate in the driver (Krzysztof Kozlowski)
- Switch to devm_regmap_field_bulk_alloc() instead of an open-coded loop
- Add a bounds check for the calculated calibration value,
  and a corresponding error message
- Link to v1: https://lore.kernel.org/r/20260225-ina4230-v1-0-92b1de981d46@flipper.net

---
Alexey Charkov (2):
      dt-bindings: hwmon: Add TI INA4230 4-channel I2C power monitor
      hwmon: Add support for TI INA4230 power monitor

 .../devicetree/bindings/hwmon/ti,ina4230.yaml      |  130 +++
 MAINTAINERS                                        |    7 +
 drivers/hwmon/Kconfig                              |   11 +
 drivers/hwmon/Makefile                             |    1 +
 drivers/hwmon/ina4230.c                            | 1006 ++++++++++++++++++++
 5 files changed, 1155 insertions(+)
---
base-commit: 3ef088b0c5772a6f75634e54aa34f5fc0a2c041c
change-id: 20260219-ina4230-74a02409153d

Best regards,
-- 
Alexey Charkov <alchark@flipper.net>


