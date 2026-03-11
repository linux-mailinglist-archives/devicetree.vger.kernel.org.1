Return-Path: <devicetree+bounces-274243-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEmUBKGdsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274243-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:51:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E58826790E
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:51:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3D7603055D41
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F2943E0C68;
	Wed, 11 Mar 2026 16:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1RCvb2L"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7A329B8E8;
	Wed, 11 Mar 2026 16:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773247782; cv=none; b=jax3ajd3moC81bRswMOvBwtermolgPgwv9EsRERuA+hR71K22pkE7ZFXx4rRx3CC/siIsRxU9QNbh96JCgKkosaaDgVqvpGR0RZ6jA7FTxSUBEU6uL/lm8uWNASv94CQFPVG1h2tO5rIXBXpWEhiKWyzrJNDpnfDiXPDutEd9cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773247782; c=relaxed/simple;
	bh=L+Z41iBxmL9bDC/+5byJSVTm53cIJcCLHJ3pqm2b1eo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nCYkSN0IMSNuutqpwkk/hfWPI+MUXAz5+YvKjrqmZD+TuCILgYRqegdEXXwR7dHROUG/ij4YrvDokijlSLB/00251fmH1x4osn6w1UoWvuFQ7+qVdWGsgv5fMdLTSibgfdrEQNKRehDqoE7Uw/uCNmET5tEHZ8Yvd3ZM/+BT190=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1RCvb2L; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC654C4CEF7;
	Wed, 11 Mar 2026 16:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773247781;
	bh=L+Z41iBxmL9bDC/+5byJSVTm53cIJcCLHJ3pqm2b1eo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u1RCvb2LYs0w+E5E5Q4zBFx7t7yM1DIZAJhNB26Yfi+T/Q3HT6JelU8TvPCRehsFv
	 OgaLkbjx5UScyRGWqMi6bo3sIQ4sfTapSx3g7AbOBfhGFX/sq/Elw+j2ep2OaA5JuH
	 HhKfaA4VmKfGdl9OD+mQFw8JzaqgongxtYtCKtHQccr2wYZoLRynbi8+7upGKWTOza
	 LGh0U/Yh6sqtPKFb3GxzhZTpzqPSQUGn+m05neR5aE4Sa+u/+w8paPWfKZpOxhJmi3
	 0Xr71Q1xES6voJK47Ktb8nDjfLffEppYjHPrj4WX7XgpmbPpoiOhy0Z3OJBZ5/Ym6H
	 /lYqKQlMIH3ew==
Date: Wed, 11 Mar 2026 11:49:40 -0500
From: Rob Herring <robh@kernel.org>
To: Michal Simek <michal.simek@amd.com>
Cc: linux-kernel@vger.kernel.org, monstr@monstr.eu, git@amd.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: clock: versal-clk: Reorder if/then
 conditions for Versal NET
Message-ID: <20260311164940.GB4041143-robh@kernel.org>
References: <cover.1772725183.git.michal.simek@amd.com>
 <7241fe512ff677f7aa5b7212ae4056fba01f1f59.1772725183.git.michal.simek@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7241fe512ff677f7aa5b7212ae4056fba01f1f59.1772725183.git.michal.simek@amd.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274243-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9E58826790E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 05, 2026 at 04:39:49PM +0100, Michal Simek wrote:
> The Versal NET clock controller compatible is specified as:
>   compatible = "xlnx,versal-net-clk", "xlnx,versal-clk";
> 
> with xlnx,versal-clk listed as fallback. The original binding had
> two separate if/then blocks - one matching xlnx,versal-clk (2 clocks)
> and another matching xlnx,versal-net-clk (3 clocks). Since both
> compatible strings are present, both conditions matched simultaneously
> and JSON Schema applied the more restrictive 2-clock constraint,
> causing false "too long" validation errors for Versal NET.
> 
> Restructure the allOf conditions to check for xlnx,versal-net-clk
> first. If matched, allow 3 clocks (ref, pl_alt_ref, alt_ref).
> Otherwise fall back to the xlnx,versal-clk case with 2 clocks
> (ref, pl_alt_ref).
> 
> Add a dedicated example for the Versal NET 3-clock configuration
> and split all examples into separate blocks so each compatible
> variant is validated independently by dt_binding_check.

Really, the problem is xlnx,zynqmp-clk should be moved to its own 
schema. The only thing common is #clock-cells==1, but that would be true 
for hundreds of bindings. If you do that, then the clock-names can be 
defined at the top-level which is preferred anyway, and the only thing 
needed in if/then schemas is 'maxItems: 2' and 'minItems: 3'.

Rob

