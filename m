Return-Path: <devicetree+bounces-318006-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0Hz2BjYCRGrinAoAu9opvQ
	(envelope-from <devicetree+bounces-318006-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:51:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 719EB6E707B
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:51:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HJCQ722M;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318006-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318006-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7B2E33015885
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 17:51:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D8323DC86D;
	Tue, 30 Jun 2026 17:51:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 743FC2E413;
	Tue, 30 Jun 2026 17:51:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782841905; cv=none; b=jTF0K3IJcGEyR68UYzP0aFVHx5apk7kTMJeteDk0/9BE2gyNHFQMtt89eQY37XGkdt5FwFAYIrHXQWkdbh/4v2GlZFNliMyRCJx9CIIz6I04wQ/ovd2ec+qMa8ZDgINUaVSenL1lCOB5V9cBHyj0yfBYfyyRPABUwHIt0Rfvfm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782841905; c=relaxed/simple;
	bh=f+UWvjCxeJsepejPaXfU1bGD2DrlBdQP9cz60nzBfQs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iC7p1FkPOop6A7hxM/tJ6pJ2POhNvkMS/3atrfVhErFAZzJAO/mhRNCYu1JvcR66y5Z/gzdP/u53hbIObaxTf3QZtph+cCHNWNvD1HbLDh3wY+QXFcox+hXGES5GHQDmdP2/QrUdlmukOL7ktJ31v99hISCP3+I9ZOILFT7SsKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJCQ722M; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAFF11F000E9;
	Tue, 30 Jun 2026 17:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782841904;
	bh=rpVzYJiD4uvUrnHrs1i+rq74dWRX/dxoOQRnlJsTbJc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HJCQ722MxU+MHC23BSrdoiEHDRw9Ql9TrNC02wM9iluQIfFS2pL7HTm4DMoIfgXor
	 sZPsO5fe+UCnhgLboo8vr0TxYlvWoSm+8RdtT2FaMnWx7JPw0TX2lNogNtAM5ZteTw
	 1kPr6vuoJgOVYliMJqn+WxyV5po2NSC7PUY1wPojHU/iIW2U9UbFEofK+nGj/7RIjd
	 3DSwICjJtI0nh+5j6ehuYBM+m0cJZgkyxCrI7fDAXrV/x7GCwCEd9pXhsyxB0HIQJu
	 iSdfJvxZ1SPFEXVsbW8oYXCvLLbzRKpZuZq4gN4PrBGSb4ybV8zVkVSfUroRrLgIN0
	 CwPpm9MKm8V3Q==
Date: Tue, 30 Jun 2026 12:51:43 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: yc_hsieh@aspeedtech.com, Corey Minyard <corey@minyard.net>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	openipmi-developer@lists.sourceforge.net,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Subject: Re: [PATCH 3/4] dt-bindings: ipmi: Add optional LPC properties to
 ASPEED BT devices
Message-ID: <20260630175143.GA4129206-robh@kernel.org>
References: <20260629-aspeed-bt-bmc-multichannel-v1-0-fc23ee337f7a@aspeedtech.com>
 <20260629-aspeed-bt-bmc-multichannel-v1-3-fc23ee337f7a@aspeedtech.com>
 <35a8e3b3-7725-4d1b-8667-84e6fa24b2ca@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <35a8e3b3-7725-4d1b-8667-84e6fa24b2ca@kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318006-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:yc_hsieh@aspeedtech.com,m:corey@minyard.net,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-aspeed@lists.ozlabs.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 719EB6E707B

On Tue, Jun 30, 2026 at 08:11:34AM +0200, Krzysztof Kozlowski wrote:
> On 29/06/2026 08:49, Yu-Che Hsieh via B4 Relay wrote:
> > From: Yu-Che Hsieh <yc_hsieh@aspeedtech.com>
> > 
> > Allocating IO and IRQ resources to LPC devices is in-theory an operation
> > 
> > for the host, however ASPEED systems describe these resources through
> > 
> > BMC-internal configuration, as already supported by the ASPEED KCS BMC
> 
> What
> 
> is
> 
> with
> 
> this
> 
> line breaks?

I've seen Codex do this... It amazes me how hard it is to get it to 
write properly formatted commit messages and then not forget how to 
write them.

Rob

