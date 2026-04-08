Return-Path: <devicetree+bounces-285583-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GICgNVL/1Wk7AAgAu9opvQ
	(envelope-from <devicetree+bounces-285583-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 09:10:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD5B3B7EE7
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 09:10:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DDB32305832F
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 07:09:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C2F43783BB;
	Wed,  8 Apr 2026 07:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKrKQ12b"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB0BD377ECD;
	Wed,  8 Apr 2026 07:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775632151; cv=none; b=Ht33o8E4HqMw/bO/Zh/JCSQfSkns4Upws0UaDqduT9SM5JsLjU0TNWwu30aC+paTgE87Nsnxszv79z9Eywv9B6UICJjAdoalW9deeIBX6FsLqY+yX6yAksTlhXDBaDTAxPakAg1fzM+pMvu5vWZRftBM/3R/jxbClY+BOb+Lsj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775632151; c=relaxed/simple;
	bh=gSnWs/hdG4id/G+ZDtXX2wOhcyV0p/AOipuWvp3E5LE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TBz1WVem8UtfPawQ4PCve6RolVdt+RCLhMUyEMLbmT5SLFOqKiV7BfgUU3AspEi1n57dB1xEBBRQT+bOYt9f/W8xYVIxFsR9AASfcjpMt+JfHiXBjdTubfLHKPOpFdDkN/rUmHByFfbq9JECNQKvpBkY+gv2qqqwmOwGE9stKgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKrKQ12b; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E8CEC19424;
	Wed,  8 Apr 2026 07:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775632151;
	bh=gSnWs/hdG4id/G+ZDtXX2wOhcyV0p/AOipuWvp3E5LE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oKrKQ12b6l9zt5BbE/9WX0kjncIHuQhtK9hQt5pnOPM0LyPPInHL1nUBvYOyUy11M
	 fU2ZibPC10Gn+2GTogAr3ufBtagZ0Lve8XB1pq0BMGmRKGqdObErCdYaiYRVlUJPXH
	 Cse2PyBWkcgECXksU86iivqJsZ84YDyFjQ0f+BcUSL/RY9PVQjhRvopW8IrKZMK3lT
	 YZ5upvOhZJJFwkU5VNPJnAAmMYUvfQfmCCuBWuNXITJaSWO8vuXBcc5nwc5/Ka5jPT
	 805V3iOlvQerhhDOfKrivGNfkSiv94HuLkEpEWwxKcdS+lmOz6s7HPztcnmILS9cBq
	 vrxPeHV2JuUgA==
Date: Wed, 8 Apr 2026 09:09:09 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Geetha sowjanya <gakula@marvell.com>
Cc: linux-perf-users@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, mark.rutland@arm.com, 
	will@kernel.org, krzk+dt@kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: perf: marvell: Add CN20K DDR PMU
 binding
Message-ID: <20260408-fancy-slick-locust-ff68fe@quoll>
References: <20260407153511.4250-1-gakula@marvell.com>
 <20260407153511.4250-2-gakula@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260407153511.4250-2-gakula@marvell.com>
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
	TAGGED_FROM(0.00)[bounces-285583-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4FD5B3B7EE7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 09:05:10PM +0530, Geetha sowjanya wrote:
> Marvell CN20K SoCs integrate a DDR Performance Monitoring Unit (PMU)
> associated with the DDR controller. The block provides hardware counters
> to monitor DDR traffic and performance events and is accessed via a
> dedicated MMIO region.
> 
> The CN20K DDR PMU is functionally equivalent to the CN10K DDR PMU, with
> minor register offset differences. This binding documents the CN20K
> variant and introduces a specific compatible string to allow software
> to distinguish between the two implementations.

Drop last sentence, I already asked for that.

> 
> Signed-off-by: Geetha sowjanya <gakula@marvell.com>
> ---
>  .../bindings/perf/marvell-cn20k-ddr-pmu.yaml  | 39 +++++++++++++++++++

Still wrong filename.

Best regards,
Krzysztof


