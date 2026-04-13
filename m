Return-Path: <devicetree+bounces-287087-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ECfsLC8o3WlpaQkAu9opvQ
	(envelope-from <devicetree+bounces-287087-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 19:30:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DE73F17E6
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 19:30:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 76508302C75E
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 17:28:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EFDE349AEC;
	Mon, 13 Apr 2026 17:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jd7KiQQq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9AD32ABC0;
	Mon, 13 Apr 2026 17:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776101310; cv=none; b=dezTucncVU4D3liX1ITPCA37FAwpFm8wvBVk/3CQlIhspeA5HPhArjdT76/EKBsLaPDOb/sftCwMKeQya//LloTbwN25xH/7u621Rt9/4sP/QjZaqnCGkv9TJX7mqs2isqY7i0Dgpi7VdIl8KOcglRVOV5qAZZo3OT744aEb3zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776101310; c=relaxed/simple;
	bh=mqqZU7qX3WkW3Mz56Hb4EU0rPxdufMB8ABltBRDUZmY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KGZdPyS7NPZNFEnPSVMHdoI41ikME7HuNGN4QnCchJ9/wg0cPcDYI4BGhUjCloKynkNtcBCqg4cZa0hbnyBqiqVPzKZQXPLw7VKrsEycE3eSoewLavuS3Ev4B6fS0qEeeTCi0JfsZUpYpGMy7tuaCKWePDV0BreVjnssEGMKTEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jd7KiQQq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F7F3C2BCAF;
	Mon, 13 Apr 2026 17:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776101309;
	bh=mqqZU7qX3WkW3Mz56Hb4EU0rPxdufMB8ABltBRDUZmY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jd7KiQQqs0DZTve83Te+eNU8yKj3iiSmehCuJK/zEXrzX2zhQub3+gTVqbNhHWNej
	 Q0q+JL8DYgokmJ9fosrF8RLmf+4pTHS5jCOSyzdO+MldJXXvSieOm7c+ti7e78wItv
	 Hi8DX3XSkypJH/g42Z6WcZjkr96ex0z1KsWKuO4dHIIUckwvVDFRYFLmTPqFqZLbJ7
	 3pF7esVReLIlV+k7M95AKoav0ieQngxL30OultcjdURfrGOtgNPAdn7w+P7entGLNr
	 kAxZROAjT067dF68F5OumsC2e2oQ+z06A0Jse8AddYNRQb5XZTrFt42KEsvLBarHsi
	 CUjPoVprv5MpQ==
Date: Mon, 13 Apr 2026 12:28:27 -0500
From: Rob Herring <robh@kernel.org>
To: Khushal Chitturi <khushalchitturi@gmail.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, liviu.dudau@arm.com,
	sudeep.holla@kernel.org, lpieralisi@kernel.org, pawel.moll@arm.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: ARM: arm,vexpress-scc: convert to DT
 schema
Message-ID: <20260413172827.GA3139713-robh@kernel.org>
References: <20260411183355.8847-1-khushalchitturi@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260411183355.8847-1-khushalchitturi@gmail.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-287087-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 21DE73F17E6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Apr 12, 2026 at 12:03:55AM +0530, Khushal Chitturi wrote:
> Convert the ARM Versatile Express Serial Configuration Controller
> bindings to DT schema.
> 
> Signed-off-by: Khushal Chitturi <khushalchitturi@gmail.com>
> ---
> Changelog:
> v1 -> v2:
> - Modified compatible string to use an enum instead of a generic pattern.
> - Updated maintainers list.
> 
>  .../bindings/arm/arm,vexpress-scc.yaml        | 53 +++++++++++++++++++
>  .../devicetree/bindings/arm/vexpress-scc.txt  | 33 ------------
>  2 files changed, 53 insertions(+), 33 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/arm/arm,vexpress-scc.yaml
>  delete mode 100644 Documentation/devicetree/bindings/arm/vexpress-scc.txt

Applied, thanks.

Rob

