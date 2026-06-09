Return-Path: <devicetree+bounces-309266-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tK1lBpBWKGqmCQMAu9opvQ
	(envelope-from <devicetree+bounces-309266-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 20:08:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F5D663301
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 20:08:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=f6LAtnmH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309266-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-309266-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 02BA4300B09D
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 17:53:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BF103EB0E6;
	Tue,  9 Jun 2026 17:53:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA4103EB0E9;
	Tue,  9 Jun 2026 17:53:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781027581; cv=none; b=Uur9OlavBmnRyLPUQpdOGuCj6ZC7wu2P3eB5A2PZU10hiBFyeoETdUKzL0qcme6ud1CEE8cg9Dh0HC4bGqTVhKrFgIwl7Vv4jhfqFzLl6hazU9VaDQPDcOvs2xDyEfcTSrNXkzCYTV5k8QFS/mm0QK+caRhwcwRaOGom9kL/xcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781027581; c=relaxed/simple;
	bh=efNM+UiVwyJPkn2P/vsYAiQ4LqMpywaA+OaaAugjTzI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cFA3CnWbruZCPgm0OKCqGbow7GwM5txo4UGyk1qlqhnKMyJnDPE4nAUQmAhatFaFfbsVlrh69J6KVofWB8Osg+eIBULLYNM5woELoUAsddO+BNyqarUqa0ZVYUOSwdzwU16ZXTZvHGudfhtOhn8AenMCYRY8T0S3XhrfL4TKR00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6LAtnmH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 801B71F00893;
	Tue,  9 Jun 2026 17:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781027580;
	bh=mr2y8UnJqqGBlJcGkvv84elsjXTeR2F6kj4k+62p12c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=f6LAtnmHBEKCHwEXkByiXo9MDM5ZsDGJ+nBifoP2CKJpQRv0bFGTbKQHVPpSpAhuu
	 OC+KfFvnubyofrJdf/Id+e0sz5wYe2bN9i/mg6ByHmOLHnfSHZABRxLI3o1tgZ5AuM
	 dJ/gnxvaakZyeWnsqG+/yk0wy1p6VzMoLqpuOHaUtvE2oF2AP81QPLdQEvWs/D4boi
	 p2/XrccAj6BQ30hiXLYe3hpihwkb5UTvsgDbMuAlmOG4dFiGhN+ALiwOLhIsrPF2SM
	 +UkfLkTGffAiy3ZOjdwotCQ5JgA+ekboFhep1Mn8Ml6ujE0V+v2c5saAzH+24KZqoj
	 gjB++bID3nsyQ==
Date: Tue, 9 Jun 2026 12:52:59 -0500
From: Rob Herring <robh@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: sashiko-reviews@lists.linux.dev,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	wsa+renesas@sang-engineering.com
Subject: Re: [PATCH v3 1/3] dt-bindings: mfd: syscon: Disallow simple-bus
 with syscon
Message-ID: <20260609175259.GA2210649-robh@kernel.org>
References: <20260608-n-dt-bindings-simple-bus-syscon-v3-1-4eba9ec1212a@oss.qualcomm.com>
 <20260608205406.45ED31F00893@smtp.kernel.org>
 <20260609-appraiser-sedate-c76c7b06690c@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260609-appraiser-sedate-c76c7b06690c@spud>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309266-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:sashiko-reviews@lists.linux.dev,m:krzysztof.kozlowski@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 14F5D663301

On Tue, Jun 09, 2026 at 05:36:30PM +0100, Conor Dooley wrote:
> On Mon, Jun 08, 2026 at 08:54:05PM +0000, sashiko-bot@kernel.org wrote:
> > Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> > - [Medium] The patch introduces several new compatible strings (e.g., `ti,am3352-scm-conf`) to the exception list without documenting them in any valid dt-binding schema. This causes a bisectability breakage in `dtbs_check` during the series and leaves permanent 'undocumented compatible' warnings at the end of the series.
> > --
> > 
> > commit 0cddec624a3b6ba2f0c447b95621f32101d2e31f
> > Author: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > 
> > dt-bindings: mfd: syscon: Disallow simple-bus with syscon
> > 
> > This commit adds a schema to disallow the combination of syscon and
> > simple-bus compatibles. It includes an exception list for legacy
> > configurations that currently rely on this pattern.
> > 
> > > diff --git a/Documentation/devicetree/bindings/mfd/syscon-common.yaml b/Documentation/devicetree/bindings/mfd/syscon-common.yaml
> > > index 14a08e7bc8bdd..2d5eef5add544 100644
> > > --- a/Documentation/devicetree/bindings/mfd/syscon-common.yaml
> > > +++ b/Documentation/devicetree/bindings/mfd/syscon-common.yaml
> > [ ... ]
> > > @@ -52,11 +53,44 @@ allOf:
> > >            contains:
> > >              const: simple-mfd
> > >      then:
> > > +      # Always require a specific compatible for syscon with simple-mfd
> > >        properties:
> > >          compatible:
> > >            minItems: 3
> > >            maxItems: 5
> > >  
> > > +  - if:
> > > +      properties:
> > > +        compatible:
> > > +          contains:
> > > +            const: simple-bus
> > > +    then:
> > > +      # simple-bus conflicts with syscon - if a device is a system controller
> > > +      # with miscellaneous registers, then it has at least one dedicated
> > > +      # function thus it is not a simple bus. Allow existing exceptions.
> > > +      if:
> > > +        properties:
> > > +          compatible:
> > > +            not:
> > > +              contains:
> > > +                # This list CANNOT grow
> > 
> > [Severity: Medium]
> > Will this break bisectability for dtbs_check? Since the DTS files are
> > updated later in the series, it seems like existing TI DTS files using syscon
> > and simple-bus without these new specific compatibles will fail validation
> > when this patch is applied.
> 
> Perhaps worth telling the sashiko people that transitory warnings like
> this aren't something we care about, especially since even the normal
> development process for devicetrees introduces validation issues in the
> platform maintainer branches.

I think that is on us to tweak the review prompts. There's already one 
for DT that none of us wrote. Though really I don't think that's all 
that maintainable. Really, IMO sashiko itself should be able to 
incorporate feedback like any other reviewer/developer.

Rob

