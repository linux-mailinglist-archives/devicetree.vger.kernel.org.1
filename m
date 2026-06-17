Return-Path: <devicetree+bounces-312854-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id afMIC2ZZMmquywUAu9opvQ
	(envelope-from <devicetree+bounces-312854-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 10:23:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B850B697822
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 10:23:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="iF/0BsEU";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312854-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-312854-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1C125300C307
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 08:23:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57BF238C2C0;
	Wed, 17 Jun 2026 08:22:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BE0F38D40C
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 08:22:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781684576; cv=none; b=gh29p4eYyZRhoxAA5ecoztqKmzbNGgx0ZN2c5Fnyevdgl8X9+citvQN2U+ZfDcJG0CHGe87zlHB6j5YS0EauH4njS5phTV8Y35df9xDmxkLYdVszNVJJklpbRgQVv/c+EYyYYVu8NuBvShiO891KWIOCQy0fe00lQ5mViWvmARo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781684576; c=relaxed/simple;
	bh=7iGTEsQdXdpMFpeyINnDzwBkhJuY3AUtId0rc5NAD7o=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VO1F7M03owg4/QqBtQz5HmCww0LOnsRg0ADeKzJcrqZTGeLAyDODeBdwEbJiMQum0hR/WJD2IM2AvlRWE4ba6n7TSlu7LXbMcGYLrcbc+q+Wsot+3rJQcm7zCxi1IXvs35BNTxar7N0/Vl9poAshzeZks/P3GdWMADvF2US20M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iF/0BsEU; arc=none smtp.client-ip=209.85.214.179
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2c0c2d792c8so35371195ad.1
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 01:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781684572; x=1782289372; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mbp+XGu08SphaD/VmIY79o/0rYxP0riQ62ZWUCZr/Gs=;
        b=iF/0BsEUc7mS5Oe8nUadc3PSS4wqejK472Bslr7BmPfSxyCAiwbwmuq76TrBzy1lIO
         e051X4kpvhHvoGyQRBsVTMYWbrvoLyaRZZZiNRPbHjgKxsSq8epC9eX1Whxs9Iwn/nOa
         OSHG+gDDOMtElATXRPuGbdzsQJwbvu1vNM8xyXYKrv83feOnZCSFHhiNpPUCAhfgsQ+Q
         u1wNUgtXnBjfUzqfnRXxWI0+E1KPFX6aSFhHFvPTGXjR7om15nTP/p9O7+H5D2J+eHRn
         nA9Wm55hdb1XaMNB5G+GE9iSmKrHLTUYfwQHTUvFeMu1Zqxia1CRzcFTTMjh55qkTER+
         A5yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781684572; x=1782289372;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mbp+XGu08SphaD/VmIY79o/0rYxP0riQ62ZWUCZr/Gs=;
        b=dpkvVa7MvHbx5Wqx1tr209zncv+/WbcVgQmDQWgJic65FxuXJ5Y/Qh7aiWZ5Tvfs0R
         5HW8rSyjuR2jUAKv1pDB0VTlHF7E5HcX3aXMIkTI6mGhua5hjTbpfX0FdZYGlN8fMHi0
         02s7rvKjlB6E8rg3AFhJgbJWfC+5DiGGs7o31Jy+gM+0PH6L52hqGUy7vEH1iRAcY2Wx
         4CaMd/TVp6457OC8Qxje/7xDK3XNoNkM5W1KyCLx9/lTfbgx8Vaa8PshSeBn6uaL7neK
         RY1DhS+E+K3GVEADdJnbZ0rG0Jr7RZbgROv1EZE26jPyF0mDzZhFahfMPW3Q22IVxMOR
         aQcQ==
X-Forwarded-Encrypted: i=1; AFNElJ9+TPHLbnIGQcAgPY+KW9UnP2RRxTH/kqBvtkFdZQyuHMHgqjg8AnDEHMyevGDoNQBVkR0e+uQ87x4Q@vger.kernel.org
X-Gm-Message-State: AOJu0YzRfhBKmuyAwRTtWg73JD+uOfefo/jJRg5KKMcKJXChbOwCbfBM
	FnpCo5LC11X4sJMVou/fWjBv0oS91JkRxCU9zz4w98v/pa0pli5v7DWa
X-Gm-Gg: AfdE7ck/4c6173oJ2WcVtEHgPvmAK0fNCwky1byydszKONLWOogDpU1zzikYYIfTdsI
	V5hJVRYJyqAvItow3OEES2dPUYP7Xwp6ddaj8cCEjVv8TozFkWDbIBd6lSL0XwXFPJsfQjY0eUf
	E6/nDY6lNacIgIFcMOVbapEk8jNOh6VaCwxt+U3bSinCcnhwbKp8rnAfA3oZQQDucotwOQ9HRwj
	ZLKz77BWec81dhpuVvRMPpJFHxi9ZGM6tegMMpdWz+L9E6EqWAeiLeZaSOYOtH8g2+hSrZDgsDh
	OEKpmyOiD/P1oHyjvHO9x77Sqhd1iTaeZOWnnRtGp6EH8gJiQ7d8RzLiZB4VlH4Q/RUHvvpUlrn
	3rorvjO02wVDX8gTwteQ6fN1OmxOa3MV+c1zu7Y+tXkVcSxLHfgm2uoWOtPep21JsYVT4N0biwG
	08S8Lr4cLIbw==
X-Received: by 2002:a17:903:887:b0:2c2:245a:3360 with SMTP id d9443c01a7336-2c6bbfa18e8mr18681895ad.6.1781684571658;
        Wed, 17 Jun 2026 01:22:51 -0700 (PDT)
Received: from arch.localdomain ([2409:8a28:a52:c491::1002])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c6a758a3c6sm35282045ad.52.2026.06.17.01.22.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2026 01:22:51 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Arseniy Krasnov <avkrasnov@salutedevices.com>
Cc: Jun Yan <jerrysteve1101@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/3] arm64: dts: amlogic: meson-axg: NAND fix and PCIe PHY adjustment
Date: Wed, 17 Jun 2026 16:22:31 +0800
Message-ID: <20260617082239.645562-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312854-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,baylibre.com,googlemail.com,salutedevices.com];
	FORGED_SENDER(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:avkrasnov@salutedevices.com,m:jerrysteve1101@gmail.com,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-amlogic@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.infradead.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B850B697822

- Disable nfc node by default ahead of nand_rb0 pin addition.
- Add missing nand_rb0 pin to fix incomplete NAND pinctrl.
- Disable pcie_phy by default to suppress probe warning.
- Re-enable pcie_phy on S400 board to preserve PCIe functionality.

Changes in v3:
- squash "disable pcie_phy node by default" and "enable pcie_phy in 
  meson-axg-s400" patches
- Link to v2:
  https://lore.kernel.org/all/20260617071604.635627-1-jerrysteve1101@gmail.com/

Changes in v2:
- Add patch to disable nfc node by default.
- Link to v1:
  https://lore.kernel.org/all/20260529140605.1070764-1-jerrysteve1101@gmail.com/

Jun Yan (3):
  arm64: dts: amlogic: meson-axg: Disable nfc node by default
  arm64: dts: amlogic: meson-axg: Add missing nand_rb0 pin to
    nand_all_pins
  arm64: dts: amlogic: meson-axg: Disable pcie_phy node by default

 arch/arm64/boot/dts/amlogic/meson-axg-s400.dts | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi     | 5 ++++-
 2 files changed, 8 insertions(+), 1 deletion(-)

-- 
2.54.0


