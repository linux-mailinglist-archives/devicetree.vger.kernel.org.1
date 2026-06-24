Return-Path: <devicetree+bounces-315111-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6Pm4EHKZO2rCaAgAu9opvQ
	(envelope-from <devicetree+bounces-315111-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 10:46:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D9C6BCA81
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 10:46:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=XqCA0qU4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315111-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315111-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 965183031AC3
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 08:46:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32A1B2FFFA4;
	Wed, 24 Jun 2026 08:46:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com [209.85.216.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B2E2F7F16
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 08:46:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782290798; cv=none; b=Se+RVYyqCaqaQRlq86RDMRFUidG9S9ffOXcnrjRUycsTo9BjjxEPhO9H0QXhVZq5PAHjNnfsjlRfZcZds8CK2OWcMVdMMahCPvreYpQGr2v8qukipNVqzeHcntr4TgpdFbLIWhIlhguOMXkEgY/Grzmx2a3xPrObmfBv7nshBCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782290798; c=relaxed/simple;
	bh=iJnYjsvlFEQcTUEBJKIAHZNJZeAQoRS5+2RUTfWmdhc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=VGISQWE+Kz6slAx44wykk2RIHmdDSvr2WoatBFsjy1GYgqFGvmQ/1y0SAbLgqEjE+/xl5ItxrmdM0YKmF+6UeokLLHcDDK0ag4cjneAADuuaP0kacp5rJoBzM+iodCdTCmLAQF15K1JSyLvd2UAA4fwcmE2EqDs1VrCIxrJryBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XqCA0qU4; arc=none smtp.client-ip=209.85.216.68
Received: by mail-pj1-f68.google.com with SMTP id 98e67ed59e1d1-37dd266c32eso597774a91.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 01:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782290796; x=1782895596; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VaTXxl/rE8HFkzzKKmqnaZrWWCZtpV0ev/8QevFoQa0=;
        b=XqCA0qU4kM+N5D9vP6q741Pqnt4e1zjsDeDeKk/IW8yOulIBwZHauqAkdsja1/akx5
         Jf34p91GgxrozbpghPVLtMMtNz8qHhcwXLCcJAfMYHPvVys6rqpOMxB5/W5NC6JkeEuj
         sUOta3Agn2MeBQZCs2xfhVr8282vfTvMunuH1v5f2AZ3maBU7B97Vu+45RHCGUAWISmL
         SleL3yOkJmF1ZvWhWeZSCFJeefdpAV54EeYD/IB/zjlVx9p5IbHAKkm0MzSREiR0Iqma
         jNeXwlaut7JvkhMHdD0xR3dt+hBzqCrFgG97hIfgirO5XTDhz4GFGL9vrWjpJsIbAIUi
         9gpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782290796; x=1782895596;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VaTXxl/rE8HFkzzKKmqnaZrWWCZtpV0ev/8QevFoQa0=;
        b=tCdZevMY9sF5rzTCPcQ1X186ucHhxLqx1pd1jHH67hh2bCV4TJSwzLEN6R5mJvX8Yk
         guQaWa4jKlYa/qIVet+6F3MtmkU/20of3ZcL7AUu3m+7euvgw7EBbq0yzY3fhzUGIUxa
         gkJclD2C8lstpGQ3F4m+VhWTd1X13QRBk0KE+BEMBbisnHZ6is7l+24z8UUjO299uj9S
         mhF6l34uxTWNU5MnYrHcIbjpxObqX6RSXkWkXtKHS8VJPh2GMWi81cggmifYbU8uYf1F
         HAxTXWvOqDX5Qlrlc0Z/qAiNr1tYZ8GHTDnAdqL09PBiMDN2O8v2G+Xlrji4ASscrct/
         zraw==
X-Gm-Message-State: AOJu0YwJXxNRRcolLKVIrIPiL1ris2u36cNziKQpEsxNv+Tw1HOW+V4n
	IiIYpCGfE9AG1rHCEx0xvqaw0phj+aQd4ejBcDdqVSXcntzy77cX9XSI
X-Gm-Gg: AfdE7cn5T68/34v9BuIj++dp+Wg5GV4swk/hqMSG0Cnd1S7m4gI7mMnm0CQUkwlx5e4
	dljjq2Qvl5hPG+gNOw3omDOBpSzG6x9GQZ5q5mOtbjopsLNTPpvdpt+ROfMkPqPD0TSpdvajh8n
	pVaGPQJGW5OlaaVHFnqwnV9Q3wsL15mbTeA30NgLOFD9ZmsFSARjnqEBETYn8adr++dJS0eegbH
	2v3ziMuhbxplH9ICKfBPQ7Lt2Z0lbalOI9XT2DDQe9lxeLrWx4kUM0/El72xlGcK6yYlDg5J4Ny
	kWMx7gi4uReBv21IMLAMtHTl+iDDuxpH5QWtBemuHbWlJrYIC304cjRn1p9gRXqaQtjItgxiSI3
	pb08kJATBLGU304hRnRAWW/1viRylWYzpKfaC4IlktRhbGq8oatjOKd/pUpRei524mjYEItvaAS
	B0xHuccSqmxx4SCDm230M0v7AC
X-Received: by 2002:a17:90a:d005:b0:36d:649a:39f7 with SMTP id 98e67ed59e1d1-37de42bb597mr2631365a91.22.1782290796126;
        Wed, 24 Jun 2026 01:46:36 -0700 (PDT)
Received: from [192.168.1.101] ([218.194.36.79])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37de3d152f4sm2138146a91.14.2026.06.24.01.46.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 01:46:35 -0700 (PDT)
From: Yanan He <grumpycat921013@gmail.com>
Subject: [PATCH 0/7] ARM: rockchip: rv1126: Add support for Alientek
 ATK-DLRV1126
Date: Wed, 24 Jun 2026 16:44:37 +0800
Message-Id: <20260624-rv1126-alientek-dlrv1126-v1-0-5aef608a3f64@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/y3M2woCIRSF4VcZ9nWCSon1KtGFhz21SyzUZEB89
 7GZLr8F62+QMRFmuEwNElbK9I4D4jCBe5h4R0Z+GCSXiiuhWapCSMVMIIwFX8yH/+LPR2O9m/V
 Jcxj3T8KZli19ve3OX/tEV3496H0F2yK6+nwAAAA=
X-Change-ID: 20260618-rv1126-alientek-dlrv1126-d94abdcf8580
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 David Wu <david.wu@rock-chips.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 Yanan He <grumpycat921013@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782290789; l=2033;
 i=grumpycat921013@gmail.com; s=20260618; h=from:subject:message-id;
 bh=iJnYjsvlFEQcTUEBJKIAHZNJZeAQoRS5+2RUTfWmdhc=;
 b=eAmpN/LKqYFNFMAnnsJDd9ohedM5OOImfapRIiKBxmQZmuQsg34keypt4x4eW24GHkC/Y1ECB
 nUQ/RXKU2rtBBikIZF9qoSlbOOUqSmnD3bfzpThwHvlNvdNsa/IGU1a
X-Developer-Key: i=grumpycat921013@gmail.com; a=ed25519;
 pk=oWrY8KwXIunZWlYBV76NG2A3V4p1bJ+aD45Mr56ErTw=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315111-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:david.wu@rock-chips.com,m:mcoquelin.stm32@gmail.com,m:alexandre.torgue@foss.st.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:netdev@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:grumpycat921013@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:andrew@lunn.ch,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[grumpycat921013@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,sntech.de,lunn.ch,davemloft.net,google.com,redhat.com,rock-chips.com,gmail.com,foss.st.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grumpycat921013@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 90D9C6BCA81

The ATK-DLRV1126 board consists of a CLRV1126F core module and a
DLRV1126 carrier board. The core module contains the Rockchip RV1126
SoC, eMMC and RK809 PMIC. The carrier board provides Gigabit Ethernet,
SD card, AP6212 WiFi and Bluetooth, PCF8563 RTC, ADC keys, GPIO LEDs and
audio connectors.

This series adds the Alientek vendor prefix and board compatible, updates
the Rockchip DWMAC binding and driver for the RV1126 GMAC reference
output clock, adds missing RV1126 SoC description pieces, and finally
adds the CLRV1126F core module and DLRV1126 carrier board device trees.

The board was tested with Ethernet/NFS boot, eMMC, SD card, SDIO WiFi
enumeration, Bluetooth LE scanning, RTC, ADC keys, GPIO LEDs and RK809
audio card registration.

Signed-off-by: Yanan He <grumpycat921013@gmail.com>
---
Yanan He (7):
      dt-bindings: vendor-prefixes: add alientek
      dt-bindings: arm: rockchip: Add Alientek DLRV1126
      dt-bindings: net: rockchip-dwmac: Allow 9 clocks
      net: stmmac: dwmac-rk: Enable refout clock for RGMII
      ARM: dts: rockchip: Add RV1126 GMAC refout clock
      ARM: dts: rockchip: Add RV1126 I2C5
      ARM: dts: rockchip: Add Alientek DLRV1126

 .../devicetree/bindings/arm/rockchip.yaml          |   7 +
 .../devicetree/bindings/net/rockchip-dwmac.yaml    |   2 +-
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm/boot/dts/rockchip/Makefile                |   1 +
 .../dts/rockchip/rv1126-alientek-clrv1126f.dtsi    | 277 +++++++++++++++++++++
 .../boot/dts/rockchip/rv1126-alientek-dlrv1126.dts | 258 +++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi     |  10 +
 arch/arm/boot/dts/rockchip/rv1126.dtsi             |  18 +-
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c     |   6 +-
 9 files changed, 577 insertions(+), 4 deletions(-)
---
base-commit: 8cd9520d35a6c38db6567e97dd93b1f11f185dc6
change-id: 20260618-rv1126-alientek-dlrv1126-d94abdcf8580

Best regards,
--  
Yanan He <grumpycat921013@gmail.com>


