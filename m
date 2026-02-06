Return-Path: <devicetree+bounces-263474-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 9iSfCUUvhmkTKQQAu9opvQ
	(envelope-from <devicetree+bounces-263474-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 19:13:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2C6101A79
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 19:13:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D48DD300C018
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 18:13:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F2BC426D0C;
	Fri,  6 Feb 2026 18:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QBFODKPX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f48.google.com (mail-dl1-f48.google.com [74.125.82.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8E7D35DCEF
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 18:13:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770401602; cv=none; b=OLDy0BS0QHLIc4raGfgKrVlzzSc8PhuyjtwgNn0lJOaA6zM7WAykdMPWTGT9dYiLsO9jnWKSyrj0IB1Vk1i5kiZhG9HR/6BySDzjsscvkupQIID7Pr4YiqOhp0zg2/xS3oDx7Es5S9bRfJez/iwORzxahopebU7UEFCzZIcNg0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770401602; c=relaxed/simple;
	bh=WDe/HEUZ9B4jJzfd6qPNGWEW9F67qNtRLkWKCHpSDcs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hYOhfSUVkqkZjS7k2W/1wiJttHSunI68UY+Ioy0IFwWmzjtiextCA38fJ9WW+7c6HtVes0UYjTV1O0siPjCX55sL9PAUW8CsVOyynBxQgQCF5ew4qw5Uu2KDuoIqUZJsHXQwt1UU0p7SOW46IZ8wZnGi2I5CO94pV4iY9ADbGwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QBFODKPX; arc=none smtp.client-ip=74.125.82.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f48.google.com with SMTP id a92af1059eb24-1249b9f5703so1321701c88.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 10:13:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770401601; x=1771006401; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Wt243DaEXQsr8P+AufdGik9IHnyievMbf7evNvSL7pc=;
        b=QBFODKPXSy/5LL8U3SpUyMvqA3ll7vE/iTPj8x9eIpDMNZDp9Vd0u3uNaBd/ormwg3
         YbzKTzG83YYkwYnTwaFMz93kPKXgasDJmTblGBKnXHEE3n0t1xC8hpbbCSAw779T+z4S
         ZE+Wnt0Z/b84OfHDrG4gqTRg9V1u1CG9wMJdq7iwVqiL+Cy9cJ9QDr9IGNmfeDRCS8yd
         MBaVcTuwUePGEfsJQ653TyfrhRZuR4dd1EazL6zXKz1Vbg7rHQdur/jlfu56jtaab1FZ
         96JOT/WSZUcokkQCsKcnKQsxcjgZfg4FOP9G9eIQEknFounYBUX7Ap82Em8Ob3NZLqL6
         Ngwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770401601; x=1771006401;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wt243DaEXQsr8P+AufdGik9IHnyievMbf7evNvSL7pc=;
        b=YgtO+9PmAj4MDOB4JQeNzIWuz6LwdHHdeVDg4LFiq7/wg0ju/OPEz5O3/RtYOeJRkt
         pkS5cjDSQZWzOIpLMP8Heo7X+BdH1II1LEW0ty7h+NqsGoJThWiirRRIqkB9fPiq4TtC
         nf8oZio1H1UvkWmAN4fSKx2mXkuMladxm0IHe0pKmC6lwzDItf6wPiwt0BDS7TNXJUzG
         f8MtMgo+s1eK74B0nM1EteYPMgKkjTgxouvw5JOiFT0KovN/+hcrpglrQEDsG/S8rpO/
         rmp/OPgVmvRBqhs6DKqhqt0t3o3vQxrtVVJ/i1Uhc3e1OM1upsSZeKdrifhdC3yhNq/0
         VbdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUPGWC0KhBl36CU9s07PKtMz1gifPl7vlI7JhO0+GW9Z6SUP55uyHqGMtnRKgrefaBZyT8lRk5lilvP@vger.kernel.org
X-Gm-Message-State: AOJu0YxSdiQvqyIvggdMPVV6UNODOQmnBLubbof+vPaZzTju2sbal0Q+
	LJQAGmrH4XnYP7EWFv81xyjMlmu0REy6GCX3oxtZmwVxQ7BYMURe9C6s
X-Gm-Gg: AZuq6aJGIHSbPk9DrIToh7YAt1qKfHUb6gzaT/+HF/+qo+PVa9NOWHPcMVnRo3zvhgv
	fbgAGoqnYTyad+Bv8schSS5QaMV+eF4gUC0i4zuDp8N44mUbK1SbzMT/xGG6aM++VDyO8/ywL51
	QBmylu+jCPkLOieIa2n8P3pmlJo6Xlw4b2XrbIEHgVOMaGsQfF5Wwc5NrcVshdeXTYQZ6Ur511u
	nPEjFPSzaiFyG0IaCEeEAQ3SvqXPfmBkiYj4TDPLNdNhUmbZ4ch4FeG7THzVXciEYHutUzBLpuO
	Uarp2Irs2nUj2k4pBmZVnXSxoWgdMG7KZVmVFKHYM0/ON2rQSN6S6Larm8i4U14RUnvJLuGbfc+
	LzKDlYaBii3YvByj4V9WKp9e1aUfTIzMM/RtTJ2jpG/nLZrqpVmgRVQK5cqcJ10k/wni3KknFwn
	t4GpkDhV7twfpvPqonGRCb5mYf
X-Received: by 2002:a05:7022:622:b0:124:b11f:67ec with SMTP id a92af1059eb24-12703fec508mr1446023c88.39.1770401600840;
        Fri, 06 Feb 2026 10:13:20 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:44a3:2bb7:a035:fd7e])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1270433ab31sm2782500c88.11.2026.02.06.10.13.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 10:13:20 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH 00/11] ARM: rockchip: Add initial RV1103B and Omega4 board support
