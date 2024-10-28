Return-Path: <devicetree+bounces-116677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B222E9B3983
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 19:47:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 785CB282223
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 18:47:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A5F21DF728;
	Mon, 28 Oct 2024 18:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b="Ox7UQMIN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AC913A268
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 18:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.238.236.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730141262; cv=none; b=KvRhUmb2b/HeVocfrS8oNf8/l3ySKa+gb/KIVRXwEXgEmvYi0NwSct5ZYnHf/022dTlr5Voxxoc//KOgpxoeq/m7v6RJIoaQC1dQsWnn2JqeF55Fb0ZlCaCnkSZ+3Fv1/W7+UhtjgLwnU9U1rJSUh+WLyhH00NbOd5Kx2NsI1RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730141262; c=relaxed/simple;
	bh=r8iGMR8HMG2eBXS4RZBW37+L8nJK2UFHqnYo8ScEnV0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Z+fwFX5+QFiDWGBwIZ0oxzXjgEyPFVtnN1A4xuG6+pZLNSyJ6tg0HsBuWtijzd4jUk17Uh2D4+eI7gWLkHMughJn8fNp2U/o2l5hpb4va7MIzLbBbD4qv6asMc2bL3TiC6UU+5PhbzETbvv+KJMuyxSL9AVw0swPTJTGs1Lj+BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=Ox7UQMIN; arc=none smtp.client-ip=178.238.236.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kemnade.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=References:In-Reply-To:Cc:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=keYcC9fhxqNbYuzzzk2WhE2mtMjSjj0nBQVIyjqHiRw=; b=Ox7UQMINWv7qTuRqJRZEbZECAy
	Tzf47LEPIniNHdmIm6V1FNmDhWvHMy5BM9liiZo4H4mDGUFtsWlIeoeUpiJ6KemJ9Pf+psb0LF2SN
	zW+xXgMZbiWyUFxUrly/O8UNFE6kTbv18g4w00NqIoy3uRx6WN/Sz5wzLSFcw6dSyKJK6ExILFrX2
	+oQSgMLlntb7PLDs8G+0DZa8UPyadU055ESjhzcdaKi8vzecL18YWm3OLEIomwf2LHQvM0i5pMXKB
	MnauT4aJr1AQnet7+OuuhTOkMdx0wCmxiEsGSa1ljLlCDchyZnGcg7EP7Pw0w0kLsp4bYOu5t0cRJ
	975QpCDA==;
Date: Mon, 28 Oct 2024 19:47:28 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 2/2] ARM: dts: imx6sx: Remove fsl,imx6sx-lcdif fallback
Message-ID: <20241028194728.0655edd3@akair>
In-Reply-To: <20241028180844.154349-2-festevam@gmail.com>
References: <20241028180844.154349-1-festevam@gmail.com>
	<20241028180844.154349-2-festevam@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi,

Am Mon, 28 Oct 2024 15:08:44 -0300
schrieb Fabio Estevam <festevam@gmail.com>:

> From: Fabio Estevam <festevam@denx.de>
> 
> According to fsl,lcdif.yaml, "fsl,imx6sx-lcdif" does not have any
> fallback.
> 
> Change it accordingly to fix the following dt-schema warnings:
> 
> ['fsl,imx6sx-lcdif', 'fsl,imx28-lcdif'] is too long
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---

As the devicetree might also be used with other software (e.g. u-boot),
this might break something.  So if u-boot (or any other software) does
work with fsl,imx28-lcdif because it only uses a subset of features of
fsl,imx6sx, it might be worth changing the binding instead.

Same for Patch 1. But I cannot test that and do not have a strong
opinion here.

But thanks for touching this annoying warning.

Regards,
Andreas

