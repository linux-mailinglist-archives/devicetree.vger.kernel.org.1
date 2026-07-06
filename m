Return-Path: <devicetree+bounces-321043-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cwEVE0KLS2raVAEAu9opvQ
	(envelope-from <devicetree+bounces-321043-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 13:02:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D1370F9A7
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 13:02:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=NuQ5N5rR;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321043-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-321043-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6FE8130A03EB
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 10:12:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F49B37BE7F;
	Mon,  6 Jul 2026 10:05:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7AE8233721;
	Mon,  6 Jul 2026 10:05:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783332325; cv=none; b=W7YCTgel2t4hecnrLv0ikSfWdf+7hJNZoPk3C5RFNd4oqunLJ/5lyxtqgCCMuzXQwIXd6c58CNuUu8MbqWmGC/fliL4q46J640gnicaKzMQWBAr1DR5vwEuDV5OB40LW8vS3q4pog4vlvxuKOu+NCrslsNd6TP9tftwPQLiKVTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783332325; c=relaxed/simple;
	bh=jZ/jeF0rqeGJmOgvFJLDOcdQYLBkfprGmEHK/lqf0cU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ZNsdbUShh1mnzhAQlxlX7c65H9BxLHQ1pasDfBpgQPeW9huxjZ2OV9jqj7l8zHY8dBaYnam4xygxZBaBWeCeSAH80KBkVZQTInVc4168+TafPXNqsI5hgl2j9mYmNVdTYATB4BndMlPfB16WkrqFw/6C6BhlV7uxbg+w740IWrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuQ5N5rR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E93261F000E9;
	Mon,  6 Jul 2026 10:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783332324;
	bh=jZ/jeF0rqeGJmOgvFJLDOcdQYLBkfprGmEHK/lqf0cU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NuQ5N5rRf5wDjZWeTuWo+tq6OFFvFIUw7G9pFQRGMnRxzDTumlAnNBJG7dCYyrnb1
	 CMW5tXlEWVgnd8wbzuU94PWub8u86BC/Y7oipzVoMvxs5FGQLIYUzhDPTbbpqin+6K
	 xD1aoyUi3dYZvh80NYvgzusCALBlhfsx95fhFQNEvN60/I5cXhXoHxAbHg/a4nQiRQ
	 UM3XHUCjr1xl4sRaGz5azo2Kpw3eRJ0nOZN/qTL2RznWdiI1yEDcaQPLgu1psCjp33
	 iF9GWgTmpuY0MCVyTpxaUjAzv6qa7t7PeSPYtZtfpds0MhUaDKHaB46KSH5G2q1hgp
	 lhMPRZgc4bTpw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: pci: ultrarisc: add required DP1000
 PCIe clocks
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jia Wang" <wangjia@ultrarisc.com>
Cc: conor+dt@kernel.org, linux-pci@vger.kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260706-ultrarisc-pci-clk-v2-1-2f3fb6fba66b@ultrarisc.com>
References: <20260706-ultrarisc-pci-clk-v2-0-2f3fb6fba66b@ultrarisc.com>
 <20260706-ultrarisc-pci-clk-v2-1-2f3fb6fba66b@ultrarisc.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 10:05:23 +0000
Message-Id: <20260706100523.E93261F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-321043-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,ultrarisc.com:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wangjia@ultrarisc.com,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 58D1370F9A7

> From: Jia Wang <wangjia@ultrarisc.com>
>=20
> Require the DP1000 PCIe controller nodes to provide clocks and
> clock-names, using the standard DesignWare clock names "core",
> "dbi", and "aux".
>=20
> Fixes: d9ff07f45955 ("dt-bindings: PCI: Add UltraRISC DP1000 PCIe control=
ler")
> Signed-off-by: Jia Wang <wangjia@ultrarisc.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-ultrarisc-=
pci-clk-v2-0-2f3fb6fba66b@ultrarisc.com?part=3D1


