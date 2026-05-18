Return-Path: <devicetree+bounces-299668-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFAhA+WhC2oLKQUAu9opvQ
	(envelope-from <devicetree+bounces-299668-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 01:33:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2A1574FE2
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 01:33:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 72688301841D
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 23:33:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D05832D7F1;
	Mon, 18 May 2026 23:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5yyDNa7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2796931E82F;
	Mon, 18 May 2026 23:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779147227; cv=none; b=b4QM+dtirVy0hS5idtU8jRo3+SVuHxCOGIXe2nlrD7hvKFtY1Sb2SK3vcr7IrcEbzC/ZrbDBi+z1kc7Xy8flnPRoxDpg3ssHHP7WPSq97evY1DDL90zr72uJXjUAiu4P2VDnGFWWQxtnrFrbD3VT7Czgu/+G/Vi55bfm2OWOrOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779147227; c=relaxed/simple;
	bh=X5pKwqyT25YTgtH8HkJKqoI6v8d7nkjVY5/oK2GK5WE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rrO7JKnpdyk+HEpitzdvGVHFBUUU5O2jk7GASEA3oQMfYWZd751huTKvdGfe+8so/GVENvvsuOJJh8GKWVnxjUVi2Q4mapKdgicbA/+GNG7LOhXYOEXh5Q4ykbmZzhY4poYtqiuqddrn/gKPE1V8935HbaLuGhVEhJkCJLA9i/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5yyDNa7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7A9BC2BCB7;
	Mon, 18 May 2026 23:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779147227;
	bh=X5pKwqyT25YTgtH8HkJKqoI6v8d7nkjVY5/oK2GK5WE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h5yyDNa72xRL/tTRZP5+xIUfBOuM2BXUdjqcW05AbMUSk+Fg5Zyd1RzuZ+sjUHRnH
	 ODVwLMSFHaF1fUNtNz3F3y8lni5mwNmJmWvH+2CqbqjziGniWm5EkPfZlt9I+P+kAF
	 pP5Ylh7DGV+ZThOqS7igS3MmyppcVdCTHkYAsrP9+l/peIVD93yVCZL5WFJ6gkRagB
	 y8wFasnVKm7kJlnNqaaXTkPw+XcgfgGiZ/kDTlBnayLMfb80OLdWp+WVnQb5yQargT
	 l6y0kuMQiz1Rpxip2LK1Z9MIXovfjg1+MlPFTmNWKZ0ZdB0gAXydtubJtrWOb2VRdk
	 MrsUJAdYezWSg==
Date: Mon, 18 May 2026 23:33:45 +0000
From: Yixun Lan <dlan@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dts: riscv: spacemit: k3: Fix I/O power settings
Message-ID: <20260518233345-GKC3679294@kernel.org>
References: <20260518-07-dts-pinctrl-io-power-v1-1-abe19c14a726@kernel.org>
 <20260518211546.A52A3C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260518211546.A52A3C2BCB7@smtp.kernel.org>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-299668-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 7C2A1574FE2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi 

On 21:15 Mon 18 May     , sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] The newly added `spacemit,apbc` DT property triggers a spurious boot warning and relies on a fragile probe deferral dependency, because the target `syscon_apbc` node lacks the `"syscon"` compatible string.
> --
> 
> commit 89bb8c89cecf7c32a2e825a2b8f604c5c45762bd
> Author: Yixun Lan <dlan@kernel.org>
> 
> dts: riscv: spacemit: k3: Fix I/O power settings
>     
> SpacemiT K3 SoC support dual-voltage I/O power domain, while initially
> configure to 3.3v, and need to access register from APBC space to switch
> to 1.8v domain.
>     
> Fix the GMAC0's I/O pins 1.8v switch failure that will result a broken
> ethernet driver.
> 
> > diff --git a/arch/riscv/boot/dts/spacemit/k3.dtsi b/arch/riscv/boot/dts/spacemit/k3.dtsi
> > index 815debd16409b..2b0bf9cd755bd 100644
> > --- a/arch/riscv/boot/dts/spacemit/k3.dtsi
> > +++ b/arch/riscv/boot/dts/spacemit/k3.dtsi
> > @@ -803,6 +803,7 @@ pinctrl: pinctrl@d401e000 {
> >  			clocks = <&syscon_apbc CLK_APBC_AIB>,
> >  				 <&syscon_apbc CLK_APBC_AIB_BUS>;
> >  			clock-names = "func", "bus";
> > +			spacemit,apbc = <&syscon_apbc>;
> 
> Does this newly added spacemit,apbc property trigger a spurious boot warning
> and rely on a fragile probe deferral dependency?
> 
> Looking at the referenced syscon_apbc node, it lacks the "syscon" compatible
> string.
> 
> This prevents syscon_node_to_regmap() from instantiating the regmap
> on-the-fly, causing it to return -EPROBE_DEFER if the pinctrl driver probes
> before the clock driver registers the regmap.
> 
This is possible, I think it's worth the effort to add some logic to
handle the deferral probe situation

> The pinctrl driver catches this with a blanket IS_ERR() check and prints a
> now-spurious "no syscon found" warning during boot while discarding the
> regmap pointer:
> 
> drivers/pinctrl/spacemit/pinctrl-k1.c:spacemit_pinctrl_probe() {
> 	...
> 	pctrl->regmap_apbc = syscon_regmap_lookup_by_phandle(np, "spacemit,apbc");
> 	if (IS_ERR(pctrl->regmap_apbc)) {
> 		dev_warn(dev, "no syscon found, disable power voltage switch functionality\n");
> 		pctrl->regmap_apbc = NULL;
> 	}
> 	...
> }
> 
> The voltage switch functionality only ultimately succeeds because the
> subsequent devm_clk_get_enabled() call against the same node also returns
> -EPROBE_DEFER.
> 
> This gives the clock driver time to probe and register the regmap before the
> pinctrl driver retries.
> 
make sense

> Would adding "syscon" to the syscon_apbc node's compatible string, or
> explicitly handling -EPROBE_DEFER in the pinctrl driver, resolve this issue
> and prevent the spurious warning?
> 
I prefer to do the latter way

-- 
Yixun Lan (dlan)

