Return-Path: <devicetree+bounces-319493-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4eGTDw2gRmrTaQsAu9opvQ
	(envelope-from <devicetree+bounces-319493-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 19:29:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D43EC6FB628
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 19:29:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZuJWP9ZD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319493-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319493-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 31D9A32DCCF7
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 16:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 417BC34752A;
	Thu,  2 Jul 2026 16:33:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB7B342510;
	Thu,  2 Jul 2026 16:33:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783009990; cv=none; b=Sy/o76iS+t+hRyc+VdPeC5YsKu2YZgIl+95y0cfnMOZCTRkFgwppzIv7/Hc9sogUeGYjWzEIos9aD8fCXM7EqlALEvt2DlYC8uLM9FmD+ObuU3/VOHMd6Iwt7LUiGaYeVbTRdXdLSuNTl3yyVksM61aFmS7x3t8nmp9ifbNBnSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783009990; c=relaxed/simple;
	bh=LUHLzc9vtYgcx1VUvgtFxwMPwTgm6tvzpzaxpB2WqwA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LsktvIWuJH+INdVL1uOTBPu2qiwCt+iMQw9jTH0uAUdnO0bPmgwrwjv6rMb2px/uBKEII/sYWxU32UUeQNac8zX/E5+vHNRApest953XnKJoMJpZkhvzRwc/AFEIz3i2SpHGzw6Z48cKg7o+BEscFtxVH85rbvrvMnnTcWwcMpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZuJWP9ZD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBC151F00A3A;
	Thu,  2 Jul 2026 16:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783009989;
	bh=4wEpUXkmsP1DNoZiV6C9HSFYH86wdjNGmyW8b2NmQlI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ZuJWP9ZDaqqwqxRudD3zV+dMjeZN91pCEKHowDyAUOdfIrSpQs0uH82+UdGZyR7/o
	 QTiQNMH1gt6NQUgPMr2eOogDAL22+1Psl19PY/5X7t9VNkw0Tz9sAsdtteXI22J6FZ
	 WvmXKyj7dZFYUNKS6W+pw812LRYEMgQkcZPRoWKgfY3MM2MzYssGJOhQ6XOclwfXNV
	 m8gArmkB/H+k/eiSDywnb4RPlWQhCb00SF+mdirf620Xzj25P4nXy8FHkPsYd+uECv
	 KL7Dbh03TIvHEr9akS79ZBXXpT5vil7dTj+s6ET9sfyOz6mxjLOIgQYPFFad0Rjl2Q
	 BRne9OZBCDhzw==
Date: Thu, 2 Jul 2026 11:33:08 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: krzk@kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: memory: Add TI FSS_FSAS binding
Message-ID: <178300998778.226038.13730513508067454723.robh@kernel.org>
References: <20260629072055.896322-1-s-k6@ti.com>
 <20260629072055.896322-2-s-k6@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260629072055.896322-2-s-k6@ti.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319493-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:s-k6@ti.com,m:krzk@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,ti.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D43EC6FB628


On Mon, 29 Jun 2026 12:50:54 +0530, Santhosh Kumar K wrote:
> Add DT binding for the TI Flash Subsystem Application Subsystem
> (FSS_FSAS_GENREGS) wrapper present in TI K3 SoCs. This block controls
> XIP read prefetch for the OSPI controller.
> 
> Signed-off-by: Santhosh Kumar K <s-k6@ti.com>
> ---
>  .../memory-controllers/ti,am62a-fsas.yaml     | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/ti,am62a-fsas.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


