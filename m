Return-Path: <devicetree+bounces-298940-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFZJFnTSCWp8rAQAu9opvQ
	(envelope-from <devicetree+bounces-298940-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 16:36:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F24561B45
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 16:36:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DE7AC3001CF4
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 14:36:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8FEB3090DE;
	Sun, 17 May 2026 14:36:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1yIrzoh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 850A610F1;
	Sun, 17 May 2026 14:36:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779028591; cv=none; b=HSKEhrkodhH8zdpCj+eiB6gEVPpwSbiM2OUjli/WMylYhPOlBiAYH+ozGvgxEqIuUotVvS26ZjpJ+J3OMjRKWxJxomLHbUw2WHSNAYbktezuTEyaZlc+CZ3IZtcI1ev3k1Ak9uil6/bm0/xbWywTSWG7AnVs9DUT91XwiribY2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779028591; c=relaxed/simple;
	bh=XRvg7yra7Kdd4sPS1leUSWBeRh5YL1wJwU716C5+mGY=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SEHqrJNeXku9bU51f3Vugzr91d2sjdvf+4gZabaIZhk5TqBFGG1cGICTFQlWUtlmxxkY/pF4DqIWBFnvoDogYlR6VKfUepNEQBEVbh0Ixhxy80M5JA2egkkKgVjYDnt6tjM6DS0tExXVopxMojRF6aIq50Ylrh2QuEPEIF+SltY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1yIrzoh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4F48C2BCB0;
	Sun, 17 May 2026 14:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779028591;
	bh=XRvg7yra7Kdd4sPS1leUSWBeRh5YL1wJwU716C5+mGY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Y1yIrzohA36EB2tN71Hqse39pioPcC1WDtf0UXW9ygXF2DdE6HsMhnfkStcBlXepE
	 nRdbjlY4CSfSdIKuwyC2vn31qiAM6U12npuo37thiXDLqsiz8jlAJu7+RYgv3/sIx3
	 1crlwW9UoyVQ/Ugy45XpJk4upAq0VlGtMXIGyUPSeW8uKboDbCgh9RP+UAJ6XBsG9F
	 sTncYs81d+e7athfKDtCG5gCt57IWW7uWRXpdhGvFAge/R5VSWIetgDvUimfODOsgq
	 9/5r7IEXeFlJnqVcbYJjmydNdh4+8yizI8PiUgoyFzDN0SwqcXn/wEcBtrwkwF3DXF
	 ujLANXWovB7Jg==
Date: Sun, 17 May 2026 15:36:21 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Taha Ed-Dafili <0rayn.dev@gmail.com>
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, dlechner@baylibre.com,
 nuno.sa@analog.com, andy@kernel.org, skhan@linuxfoundation.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 4/5] iio: dac: ad5504: introduce local dev pointer
Message-ID: <20260517153621.55b3436d@jic23-huawei>
In-Reply-To: <20260509142047.30302-5-0rayn.dev@gmail.com>
References: <20260509142047.30302-1-0rayn.dev@gmail.com>
	<20260509142047.30302-5-0rayn.dev@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: A7F24561B45
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298940-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Sat,  9 May 2026 15:20:42 +0100
Taha Ed-Dafili <0rayn.dev@gmail.com> wrote:

> Replace &spi->dev with a local dev pointer to shorten lines, fix
> alignment, and improve overall readability in the probe function.
> 
> Signed-off-by: Taha Ed-Dafili <0rayn.dev@gmail.com>
Applied this one to the testing branch of iio.git

Thanks,

Jonathan

