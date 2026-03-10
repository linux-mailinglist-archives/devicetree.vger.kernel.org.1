Return-Path: <devicetree+bounces-273234-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UF6zIJSLr2nJaQIAu9opvQ
	(envelope-from <devicetree+bounces-273234-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:10:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CDD2449BC
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:10:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5CE383067A3F
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 03:10:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCD303AA1BB;
	Tue, 10 Mar 2026 03:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b="IYabK/+w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f225.google.com (mail-vk1-f225.google.com [209.85.221.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F80F3939DE
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773112209; cv=none; b=BjKpl5BhgtAf+UCfmasbQs2/CLy1LEQuYvQ9FP7hrPIz80wmar7rSFE8fo01QKuFN3G/hxXiMy5Mdr4zHJr239fDzeJc81kkEyeyyvNMuvqLkigDSYkd6hk+MxV1UOyoZ/gmiE25Hu2ptVh7UImqjjvD1/xHqMSOKV71k8B7azA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773112209; c=relaxed/simple;
	bh=vWl3kuVQw6TR5eAYVJHiYoHppIkCH4UfqYia23i7psA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cKYMwNgXFv4WzvCLNc2ob0Pk0cJW5pzmPGJEPYr3R/MYo/VoNADU7GHnRXP26o2nh4MBqAEsDABzcaVh7AwqsOFA986SqBQpC/bg12LqpiHOEgHd5paFEmQlhRYt3V1/7wQsho66IKQrGESZT19brip2y0LJ3gDRs3H0LmkRNBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ausil.us; spf=pass smtp.mailfrom=ausil.us; dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b=IYabK/+w; arc=none smtp.client-ip=209.85.221.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ausil.us
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ausil.us
Received: by mail-vk1-f225.google.com with SMTP id 71dfb90a1353d-56af73db66bso1955595e0c.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 20:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1773112207; x=1773717007; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5fNvrEyEz+03XQrEJ7dkupE0zWIJvoyBniEDwrgW4Ls=;
        b=IYabK/+wBiLT5rrwIsW2s+DCUAh0QZ6uPApUh4TZkGxO+fSPXVHK2QYOij4sn2eCj+
         jbQAQuZ4mw/RS8iXiheXTUVaV7FNI3Ax07gE7XS4Cox17A4zicZM9aKI7dXWEj+6juXy
         q6eCbYO+mdHSscTr2Gxyyz+yYb7Ko002f9Wkwox6S0FzHCDIEpn3LeDzOiU+7PcwDcHY
         DKjHxvNKD+zZKn7wB9YUBX6kBAOYSK3imiQlL9YWN5WmxFzPcSSW7KPxWnQW/aoaz0xY
         lDDqgIXi5tztx8by5InmQAOqMITwN7zZXPdODtSfGvP+xLzOBXcTXW/09VJrpQz4Lhw9
         dotA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773112207; x=1773717007;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5fNvrEyEz+03XQrEJ7dkupE0zWIJvoyBniEDwrgW4Ls=;
        b=PMl0DmVpiAjn0VsjZLP26PyqX8vsiVphlmqr+Av196DBpTMIVsWu3tzmH3CSOV8CG5
         37Mk5CTZSEOJlrlICN6HlpbF0v1Rt5IbWLQMcccSdRrI2kXNleuAdWiaEbyH4g6PBTPm
         //gBnIC+i5NxYBvdCslG/bp20pqDQr22ZN21ZYELrMZjcnZ1K63p/yYobGxdwIwDg8QL
         C8NUFgCGxQIya0c/a+zwXplHIPfJv5Ckpwycpyd6AsD05UzdrnbBDY7yq5D87gtg7vlk
         6wJMO3arQJBuq5Qs2SFXopUodjC5cn7Kp5gOgr2U/yxPLeZlumEY4G9TsJ0eHekxr9K+
         B4XA==
X-Forwarded-Encrypted: i=1; AJvYcCX5//gQ/a834xWud2yChFd1b2QSwk9atNsSvV8MEi4ISZ5YmGfieyOrKv3XLGTbb4+4PMmEpUABYrNR@vger.kernel.org
X-Gm-Message-State: AOJu0YxksyMk0xVsVdvCkq85Fx4RNoKky38DoKTbTtEfgl0FPvZ7e5k5
	Sp1KFlI1DR+z0Ev1cSPByAoUp6tgCuh87i6AnwZI+vFWGvMgIhXakeNKMAk+5Rf6eYzszDOWwV8
	UhtogR/FkN+SwCPWUTjrZKDtFFJw2ahpKKYGm
X-Gm-Gg: ATEYQzzIFA5r2/8g8hXGiQt+7KyaDZ+Iqjp/sizdw6TB/E3oi/N48IAvC3zIbXhp+o0
	QYIGhjxm086GA8w62FY+Fo4AoJMH2M4qAN79LsU1PDPTDLHtaHb71pAb8GWKxnbNiYlVrTrrXtK
	aEX0FVVebJjsevjKKfPTiP+jsfT3r5N17Dj1wovUCXF7GaaqC86PkHsaThsOOX0yYTK0rdn7KkL
	jbmUQ9SoV4gBv5ln0PqAwgGm+pr2GTm2OAXUe8+uO4dloTsSSABBb88jLQSHCXwCDVym0TaMI1W
	7zU5JRt4hcMiJDzIEUgtnXZ4vUJTy1YWZO8YSpnChTNdodO/EW7dEA3o46Jym/zXaLJf4NOLWXN
	NcEhveC0duCviRwKd/ROhunzh81x6C77xMkBnkaDckgT9
X-Received: by 2002:a05:6122:3b05:b0:559:5ef5:b196 with SMTP id 71dfb90a1353d-56b07e2d9c6mr4061680e0c.13.1773112207330;
        Mon, 09 Mar 2026 20:10:07 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 71dfb90a1353d-56b09ae3ef6sm1544609e0c.6.2026.03.09.20.10.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 20:10:07 -0700 (PDT)
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
	Michael Riesch <michael.riesch@collabora.com>,
	Mykola Kvach <xakep.amatop@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/3] Add support for Orange Pi 5 Pro