Date: Fri,  6 Feb 2026 15:12:58 -0300
Message-Id: <20260206181309.2696095-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263474-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-0.992];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5C2C6101A79
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

This series adds initial support for the Rockchip RV1103B SoC and
the Omega4 board.

The goal of this series is to provide the minimal device tree and
platform support required to boot the Omega4 board into Linux
userspace with the root filesystem located on SPI NAND.

The series includes:

  - Base RV1103B SoC device tree description
  - Omega4 board device tree
  - Required pinctrl and clock definitions
  - Basic peripheral enablement required for boot

With this series applied, the Omega4 board is able to:

  - Initialize DRAM
  - Boot the kernel
  - Access SPI NAND
  - Mount the root filesystem from SPI NAND
  - Reach userspace successfully

This submission intentionally focuses on minimal bring-up support.
Additional peripheral enablement and feature support will be
submitted separately.

Tested on Omega4 hardware based on the RV1103B SoC.

Boot verified with root filesystem stored on SPI NAND.

Fabio Estevam (11):
  dt-bindings: clock: rockchip: Add RV1103B clock and reset unit
  dt-bindings: clk: rockchip: Add RV1103B clock header
  clk: rockchip: Add clock controller for the RV1103B
  dt-bindings: pinctrl: Add RV1103B pinctrl support
  pinctrl: rockchip: Add RV1103B pinctrl support
  dt-bindings: mmc: rockchip-dw-mshc: Add compatible string for R1103B
  dt-bindings: serial: snps-dw-apb-uart: Add support for RV1103B
  dt-bindings: soc: rockchip: Add RV1103B IOC and GRF entries
  ARM: dts: rockchip: Add support for RV1103B
  dt-bindings: arm: rockchip: Add Onion RV1103B Omega4
  ARM: dts: rockchip: Add Onion RV1103B Omega4

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../bindings/clock/rockchip,rv1103b-cru.yaml  |  63 ++
 .../bindings/mmc/rockchip-dw-mshc.yaml        |   1 +
 .../bindings/pinctrl/rockchip,pinctrl.yaml    |   1 +
 .../bindings/serial/snps-dw-apb-uart.yaml     |   1 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |   2 +
 arch/arm/boot/dts/rockchip/Makefile           |   1 +
 arch/arm/boot/dts/rockchip/rv1103b-omega4.dts |  92 ++
 .../boot/dts/rockchip/rv1103b-pinctrl.dtsi    | 831 ++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1103b.dtsi       | 266 ++++++
 drivers/clk/rockchip/Kconfig                  |   7 +
 drivers/clk/rockchip/Makefile                 |   1 +
 drivers/clk/rockchip/clk-rv1103b.c            | 670 ++++++++++++++
 drivers/clk/rockchip/clk.h                    |  49 ++
 drivers/pinctrl/pinctrl-rockchip.c            | 313 ++++++-
 drivers/pinctrl/pinctrl-rockchip.h            |   1 +
 .../dt-bindings/clock/rockchip,rv1103b-cru.h  | 488 ++++++++++
 17 files changed, 2791 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1103b-cru.yaml
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-omega4.dts
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103b.dtsi
 create mode 100644 drivers/clk/rockchip/clk-rv1103b.c
 create mode 100644 include/dt-bindings/clock/rockchip,rv1103b-cru.h

-- 
2.34.1


