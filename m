Return-Path: <devicetree+bounces-270836-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mE81ASafp2nTigAAu9opvQ
	(envelope-from <devicetree+bounces-270836-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 03:55:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8C21FA19F
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 03:55:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 031593025EE9
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 02:55:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D109B352C5B;
	Wed,  4 Mar 2026 02:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b="OG5+ESGS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f100.google.com (mail-pj1-f100.google.com [209.85.216.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7DB93FBA7
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 02:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772592928; cv=none; b=BjXrHexVPN/lWx0t6zd7PNBeYF6aqwFQE8mfVtG+zdJhuGIP0NKedemxyI1bzVOE6VgSPeR/AgxyBStlcNk8y1oqtbZGejwoIj4vwVoWIzU55gCeF7ZftYY2JN7IKLGK0NFCuAo8Qn/fkDqXPmSAeY8zYHiDmgIe9g5KgdUXZJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772592928; c=relaxed/simple;
	bh=B9DOWoboIRgmr6vupB/spjJspOdYGXPVdt2SirEmEgw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dzcNgdrGR1yc2JMfDxHXva4g82HvhKoPDK+jZmX0nejyFRzLVu/amEdh429TK4I7IMXPq7r+y5kLd5qnxvKi1uP43FjNhhHh+NSe8UWLSm8VloDZBi9fB051EiFxwt6MvMpJVjW2v/meZmIgh7oSRO9gFEX9fxaA7Mxsd9a2liE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ausil.us; spf=pass smtp.mailfrom=ausil.us; dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b=OG5+ESGS; arc=none smtp.client-ip=209.85.216.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ausil.us
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ausil.us
Received: by mail-pj1-f100.google.com with SMTP id 98e67ed59e1d1-3598a09fcb3so1293888a91.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 18:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1772592927; x=1773197727; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DugOzDqbwinV7rPcwrpaaCcBBfm3VhhJmZ52z51QrV8=;
        b=OG5+ESGS6aoULQLKB3jEpM449NyxttNjSVaQeM/HNqXgxhdhBswMd0NYDRwnzgiXUz
         U6O2X1mHj++ISCxUXrgWB6hQD8gxDW5uUKveNILJIK1EmulX4xAIzYIShg5dhKj7Z5uI
         pkLaSAkfi1GuS8UMNDNN7rDixmCj+Uon2blfe7GceOvdIvpqH0s8vibtoUlNtHTuzi+C
         JIMD3bRb6YXnoa2jb/DG07v0/68pE7s6xKsPSoaCFizGM6Lb4D5Dfk28ONYwv4+zbe8f
         /oonzo1cNwfVP+tHlqC94mmKPiNnHtCNIPDYe4eCSoe/3+1dQptU/JDCaYJkGIrLhdpO
         iobg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772592927; x=1773197727;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DugOzDqbwinV7rPcwrpaaCcBBfm3VhhJmZ52z51QrV8=;
        b=Q7CrAmk9Bl9h6FHv/JVEd4+WuyCeqiWIjnGODIuBmeCwgtA+bFg7zGgnHSrqzqfa4H
         M/HdGebJ/zY/DT0XkjgPUR0/oANE9i3Ym/z6fo6N1RfZcRFQmW5TysWLAoac18idbfqV
         qxrEwno/YfbhTODv6SsHOtWa71noWNaIPJBZKQuJJKISdnG38LoXu7bFMiKs/GYKjQ+e
         3/aTfQ7EsiY39kkRg8hM9FUKaMz4wyPgeWr30SeMwrbPwbFKFazbyWWeDwBEiaoIMiSk
         pbH+hG8KDgYLNADymiTVS8NDXiJNFbYvk6D6iK+Fuze+WxLIWEQk6F1xacxoufhP+aV2
         B8cA==
X-Forwarded-Encrypted: i=1; AJvYcCVHOP9vM8ydQYBbAqBTqFXXZSaIWSQZhQ1khcWIPRQa3ytNXZkJvZb9KTinYYP0beidxNY77rS6UPY4@vger.kernel.org
X-Gm-Message-State: AOJu0YyaIlfrCo5+369Qp1rPWxwY/H8P8xTuqZZtjNRy1ECq8RUX73ls
	Dt1cOXAqV87Q+lkLg7TahAZtnFSZSAJceZJyDyToo0pA1Qjpjpkb73+hu7Fis8+dcLSzlOkdJEg
	GJ9Zlj3SLagZCyq/ssmXhzJh4Kr868ZVTVzsb
X-Gm-Gg: ATEYQzyfi1jBqLWG6haUbxnGbwXvWx0BFmb5L3yPVidTF6wbAi0AsXUegefNUZbyjol
	JtiNKgiHKv3mnXO5uUdhwpFUQ6GSluU6ZCpUc0eUgDqhdFxCNMmh/2bjS+/l3KT/T4GHK4+S0pA
	sX18gYIQgPTQC0YbzVB77CYxEv9hDXJnpggLlwXl22MZwL0r8uB1YB88i6tyrgNYAJNkyTZ0LYL
	4w8IdlV2OjR/V1+5U22+/ERp/hEbqQYkfvWx09YyLy11iOJltp7dSbFBBwjVkzjSuY5USFDZyEL
	yPCrx11OSuGrbyWbc2BfMCTG1Y8Yjg5DF2klq/j4W6ByKT4rxQbHoAPkAied2bg0jFcAGXzP1Qg
	EQ8KGmuBHVVWF+VLqCZPVt05It4UkUnUROz44KHXFAcuw
X-Received: by 2002:a17:90b:1b0d:b0:359:8dc0:428d with SMTP id 98e67ed59e1d1-359a6a531acmr599029a91.25.1772592926872;
        Tue, 03 Mar 2026 18:55:26 -0800 (PST)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 41be03b00d2f7-c70fa7d59b3sm1374096a12.7.2026.03.03.18.55.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 18:55:26 -0800 (PST)
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
	Alexey Charkov <alchark@gmail.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dennis Gilmore <dennis@ausil.us>
Subject: [PATCH V2 0/3] Add support for Orange Pi 5 Pro
Date: Tue,  3 Mar 2026 20:55:17 -0600
Message-ID: <20260304025521.210377-1-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 0B8C21FA19F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[ausil.us:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,vger.kernel.org,lists.infradead.org,ausil.us];
	TAGGED_FROM(0.00)[bounces-270836-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,ausil.us:dkim,ausil.us:email,ausil.us:mid]
X-Rspamd-Action: no action

From: Dennis Gilmore <dennis@ausil.us>

This series adds initial support for Orange Pi 5 Pro. The network
driver was just added. The only thing missing is the second HDMI port
that is connected via a DP to HDMI adaptor


The series was tested against Linux 7.0-rc2

Please take a look.

Thank you,

Dennis Gilmore

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
 .../dts/rockchip/rk3588s-orangepi-5-pro.dts   | 376 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 184 +++++++++
 .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi | 202 +---------
 .../boot/dts/rockchip/rk3588s-orangepi-5b.dts | 181 +++++++++
 6 files changed, 756 insertions(+), 189 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts

-- 
2.53.0


