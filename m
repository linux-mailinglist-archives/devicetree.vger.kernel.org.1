Return-Path: <devicetree+bounces-310020-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id X1y4NRjCKWplcwMAu9opvQ
	(envelope-from <devicetree+bounces-310020-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 21:59:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFCF66CA61
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 21:59:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=egayTg92;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310020-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310020-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DEFFD3006782
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 19:59:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DD5C37BE74;
	Wed, 10 Jun 2026 19:59:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F55A3750CA;
	Wed, 10 Jun 2026 19:59:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781121558; cv=none; b=XL6SiT2UUpV9k3fU6eWQMCozc64+f22+Hdhs9uALSbD8UhTNVpNEbBVv+YOkd8vyB0Bh0RxhR+LJLERa+5NKjF9TVQ8Ap2lVQAMHJDlHGWPN8VYcg7Wb11GTfEy4OJkh6u8r9d2G6jY/AMPGtEyQgNRUTJK+RX0Bff7BfxjUMqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781121558; c=relaxed/simple;
	bh=nM362/82e4cU07NooVJuNAiBZOvrtoWBxTQtUAJoxRM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VVaNka2Ljo6v+W2puDbsxfInNccjpPJTugDKiSd2m8U7tnkPRZO3sMEGHsRkXw7nTMBNqzjJwrYSvtXCwHbiGl/Bt2Ej008jD6Tfx+bLDMB8sM3efT2KLRHZ/kkW16KShvGN5qNsSFibaizfNkq37WXirPag+NvQit2knh7njZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egayTg92; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA5751F00898;
	Wed, 10 Jun 2026 19:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781121556;
	bh=bkXpye9Dk/pIHO6X5mwJwCLsWt/uoCZ3k5uhJRXjYdw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=egayTg92orJkUYatqeE0I+/Zmr4GzGsO9z78SbWv/LA57zUSjRC/7lw7+BvcdxrCu
	 pMMWDG9u9lTcZQoNm0YIYJsEYmbCSEYnzJ6Ml71H5XIdK0C9UWaQRQ8UYZsPUyLTdP
	 RBsytgE2uqk4uuKbSqTl1L/vmoZw6whyCXgJ/1bZSdTom2JUEUzHdCNIRmhp6MyGz2
	 mjV+b4Dt5TqLInz3GkQJufogP+YhnaNKB8i2IaFG5I1pDeI1vtdhwzEoO/ocxoH5ag
	 e+4lXGqWaljjbsLnjj6Eaf215VPIqhE8706hCPGn4WsQ+ioyrGPpucKmgTU/mGIB+k
	 KfPnzI8lQZeOA==
Date: Wed, 10 Jun 2026 14:59:16 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Markus Stockhausen <markus.stockhausen@gmx.de>
Cc: devicetree@vger.kernel.org, mail@birger-koblitz.de, krzk+dt@kernel.org,
	conor+dt@kernel.org, john@phrozen.org, tglx@kernel.org,
	bert@biot.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/7] dt-bindings: interrupt-controller: realtek,rtl-intc:
 Allow 2 interrupt cells
Message-ID: <178112155552.711698.8665696871186240007.robh@kernel.org>
References: <20260605211646.2101652-1-markus.stockhausen@gmx.de>
 <20260605211646.2101652-2-markus.stockhausen@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260605211646.2101652-2-markus.stockhausen@gmx.de>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310020-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmx.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:markus.stockhausen@gmx.de,m:devicetree@vger.kernel.org,m:mail@birger-koblitz.de,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:john@phrozen.org,m:tglx@kernel.org,m:bert@biot.com,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,gmx.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6DFCF66CA61


On Fri, 05 Jun 2026 23:16:40 +0200, Markus Stockhausen wrote:
> The Realtek Otto SoC interrupt controller supports hardware interrupt
> routing to multiple parent CPU interrupt lines. To utilize this
> multi-domain support, peripheral devices need a way to explicitly
> specify their desired parent interrupt line in the device tree.
> 
> Update the "#interrupt-cells" property to accept either 1 or 2 cells.
> - 1 cell: Specifies the hardware interrupt index, implicitly routing it
>   to the first available parent (maintaining backward compatibility).
> - 2 cells: The first cell specifies the hardware interrupt index and
>   the second cell specifies the targeted parent interrupt index.
> 
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> ---
>  .../bindings/interrupt-controller/realtek,rtl-intc.yaml      | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


