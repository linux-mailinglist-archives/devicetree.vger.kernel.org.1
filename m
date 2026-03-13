Return-Path: <devicetree+bounces-275484-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QN9iFGNOtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275484-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:50:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE7E288525
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:50:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D7BE5301D6AC
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:47:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB7C03CF695;
	Fri, 13 Mar 2026 17:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cnua71E3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676FD23EAB8
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773424060; cv=none; b=e9Ngo17d0V3YmtL5OXMKXeMt2kLFLyLpXbIQ80XGSpYZSz8Q56h9i2Br7B1tVFBBOFY0QdCLdlsq0H3UneT6ax+5hkfk5ljv9UxfKAR+gqQ+S/91AtGZiZldhsJt7VqkbjeWXN8FUpLCsb6fV4n3cAOKHQFfDCXZnWEuqfjK5BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773424060; c=relaxed/simple;
	bh=MIASq2CvrmBj6tKCFzLwLnKidbL7xiykDblgZxQ8niw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=f3EYPIDeU6wMaCP6YlczHDVj6C760rWlCEBoMXe6Jq+v/WWQjg/C+UceE+4o/F0pRllvUuctQJSSifCg7TIUJhtU0XR9GlSZBT5u/dfNFp/Gcx83n9fpV0gOOT0zPwrHe/FXW4hDaX49F2T4P7xvtmXPzfKlnsMiqdDwBpioMtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cnua71E3; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4853c3c2fe7so15037695e9.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773424058; x=1774028858; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tStJn4LBdNSDPTkcJ9F6SyDC95zUtjG8M5+cKBjWoxQ=;
        b=cnua71E3YBCNOxtLGf4Bd5eeoqdG5flACLEB/V0Z205ZckU/HbmAuxxQJ1bR6l7pMc
         rrfRUou6S0Y1qgCGWZYbnc9MBKwP4oFzLcp9kbgrFAVPMqhZ3i19BnFUPlo/SVxMwQig
         Z3u8aPdFdLTBqpAYwDIGvixhw8liBn1mKppywTknhlLasjg4o1X+rbhcDj/zJUwE2OVj
         nVGBicajsR5GuCcevX7Rivnx5gf80ypYIRvLPSAaNtro4vldoifl66Q2XsxtMv+aLdOL
         8W+8Xfi1MwWb8qjVQvsu/EM1yLDjAbhr8Vq89O5Nfyym4e9edhyf6D7vdb+Adx6rSVhw
         K8Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773424058; x=1774028858;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tStJn4LBdNSDPTkcJ9F6SyDC95zUtjG8M5+cKBjWoxQ=;
        b=VoD7kxpvPPZ4rx2Y9PuO0mw6TuzSn6iZkam7A8bsxHexNbIqatj+YEDwAsE07d8zpA
         Ye1RZglCLV+D375FdUOUA4xGCH4FRi1ng+Uh+YZ3kiPmXCBmzAO2ADM7+Lb0QSbbhz/k
         pITj5SOyq4H1HNvWcBevjA9xIie6nK3TxMsyJPcCAltGuFRx2xjqTN3OOTnTOAFBrCR0
         aevV12d5AcG0iLtXzD1ph6gOpdi9wXxlljSqI6r+1snEPaF7kAgoC9hEKUFOh/Ipuif6
         tV0l+THpTCl7pzAO4U3xCgaNv9gIuEBzq6aoRnkQ9VjEFra7WkvbuBYqyZnfMVOtM3t5
         mI+A==
X-Gm-Message-State: AOJu0YwEn8fOTjNfTdSYNg+VhlzIFMXubB3BXomydkLQplIwFbREMgfD
	V1yZbCszeAl24bvB6DxZNoUU25hh5madYp3wcMYZ0EwRX+QCBW5ymJLU7rgkfyN3
X-Gm-Gg: ATEYQzwgWe4WMmLHKV0xwAWIVlY5PwRH6Ok3C7Xp9YMm8Dsm90wnZSAoUlOlpPwNfW8
	HGkEcnrjQ53MZ6JdUrswx8vZGAXLsEF3JbMi07qUzOlJLsLsQFDZNwBFpynVd40H5iZlq8OD3bI
	PrdPS2uVqoih9tJmUAlPwwwBCXhKOI62ExK20JPGK6UX7g4In2+oQ3O0P9JQRVj0H2yTjeDnXXs
	WFte4Zw7grGQo0XHxfId+jp3pzgNr+upqjPhEYXUpN5e5GyM2wmnMju+WD+tH2YhYhmSDVTNCUD
	Rwp5T/YjUpa9RKUn3e0GmoEZbtQCoQ0UK2H3OveRNHWYdUVaogC6umv3rb9spDNdFr+mDUsCh9S
	1T4ddI9lmgE4Mx4EViJluOIMm5auJbScoUP2UkJeTvqy0+u81qWWtHVZd489xoMZNjd5cppzk4t
	ArwgL1ZtfDFtgS++ZKMKUPoSZgnqpNOoHvIfg50OwPpKLSoqB80Cv0lo04+sBn3N8qBMiUpHSfU
	4Q/aBHXd2HySjbw+4KF9ekmCgM6HrSabMb265Q=
X-Received: by 2002:a05:600c:4f8f:b0:485:4371:539a with SMTP id 5b1f17b1804b1-4855670f7admr60093835e9.31.1773424057534;
        Fri, 13 Mar 2026 10:47:37 -0700 (PDT)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b6756e4sm257213575e9.15.2026.03.13.10.47.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 10:47:37 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 0/2] Add support for Variscite DART-MX95 and Sonata board
Date: Fri, 13 Mar 2026 18:47:01 +0100
Message-ID: <20260313174707.26902-1-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-275484-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,pengutronix.de,gmail.com,lists.linux.dev,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,variscite.com:mid]
X-Rspamd-Queue-Id: AFE7E288525
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patch series adds support for the Variscite DART-MX95 system on
module and the Sonata carrier board.

The series includes:
- Device tree bindings documentation for both SOM and carrier board
- SOM device tree with on-module peripherals
- Sonata carrier board device tree with board-specific features

The implementation follows the standard SOM + carrier board pattern
where the SOM dtsi contains only peripherals mounted on the module,
while carrier-specific interfaces are enabled in the board dts.

v7:
- Order nodes in symphony dts
v6:
- Order by node name instead of by label
v5:
- Fix newlines and nodes order
v4:
- Fix typo in spacing
- Remove vpu and cm7 reserved memory
- Add GPIO_OPEN_DRAIN to i2c gpios
- Move pinmux to eof
v3:
- Fix specific node names with generic ones
- Remove fixed-link property for SFP
- Audio regulator cleanup
v2:
- Add SFP cage node for enetc_port2 following sff,sfp.yaml binding

Stefano Radaelli (2):
  arm64: dts: freescale: Add support for Variscite DART-MX95
  arm64: dts: imx95-var-dart: Add support for Variscite Sonata board

 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../dts/freescale/imx95-var-dart-sonata.dts   | 591 ++++++++++++++++++
 .../boot/dts/freescale/imx95-var-dart.dtsi    | 425 +++++++++++++
 3 files changed, 1017 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx95-var-dart-sonata.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx95-var-dart.dtsi


base-commit: 40fbbd64bba6c6e7a72885d2f59b6a3be9991eeb
prerequisite-patch-id: 7ed0e453f554c70d0fafd5147d4d9b62cac6c10f
-- 
2.47.3


