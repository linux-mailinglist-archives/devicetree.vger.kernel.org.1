Return-Path: <devicetree+bounces-317943-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SQhCKNPtQ2rNlgoAu9opvQ
	(envelope-from <devicetree+bounces-317943-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 18:24:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E36676E66A7
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 18:24:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=a0IgMiec;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317943-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317943-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 692C1314D862
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 16:19:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8056477989;
	Tue, 30 Jun 2026 16:19:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93AC940E8E2;
	Tue, 30 Jun 2026 16:19:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782836354; cv=none; b=SvpkMJd8JBK3EUTPoQVTHQ1hk+ExhIrha+U7m4fRDhj9Z/yJHNZo6C/NfqJf4R0jSxHeY1N3/lS/vSWlMD+ujJXGtI/lxgMeuDN6hhSF20dp4B15RWV6Y+jx8+rZfVCbX5zqgAy0iNgB0FVdjoDtNFV0oCFnrgpCsDKOns4Jblc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782836354; c=relaxed/simple;
	bh=5TvCWFhpaOPPCAFIB3sC745MVPyu4vs+NkxwxWXaR5k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aTAvELOoPWM1SI8K37UUPRL0UCBAPDbIDx7gyXuWWBtm5zxGV/hZHXCD0P+hwEeX+KU1n/hA7oXFswW05ObIKnLghHS2phZ9h1MG+lgWrDz/CrPPX+qsP8LvYQg6OVB6nIo/QylKuYDjRIXkcljIHjFRaWUstW4PJYz+YNc1lZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0IgMiec; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3ADE1F000E9;
	Tue, 30 Jun 2026 16:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782836353;
	bh=Qnh7z4wQkjadeMiyIpIyUCMyM7cuCIxF6s3McyioJfI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=a0IgMieciE5vITkeWRQgBkdJG5CCzzG22Duzi+lkyWIgAAa6LFdDPPG3v+xEqX2Hn
	 AoDB7a5ILdwU50eTw6SUlbxX+1eelQv5O5dcpl+2106MmoAQhJfUiTgWS7xgDEybel
	 WmpRpv0D0hvsDyLMBhWwsdiQ2CaBv/dC1T11IaSzu7gLJJ6atqoaJuHTXI7jA2FyMg
	 Ft51dXya+uKHAQRXVKLTiwDFZVm+jeb0SuvGZXwkPQTw6VFnYEfej5z/qUI+TRRE+6
	 DggAAqchWNbOkCQfVo3q2DTvqiVn/lm0BQ+Hhb8vbKJC3oFtPk6/WDaf44sLWyD89A
	 yHCdg1pdrhwHA==
Date: Tue, 30 Jun 2026 11:19:12 -0500
From: Rob Herring <robh@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>, conor+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v4 01/19] dt-bindings: firmware: qcom,scm: Add minidump
 SRAM property
Message-ID: <20260630161912.GA3828650-robh@kernel.org>
References: <20260624190830.3131112-1-mukesh.ojha@oss.qualcomm.com>
 <20260624190830.3131112-2-mukesh.ojha@oss.qualcomm.com>
 <20260624191940.C0BBF1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260624191940.C0BBF1F000E9@smtp.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317943-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:mukesh.ojha@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E36676E66A7

On Wed, Jun 24, 2026 at 07:19:39PM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Low] Missing property type reference (`$ref`) for the `sram` property in the dt-binding schema.
> --
> 
> commit 6acd1cecaeb951d30398f9208dd4e87b7cfd156e
> Author: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> 
> dt-bindings: firmware: qcom,scm: Add minidump SRAM property
> 
> This commit adds a new 'sram' property to the Qualcomm SCM dt-binding. The
> property is intended to contain a phandle to a region in always-on SRAM used
> for minidump download destination configuration. This allows the OS to share
> information with the boot firmware across warm resets.
> 
> > diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> > index 7918d31f58b4a..82c661db0b616 100644
> > --- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> > +++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> > @@ -127,6 +127,13 @@ properties:
> >            - description: offset of the download mode control register
> >      description: TCSR hardware block
> >  
> > +  sram:
> > +    description:
> > +      Phandle to a region in always-on SRAM used to store the download
> > +      mode value for boot firmware to read before DDR is initialised on
> > +      the next warm reset.
> > +    maxItems: 1
> 
> [Severity: Low]
> Does this property need an explicit type reference, such as
> $ref: /schemas/types.yaml#/definitions/phandle?
> 
> Without a type definition, the dt-schema validator might infer the property
> as an untyped array based on the presence of maxItems: 1. Could this allow
> malformed device trees to pass validation silently since it won't enforce
> that the provided value is actually a valid phandle?

No, that's wrong. There is now a common definition.

Rob

