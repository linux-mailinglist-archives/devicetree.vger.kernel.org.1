Return-Path: <devicetree+bounces-263531-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIaRJJt/hmmVOAQAu9opvQ
	(envelope-from <devicetree+bounces-263531-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 00:56:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 62384104322
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 00:56:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1998430226A6
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 23:56:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E8173148D3;
	Fri,  6 Feb 2026 23:56:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lgeamrelo13.lge.com (lgeamrelo13.lge.com [156.147.23.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4435F2FD7A3
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 23:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.147.23.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770422168; cv=none; b=oTkv8RGJDHmio0U4kNKUJRENYKcl8zps7wqq7Ow4U8oKfa95jPOf66RmAbIGk6VyNUqprjGCoC9aoOKHcPVglPZBjGVIOBVZ15tVIJ2hUZ4JkFWOvNT1s3oIerrh+LNH09DChKuYpxnCZIP8uZ61leI31nGrXXE6lNr6CpV6Tyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770422168; c=relaxed/simple;
	bh=rX4ssvxHiFtBPC0aJ2M/EyE0rgWWWYP+npqyKJlf/LU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dy/NsGNrKJOdMxuwH6/7JmzcNgatdW+jbYIAmGO2oKKewCqGzZmAm1x3SrG01+3/CvHAz87zAyrHeug4cwfITOGSqMIHeIrD52VqujPTRkyT95GbIYkBVeZWJU6OF5HsWicxUH7YdANLV/+RhzPr19n4oOY00gugKoFXkbgGKNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com; spf=pass smtp.mailfrom=lge.com; arc=none smtp.client-ip=156.147.23.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lge.com
Received: from unknown (HELO lgemrelse6q.lge.com) (156.147.1.121)
	by 156.147.23.53 with ESMTP; 7 Feb 2026 08:56:03 +0900
X-Original-SENDERIP: 156.147.1.121
X-Original-MAILFROM: chanho.min@lge.com
Received: from unknown (HELO BRUNHILD) (10.178.31.97)
	by 156.147.1.121 with ESMTP; 7 Feb 2026 08:56:03 +0900
X-Original-SENDERIP: 10.178.31.97
X-Original-MAILFROM: chanho.min@lge.com
Date: Sat, 7 Feb 2026 08:56:03 +0900
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
Message-ID: <aYZ/k1SuZ4dTaV8u@BRUNHILD>
References: <20260112053421.3185738-1-chanho.min@lge.com>
 <aYFM+mHqhfCuWgRP@BRUNHILD>
 <af35d335-96f2-4404-a6e2-e85c68cb2757@kernel.org>
 <7bec9ff0-29c8-4468-9d31-2d2b483e2aaf@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7bec9ff0-29c8-4468-9d31-2d2b483e2aaf@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[lge.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263531-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chanho.min@lge.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.147];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 62384104322
X-Rspamd-Action: no action

On Fri, Feb 06, 2026 at 06:15:25PM +0100, Krzysztof Kozlowski wrote:
> On 06/02/2026 18:13, Krzysztof Kozlowski wrote:
> > On 03/02/2026 02:18, Chanho Min wrote:
> >>>  .../devicetree/bindings/arm/lge.yaml          |   5 +
> >>>  arch/arm64/boot/dts/lg/Makefile               |   1 +
> >>>  arch/arm64/boot/dts/lg/lg1215-ref.dts         |  50 +++
> >>>  arch/arm64/boot/dts/lg/lg1215.dtsi            | 290 ++++++++++++++++++
> >>>  4 files changed, 346 insertions(+)
> >>>  create mode 100644 arch/arm64/boot/dts/lg/lg1215-ref.dts
> >>>  create mode 100644 arch/arm64/boot/dts/lg/lg1215.dtsi
> >> Hi,
> >>
> >> Gentle ping on the LG1215 series (v3) — Acked-by received, but still not picked up.
> >> Any update or is it waiting in a queue somewhere?
> > 
> > 
> > Why are you pinging yourself?
> 
> Sent a bit too fast... I meant:
> 
> *  # email/list and role:stats
> *  1 Chanho Min <chanho.min@lge.com>
>      maintainer:ARM/LG1K ARCHITECTURE
> 
> so if you are not taking the patches, no one else is going to and
> platform should be removed from the kernel. Please confirm your choice
> (I can prepare the patch to remove LG).

Hi Krzysztof,

Sorry for pinging incorrectly.

I will take proper responsibility for the LG SoC patches going forward and
handle this series appropriately.
Please do not remove the platform.

Thanks again for the clear reminder,
Chanho,




> 
> Best regards,
> Krzysztof

