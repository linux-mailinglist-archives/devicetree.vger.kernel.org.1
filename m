Return-Path: <devicetree+bounces-309517-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2StXE1AeKWrkQwMAu9opvQ
	(envelope-from <devicetree+bounces-309517-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:20:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 02ED3667148
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:20:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=cknow-tech.com header.s=key1 header.b=NqlJu1XQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309517-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-309517-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=cknow-tech.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1C5D4306CFA2
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:14:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42A6E3A0B01;
	Wed, 10 Jun 2026 08:14:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta1.migadu.com (out-181.mta1.migadu.com [95.215.58.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4713A1684
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 08:14:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781079265; cv=none; b=jurf8V3rC+p7g9SDrC6zPq4CWYlNSAwCESbz/A+ZCrnmXzT2PaZDmyew0LMGTjg0fM6i+cwIGqqKmPodYlEmiWU8yGofRS32zX+uv4iFHoSFwd1YP0aj92LfomKCxWmow0cQaRaCXbocRrOc40VoOed2mpwnJ6XbCCu33+/Ghyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781079265; c=relaxed/simple;
	bh=spRVBlGQqW9gPeAmUE2Yu2/R44YAQEpXfhl1wos4Kp8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Zug7aT+zmbIqcqcV973YBtP4CLy9nH6svAZD5kH6SEhwMTFjoO+74SLnkKp2cxRoTtfBfam2wPdfGISqQjq7U9JmVKZkMJ9Vuww9Nc92yLrZJyIezSE5lJS54ItkDY1wInyeUPwaMrGo0kBY2HwPekyD27ha2gOkGu0Ve01x+K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=NqlJu1XQ; arc=none smtp.client-ip=95.215.58.181
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1781079261;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4D3U0MJrq3HMALbVG4yy5LYGiwOLwK/bQQJ3BITNLwM=;
	b=NqlJu1XQMQhaZi7mQd/ZOpEchPr+6zrwj3xNiK+0D8Ko97FQl9fiDao64Tv2W03aTZOkM/
	PRrJn0gHWNAItsWzuKZ6Z88MV/dMcDUfjdsml+OG9OnOC0hA163TdPxEfxK8i7v0vT7ORH
	rhIxZWUJCEjFA4tMfM5bTE9k2BcE4C8UBVhmTXvMKA7aV6KOF8ugrlSkKr71PDTzwLwHDB
	5hOFtos5Ldd4PqC5j3DXZy0MiCwqIYWW/TJOu5H9kfLKIyrcT7QvRrIGH1Ee66OhZeDMSZ
	9YmnU7Wu8VSYL85dsLtmfDdpeSxSlGvcDaF/Rn17xBttHzxXNz/t+PpbOHW+7g==
From: Diederik de Haas <diederik@cknow-tech.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>,
	Diederik de Haas <diederik@cknow-tech.com>,
	stable@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: Fix USB hub phy-supply config for NanoPC-T6 LTS
Date: Wed, 10 Jun 2026 10:04:06 +0200
Message-ID: <20260610081400.758687-3-diederik@cknow-tech.com>
In-Reply-To: <20260610081400.758687-1-diederik@cknow-tech.com>
References: <20260610081400.758687-1-diederik@cknow-tech.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[cknow-tech.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[cknow-tech.com:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:jonas@kwiboo.se,m:marcin@juszkiewicz.com.pl,m:diederik@cknow-tech.com,m:stable@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-309517-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[cknow-tech.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,cknow-tech.com:dkim,cknow-tech.com:email,cknow-tech.com:mid,cknow-tech.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 02ED3667148

The MTT USB 2.0 hub is connected to the SoC's USB20 HOST1, so the phy-supply
belongs to u2phy3_host, not u2phy2_host as that is for USB20 HOST0.

Fixes: db1dcbe5f752 ("arm64: dts: rockchip: add NanoPC-T6 LTS")
Cc: stable@vger.kernel.org
Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
index 0ee67ee24f3c..0e15a2e1f2ff 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
@@ -38,6 +38,6 @@ usb20_host_pwren: usb20-host-pwren {
 	};
 };
 
-&u2phy2_host {
+&u2phy3_host {
 	phy-supply = <&vcc5v0_usb20_host>;
 };
-- 
2.53.0