Date: Mon,  9 Mar 2026 22:09:58 -0500
Message-ID: <20260310031002.3921234-1-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: D4CDD2449BC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ausil.us:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,jmu.edu.cn,ausil.us,collabora.com,vger.kernel.org,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-273234-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ausil.us:dkim,ausil.us:email,ausil.us:mid]
X-Rspamd-Action: no action

From: Dennis Gilmore <dennis@ausil.us>

This series adds initial support for Orange Pi 5 Pro. The network
driver was just added. The only thing missing is the second HDMI port
that is connected via a DP to HDMI adaptor


The series was tested against Linux 7.0-rc2

Please take a look.

Thank you,

Dennis Gilmore

Changes in v4:
- rename vcc3v3_pcie20 copied from rk3588s-orangepi-5.dts to vcc3v3_phy1 to match the schematic
- use vcc_3v3_s3 as the supply not vcc5v0_sys for PCIe
- remove the definition for vcc3v3_pcie_m2 as it does not really exist
  as a regulator

- link to v3 https://lore.kernel.org/linux-devicetree/20260306024634.239614-1-dennis@ausil.us/

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


*** BLURB HERE ***

Dennis Gilmore (3):
  dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
  arm64: dts: rockchip: refactor items from Orange Pi 5/b to prep for
    Pro
  arm64: dts: rockchip: Add Orange Pi 5 Pro board support

 .../devicetree/bindings/arm/rockchip.yaml     |   1 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588s-orangepi-5-pro.dts   | 301 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 184 +++++++++++
 .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi | 202 +-----------
 .../boot/dts/rockchip/rk3588s-orangepi-5b.dts | 181 +++++++++++
 6 files changed, 681 insertions(+), 189 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts

-- 
2.53.0


