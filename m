Return-Path: <devicetree+bounces-289403-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Jr9Fk3L6GklQQIAu9opvQ
	(envelope-from <devicetree+bounces-289403-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 22 Apr 2026 15:21:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BB0446A50
	for <lists+devicetree@lfdr.de>; Wed, 22 Apr 2026 15:21:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 637ED305BFE5
	for <lists+devicetree@lfdr.de>; Wed, 22 Apr 2026 13:15:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42F223E9F9A;
	Wed, 22 Apr 2026 13:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcEYcD3r"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE4A3E95B8;
	Wed, 22 Apr 2026 13:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776863702; cv=none; b=io1xSPyLoDz1oqBPcS7YqAuDny7PZHWGIULqzT+8TR+O22QmPc3ArkKEu4YgDGal8aai6wFTHnCw6kv2FPClhbTNu65kopTCZ+oGFdrBYtcw5dmEPfJCH9ga/yiOCjPn+bmxbk4xe0/ezz+50xR0o8YWir2UDzo1QFMqnEYy5Bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776863702; c=relaxed/simple;
	bh=lPu3GoSSEkW1pgq2UWSEc9hfVOWBRgqDIAJWcVT/hBI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B7saKQcVcQZSjgTEP0KJZ0gGHabqT9uKKWDDpRSUlNrt8LFFY24d15QN1hfZ1KTgIwZjHghuxog9lgjFSBeVXQa0D59c44mg/qxlzHiEVL7LSoEN7SYvn7IfXDy1hjH1RyDTAwAjeD0iLsuBLvgr/nljH+6PRTCA/f8wiJrdH7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcEYcD3r; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BD17C19425;
	Wed, 22 Apr 2026 13:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776863701;
	bh=lPu3GoSSEkW1pgq2UWSEc9hfVOWBRgqDIAJWcVT/hBI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OcEYcD3rlThooXTr3Lagc6MTmXNxnOSyvTMPpC4DVpujticfv5RV81ic1uJzOm5OL
	 Uz/xUPypdRKMswvgFitMlT2BOkt6yuM83hcsBfRvzsPktWvPcRHqQwySVCsodYylwC
	 zO0krOyR4AsE8qyBvosBZ1c341gx4SXCu/s/EWRjO5FwdWYhFo8K0RSw0PP/YLx1JT
	 3fIXdcDoeFVJ5N7gQiaRu69xbIeasTPSswcfrNcKk1nlFLAwOJVTg1MxGSDHddQU3g
	 X82j8bdWC2s8PgUH74JF/Pwplg9QwPcUSMP/uMRSn1Y2ACQnbbvAGsnGXWPsL5FcFr
	 2uYhFu4M8qbGg==
Date: Wed, 22 Apr 2026 14:14:56 +0100
From: Sudeep Holla <sudeep.holla@kernel.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Sudeep Holla <sudeep.holla@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Marussi <cristian.marussi@arm.com>,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, arm-scmi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH RFC 2/2] clk: scmi: Add support for two #clock-cells to
 pass rate rounding mode
Message-ID: <20260422-huge-kiwi-of-tornado-4fce89@sudeepholla>
References: <20260306-scmi-clk-round-v1-0-61e2a5df9051@nxp.com>
 <20260306-scmi-clk-round-v1-2-61e2a5df9051@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260306-scmi-clk-round-v1-2-61e2a5df9051@nxp.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-289403-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sudeep.holla@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E5BB0446A50
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 06, 2026 at 02:20:13PM +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> SCMI CLOCK_RATE_SET allows the caller to specify the rounding behaviour
> when setting a clock rate. The previously added dt-bindings header
> defines three modes:
> 
>   ROUND_DOWN / ROUND_UP / ROUND_AUTO
> 
> To enable device tree clients to select a rounding mode, extend the
> SCMI clock provider to support "#clock-cells = <2>", where the second
> cell encodes the desired rounding mode. The default remains
> ROUND_DOWN for backwards compatibility with existing device trees.
> 

Where is the binding update documented ? It's not in 1/2.

Also if it can be static in the device tree, why can't it be
autonomously handled in the platform firmware ? I think I know the
answer for this but I want to make sure it is a valid use-case and
gets documented here as part of binding updates.

-- 
Regards,
Sudeep

