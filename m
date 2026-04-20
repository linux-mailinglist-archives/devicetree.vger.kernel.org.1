Return-Path: <devicetree+bounces-288680-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDcYEj4k5mlBsgEAu9opvQ
	(envelope-from <devicetree+bounces-288680-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 15:03:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A105142B30D
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 15:03:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BB1A33151D3A
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 12:53:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C94053A0B2B;
	Mon, 20 Apr 2026 12:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNdNYyzT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5B863A0B23;
	Mon, 20 Apr 2026 12:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776689551; cv=none; b=Bqoh2c7Q2NokhKxpdiEkQsk/8eaYnzhXtJ6Hb7KHZROnxwEcBOE1uuFvIZEtB9P6IrXS7H9AqGXFM+OWS3hEJHC5wDu9taaSIVatJhRGlE/KDe6UN/xuPPDZYzQb4QF2mdpQCM2Mi/dEsYOobcVEr33uPbx+vh814+ggOzOUTVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776689551; c=relaxed/simple;
	bh=TRCb85quAb1Jds1qq2otmPssvYv2USQ9yjh0heKXfyE=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=izqjyd2O5OnCpRK/ZeliEZgpbjkLaLGbuo8/u3UmneEagrPa7sq9gWZpCLHgNHGSGibifs6UHXKl45rpXH0pKpPHhVGQ1sbE1vUCbwmjhZV+6CiK5PlRXbpzF/SdAIufbQ7fJPWZz/coEU1bwUubic9KXwp+FqnrLTmeF9IBvFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNdNYyzT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DB08C2BCB7;
	Mon, 20 Apr 2026 12:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776689551;
	bh=TRCb85quAb1Jds1qq2otmPssvYv2USQ9yjh0heKXfyE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=RNdNYyzT2UbESTygKadw7B97rSGCznI60gv46bQ/UsYzCarkQiGRdVDLQHyQ90ez2
	 RqExQkQt5V6F3jOhESpQWJy0rnAAKejDckiOoAXXeTr3H4UBtG62aMLvffVO+PPGm/
	 8d1e291fmL5JxH34ZNhItJ3u2OeDQg19kTdcBA+bf0BzV3K4zgPE3W0rWpsqFQFzxB
	 HspLoYwRQwN6kQyZXNXWXWsgpVS8jJgU+LXwvTQIEJ/k3PrSjbYwG5rS5kh19XAH1f
	 jHC0PizFDrVMvuAqy8gTLIxLUbh2iZlG/S5QHjEuSJaadTcWQJyhrzN72T6tyDUk4k
	 0wTSZk0oWezrw==
Date: Mon, 20 Apr 2026 13:52:21 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: Harpreet Saini <sainiharpreet29@yahoo.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Bjorn
 Andersson <bjorn.andersson@oss.qualcomm.com>, Marek Vasut
 <marex@nabladev.com>, Kael D'Alcamo <dev@kael-k.io>, Lad Prabhakar
 <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: iio: light: Add PixArt PAJ7620 gesture
 sensor
Message-ID: <20260420135221.2af64921@jic23-huawei>
In-Reply-To: <028a5407-e0c1-438b-b124-55df8e5fda92@baylibre.com>
References: <20260413000308.7618-1-sainiharpreet29.ref@yahoo.com>
	<20260413000308.7618-1-sainiharpreet29@yahoo.com>
	<028a5407-e0c1-438b-b124-55df8e5fda92@baylibre.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-288680-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[yahoo.com,analog.com,kernel.org,linaro.org,oss.qualcomm.com,nabladev.com,kael-k.io,bp.renesas.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A105142B30D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 13 Apr 2026 09:25:19 -0500
David Lechner <dlechner@baylibre.com> wrote:

> On 4/12/26 7:02 PM, Harpreet Saini wrote:
> > Signed-off-by: Harpreet Saini <sainiharpreet29@yahoo.com>
> > ---
> > This is part 1 of a 2-patch series proposing a driver for the PixArt
> > PAJ7620 gesture sensor. This patch adds the Device Tree bindings and   
> 
> Gesture sensor sounds like input subsystem, not IIO.

There is one gesture sensor in IIO but that was driven by it
being a combination of that and a proximity + ambient light sensor.

drivers/light/apds9960.c

It seems there is already a series for this one on the input list, so I'll let
any further discussion and review happen there.



