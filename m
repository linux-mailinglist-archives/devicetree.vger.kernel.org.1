Return-Path: <devicetree+bounces-258423-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 3JYuEl45cmlMfAAAu9opvQ
	(envelope-from <devicetree+bounces-258423-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:51:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B41526824D
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:51:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 58EC98EB82A
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 13:42:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 682B8318EDA;
	Thu, 22 Jan 2026 13:41:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CA9430C61C;
	Thu, 22 Jan 2026 13:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769089312; cv=none; b=HuDPjml/rxi6lf1GbSNpDXAs6raKA0RYyMc8u9oh50SpRZe5VK7BWGRv2SyCFCFmzaH8ECT+1picgSEZFjJnIhHga1T64PkUjCLvIiumtQocefMqhjUtJjxDSAYCpSbKumlfyWYXSiBp7SJfYaY+/5bPnaxgG6xMJM+wO6J4p0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769089312; c=relaxed/simple;
	bh=airS4ZKljtLM3nqlx4wMF1lTvlZ22x3V4zlSOjk5x1s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YvnJ7oetl1zvTNh7o+pHTq+Tl/xLFqpyY1nSI4nHDqYh6EzczRMqsFFVskS94uATbGw6BrcWq5EBldRJZDkw+Ji3yCw922Ue7TyXsj/ysQD8crfH44hDjre4S8WOxhCmz/LuspCCKIJ9l5xOZ/wHE9VfGxVSrqDPxJgi7Qslc8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from localhost (unknown [116.232.27.242])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dlan)
	by smtp.gentoo.org (Postfix) with ESMTPSA id 94C24341990;
	Thu, 22 Jan 2026 13:41:49 +0000 (UTC)
Date: Thu, 22 Jan 2026 21:41:45 +0800
From: Yixun Lan <dlan@gentoo.org>
To: Mark Brown <broonie@kernel.org>
Cc: Guodong Xu <guodong@riscstar.com>, Liam Girdwood <lgirdwood@gmail.com>,
	Alex Elder <elder@riscstar.com>, Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Troy Mitchell <troy.mitchell@linux.spacemit.com>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/4] regulator: spacemit-p1: Fix voltage ranges and
 support board power tree
Message-ID: <20260122134145-GYE63789@gentoo.org>
References: <20260122-spacemit-p1-v1-0-309be27fbff9@riscstar.com>
 <20260122101122-GYA63789@gentoo.org>
 <77bc5a5f-666d-4beb-ab78-99a242d72a39@sirena.org.uk>
 <20260122121223-GYC63789@gentoo.org>
 <2e2c2754-fd3e-4fd3-aae4-d7af63e3b528@sirena.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2e2c2754-fd3e-4fd3-aae4-d7af63e3b528@sirena.org.uk>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gentoo.org : No valid SPF, No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258423-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[riscstar.com,gmail.com,kernel.org,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@gentoo.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: B41526824D
X-Rspamd-Action: no action

Hi Mark,

On 13:28 Thu 22 Jan     , Mark Brown wrote:
> On Thu, Jan 22, 2026 at 08:12:23PM +0800, Yixun Lan wrote:
> > On 11:27 Thu 22 Jan     , Mark Brown wrote:
> 
> > > Patch 1 looks like it should be OK as is?
> 
> > then with patch 3, and for other boards (milkv jupiter), should have similar
> > DT fix as patch 4..
> 
> Yes, changing the supply names would at a minimum need all the boards
> updating (it's an ABI change so shouldn't really happen, but perhaps
> there are few enough users for everyone to coordinate and it's what you
yes, that's what I care..

> all prefer).  Patch 1 shouldn't have any effect unless a board already
> specifies a wider range than the driver currently supports.
I realized you were talking about patch 1 only, and plan to take it?
then yes, please feel free to do it..

-- 
Yixun Lan (dlan)

