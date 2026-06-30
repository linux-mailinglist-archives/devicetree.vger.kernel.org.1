Return-Path: <devicetree+bounces-318018-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BD6DK10SRGrfnwoAu9opvQ
	(envelope-from <devicetree+bounces-318018-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 21:00:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 624856E75E4
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 21:00:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=l6kYk+dn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318018-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318018-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 70F52300350A
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:00:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69D8433EB06;
	Tue, 30 Jun 2026 19:00:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9D1E3E8C74;
	Tue, 30 Jun 2026 19:00:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782846027; cv=none; b=fmJtB06rSgy0dTABc/i15lrtsy+Bqijaxmy/tTImsx1Zot3FBFUHb1tJqexPCC6Drlr8b53R9ws3g9p2+5Z25cSkb128siPF65XjDJ9YNMyzwALfy6K3/lrRxZ3vrrt82wjr8HnUbmJqK5udTS2q5eu2kDyHVuqfsAnXJ96oAl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782846027; c=relaxed/simple;
	bh=+fL3DQvZUF6NuNMIgUTFuM25h8Ut+xeqc6oYf1enZxI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=amg6BT2wEzARSOAd2kZMjxyHGNRpBwUnEMP7QSFhOY8YgOVybyIGbJiV7bLcFVlE7z/lTWB+OYG/wDO+vKLLefuYITCmD9Vze+D2jUbMq2SDhTHxy5vrCl3NimFS3e2/FpIaZKA37IlKxIm3HXngzpcCin+AqCwvbB+fDwr85JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6kYk+dn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 184A11F00A3D;
	Tue, 30 Jun 2026 19:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782846019;
	bh=v6zQg/xYPMDSyslhP1cR6EBRnEfcHERRfBEW1QaonUY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=l6kYk+dnADxcNvWjIOprBPyqXQ1Y7XsBT+lzOvhvysjLNr1mIEqKRCG68oSxfkaur
	 X0rloWC/ZFjJoyHs5SDaizxbD1rft6y8ChrzW0kNjSEVmjZwFxQO3UDXAkhcC7LBQz
	 fSpGz4JN61ogW7irKbWjNPEjTPF+1rg9TlFjvstBrfqd3ji61Txsv9s7AvkX6AKZeu
	 QQNAWj5aFqut8OdrYnOcvm8v1WNFWEck/e1SFv1ftvEStTX+C/RHjNWTBZLdftqBBl
	 AddU5rpiMkBIuZCF82Gi+V4gLHO5rezVcWCciMRAL8yqgCEvTaSWV4YEJD3Uz1TBH1
	 jcYYAOz4KuJxQ==
Date: Tue, 30 Jun 2026 14:00:18 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: Patrice Chotard <patrice.chotard@foss.st.com>,
	linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org,
	Peter Griffin <peter.griffin@linaro.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/2] dt-bindings: mmc: st,sdhci: Convert to DT schema
Message-ID: <178284601784.43252.5393908816899610396.robh@kernel.org>
References: <20260629-st-mmc-v5-0-3cf0e639bff8@gmail.com>
 <20260629-st-mmc-v5-2-3cf0e639bff8@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260629-st-mmc-v5-2-3cf0e639bff8@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-318018-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:charan.pedumuru@gmail.com,m:patrice.chotard@foss.st.com,m:linux-arm-kernel@lists.infradead.org,m:linux-mmc@vger.kernel.org,m:peter.griffin@linaro.org,m:ulf.hansson@linaro.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:charanpedumuru@gmail.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[robh.kernel.org:query timed out,charanpedumuru.gmail.com:query timed out];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MSBL_EBL_FAIL(0.00)[devicetree@vger.kernel.org:query timed out];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 624856E75E4


On Mon, 29 Jun 2026 16:26:40 +0000, Charan Pedumuru wrote:
> Convert STMicroelectronics sdhci-st MMC/SD controller binding from
> text format to YAML DT schema.
> Changes during conversion:
> - Preserve optional 'icn' clock and 'top-mmc-delay' register region
>   via minItems: 1 on their respective properties.
> - Conditionally require reg-names when two reg entries are present
>   via an allOf if/then block, preventing silent runtime failure in
>   devm_platform_ioremap_resource_byname().
> - Constrain max-frequency to enum [200000000, 100000000, 50000000]
>   with a default of 50000000, matching the driver's behaviour in
>   sdhci-st.c.
> 
> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
> ---
>  Documentation/devicetree/bindings/mmc/sdhci-st.txt | 110 ---------------------
>  .../devicetree/bindings/mmc/st,sdhci.yaml          | 105 ++++++++++++++++++++
>  2 files changed, 105 insertions(+), 110 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


