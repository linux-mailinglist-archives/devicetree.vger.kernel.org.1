Return-Path: <devicetree+bounces-272852-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SIRqFFOqrmntHQIAu9opvQ
	(envelope-from <devicetree+bounces-272852-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:09:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2C92379B1
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:09:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A445E3020506
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 11:08:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 235D7396B84;
	Mon,  9 Mar 2026 11:08:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFDBB396D24
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 11:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773054510; cv=none; b=FyiSyr5EC1+5SK6haOXZRC25C8911Mju9D4Galjqw9QetnyB2WBwJOonUE7Gnp4ZkMtGP/zUi0AxgFz7IYS3Z79WcWErQb3j8qWqlK58KzIJtOFhgzIUth+ULaeSLBr011pWOE6eTiAsj4Lc2mXSeU4aW1fhYjnpLGkesD0B7DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773054510; c=relaxed/simple;
	bh=IRf4UQjL9NlYstkqsHfuuBam4zj7OueVLbfBNPyV+uU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=iyNJI8rnm1HsLHIPwN/mWS6bON/xfmk9cOG9dqj8n7HUhGfIErxIB1Yl4y+b+TitZfMRhMCzZGB6Pccnp/G0PyxCNLNeFpQ2kSGQeJk/ntn1qdVCCxbRnaIrKzXsHPv0BKL4z3CIgRMV1wD0N8pkMEg82lBzVY4pyMU4T4E69Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vzYTI-0001El-Bq; Mon, 09 Mar 2026 12:08:24 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vzYTG-004WNl-2J;
	Mon, 09 Mar 2026 12:08:24 +0100
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vzYTC-000000007ic-40vi;
	Mon, 09 Mar 2026 12:08:18 +0100
Message-ID: <c571aa91f22aba040371ecf47765ee27192fb1fd.camel@pengutronix.de>
Subject: Re: [PATCH v10 0/3] Add support for Cix Sky1 resets
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Gary Yang <gary.yang@cixtech.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, peter.chen@cixtech.com
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, cix-kernel-upstream@cixtech.com
Date: Mon, 09 Mar 2026 12:08:18 +0100
In-Reply-To: <20260302064407.1914014-1-gary.yang@cixtech.com>
References: <20260302064407.1914014-1-gary.yang@cixtech.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Queue-Id: EB2C92379B1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_SPAM(0.00)[0.293];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	R_DKIM_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-272852-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,pengutronix.de:url,pengutronix.de:mid]
X-Rspamd-Action: no action

On Mo, 2026-03-02 at 14:44 +0800, Gary Yang wrote:
> Patch 1: Add yaml file for Cix Sky1 resets
> Patch 2: Add driver codes for Cix Sky1 resets
> Patch 3: Add dts nodes for Cix Sky1 resets

Applied patches 1-2 to reset/next, thanks!

[1/3] dt-bindings: soc: cix: document the syscon on Sky1 SoC
      https://git.pengutronix.de/cgit/pza/linux/commit/?id=3Dc76350e7add8
[2/3] reset: add Sky1 soc reset support
      https://git.pengutronix.de/cgit/pza/linux/commit/?id=3D7cd3ca90d921

regards
Philipp

