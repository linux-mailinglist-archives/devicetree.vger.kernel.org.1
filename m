Return-Path: <devicetree+bounces-319566-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id J/SqI9G3RmrWcAsAu9opvQ
	(envelope-from <devicetree+bounces-319566-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:11:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A2D6FC6C1
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:11:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=Jt7tc2xh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319566-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319566-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=sntech.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1FCA430AED9A
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 19:05:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A706C38425D;
	Thu,  2 Jul 2026 19:05:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADB25384CDD;
	Thu,  2 Jul 2026 19:05:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783019111; cv=none; b=ClhYWR0vxXewQ+vFQr1WFhmOmpIraVT4RAtT2/FZQEJ0ipYWWmpQcQv6qF0ddK4yHiqKPsM0jQDLX8r5ZTpf3jw1fy694tVf76xSpySCi8JX+o+E5scqW3R/uxcWZ0BqRRuutyiD7QW+e3DU56lfbYoUYAUIwcJkMAlUPUg7HWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783019111; c=relaxed/simple;
	bh=wFScMTA0aeosbk+Qcsd4y2LEslJSobKkD7dgWff6iYU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bmy1rfoaH38Hv2c/nHVfr7pPd3AexrTnu6DzHwI3Ve0tCWhDnM90IFkf0q/p2N17vUuVt7LUiwLpzvcECqzHZKVZr+FgBnaklFd9VzJ3vfxBbYoD2Q/XN/K8/QzSvcrUNKCz4bSwcOc54huQRKVRnSidm1cEMc02AVxpgwEQ9ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Jt7tc2xh; arc=none smtp.client-ip=185.11.138.130
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=m7PQ37TP8TLSa3Y3Mh+GfctL0Wog2HZY6fsfi5VePvQ=; b=Jt7tc2xhJjWGJQavuRgUHV+ifa
	AF2X59WYmK0VSW8hgH+znp+G7NDBzxiYvfWopRG1R2YBftbapRvA2HqK+3aVWF3tR9qFfiCCjljCr
	/0Q2tGJu3BWzgKNWrPhaODRK7pzblPOiBZipq397eqYyrrj0dvgqPAsgOjAbjp5ZXImtwuTzt7iCy
	kS+ngbY1gvR845pAYYd/Hvh0XLkJQl7eS3XxOncQSPdrnKlTrGvN1pQNggaVPOogVgMgw2PrHFZQr
	t3QAo0x//o6NJHvcYfpUAlg0PUYntH5iEtXybCK+UZ2GNGlcfob7zB1Pz60wGYPeXOCk4JOebyEc5
	Vw07ddog==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniele Briguglio <hello@superkali.me>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Add Youyeetoo YY3588
Date: Thu,  2 Jul 2026 21:04:53 +0200
Message-ID: <178301901896.3838694.11723513577053090499.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260610-yy3588-board-v1-0-4bb7176b6826@superkali.me>
References: <20260610-yy3588-board-v1-0-4bb7176b6826@superkali.me>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319566-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:hello@superkali.me,m:heiko@sntech.de,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sntech.de:dkim,sntech.de:email,sntech.de:mid,sntech.de:from_mime,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C1A2D6FC6C1


On Wed, 10 Jun 2026 15:58:57 +0200, Daniele Briguglio wrote:
> This series adds support for the Youyeetoo YY3588, a single board
> computer built around the Rockchip RK3588.
> 
> Both Ethernet ports, eMMC, SD card, USB, Type-C, HDMI output, WiFi on
> the Mini PCIe slot, audio, the recovery key and the fan have been
> tested on the board.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: vendor-prefixes: Add youyeetoo
      commit: fe76e3493f9ea5e927f9ce6bfe7f8785ba2d0c44
[2/3] dt-bindings: arm: rockchip: Add Youyeetoo YY3588
      commit: 1e476370fbb1def308e6da3785843f1d34529721
[3/3] arm64: dts: rockchip: Add Youyeetoo YY3588
      commit: 19847bde695f7bc65b16840c91cda4c2e35b36ce

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

