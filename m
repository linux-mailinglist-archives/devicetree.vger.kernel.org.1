Return-Path: <devicetree+bounces-262789-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNvTNlOPg2lCpQMAu9opvQ
	(envelope-from <devicetree+bounces-262789-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:26:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E08EB9E4
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:26:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E445D300650E
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 18:26:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4111B421F06;
	Wed,  4 Feb 2026 18:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="f70doQmn"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F32123EFD2B
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 18:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770229585; cv=none; b=IEn2kC+8Al3ep+vDh2ixB+s+Rxv2bzTeysoUzXMCS4hnx4acpf4KvR/xeVwswwOih/1nzP/D/n3M4SgeiixvqTQknw4IMrzYc9rBECJ+h9kG/ucF7Ahck5Y1osle2FrBZmjBdykISqQ+A8LS3hyiINwxDKVUFjXeTd8cYbmvxj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770229585; c=relaxed/simple;
	bh=U3kKq6AeheDTj29tSB4X7ZOi6cLa040ZVTTBNLcAZ9M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mWBnSaw6LnRfNxhlP8eehsIdStpnxtoXb2t6Ut0S4R6Bu38hM2RFNlIDny+ifrYtb1lXHnja8QZXeuDvymjoJ2+yPblFBwcGHeLMTKiahBdz/zL6jG3041AbvFXjocjwivKAQZe4b6ERzFM94Kvwb4hwalkLn3t79tum4/Ko9ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=f70doQmn; arc=none smtp.client-ip=192.19.144.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 8359BC0065C6;
	Wed,  4 Feb 2026 10:26:18 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 8359BC0065C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1770229578;
	bh=U3kKq6AeheDTj29tSB4X7ZOi6cLa040ZVTTBNLcAZ9M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=f70doQmn7P9+oB+N8RzTZiQF2tmp7TaVjYeDzBNotsKLy9tWFJ6lWbjogXsT+u/QC
	 tw4fhwHH4YE5zYwLHG/2I+mU98eqQE+q12NxGPjck0+1+TN70Qai+iuH5jnnsDqCA7
	 K3+lN03yPKcmdk1hd/UPbbyimvD3imCGBhocVd4A=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id 1CDCD1B858;
	Wed,  4 Feb 2026 10:26:18 -0800 (PST)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	zajec5@gmail.com
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	William Zhang <william.zhang@broadcom.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH -next] ARM: dts: BCM5301X: Drop extra NAND controller compatible
Date: Wed,  4 Feb 2026 10:26:17 -0800
Message-ID: <20260204182617.1154751-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260204091530.624230-1-miquel.raynal@bootlin.com>
References: <20260204091530.624230-1-miquel.raynal@bootlin.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[broadcom.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=dkimrelay];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,broadcom.com,lists.infradead.org,vger.kernel.org,bootlin.com];
	RCVD_TLS_LAST(0.00)[];
	URIBL_MULTI_FAIL(0.00)[bootlin.com:server fail,tor.lore.kernel.org:server fail,broadcom.com:server fail];
	FREEMAIL_TO(0.00)[broadcom.com,bootlin.com,hauke-m.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-262789-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[florian.fainelli@broadcom.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[broadcom.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[broadcom.com:mid,broadcom.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 15E08EB9E4
X-Rspamd-Action: no action

From: Florian Fainelli <f.fainelli@gmail.com>

On Wed,  4 Feb 2026 10:15:30 +0100, Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> Fix the dtbs_check warning introduced when the brcm,brcmnand fallback
> compatible got removed for iProc machines.
> 
> Fixes: 4db35366d6dc ("dt-bindings: mtd: brcm,brcmnand: Drop "brcm,brcmnand" compatible for iProc")
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

