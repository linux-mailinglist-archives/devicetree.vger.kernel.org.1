Return-Path: <devicetree+bounces-309515-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /bfYNIgeKWr3QwMAu9opvQ
	(envelope-from <devicetree+bounces-309515-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:21:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C01667186
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:21:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=cknow-tech.com header.s=key1 header.b="lZwr/DAw";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309515-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309515-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=cknow-tech.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 37F4A305FB2B
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:14:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CD7E3A0B01;
	Wed, 10 Jun 2026 08:14:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta1.migadu.com (out-174.mta1.migadu.com [95.215.58.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B26F388876
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 08:14:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781079260; cv=none; b=kigmY7iGt47n2HK6yFnmIwbLpJbK5YK8G9MoZ9vQ1P5EecWp22oQcxvE84oHprGEywfR/zspZYsfvZXrNwZtc7uYLUp9iHzUIaqO1ROQJ26hAuE+e1sgpLRMDObcp68c6SrEyEzCew6nH0bSUsm2vOrCScJQXzW3IlER6GM+Yuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781079260; c=relaxed/simple;
	bh=hzztyyB7xljixNXQx6zYvxVpMpF9bNMNdFnTEwzcNDs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SO4hlAY95X1KW5lfINy//IsIa4n8xR4aPaeyae5TKiWLCSXWatYoAc+NJGkhrew82cZkgHJUXGp0Bj3bZHMvcxq9XEn7i2nRq8tKyYnXJrfBgkSbz2o8MvWVASkKl+Fb5ZqrbZRlrdutdh6ylBmmQIeR6clhvOzUYD2ne0DQe34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=lZwr/DAw; arc=none smtp.client-ip=95.215.58.174
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1781079255;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=kjtDSKgAkBUwFT0hwE/2Ap75hxqeB45aM0UXggEveyI=;
	b=lZwr/DAwi5MuDj7EnY8KldX5dEhj6AHfLGfJpB9zMZP3cZMalnkQP23io4b6Y+8fbfJBTB
	+gdOawkXzTnycIYTuxU+Bxt/f/OWKmEbUASf0lB7YF3aUlg+1XhxWfjV9yBJhRUZktVHwx
	1c0bKc+wl8NDIBnyrou9mdrSOSQJzBIPK+aCioYqbNvL4XuF3nZFXap8XvAUOPxslXqNjC
	OGED8/G5ytjJOqDC/lKhJk3CZ6PC1IWjjvrVBDQKRXTyXWTKP5IEI5SawMJcrQqFSejsdf
	sh8HkRCBHCMyDtBDeQ80/Rq521X2bx8N+3vZk5fbfoM2gBLuHjiGOzrmemOb3g==
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
	Diederik de Haas <diederik@cknow-tech.com>
Subject: [PATCH 0/2] Cleanup and fix for NanoPC-T6 Plus
Date: Wed, 10 Jun 2026 10:04:04 +0200
Message-ID: <20260610081400.758687-1-diederik@cknow-tech.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[cknow-tech.com,quarantine];
	R_DKIM_ALLOW(-0.20)[cknow-tech.com:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309515-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:jonas@kwiboo.se,m:marcin@juszkiewicz.com.pl,m:diederik@cknow-tech.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[cknow-tech.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cknow-tech.com:dkim,cknow-tech.com:mid,cknow-tech.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 27C01667186

Several nodes were enabled/configured when support for the NanoPC-T6 Plus was
added, but later those same nodes got enabled/configured in the dtsi file,
making those in the dts file superfluous, so remove them.

The MTT USB 2.0 Hub is connected to USB20 HOST1, so the phy-supply belongs to
u2phy3_host, not u2phy2_host as that is for USB20 HOST0.

Diederik de Haas (2):
  arm64: dts: rockchip: Drop duplicate USB nodes on NanoPC-T6 LTS
  arm64: dts: rockchip: Fix USB hub phy-supply config for NanoPC-T6 LTS

 .../dts/rockchip/rk3588-nanopc-t6-lts.dts     | 19 +------------------
 1 file changed, 1 insertion(+), 18 deletions(-)

-- 
2.53.0


