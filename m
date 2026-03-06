Return-Path: <devicetree+bounces-271803-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KDFDxdAqmnGNwEAu9opvQ
	(envelope-from <devicetree+bounces-271803-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 03:46:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D417321AB17
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 03:46:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EB07B3024B28
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 02:46:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 738CA3254B3;
	Fri,  6 Mar 2026 02:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b="kyfsY4xz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f225.google.com (mail-qt1-f225.google.com [209.85.160.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A152D6E70
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 02:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772765202; cv=none; b=sgi0mgec4hqPOvowfymjzHYvaxAHYtlbG2qH+p+UVxr+3ncglLDnrbI0szm8OeMHCPnVf4u9jIj2qAQf+/S6miNxWmUaUWjyZQzgauT6IFPdl2lhSPXX9RvVgLQveCJtU5+onVrdKVQdGuqGuPdcVXcAva8VA2mwSz36Ee4FUtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772765202; c=relaxed/simple;
	bh=SmTxqZmtJ5OlaBMj2S9wU47i/iD3s674YTiTUoJ00wA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FgPWC6xJGxX0YxYLrFA0mwul7Kvm9ujmNrs7KOjY0q12PWlT/jJA+/n0WXwCMyKBYR+Va4R+yK9QQ8GJ0MFuD7uIyPAmJITzqDxqtbxfsP5QU/tz8adUeMVqB0R69FMb4aX+kGXUR87y83Ir8yE8Hlm1RpG/QdVnC+kE/4DDGTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ausil.us; spf=pass smtp.mailfrom=ausil.us; dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b=kyfsY4xz; arc=none smtp.client-ip=209.85.160.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ausil.us
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ausil.us
Received: by mail-qt1-f225.google.com with SMTP id d75a77b69052e-506cb1b63d0so102296631cf.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 18:46:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1772765200; x=1773370000; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6pObow7U4f+Fx/cYWK3hP7CP2OEJsOd2Sjmo2yIVQOg=;
        b=kyfsY4xzA3CjFV4f3gstTNisMsH0ApvS3yvw2IuMaoqeBhZrqA2RPm5oBCchJB4uJn
         2Q1e+CyBfba7qCJ6jg6TXAH9OPIo88q7Xhl1FRtr9Oxnf+klkGL9pEYMOdCkuErx8NJa
         oS1+Z4AXkWrAh8sp+8DxxmdZBtyo7EhYF6qq/6SeQpJpHHVJ/uUoZpK2JdI38rH8njFo
         vcOF6ewOjUaY0PG+P+I2EZG8t48N3BK7YCDZ7BCqksT11qRwipe5p2bOZkQ0/aKYZ040
         hYWdinveMGEmO7dqFzw67qmMt/ZCNHD15gkOwrR3iIZmGAzqSqZr65YqGvsIJgVG2Q+k
         Lftg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772765200; x=1773370000;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6pObow7U4f+Fx/cYWK3hP7CP2OEJsOd2Sjmo2yIVQOg=;
        b=olIDxWvsHnLLKx49YJoKSadEwrGFwBjR5O5iPHuIF0eM3ejysWN2GLvuVOHYO8y4Hd
         FNVCxj+bCTPEC1u+dS0yF/wWQEVjNHlOJRJDYta99OEPsen6rOnG6PDhPK3pbCyNDGDs
         Xw63nsRTpppOhtbEcLkt928l7QbE2Gp9rJAZD8TVuffJk6A2G82dkV3QieLm4NtumjWS
         rgfEv+QbpLt47UvvpXLcTdTTMFdH+4K4/QmRb2FoEkzv/aL2jQE/bHEzG4H4MFn2GhRH
         H6IqD6JeNciD5N793h1cvDEWV8h4jeqg8+hFFtIF5Z/EPCdWPW6A1RT79iSPNyXNs2rf
         XGHw==
X-Forwarded-Encrypted: i=1; AJvYcCVUHCwuPij3fOaJsWRBRpgyk9R9HrfiQe7KKGe681zGIA9r8nJ4GTDu6iN1TE4p6kS9xfQnlMAsMFtD@vger.kernel.org
X-Gm-Message-State: AOJu0YyakGfe4qPCTPiVo3BPQl2Jh+8O0DT4wbo9RZ4AAOINNMkdP5nG
	L2We2prMHDEmQBoJFD9ZgRpOEOKVOvqlvASXYEhXguGMatoQjz2gY2lEkvpNnIT+djovdddf1Wd
	guDGnYEaw1+ngAqHFfwjGy7YKE3Y6/MY1we8a
X-Gm-Gg: ATEYQzxD4X6sySBlk/ONK+3dPb9xXgZ5ihf+J3vSB2fXRNgAF2LbaIsA0nsvbts56kV
	r7qwTNu0J5TahnR3FS1SGps0dDHjfP2Awy+X7MM8XjL7MtyMfRfASBK5CzSPMGaz8eWKHl+CVT2
	GjA6TPebyBAlMpbAhard2DsHb+eOZI2DNLlizgRLCixN+reDpzwXKQfBCyKFYmNjynsVGAz4/1b
	gzI2qrbdgS+nKKCdJRdQvlMspOZj7+pfU51+6qdcLPD8myjdMOCUcQ3d1kbtupPDj6dP5XzHkA2
	tEYtfYiysaaS73kAqPsSHYp9gsmzOukK8bGrfvNQQsQECZwi1BJ7zqdmd/d54QPnIY/q/9PYt/t
	sFk7x3qSxjte4baai/VaiQxI7ZtVHDu7i+G71Fv2gDJME
X-Received: by 2002:a05:622a:450:b0:506:1edb:2cdc with SMTP id d75a77b69052e-508f4705675mr8675321cf.6.1772765199702;
        Thu, 05 Mar 2026 18:46:39 -0800 (PST)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 6a1803df08f44-89a31412832sm168366d6.11.2026.03.05.18.46.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 18:46:39 -0800 (PST)
X-Relaying-Domain: ausil.us
From: dennis@ausil.us
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>,
	Hsun Lai <i@chainsx.cn>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	John Clark <inindev@gmail.com>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Alexey Charkov <alchark@gmail.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Dennis Gilmore <dennis@ausil.us>,
	Mykola Kvach <xakep.amatop@gmail.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/3] Add support for Orange Pi 5 Pro
