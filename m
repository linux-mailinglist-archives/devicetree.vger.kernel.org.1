Return-Path: <devicetree+bounces-315255-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TjzPHnHiO2oCewgAu9opvQ
	(envelope-from <devicetree+bounces-315255-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 15:58:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D51C16BEE24
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 15:58:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=s7k++Xiq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315255-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315255-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DF7A7300F52B
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 13:57:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA5FC3B0AE1;
	Wed, 24 Jun 2026 13:57:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0DBB3B530D
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 13:57:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782309441; cv=none; b=I2pCM1mWnL3VQma+CrsrvNydZ67LDWgI/gGpETRbsIgfKABklBx9E2MkGYmH1vN0de6vunjsloRAKpxZ8Y7T6cdMDOfTg/SX/YKlRz1iAKmxOtUksWDKE/z9B795UAyNRL6z04XGUsrGonMm7iK6tYShIQWN7SKs3kMZEvEEPRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782309441; c=relaxed/simple;
	bh=+iGTKccLKl7NDK0+UMoUoKxn/RGdIDHI9gKnPPqqhYs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kmODG+Ur65FmwqV3HhqqzgHMepqo+4dIi4lzkN0QDsuYhaKKvTzmqJkBGma/+2HmAAAkOeqmoGDNfxoWaZGZ0il2T7w5+1QtrNfePJRXjGYd4TMi+b9+tvqBdW6NX55AmN1AZjfHlqi5I96O2YxL/YhRFX+j+YgIm4yo5BHL47Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=s7k++Xiq; arc=none smtp.client-ip=209.85.222.47
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-966d4da9fa6so334752241.0
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 06:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782309440; x=1782914240; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dK4q1wXB1iEpfa6MKc1INHDEgEytVZ0qx4adNK2kjGo=;
        b=s7k++XiqWQVFTSlfEVGfAramQKDUhcgnY54/jMDF9FuR6yDpdv8mqKMPmV6iUCrh8h
         P0UXxVQubpXDqv+q1xveV6g+XcBv9sCQenUermGkIl/pN8JraEXNzX3smidPob5fv7jW
         yiIA2c5TFAFygDVJLl491Xjbw/5ZdfrYAQu6Pf//YS5VEQkzvC/VioDyB0HFOmjtcUM7
         z2R17B8fte8BvlUQ5p6UsnqIM3lIpJCFFxW5eDwHIFUyBan+XnTmcNaeXnyLjt1LFV2e
         igjnLDPd4qmoZQYvXoXSdHRdDh72T9bXqvJUWWxAwe4VT9nKJC8tGBot9N4IkV+9RkHJ
         SBHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782309440; x=1782914240;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dK4q1wXB1iEpfa6MKc1INHDEgEytVZ0qx4adNK2kjGo=;
        b=d524q3XvPyNdXMqDV4cQLiLGMxRzxhVrjUrv54266yEnBJ9f9TCcMp6wwyarNpML8I
         TR8BldShC948KCLqYeSYzVt0FAvKjzhN0dgBTTu5TVfYRYVeIlD8NQlbUuFZhR/XRFOC
         9H/egEa3+RMDi1xRoIIE7U/zkbb2MvGg/q+Ulu5ROaLGooOOgVHhRX/fQ3UaQDGHgCwL
         9ERHFX5xqUua7uYacjQPuU6bDuP0HMJl/bp+kqfpH2q5Wi23vd7Zo3DNipYlsxRuBmwO
         hEzzXjG2HffduVI0LopoSZiPoV5JetLgXy+a8VJ6Ul60MvEF0qhXJZg80BGFXgj7er7C
         Qvrw==
X-Forwarded-Encrypted: i=1; AHgh+RqFx2+yEKCBDZQTGpnS6dIhO6cZAoS6433aeRBu1wH47piHeS0hRZhfjAuluw3mLymYbjdxrxwLz4Lm@vger.kernel.org
X-Gm-Message-State: AOJu0Ywez1gwMvE/2hLn/MCwG7jDfC4r4Wy2TfRxkCsB3Mr4w9K+7jWO
	7bcg0bXAa1jk6Ejv67A3pUZa0Ldz7y6qCXmpx2FSG1HVGIB04tlvOMzD
X-Gm-Gg: AfdE7cklWa9FOiPvwxb9fYfU8Fyw1Wg00U2BWXFl9/mzvOb3RogWPlWaNlypMwf9AsR
	Q3r8ecaRmyAA4aywjksXwmpFjnf9EGdDmAh2LBbV1GMOmDmR0U31NTsOLAtJAMf7GrnbjQC8pev
	mE5ruVqyS4KTjb6JHbiIrjDsemG2RN9gD/5YB0hxEYRkhMNBjCjCfpDZMDqRFWF5zZYdEe4ZooT
	N74GsPHgpfBPOCSQPvKSp+gxSLt5XsnwZUHm4wp3/G48nEUfMR2z9yBdEGtOeKMESuGhVw6IKoi
	R1kv1kqJY11iXlv4+s6DlDcen460Ytfcrmhq3KwzyqKLiB/H6DkRiryjBHXVXuUOKdjasFDEOnv
	x7imbEyO4gjHjMsBDM5T/B2VikfeSVDPwADbDIpYGivxgchZibotKYf1vw06onme8vbvWw34IDp
	cT6au13LAOFi1t3LLar0S7+P5UvI7JtkT4TiE=
X-Received: by 2002:a05:6102:548d:b0:604:f849:462e with SMTP id ada2fe7eead31-72fd815dd92mr4226649137.25.1782309439628;
        Wed, 24 Jun 2026 06:57:19 -0700 (PDT)
Received: from arch.localdomain ([160.250.247.70])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-72ba2dbc17bsm9805730137.6.2026.06.24.06.57.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 06:57:19 -0700 (PDT)
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
Subject: [PATCH v4 0/4] arm64: dts: amlogic: meson-axg: NAND fix and PCIe PHY adjustment
Date: Wed, 24 Jun 2026 21:56:40 +0800
Message-ID: <20260624135650.727077-1-jerrysteve1101@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315255-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D51C16BEE24

- Disable nfc node by default ahead of nand_rb0 pin addition.
- Add missing nand_rb0 pin to fix incomplete NAND pinctrl.
- Disable pcie_phy by default to suppress probe warning.
- Re-enable pcie_phy on S400 board to preserve PCIe functionality.
- Enable mipi_pcie_analog_dphy for PCIe on S400 board.

Changes in v4:
- Add patch to enable mipi_pcie_analog_dphy for PCIe on S400 board.
- Link to v3:
  https://lore.kernel.org/all/20260617082239.645562-1-jerrysteve1101@gmail.com/

Changes in v3:
- squash "disable pcie_phy node by default" and "enable pcie_phy in 
  meson-axg-s400" patches
- Link to v2:
  https://lore.kernel.org/all/20260617071604.635627-1-jerrysteve1101@gmail.com/

Changes in v2:
- Add patch to disable nfc node by default.
- Link to v1:
  https://lore.kernel.org/all/20260529140605.1070764-1-jerrysteve1101@gmail.com/

Jun Yan (4):
  arm64: dts: amlogic: meson-axg: Disable nfc node by default
  arm64: dts: amlogic: meson-axg: Add missing nand_rb0 pin to
    nand_all_pins
  arm64: dts: amlogic: meson-axg: Disable pcie_phy node by default
  arm64: dts: amlogic: meson-axg-s400: enable mipi_pcie_analog_dphy for
    PCIe

 arch/arm64/boot/dts/amlogic/meson-axg-s400.dts | 8 ++++++++
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi     | 5 ++++-
 2 files changed, 12 insertions(+), 1 deletion(-)

-- 
2.54.0


