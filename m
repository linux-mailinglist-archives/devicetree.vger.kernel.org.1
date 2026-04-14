Return-Path: <devicetree+bounces-287196-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2J9jM2jl3WnDkwkAu9opvQ
	(envelope-from <devicetree+bounces-287196-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 08:57:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0773F64DC
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 08:57:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 41EA530185AF
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 06:56:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 470CD342539;
	Tue, 14 Apr 2026 06:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqYHrjIH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2317F1A38F9;
	Tue, 14 Apr 2026 06:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776149811; cv=none; b=tDb3QbDDfgVd/2TOuY4hf5vvNBm+GPzOhqh7uRhUGh3VpvSZck5nwnGUxq/pB5QcX9Jokk9HLahks5x9gNpcFtP1Xq8Jh7XKzphPUeiwZyoNhX7jAPhbiX0tHJSJ4Pu4GONkT2URbO4unQ6Qb1vRljUEYp6WQd8Fi9xhs21Nyu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776149811; c=relaxed/simple;
	bh=Fp+Cm/3fydupQ9awNaggvZ3weKTKFyLGqmjm3YGZkg4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MwBbIO+4i0UDSftO1nSVyxDZKfDGARf/y6h5FczYzWaoDqBg7bSZ5zExpVZbM7m+6yPa/pw5tZQVJiygMyGYoJEK3lJkCMZh5vXxJ+I7fMT5kGq7tWs5OcZs2qoY4DoPiTvrb4jfjjs/18zUgj5toXTQgxLcvl0v15SKikcNWng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqYHrjIH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A19CEC19425;
	Tue, 14 Apr 2026 06:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776149811;
	bh=Fp+Cm/3fydupQ9awNaggvZ3weKTKFyLGqmjm3YGZkg4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FqYHrjIH5KqDDH/nydVFikS9OWWKxVynf3I9bbfQISCtk4JS28iE8EW60X/NA1tVI
	 KvKb/YeuRBQJNeLjON1ZurU2HZH75QSlMkg8cqym+vxtfzfba0wWVOVpITS6DJ5SnJ
	 TfQEqP2fClIvceWJ0sSspDk57B4zsNeo4eAZQaEmI9S0G++hBfokwaOcUjvy/Y/qIn
	 WETwiHx/cs68Epe5DY5FsaLriKnI2yevXlTt8a+OFpSnUHl0lWpN7EdDZsDBEfEDWq
	 ErdClU/PQlswgrm0J7T/4SSptNtkZiPTuAq+xSnpYdWXlFfQ/zr/S1lZ+BFQdO6yOL
	 sZ0Zom9d1nbhQ==
Date: Tue, 14 Apr 2026 08:56:48 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Baojun Xu <baojun.xu@ti.com>
Cc: broonie@kernel.org, tiwai@suse.de, andriy.shevchenko@linux.intel.com, 
	13916275206@139.com, shenghao-ding@ti.com, linux-sound@vger.kernel.org, 
	linux-kernel@vger.kernel.org, lgirdwood@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, k-yi@ti.com, henry.lo@ti.com, 
	robinchen@ti.com, will-wang@ti.com, jim.shil@goertek.com, toastcheng@google.com, 
	chinkaiting@google.com
Subject: Re: [PATCH v2 1/2] ASoC: dt-bindings: ti,tas2781: Add TAS5832 support
Message-ID: <20260414-zippy-caterpillar-from-lemuria-7d70ac@quoll>
References: <20260414015441.2439-1-baojun.xu@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260414015441.2439-1-baojun.xu@ti.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-287196-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,suse.de,linux.intel.com,139.com,ti.com,vger.kernel.org,gmail.com,goertek.com,google.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6B0773F64DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 14, 2026 at 09:54:40AM +0800, Baojun Xu wrote:
> TAS5832 is in same family with TAS5827/28/30.
> 
> Signed-off-by: Baojun Xu <baojun.xu@ti.com>
> ---
> v2:
>  - No update.
> ---

So you are going to just ignore review?

Best regards,
Krzysztof


