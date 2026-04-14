Return-Path: <devicetree+bounces-287192-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ePIfOePh3WnrkgkAu9opvQ
	(envelope-from <devicetree+bounces-287192-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 08:42:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 471CD3F62D2
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 08:42:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7CF9C304D1CE
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 06:39:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDD5336F426;
	Tue, 14 Apr 2026 06:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q43hQJ/C"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F8B30215A;
	Tue, 14 Apr 2026 06:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776148743; cv=none; b=LXtTMoKc0ub6F+qREc6M6gmL7+kF8+NwjPiJOUBZW4wjg5ztEJbyIwZN5D2SLJ6oYPOYq6fpb/kfBOY1NnVHh9uUEEV2dlP1nbmyd18C66iK8LW5FBKSbueUcOEaOAgGw2PdaVTDsUWkTSaOncK8ENvjdlWPUHtfV4npzzCa+KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776148743; c=relaxed/simple;
	bh=HcFN985M8cVBNV+nJVfU/D2qwyRHgA8jrgIw37nikXI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sak4emT474zb+3n9AXzLRjqYyzYf028oG/FI0h/x5v9iPjt5g3SnHDEwaFR3H4MhX3NbbQpUYYTYvDMRB4GczlcA9yNe99LSa7dux7eVvycamwxovkSkfjUgHNmr9B4fLaGHQqQIbVr2GcTCjdxC0FAIPiU8bxunRthpbiRrqGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q43hQJ/C; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 913B6C2BCB3;
	Tue, 14 Apr 2026 06:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776148743;
	bh=HcFN985M8cVBNV+nJVfU/D2qwyRHgA8jrgIw37nikXI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q43hQJ/CukH5jFiswk3wKncSuDobC/A9jIuCQC1xN375siWMpQhG07NBCzXjDwEN7
	 23ekm6Epu56tNuG7kciKqkNoQcHr+nRuGNRlA9fNnyeAW+Vkas5h4gPcYsFnMKlw92
	 qTFhsUOC7Dfpomw1zLALSdxbQmhpViMwAiF8ofeyF1fzDj5jddfNJOP4/X7e2vCE/Y
	 IiU8muEOgYJAMeM2d5BoXM1XBv/U4G9QI9YszUqXLnrEHH3TejQyGfVuSNNdmsv7Ex
	 Bn6WYKNHn+Gxev0iJp91AmOYXPA+vEkGduvtt1SR18JXYF3e77E6T/RrAXLJkb7dLV
	 eSWpi4H6gKZuw==
Date: Tue, 14 Apr 2026 08:39:00 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Padmashree S S <padmashreess2006@gmail.com>
Cc: k.marinushkin@gmail.com, lgirdwood@gmail.com, broonie@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] ASoC: dt-bindings: ti,pcm3060: add descriptions and
 rename binding
Message-ID: <20260414-tentacled-mantis-of-control-cb08f3@quoll>
References: <20260327121919.603768-1-padmashreess2006@gmail.com>
 <20260414034854.461661-1-padmashreess2006@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260414034854.461661-1-padmashreess2006@gmail.com>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287192-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: 471CD3F62D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 14, 2026 at 09:18:54AM +0530, Padmashree S S wrote:
> Add description to reg property and overall binding mentioning that this 
> driver supports both I2C and SPI. Rename binding to match compatible 
> naming convention.
> 
> Signed-off-by: Padmashree S S <padmashreess2006@gmail.com>
> ---
> Changes in v4:
>   - Rename binding from pcm3060 to ti,pcm3060
>   - Add binding description
>   - Add description to 'reg' property
>   - Remove unused label in example
> 
> Changes in v3:
>   - Remove description from 'reg' property
> ---
>  .../bindings/sound/{pcm3060.yaml => ti,pcm3060.yaml}   | 10 +++++-----

What v4 is that of? There is no such file.

Do not attach (thread) your patchsets to some other threads (unrelated
or older versions). This buries them deep in the mailbox and might
interfere with applying entire sets. See also:
https://elixir.bootlin.com/linux/v6.16-rc2/source/Documentation/process/submitting-patches.rst#L830

Best regards,
Krzysztof


