Return-Path: <devicetree+bounces-263801-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBxEBvFniWm68QQAu9opvQ
	(envelope-from <devicetree+bounces-263801-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 05:52:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1D010BA22
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 05:52:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D5A2430087BF
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 04:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A177280CF6;
	Mon,  9 Feb 2026 04:50:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lgeamrelo11.lge.com (lgeamrelo11.lge.com [156.147.23.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8821E4AF
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 04:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.147.23.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770612653; cv=none; b=aZMEhnU9a5Qtz189DfhXh1iQhQsBjcbODV6nxWLLsBEjHinYHZK2qjszrSDFc2COv39Um0oHWhgnXDomVLpXJjN35ENTrZ1SmAk7FU18qdjxE/Q4g3ujw6vfn6lzGXaxk5wt31+wodUunBbTRq5dXjXb6/fJmh43w4KnsXLZdNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770612653; c=relaxed/simple;
	bh=kiF/y8BHc1gTxmB4vKPYU0SyPK7qJRTfVqOiH20r/xc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rpCx0jkyDSZAfZyshFQZYd729yqh1hoy8CXChzG6LfW8GMwXFIKFj7nnfa5CsqJMM5CMd0kH7i6M0IwhPm2yCxBZe/Se3bU3275k0P5Fu6iZVbXcyYmOTjlDWPqT1XygCNzIQqR9ycWqYp4XmayE86QEi1B/GLHy6OphrCaQqvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com; spf=pass smtp.mailfrom=lge.com; arc=none smtp.client-ip=156.147.23.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lge.com
Received: from unknown (HELO lgemrelse6q.lge.com) (156.147.1.121)
	by 156.147.23.51 with ESMTP; 9 Feb 2026 13:50:43 +0900
X-Original-SENDERIP: 156.147.1.121
X-Original-MAILFROM: chanho.min@lge.com
Received: from unknown (HELO BRUNHILD) (10.178.31.97)
	by 156.147.1.121 with ESMTP; 9 Feb 2026 13:50:43 +0900
X-Original-SENDERIP: 10.178.31.97
X-Original-MAILFROM: chanho.min@lge.com
Date: Mon, 9 Feb 2026 13:50:43 +0900
From: Chanho Min <chanho.min@lge.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>,
	Kael D'Alcamo <dev@kael-k.io>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 0/2] arm64: dts: Initial support for LG1215 TV SoC
Message-ID: <aYlno8qlBo8enX4t@BRUNHILD>
References: <20260112053421.3185738-1-chanho.min@lge.com>
 <aYFM+mHqhfCuWgRP@BRUNHILD>
 <af35d335-96f2-4404-a6e2-e85c68cb2757@kernel.org>
 <7bec9ff0-29c8-4468-9d31-2d2b483e2aaf@kernel.org>
 <aYZ/k1SuZ4dTaV8u@BRUNHILD>
 <50acc90f-1efe-4bf1-8c87-a4d3b6fd825c@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <50acc90f-1efe-4bf1-8c87-a4d3b6fd825c@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[lge.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263801-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chanho.min@lge.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.112];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6D1D010BA22
X-Rspamd-Action: no action

On Sat, Feb 07, 2026 at 10:39:57AM +0100, Krzysztof Kozlowski wrote:
> On 07/02/2026 00:56, Chanho Min wrote:
> > On Fri, Feb 06, 2026 at 06:15:25PM +0100, Krzysztof Kozlowski wrote:
> >> On 06/02/2026 18:13, Krzysztof Kozlowski wrote:
> >>> On 03/02/2026 02:18, Chanho Min wrote:
> >>>>>  .../devicetree/bindings/arm/lge.yaml          |   5 +
> >>>>>  arch/arm64/boot/dts/lg/Makefile               |   1 +
> >>>>>  arch/arm64/boot/dts/lg/lg1215-ref.dts         |  50 +++
> >>>>>  arch/arm64/boot/dts/lg/lg1215.dtsi            | 290 ++++++++++++++++++
> >>>>>  4 files changed, 346 insertions(+)
> >>>>>  create mode 100644 arch/arm64/boot/dts/lg/lg1215-ref.dts
> >>>>>  create mode 100644 arch/arm64/boot/dts/lg/lg1215.dtsi
> >>>> Hi,
> >>>>
> >>>> Gentle ping on the LG1215 series (v3) — Acked-by received, but still not picked up.
> >>>> Any update or is it waiting in a queue somewhere?
> >>>
> >>>
> >>> Why are you pinging yourself?
> >>
> >> Sent a bit too fast... I meant:
> >>
> >> *  # email/list and role:stats
> >> *  1 Chanho Min <chanho.min@lge.com>
> >>      maintainer:ARM/LG1K ARCHITECTURE
> >>
> >> so if you are not taking the patches, no one else is going to and
> >> platform should be removed from the kernel. Please confirm your choice
> >> (I can prepare the patch to remove LG).
> > 
> > Hi Krzysztof,
> > 
> > Sorry for pinging incorrectly.
> > 
> > I will take proper responsibility for the LG SoC patches going forward and
> > handle this series appropriately.
> 
> maintainer-soc profile will have valuable guides and expectations.

Hi Krzysztof,

Thanks for the pointer — I'll review the maintainer-soc profile and follow the expectations.
I confirm that I will continue maintaining the LG SoC patches and handle them properly going forward.

Best regards,
Chanho,







> 
> Best regards,
> Krzysztof

