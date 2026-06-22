Return-Path: <devicetree+bounces-314319-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kC8XL1H3OGrXkgcAu9opvQ
	(envelope-from <devicetree+bounces-314319-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:50:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E066ADE8A
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:50:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=lht.dlh.de (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314319-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314319-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DD2DB301DCE7
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:48:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A75539099C;
	Mon, 22 Jun 2026 08:48:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpfb1-g21.free.fr (smtpfb1-g21.free.fr [212.27.42.9])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E373835F610;
	Mon, 22 Jun 2026 08:48:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782118116; cv=none; b=mS874MRxMTXumjSaxS3dclebuZuKj6o/7DHq3NRaSa8W28JCdLUM7oQr2f3iHEBNYt8gRwr17HQMl5LM/gqndoeKohgUkezbVg0gnzh13+oXAWzCHBaSNlVMcxZHSsE1J2GN8KhiLazppA8an61m29usyAnLGDP+qDmQnQXs4Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782118116; c=relaxed/simple;
	bh=KyxDJAoRFnaLQrYcq/HUf1sgrpDNp/VADW0wgtLXFo8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tKBMxK9leG992XyUbprSWMx0AiUXQ7jqdDGjocZxqQt1O729BVk+HadUi59bKhLzgDdNRSG/CJMGRnZks7Jbxldei+aHv/ESQJ/aHczm4wgU7PCLZYVI6z2E+CODX2gTfeKYVny6uUGyXp3VisgDmZe0H8rJDktlGtMjkaYWPrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=lht.dlh.de; spf=fail smtp.mailfrom=lht.dlh.de; arc=none smtp.client-ip=212.27.42.9
Received: from smtp1-g21.free.fr (smtp1-g21.free.fr [212.27.42.1])
	by smtpfb1-g21.free.fr (Postfix) with ESMTP id 57A948348AC;
	Mon, 22 Jun 2026 10:41:50 +0200 (CEST)
Received: from OMT-CWNXR4TFW5-LHT (unknown [IPv6:2001:9e8:633a:1900:359f:c35a:9518:62db])
	(Authenticated sender: albeu@free.fr)
	by smtp1-g21.free.fr (Postfix) with ESMTPSA id 76D9EB0059B;
	Mon, 22 Jun 2026 10:41:28 +0200 (CEST)
Date: Mon, 22 Jun 2026 10:41:08 +0200
From: Alban Bedel <alban.bedel@lht.dlh.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: driver-core@lists.linux.dev, devicetree@vger.kernel.org, Daniel Scally
 <djrscally@gmail.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Danilo Krummrich <dakr@kernel.org>, Rob Herring <robh@kernel.org>, Saravana
 Kannan <saravanak@kernel.org>, Zijun Hu <zijun.hu@oss.qualcomm.com>,
 linux-kernel@vger.kernel.org, Alban Bedel <alban.bedel@lht.dlh.de>
Subject: Re: [PATCH v2 2/2] software node: Fix
 software_node_get_reference_args() with index -1
Message-ID: <20260622104108.715d8295@OMT-CWNXR4TFW5-LHT>
In-Reply-To: <ajQ6j5roSZ16Yb-M@black.igk.intel.com>
References: <20260618152035.1600436-1-alban.bedel@lht.dlh.de>
	<20260618152035.1600436-2-alban.bedel@lht.dlh.de>
	<ajQ6j5roSZ16Yb-M@black.igk.intel.com>
Organization: Lufthansa Technik AG
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; aarch64-apple-darwin25.4.0)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.54 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[lht.dlh.de : SPF not aligned (relaxed), No valid DKIM,quarantine];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,vger.kernel.org,gmail.com,linux.intel.com,linuxfoundation.org,kernel.org,oss.qualcomm.com,lht.dlh.de];
	TAGGED_FROM(0.00)[bounces-314319-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@linux.intel.com,m:driver-core@lists.linux.dev,m:devicetree@vger.kernel.org,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:gregkh@linuxfoundation.org,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:saravanak@kernel.org,m:zijun.hu@oss.qualcomm.com,m:linux-kernel@vger.kernel.org,m:alban.bedel@lht.dlh.de,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[alban.bedel@lht.dlh.de,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alban.bedel@lht.dlh.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,lht.dlh.de:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 18E066ADE8A

On Thu, 18 Jun 2026 20:35:59 +0200
Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:

> On Thu, Jun 18, 2026 at 05:20:35PM +0200, Alban Bedel wrote:
> > The bounds check for the index passed to
> > software_node_get_reference_args() was failing when passed UINT_MAX,
> > this in turn would lead to an out of bound access in the property
> > array. Fix the bound check to also cover the UINT_MAX case.  
> 
> ...
> 
> > -	if ((index + 1) * sizeof(*ref) > prop->length)
> > +	if (index >= prop->length / sizeof(*ref))  
> 
> It trades multiplication for division (which might be not always
> power-of-two).

This code is not really performance relevant and using a non trivial
expression lead to the currently buggy code. I find that easy to
understand and obviously correct code is better suited here.

What alternative would you suggest?

Alban

