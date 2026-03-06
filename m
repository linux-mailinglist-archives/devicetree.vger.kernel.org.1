Return-Path: <devicetree+bounces-271891-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2OueLtKQqml0TQEAu9opvQ
	(envelope-from <devicetree+bounces-271891-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:31:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4447221D17D
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:31:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E64E5301E94E
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 08:31:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B50033783C2;
	Fri,  6 Mar 2026 08:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTQgPK7r"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 926F3296BBA;
	Fri,  6 Mar 2026 08:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772785866; cv=none; b=OUkqS6aPE4OIWw/TrnKpKrR7TmNeSlPf/507MKUAVNnOHfsnlrA7YDpIV4V1wGeDLeMDfE1pPVlRKzz/4Og8umFcdpJ0NiTLiPJ1dUQz8MnL/mOLemL4gCqyKJ1JVE8Ia0J49bdwQPcloTdNiALnL1K8smjSEEhBSskwkULQMF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772785866; c=relaxed/simple;
	bh=76SMo+Ztb/Ih+x5l4XSQyU7tG+144cVv9puts39MSLo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uk0VO4uS0LpbNWhYrK3WnV6mGhL4wKtXhkibm4kft8CC5tCI29s0Qz+JsTGm2X168XRY93nXqCTg6Bl7b6WKhsy9POo53cbln/xYJ85nkjotD+fu/ttpzn5kl88Zhf4nU8tTZSSgm+nQQY8wK2x2/9scI5gKmLxOInEOSb/drVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTQgPK7r; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F1AFC4CEF7;
	Fri,  6 Mar 2026 08:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772785866;
	bh=76SMo+Ztb/Ih+x5l4XSQyU7tG+144cVv9puts39MSLo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oTQgPK7rQAGfkVav5KgF2xxN1j8wkvkWWxFN30eD173xvcXaMLGcyuNxVnpWAZety
	 l7q0uctNjm64ToggtppScRbJMNP3klnT3oGKBz0mcqK/nS8zDTRgc7SkIXpkZDbtbP
	 INQlrEez0ttwB6RLU/lTB2CrJjXK77ne+VEK+Xa3VkmNBN3Cc1jmalnjTCp4O3TH4V
	 FHTBw11FHfPXK0bAtL7UBxb73vbrljCwAC+NCtkZft5V3XHAwbV2V3Ggb7bVdVN0+Y
	 CECe6o1BQNQfy4jUXgxi1i3Zxai6qf50xx9p2j54qu/oEO8TKIVi72mwGqeT4Z6udR
	 z8SqhjYNIf+eg==
Date: Fri, 6 Mar 2026 08:31:01 +0000
From: Lee Jones <lee@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Raptor Engineering Development Team <support@raptorengineering.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	Georgy.Yakovlev@sony.com, sanastasio@raptorengineering.com,
	Timothy Pearson <tpearson@raptorengineering.com>
Subject: Re: [PATCH v7 1/4] dt-bindings: mfd: Add sony,cronos-smc
Message-ID: <20260306083101.GC183676@google.com>
References: <20260129192047.562540-1-support@raptorengineering.com>
 <20260129192047.562540-2-support@raptorengineering.com>
 <20260209174912.GA1474958-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260209174912.GA1474958-robh@kernel.org>
X-Rspamd-Queue-Id: 4447221D17D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271891-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,raptorengineering.com:email]
X-Rspamd-Action: no action

On Mon, 09 Feb 2026, Rob Herring wrote:

> On Thu, Jan 29, 2026 at 01:20:44PM -0600, Raptor Engineering Development Team wrote:
> > From: Shawn Anastasio <sanastasio@raptorengineering.com>
> > 
> > The Sony Cronos Platform Controller is a multi-purpose platform controller
> > that provides both a watchdog timer and an LED controller for the Sony
> > Interactive Entertainment Cronos x86 server platform. As both functions
> > are provided by the same CPLD, a multi-function device is exposed as the
> > parent of both functions.
> 
> Why do we have DT bindings for a x86 server platform?

This looks like an ARM device that connects to an x86 platform.

Note: The drivers look okay, but we need a DT Ack to merged them.

-- 
Lee Jones [李琼斯]

