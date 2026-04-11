Return-Path: <devicetree+bounces-286653-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oE2INCOm2WksrwgAu9opvQ
	(envelope-from <devicetree+bounces-286653-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 03:38:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D523DDE5F
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 03:38:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 11BAB302E92D
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 01:38:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 505A7264A9D;
	Sat, 11 Apr 2026 01:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHLVwyIh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D73A255F52;
	Sat, 11 Apr 2026 01:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775871518; cv=none; b=s6tYgDMTbMpMhJVpthtLq8RlViWmIpu3Vrj+2va2RdbTlRo0WaryCj7mc+tA17/qmdC85ZbaSfbIUgyY+qRdaHNVIyf1CVfiSBhkjtIfyH6Eg4OX37N/z8/JzpnbuC4Uzsg9bBVzg3D5Bo1MePXr+WJYHW8+OXLnovaCi4IsEII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775871518; c=relaxed/simple;
	bh=PEj9Q7l3Q+I2cu0wKuAmFE3doQ9Vwu+3owJxUeXmIyo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QeG3wCRhrKFnZAxpKFJ1lhPRE+3OAixUHwykV0rTJD2K4YcN0ZYVpWNm9xum7C+l0FvPF1UBbO04h87HH8WeeuI9KP0PvqXIoY3zHA4YpL/wfWLTmoXtD9hpRy4AKnFOxicwGmfSkC6/JH/xPSzQbINPaTnlVunOtQJg2Cz0wWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHLVwyIh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D961C19421;
	Sat, 11 Apr 2026 01:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775871517;
	bh=PEj9Q7l3Q+I2cu0wKuAmFE3doQ9Vwu+3owJxUeXmIyo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jHLVwyIhKCNKGtBR3YzUsLyMJMQTDSo0iU1iFRAzarY4ihN/IjbjJ3AYJ3cD3yLR9
	 67LlS3eNMhcHHk7NOZrVqgM+tk/XAWQg9V0Rpx32qYbhApGNWP/R3+KRmgbGB247PQ
	 pEq8mP7InWWjy7Mvb3gpbtCenmiP29bc18uVXc02KcQK+JR+86Gmps6v3FPOWl3RiV
	 yYOR+wzMX72poQHKH84HmS4vJ6WRv5f+50Cne/0iNDCqtFixvUPcho1zl2a9HQZZxt
	 Ni+sDcNh7xzff+2/rlRYBaO+LG/IX82RpO6FHDAJUyQw6dPKK49qO00kSswYJaAWsQ
	 16MOvVP6kVurg==
Date: Fri, 10 Apr 2026 18:38:35 -0700
From: Drew Fustini <fustini@kernel.org>
To: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>,
	Joel Stanley <jms@oss.tenstorrent.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Michael Neuling <mikey@neuling.org>
Subject: Re: [PATCH] riscv: dts: tenstorrent: Add PMU node to blackhole for
 Linux perf support
Message-ID: <admmG0jkzpx0OzXi@x1>
References: <20260409-blackhole_pmu-v1-1-01a34bf46a1c@oss.tenstorrent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260409-blackhole_pmu-v1-1-01a34bf46a1c@oss.tenstorrent.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-286653-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tenstorrent.com:email,neuling.org:email]
X-Rspamd-Queue-Id: 37D523DDE5F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 09, 2026 at 09:49:59PM -0500, Anirudh Srinivasan wrote:
> From: Michael Neuling <mikey@neuling.org>
> 
> Add a riscv,pmu device tree node with SBI PMU event mappings for the
> SiFive X280 hardware performance counters. This enables OpenSBI to
> expose the SBI PMU extension, allowing Linux perf to use the 4
> programmable counters (mhpmcounter3-6) across 3 event classes:
> instruction commit, microarchitectural, and memory system events.
> 
> Event encodings are derived from the SiFive Tenstorrent X280 MC Manual
> (21G3.04.00) Table 13, section 3.10.5.
> 
> Assisted-by: Claude:claude-opus-4-6[1m]
> Signed-off-by: Michael Neuling <mikey@neuling.org>
> Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
> ---
> Added a dependency of [1] to b4 so that checkpatch doesn't complain
> about the Assisted-by tag
> 
> [1] https://lore.kernel.org/all/20260311152039.254244-1-sashal@kernel.org/
> ---
>  arch/riscv/boot/dts/tenstorrent/blackhole.dtsi | 48 ++++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)

Reviewed-by: Drew Fustini <fustini@kernel.org>

If there are no objections, then I will apply it to
tenstorrent-dt-for-next.

Thanks,
Drew

