Return-Path: <devicetree+bounces-300396-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SEETE4NnDWquwgUAu9opvQ
	(envelope-from <devicetree+bounces-300396-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 09:49:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A768B589275
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 09:49:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 07CB33024164
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 07:44:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CA5237DE87;
	Wed, 20 May 2026 07:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsZ7v5a0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E780B37B402;
	Wed, 20 May 2026 07:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779263090; cv=none; b=HEoUOxmecS0StPykdlMXhd7Fx3l9aVgL3RYoAgjibXzVz9TBEbpgHZgbM9H1Vc8VTJ8V7NUNJz5bUbGnTzH+Jqi9IZ7kx5PYHbOJVano+Jj14TI4qtRnaoyQiGqu56gWYdUhvawj3bxm0BSu2jEiedMaMiaYNJLV89iXCxrattc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779263090; c=relaxed/simple;
	bh=08yeeQvj4V3fuaT4GbgOATuuKhdJT2iL7G8eeFM2SU8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MEqTdUMX/JIrW9vECmyjOIvbGExafp2fXDjIoYG2+WYySv0X2V+KMR8esodzTQZ84sLY512pS3IRRsl4aL68hX3/AuPIBefCD/HxgL6E92mu6Muq7zeEs/CTH+Ru5+aAbu9NUB1YQEWDK11tA09gCMN8OtGsi1SY7WAt5D9ZRzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsZ7v5a0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with UTF8SMTPSA id EECCF1F000E9;
	Wed, 20 May 2026 07:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779263088;
	bh=jX4ff2FUMmJ9PXJW9Z0YTCF6m5Cjwnu9krskjdHWtGk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GsZ7v5a0unr6EJW75+hNwGqNhLytOD05dLqEUWb7N3/N/N6rqP60xAYP54BC0SBPG
	 KSeehv8MG2nPTmKk2i2fdsvc5fyX8MeX2+kK1mqyb5AYKU5c12QvUcIWKwqT9OkOsP
	 SNUtRUJL4SgqYgJ9COCFaAKVRNf7E2+azOJeydPIk6iFOK8G62QRJq+6jPsT4ND96+
	 KMRvQNylFbSSe0QLSvkMyjPg9d1uZc9MIU71JdUPpyZ0vtFQfxNVVLlmtie1Brsxry
	 MXZf7TdEwgvVN259+zhSDgjnOw+XaNoxsy1o7QMt/nZBfBosCqnTIP59De3M5gG1vo
	 +soSXIcMg6/og==
Date: Wed, 20 May 2026 09:44:46 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Wandun Chen <chenwandun1@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	zhaomeijing@lixiang.com, robh@kernel.org, saravanak@kernel.org
Subject: Re: [PATCH v2 1/3] of: reserved_mem: avoid unnecessary memory
 allocation when __reserved_mem_check_root() fails
Message-ID: <20260520-cuddly-imperial-bison-ec3c4e@quoll>
References: <20260519082427.4181476-1-chenwandun@lixiang.com>
 <20260519082427.4181476-2-chenwandun@lixiang.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260519082427.4181476-2-chenwandun@lixiang.com>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-300396-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lixiang.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: A768B589275
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 19, 2026 at 04:24:25PM +0800, Wandun Chen wrote:
> total_reserved_mem_cnt will keep the init value (MAX_RESERVED_REGIONS)
> in fdt_scan_reserved_mem() if __reserved_mem_check_root() fails.
> 
> fdt_scan_reserved_mem_late() calls alloc_reserved_mem_array() to
> allocate memory according to total_reserved_mem_cnt before
> __reserved_mem_check_root(), so if __reserved_mem_check_root() fails,
> the allocated array has nowhere to be used, so no need to allocate
> memory.
> 
> Move alloc_reserved_mem_array() after __reserved_mem_check_root() to
> avoid potential memory waste.
> 
> Signed-off-by: Wandun Chen <chenwandun@lixiang.com>

Authorship/DCO mismatch.

> Tested-by: Meijing Zhao <zhaomeijing@lixiang.com>

Best regards,
Krzysztof