Date: Thu,  5 Mar 2026 20:46:31 -0600
Message-ID: <20260306024634.239614-1-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: D417321AB17
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[ausil.us:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,jmu.edu.cn,ausil.us,collabora.com,vger.kernel.org,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-271803-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_BAD_POLICY(0.00)[ausil.us : Multiple policies defined in DNS];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dennis@ausil.us,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ausil.us:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: Dennis Gilmore <dennis@ausil.us>

This series adds initial support for Orange Pi 5 Pro. The network
driver was just added. The only thing missing is the second HDMI port
that is connected via a DP to HDMI adaptor


The series was tested against Linux 7.0-rc2

Please take a look.

Thank you,

Dennis Gilmore

Changes in v3:
- moved leds from gpio-leds to pwm-leds
- remove disable-wp from sdio
- rename vcc3v3_pcie_eth regulator to vcc3v3_pcie_m2 to reflect the
  purppose
- actually clean up the delete lines and comments missed in v2
- link to v2 https://lore.kernel.org/linux-devicetree/20260304025521.210377-1-dennis@ausil.us/

Changes in v2:
- moved items not shared by orangepi 5/5b/5 Pro from dtsi to 5 and 5b
  dts files
- removed all the comments and deleted properties from 5 Pro dts
- Link to v1 https://lore.kernel.org/linux-devicetree/20260228205418.2944620-1-dennis@ausil.us/

Dennis Gilmore (3):
  dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
  arm64: dts: rockchip: refactor items from Orange Pi 5/b to prep for
    Pro
  arm64: dts: rockchip: Add Orange Pi 5 Pro board support

 .../devicetree/bindings/arm/rockchip.yaml     |   1 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588s-orangepi-5-pro.dts   | 311 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 184 +++++++++++
 .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi | 202 +-----------
 .../boot/dts/rockchip/rk3588s-orangepi-5b.dts | 181 ++++++++++
 6 files changed, 691 insertions(+), 189 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts

-- 
2.53.0


