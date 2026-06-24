Return-Path: <devicetree+bounces-315057-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wrgSG5l+O2rxYggAu9opvQ
	(envelope-from <devicetree+bounces-315057-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 08:52:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FFA6BBE77
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 08:52:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="T/NRgVAn";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315057-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315057-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA937301C16B
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 06:49:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39331388E60;
	Wed, 24 Jun 2026 06:49:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC9735E1A1;
	Wed, 24 Jun 2026 06:49:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782283790; cv=none; b=f1N3KVfdXT5+aT5lWP9VrHEc/33o///1QNP9x9k/7QCIkcDuYjB+nFGqDivYIi/1238TV3fmIjP4PUeAJbf4JulpxPQWzqqXltqULDNXbA83n7TnZp9YHTz3PgiSEUndiFxFFv/qx1BekLcC35mLiOAXuCXZEo34fmoHt3BRiu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782283790; c=relaxed/simple;
	bh=Jr/tC+wphnO1UrKNhVlddtBRjxmWYhreyvKQdWQWWN8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AjgvcdZetgcNI6vV8iH5GgubSbuZ9owDJhloynzdG+co0swHL4kyZ4NgGVEU7vesd7th1KgGWiGmM8Mh8XpgMwOkqdPKLtzuVrVL2HLKC2c9QYxM66u7r4JF5mxqfj4IZNI5mIU1duiroxCr8AkxujBMC/7YHzYMoMNL18+pRq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/NRgVAn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A91D1F000E9;
	Wed, 24 Jun 2026 06:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782283789;
	bh=FkRf8oCoME6EAzb6TRQFzhDqGWGObt0np+ROSMUH2RA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=T/NRgVAnXbQChFzjlIiqk4XdOFWD+atW8L779exuRdU+/PHgkDEfarn1pHoRR6xCj
	 6is5obfwbAQZVt/pYe+lDZ5++G6l8jxoZTro/NkHhnSpOivJ6D696g1WjOnJ/7rMY4
	 GJ8APisAdapr8A1nrYenuzXKV8I5QCMyUuIG9q7vT/CIpS9s/0oAc3a9mx+GRB0/I6
	 FJrN/72yYZxNNTIFwT0/zKbEX9qOAtu5ltZsUXUQOz9cqeaxsJ3vB2SMW79jaKUy30
	 rAiWmiUM0OhFHjxNnxrcD7oIrcdaeiTx0HnsaqEUOjvAJM7KntJs8R1dEZJy4RQyvG
	 e2Ns1vhut7uDw==
Date: Wed, 24 Jun 2026 08:49:45 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: joakim.zhang@cixtech.com
Cc: mturquette@baylibre.com, sboyd@kernel.org, bmasney@redhat.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de, 
	gary.yang@cixtech.com, cix-kernel-upstream@cixtech.com, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 1/4] dt-bindings: soc: cix: add sky1 audss cru
 controller
Message-ID: <20260624-rampant-ubiquitous-turtle-f7edda@quoll>
References: <20260623070805.211019-1-joakim.zhang@cixtech.com>
 <20260623070805.211019-2-joakim.zhang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260623070805.211019-2-joakim.zhang@cixtech.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315057-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:joakim.zhang@cixtech.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:gary.yang@cixtech.com,m:cix-kernel-upstream@cixtech.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,quoll:mid,vger.kernel.org:from_smtp,cixtech.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B9FFA6BBE77

On Tue, Jun 23, 2026 at 03:08:02PM +0800, joakim.zhang@cixtech.com wrote:
> From: Joakim Zhang <joakim.zhang@cixtech.com>
> 
> The Cix Sky1 Audio Subsystem (AUDSS) Clock and Reset Unit (CRU)
> groups clock muxing, gating and block-level software reset control
> in a single register block.
> 
> Signed-off-by: Joakim Zhang <joakim.zhang@cixtech.com>
> ---
>  .../bindings/soc/cix/cix,sky1-audss-cru.yaml  | 92 +++++++++++++++++++
>  .../dt-bindings/clock/cix,sky1-audss-cru.h    | 60 ++++++++++++
>  .../dt-bindings/reset/cix,sky1-audss-cru.h    | 25 +++++
>  3 files changed, 177 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/cix/cix,sky1-audss-cru.yaml
>  create mode 100644 include/dt-bindings/clock/cix,sky1-audss-cru.h
>  create mode 100644 include/dt-bindings/reset/cix,sky1-audss-cru.h

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


