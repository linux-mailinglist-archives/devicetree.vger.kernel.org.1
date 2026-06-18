Return-Path: <devicetree+bounces-313311-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NOPjOZasM2q9EwYAu9opvQ
	(envelope-from <devicetree+bounces-313311-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 10:30:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7AB69E762
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 10:30:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313311-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313311-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C9826300421F
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 08:30:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89B573A7D73;
	Thu, 18 Jun 2026 08:30:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.white.stw.pengutronix.de (mx1.white.stw.pengutronix.de [185.203.200.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF8423A7590;
	Thu, 18 Jun 2026 08:30:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781771412; cv=none; b=fL5IdOcg2IMqN/yPVo23QDJki5qi+7tQA7TXWI16QHDZBWXTn/L9AinBIsuoK7z2ZPeRXlDTzRA90+HEoElWcjqxWbeoKtzTugyjVcIEQe7YoaA01fKiY3NvQjN7ulp4Lg0U628Zuj5GiX8I6jbHI2rYm4JRh89faUc0chMLbNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781771412; c=relaxed/simple;
	bh=6mIvcGy8LPHzfteMQOnk4oL6dfSG3N5Gsj+qKYirtyI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=jqgRnrZIrEecMZYkxnIOhMh079VZSEi9rFeQqwZTtMsNcaNuhvJTC8465N04Vy2x7o5a0z0yGOgASt+hfWyCG3JXKEEaw6q9uWm/lU/t0QJvh74V09SDg+I3II0OGIt8J2N6GQ3sm2Xma7qfAwFm5P0Nd2N9+sACCBWtmJ4VcNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.200.13
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2D22320071A;
	Thu, 18 Jun 2026 10:30:05 +0200 (CEST)
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wa88T-003PMn-0D;
	Thu, 18 Jun 2026 10:30:05 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wa88S-0000000033G-4Bo3;
	Thu, 18 Jun 2026 10:30:05 +0200
Message-ID: <cd63c1ab9831fdfd39aad8d1a40c4702a9cbb158.camel@pengutronix.de>
Subject: Re: [PATCH v4 3/5] dt-bindings: clock: cix,sky1-audss-clock: add
 audss clock controller
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Joakim Zhang <joakim.zhang@cixtech.com>, Conor Dooley <conor@kernel.org>
Cc: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"	
 <sboyd@kernel.org>, "bmasney@redhat.com" <bmasney@redhat.com>, 
 "robh@kernel.org"	 <robh@kernel.org>, "krzk+dt@kernel.org"
 <krzk+dt@kernel.org>,  "conor+dt@kernel.org"	 <conor+dt@kernel.org>, Gary
 Yang <Gary.Yang@cixtech.com>, cix-kernel-upstream	
 <cix-kernel-upstream@cixtech.com>, "linux-clk@vger.kernel.org"	
 <linux-clk@vger.kernel.org>, "devicetree@vger.kernel.org"	
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"	
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"	
 <linux-arm-kernel@lists.infradead.org>
Date: Thu, 18 Jun 2026 10:30:04 +0200
In-Reply-To: <SEYPR06MB62262C0F7823337CA9496DE982E32@SEYPR06MB6226.apcprd06.prod.outlook.com>
References: <20260617060437.1474816-1-joakim.zhang@cixtech.com>
	 <20260617060437.1474816-4-joakim.zhang@cixtech.com>
	 <20260617-clinic-blank-61289f8fc1c2@spud>
	 <SEYPR06MB62262C0F7823337CA9496DE982E32@SEYPR06MB6226.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313311-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_RECIPIENTS(0.00)[m:joakim.zhang@cixtech.com,m:conor@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Gary.Yang@cixtech.com,m:cix-kernel-upstream@cixtech.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1A7AB69E762

On Do, 2026-06-18 at 01:43 +0000, Joakim  Zhang wrote:
> Hello,
>=20
>=20
> > -----Original Message-----
> > From: Conor Dooley <conor@kernel.org>
> > Sent: Wednesday, June 17, 2026 11:56 PM
> > To: Joakim Zhang <joakim.zhang@cixtech.com>
> > Cc: mturquette@baylibre.com; sboyd@kernel.org; bmasney@redhat.com;
> > robh@kernel.org; krzk+dt@kernel.org; conor+dt@kernel.org;
> > p.zabel@pengutronix.de; Gary Yang <gary.yang@cixtech.com>; cix-kernel-
> > upstream <cix-kernel-upstream@cixtech.com>; linux-clk@vger.kernel.org;
> > devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> > kernel@lists.infradead.org
> > Subject: Re: [PATCH v4 3/5] dt-bindings: clock: cix,sky1-audss-clock: a=
dd audss
> > clock controller
> >=20
> > On Wed, Jun 17, 2026 at 02:04:35PM +0800, joakim.zhang@cixtech.com wrot=
e:
> > > From: Joakim Zhang <joakim.zhang@cixtech.com>
> > >=20
> > > The AUDSS CRU contains an internal clock tree of muxes, dividers and
> > > gates for DSP, I2S, HDA, DMAC and related blocks. The clock provider
> > > is a child node of the cix,sky1-audss-system-control syscon and
> > > accesses registers through the parent MMIO region.
> >=20
> > Why can this not just be part of the parent syscon node?
>=20
> The clock and reset blocks are handled by different subsystems and mainta=
iners (clk vs reset). Putting the clock provider on the parent syscon node =
would mean a single driver has to register both the reset controller and th=
e clock provider on one device, which doesn't fit well.

There are many examples of clock and reset drivers sharing the same
node, by using platform_driver for one (usually clk) and
auxiliary_driver for the other (usually reset).

regards
Philipp

