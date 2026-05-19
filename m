Return-Path: <devicetree+bounces-300093-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0ExJJldQDGqTewUAu9opvQ
	(envelope-from <devicetree+bounces-300093-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 13:58:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D1B57E2CE
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 13:58:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 397E1307D400
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 11:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C6323F1ABE;
	Tue, 19 May 2026 11:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=abscue.de header.i=@abscue.de header.b="BiA1mMxp"
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B6133F5BE;
	Tue, 19 May 2026 11:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.28.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779191744; cv=none; b=eRxl36BoPJvnbQ+VTqC+Gzuxf8DarKE7E/0D9lqgXaaIqkEJhksoRaGiXLwHQHhf8NrgEgcCOuXwf7DkgCn+9h8P9IIee/7euL7bx99yxTOA8gy+ycFcHC7EgNzkCeJFCIlI5DG59sDVD1EwvdggRsuGFDmuPr6xB27ueRPcIq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779191744; c=relaxed/simple;
	bh=AD26bfaySUtCwLEtW2ENnF6RU1n0zEM/W+YHJz8ss0k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JAKbtMU8DTtustJ5khW/ac+Wy2G6rE5Xv3PORPMgBCkHzF7wjijBHDDJC9T+xDm7om/mXqEcGq+aJDzeeN/6ndy3JpSvM4/b47WkXmCo6DTJuq7gFQzufcAgY5WKpdDLcwXCRMzQgbOiE0LkLle5/hPDuiU+F0Bzei3BcwxEcGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; dkim=pass (2048-bit key) header.d=abscue.de header.i=@abscue.de header.b=BiA1mMxp; arc=none smtp.client-ip=89.58.28.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=abscue.de
Date: Tue, 19 May 2026 13:55:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abscue.de; s=dkim;
	t=1779191738;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EfTYCZVfamWgM43iQIGgx45AKI+ht8/tQByLejjLhDE=;
	b=BiA1mMxpdbzGzUpmyLgjqmW0+ry57zZuQFEM80OHaHvKKBcqSIijjRneFMK6udk5l7RkIm
	hS58dRqMXe4wm9efaYNUIreXlSvTsi0sSE/JWr6PO/q6s6xCZ/qou1Nl/lc6s7HBXL2NPW
	WejRxL6SIQpNKWA9SmQDh6aities3onXKRCeLXbW1cEcrCjN23ycBSup3ufn8RFyWorCnn
	p0kPgv5s0x9K2IFKq8PCrsECj4A6LE+6VCMxOWEPqJNQMgudPqZ6uSERR/sYPLr5F5BFjc
	4sbRVPOiJqyjOuhO99beL/+lwqXl3PoNYJxfbiaYMbbNLA/QBJam/GbliI231w==
From: Otto =?iso-8859-1?Q?Pfl=FCger?= <otto.pflueger@abscue.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>, Lee Jones <lee@kernel.org>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/3] regulator: dt-bindings: Add Unisoc SC2730 PMIC
Message-ID: <agxPtAbM-tSJ1kcz@abscue.de>
References: <20260518-sc2730-regulators-v2-0-9a5b3a7b1e49@abscue.de>
 <20260518-sc2730-regulators-v2-1-9a5b3a7b1e49@abscue.de>
 <20260519-classic-victorious-marmoset-45cecb@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260519-classic-victorious-marmoset-45cecb@quoll>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[abscue.de:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[abscue.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-300093-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linux.alibaba.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[otto.pflueger@abscue.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[abscue.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: E4D1B57E2CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 19, 2026 at 09:49:53AM +0200, Krzysztof Kozlowski wrote:
> On Mon, May 18, 2026 at 05:59:47PM +0200, Otto Pflüger wrote:
> > Add bindings for the regulators found in the Spreadtrum/Unisoc SC2730
> > PMIC, used e.g. with the UMS512 and UMS9230 SoCs.
> > 
> > Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
> > ---
> >  .../bindings/regulator/sprd,sc2730-regulator.yaml  | 51 ++++++++++++++++++++++
> >  1 file changed, 51 insertions(+)
> > 

[...]

> > +properties:
> > +  compatible:
> > +    const: sprd,sc2730-regulator
> 
> As I requested last time, please drop the compatible completely. Not
> needed and you do not have any dedicated resources here which would
> suggest it is a standalone or reusable device.

Oops, forgot that I left it here. Will remove it, thanks!

