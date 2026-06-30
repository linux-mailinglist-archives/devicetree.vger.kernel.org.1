Return-Path: <devicetree+bounces-317965-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vRHyKUH0Q2pTmAoAu9opvQ
	(envelope-from <devicetree+bounces-317965-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 18:52:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id F0AEE6E6A1F
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 18:52:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ivBAOCoT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317965-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-317965-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B7E1E3003494
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 16:51:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76B4B3C1F24;
	Tue, 30 Jun 2026 16:51:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D7C3D75C4
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 16:51:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782838277; cv=none; b=o+YBlwaIhNLjbYZUFmImt/ULxV3rqv8TXAxAIAdugbI6CB53BmvG6DIGrDkHymOwQLAqdCaUsPN7dCH37ZSj/HxrUebP6J51Cp3IzyQ3cxcmKKz0jhy6SX6IXi5kyX2D9obpR001v+37prLAp7+g1wXrDB/xzEJ6SFoS1FPuKS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782838277; c=relaxed/simple;
	bh=zgpVEjRSwxdcGtLTf1C1sZvYzIvouGEEMzsQzyyZ3Yo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eFuwrfECfCLRcGvXYlbOhPkluxAMusu2JJd7y51YmcoPsvEtNFMAmTq/Vxq9zuu7QlCstDjUlB5lC4Dhbb+xQzkgbinQpXig7oQGa3pY/hPffqE87EGAa2qNmaJ0WkV3VPDqfMcphcoU7zf4j2FwrXE5S3yWH9AsFfE4cLcF44M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivBAOCoT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA3681F000E9;
	Tue, 30 Jun 2026 16:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782838276;
	bh=DBw48L3V5sdILmb9xBDVspXMcwaZoROuBRflDuD+WDc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ivBAOCoT4JyLpcQPHGUA5cgQ19bP1486KqWBZqFSBx3fprbPA9LseEySG/QZ62eqg
	 DpQBkoBwv2LxL2yT6MIqjFvWnnDhU3YY+ESwTqEe8IckOa5Tk089LQW4aXHJa57+f+
	 MpwOkhZXZgH7hq1wMu8UeX/mNi7j3XW/1cyUhvbVTBaLMXMlo7Bniju4c8A2VyM1yt
	 hh/EaqCFwlzcl3CzUCaj+wdh6bfnd2RCq+1VfhfYY34767ISNjA8skNSEvtJf9B3g7
	 UO0cVcdKfn1aSRLwMiyUAOb/Ei1pLJlGn4RA41LJDxFS9LCIRjDMp4VuvttW9wsWDH
	 ZuqeVHQTadmRw==
Date: Tue, 30 Jun 2026 11:51:15 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Sang-Heon Jeon <ekffu200098@gmail.com>
Cc: devicetree@vger.kernel.org, Saravana Kannan <saravanak@kernel.org>
Subject: Re: [PATCH 3/9] of/numa: remove redundant numa_nodes_parsed
 node_set()
Message-ID: <178283827386.3936103.12769861946850449269.robh@kernel.org>
References: <20260628135828.1393120-1-ekffu200098@gmail.com>
 <20260628135828.1393120-4-ekffu200098@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260628135828.1393120-4-ekffu200098@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-317965-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:ekffu200098@gmail.com,m:devicetree@vger.kernel.org,m:saravanak@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F0AEE6E6A1F


On Sun, 28 Jun 2026 22:58:17 +0900, Sang-Heon Jeon wrote:
> numa_add_memblk() now sets the node in numa_nodes_parsed itself, so the
> caller's own node_set() is redundant. Remove it.
> 
> No functional change.
> 
> Signed-off-by: Sang-Heon Jeon <ekffu200098@gmail.com>
> ---
>  drivers/of/of_numa.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


