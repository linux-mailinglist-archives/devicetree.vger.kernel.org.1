Return-Path: <devicetree+bounces-325123-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TcLlK1j6U2ogggMAu9opvQ
	(envelope-from <devicetree+bounces-325123-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 22:34:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A2815745D70
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 22:34:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=oVOaDuhQ;
	dmarc=pass (policy=quarantine) header.from=sntech.de;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325123-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-325123-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 73AB93002505
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 20:34:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73ABE3B38BD;
	Sun, 12 Jul 2026 20:34:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7F33537F6;
	Sun, 12 Jul 2026 20:34:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783888467; cv=none; b=OPWa8uMATzSWB7JefaEFa0QsoJTd+BPra0lVyZFG33jVOAAAuUwgnHu/a2NvRFaroN5QNyOZKczWFJh622UlHZFR9gooBi6dk42PQBGh0hGuOCoWZ5l8TfniqYqhdhNPs1fDCpsz6trFEINR6c57LvkzxsMCGMPkljQUdW/LPJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783888467; c=relaxed/simple;
	bh=n/MZs0TuoRYJSXw670fFFTjsIp/X92i9iJFBSSHN99Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BLHyYPbL28sk+X/uN1mmxKm2h6UhqeNBujxrJpKoMkYEZ6AApUdT6vyMEjyQbLwSrUbt2zMiD+bbc1FEt3sdTt1+g5Bbu4f/QKcMvS7HvEAw6IX71BPiMeyenr32AS9EL4oWvv4JY1mkKYTR8iGOjWDFuTLSnFa3W4VnhKBstrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=oVOaDuhQ; arc=none smtp.client-ip=185.11.138.130
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=seILppKGTil9XvVHz2w8WcGUv3ZDPAQ7sc+x9QORmZY=; b=oVOaDuhQWudRoQ1btoqyzMjwZr
	Ih8XqMdJdiPg0lwZTHw2qHwAYZfdPgCLS6yDrgOgcy+iLZwgX0OrFM7RGO7Pm63rvjLn7dmUMr0jp
	E7ruvubyhDcJ2+5Z/saUlyVokTaP5XqQ+klKy09x++PUa0qEs7jkpgK27444FapNGXt03v++0IuMA
	OAjQm5GZGJGlHLH0choKlZ3uAdTlmoZNrWqhuVJM25asp8PDZHRpix+Agvxz08QvlmbUcnqsi4ed/
	ev6j2VoyzLP8ortF56dCfvDAPoKlEPWkVT5PKUqdCAoPzmP1EUdW+2Dk3N+VJFBeUbwHER7DU49NU
	K8VVuhAQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Coia Prant <coiaprant@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/3] Add devicetree for the Graperain G3568 v2
Date: Sun, 12 Jul 2026 22:33:55 +0200
Message-ID: <178388833988.1396294.17990564182339450982.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260702204628.2407308-2-coiaprant@gmail.com>
References: <20260702204628.2407308-2-coiaprant@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325123-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dsimic@manjaro.org,m:jonas@kwiboo.se,m:coiaprant@gmail.com,m:heiko@sntech.de,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,manjaro.org,kwiboo.se,gmail.com];
	FORGED_SENDER(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sntech.de:from_mime,sntech.de:email,sntech.de:mid,sntech.de:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A2815745D70


On Fri, 03 Jul 2026 04:46:26 +0800, Coia Prant wrote:
> Changes in v2:
> - Fix trailing whitespaces and other formatting issues.
> 
> Changes in v3:
> - Picked up Acked-by tag for patch 1.
> - Fixed text wrapping in the commit message of patch 2.
> - Replace the legacy 'gpio' label with 'gpios'.
> - Add the basic WiFi child node.
> - Add the Bluetooth UART child node.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: vendor-prefixes: Add graperain
      commit: 8885a00d305166fd6e1ba0699228d015424d3bca
[2/3] dt-bindings: arm: rockchip: Add Graperain G3568 series
      commit: 441baa62ea364c168dac79b804022154abab2ded
[3/3] arm64: dts: rockchip: Add devicetree for the Graperain G3568 v2
      commit: efca3937b84cbcbcccf88b26a54fb8efaf8bea73

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

