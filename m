Return-Path: <devicetree+bounces-269931-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sD4QC4twpWlXAgYAu9opvQ
	(envelope-from <devicetree+bounces-269931-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:12:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8095A1D7436
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:12:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 755813021732
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:10:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60AF73603DD;
	Mon,  2 Mar 2026 11:10:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A543430B94;
	Mon,  2 Mar 2026 11:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772449818; cv=none; b=pEeNie29ffrpkoQoByiO17oktOf85A8QTVukHpPJ32ahAFjBtlbhFcfF/z4jwpQWO3Lw29Tvpr+XlMVMs12UAqm+UhjzT3XMyu97YOvI6DvGMoLv/V8YWxTAA2Fh9SEEurZtWVeGkylsMeVVUNW0XaWMSuwCNf/lPjXuwu3J37I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772449818; c=relaxed/simple;
	bh=IMLbpLHh+OZryH2zk5skJVRCsFclDWXDZE/iQRUHdz4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R6Gu5kkMxzNDkJ1xUSzCYJe+kjM9uhCkl/9WRu15TTkoYnxT3bsr3O5oFDXNA92ozKcqwl2FteQXZdGxNH0b13qcZBFC+QsX6W38NPMLQ8i3zHjT5aFEUtPv/bBmNdUHRYqdjzwoXNnWLPqT2KN4DBAOoDQapjI4bleFoPifWGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4481D14BF;
	Mon,  2 Mar 2026 03:10:10 -0800 (PST)
Received: from pluto (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F2B063F73B;
	Mon,  2 Mar 2026 03:10:12 -0800 (PST)
Date: Mon, 2 Mar 2026 11:09:50 +0000
From: Cristian Marussi <cristian.marussi@arm.com>
To: Peng Fan <peng.fan@oss.nxp.com>
Cc: Cristian Marussi <cristian.marussi@arm.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Sebin Francis <sebin.francis@ti.com>,
	Brian Masney <bmasney@redhat.com>, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	arm-scmi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v7 6/6] clk: scmi: Add i.MX95 OEM extension support for
 SCMI clock driver
Message-ID: <aaVv35RJH_hgoxQu@pluto>
References: <20251231-clk-ssc-v7-1-v7-0-380e8b58f9e3@nxp.com>
 <20251231-clk-ssc-v7-1-v7-6-380e8b58f9e3@nxp.com>
 <aaK9HOMWNCb0wzq_@pluto>
 <aaVN5lr3JBi6LwYX@shlinux89>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aaVN5lr3JBi6LwYX@shlinux89>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269931-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cristian.marussi@arm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.916];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8095A1D7436
X-Rspamd-Action: no action

On Mon, Mar 02, 2026 at 04:44:22PM +0800, Peng Fan wrote:
> Hi Cristian,
> 

Hi,

> Thanks for reviewing!
> 
> On Sat, Feb 28, 2026 at 10:02:04AM +0000, Cristian Marussi wrote:
> >On Wed, Dec 31, 2025 at 06:12:53PM +0800, Peng Fan (OSS) wrote:
> >> +
> >> +struct scmi_clk_oem_info {
> >> +	char *vendor_id;
> >> +	char *sub_vendor_id;
> >> +	char *compatible;
> >
> >I suppose different OEM per impl_ver is overkill...and maybe better
> >to be trated as a bug if it happens leveraging the Quirk framework..
> 
> Hope I not get you wrong. impl_ver is not used here.
> compatible is machine compatible string.
> 

Yes.
> The OEM matching introduced in this patch is strictly based
> on SCMI vendor_id and sub_vendor_id as reported by the firmware. There is no
> dependency on impl_ver, nor do we intend to distinguish OEM behavior based on
> implementation version.
> 

Ok, good, I was just checking my understanding was correct and we are on
the same page and this is how you intended to use all of the above..

> If in the future any firmware shows inconsistent behavior across different
> impl_ver, we agree that this should be treated as a firmware bug and
> handled through the existing SCMI quirk framework.
> 

Ok.

> I could add a comment for the structure in next version:
> /*
>  * Selection is based on SCMI vendor_id/sub_vendor_id and optional machine
>  * comaptible string, without involving impl_ver. impl_ver‑specific behavior
>  * should be handled via the SCMI Quirk framework

maybe...

    "should be considered a bug and handled via SCMI Quirk..."

BUT I have no strong opinion about the need of this comment...do it as you
wish, with or without for me is fine.

Thanks,
Cristian

