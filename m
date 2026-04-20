Return-Path: <devicetree+bounces-288779-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJu5KqNK5mnSuQEAu9opvQ
	(envelope-from <devicetree+bounces-288779-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 17:47:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6AA42E97B
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 17:47:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 51FB733DE6EB
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 15:13:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4CC031F9B7;
	Mon, 20 Apr 2026 14:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJvL3pB0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1BC931E844;
	Mon, 20 Apr 2026 14:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776696884; cv=none; b=Wbuf1rZIHzUBua/sB/BpzbcyNy/MLcCPnaeJHBnqzLRe6Y11qZhO14lM/152zmDFmlwlJXYnwpMytDt4jT91OGlb/cPNAJOEQPBBBMpZpFJmoPdHknBg0SfSu09gkHGJet3Jw9Com+50/wowa7dcEKFJV9qWIY/hEqSf8v0QKHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776696884; c=relaxed/simple;
	bh=uGL3RkNr80Rb4I0b+dBZzhPVLXURYIOCB1+i0nmoLZ8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=c/frIvSjzDzNm1z2vA5AYWQEpZuokeToaf4acqC2n9izGPkmymH4n36ntbJufa0XfWBhGQZrIvkILXwlMulpmsOHiXAJYHN3I2YHPjJGZTyjD28LenjR6TPlk+ltcu/a5Pv3UAzxtY1/zRGBB8BF+oZ6WdU1PsXwAicz+XAytA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJvL3pB0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B17CC19425;
	Mon, 20 Apr 2026 14:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776696884;
	bh=uGL3RkNr80Rb4I0b+dBZzhPVLXURYIOCB1+i0nmoLZ8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=vJvL3pB0ISuKcagfn2khLoIEfExVuzlnvYQvbLVQU+hJ8ZIM7WvF0D8pVgAZZDrLE
	 hT3GVTuIPbpS28VdyWTu/ocjDuw23i01+7th0sRY8NIyJZBso//GlPfJ5E7IQ6NvRH
	 JfLHiCGSP+ffLZSwlvrYfMJk11lT3+5jC3EDBYGAoJiDJznyoY7W/5bKvPJEA6w1bG
	 ehg3SEa5sguXPBQhwTNiUHPG3najL63j16XmDEzXA2xBOKOaQHJX+kWVXFtylaCHcp
	 J8Ewr2l1iLKC+MqS6uM05BWt/9AX1trUZJY06TVzVcApfFnQsi90cRfYs5ZhVAPlUb
	 L9E0R7jD8hXhQ==
Date: Mon, 20 Apr 2026 15:54:34 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, lars@metafoo.de,
 Michael.Hennerich@analog.com, nuno.sa@analog.com, andy@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, Krzysztof
 Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/5] dt-bindings: iio: adc: ad4130: Add new supported
 parts
Message-ID: <20260420155434.72e35891@jic23-huawei>
In-Reply-To: <cf4ac074-9098-45f5-9cd6-0eeea0b41179@baylibre.com>
References: <cover.1774996100.git.Jonathan.Santos@analog.com>
	<7bf387e8ad20e2f2bb14534fb03608bbadfa47d2.1774996100.git.Jonathan.Santos@analog.com>
	<cf4ac074-9098-45f5-9cd6-0eeea0b41179@baylibre.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-288779-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,devicetree.org:url,analog.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,baylibre.com:email]
X-Rspamd-Queue-Id: 2B6AA42E97B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, 11 Apr 2026 14:08:59 -0500
David Lechner <dlechner@baylibre.com> wrote:

> On 4/1/26 6:58 AM, Jonathan Santos wrote:
> > Extend driver support for AD4129-4/8, AD4130-4, and AD4131-4/8 ADC
> > variants.
> > 
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> > ---
> > Changes in v3:
> > * None.
> > 
> > Changes in v2:
> > * None.
> > ---
> >  .../devicetree/bindings/iio/adc/adi,ad4130.yaml   | 15 +++++++++++++--
> >  1 file changed, 13 insertions(+), 2 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad4130.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad4130.yaml
> > index fcc00e5cfd54..f4cad68fa04d 100644
> > --- a/Documentation/devicetree/bindings/iio/adc/adi,ad4130.yaml
> > +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad4130.yaml
> > @@ -5,19 +5,30 @@
> >  $id: http://devicetree.org/schemas/iio/adc/adi,ad4130.yaml#
> >  $schema: http://devicetree.org/meta-schemas/core.yaml#
> >  
> > -title: Analog Devices AD4130 ADC device driver
> > +title: Analog Devices AD4130 family ADC device driver  
> 
> I'm surprised that on one said anything about the word "driver"
> in a devicetree binding. :-)
> 
You could have kept quiet! :)  Anyhow, tweaked here and in the patch title
to not mention driver.

Series applied to the testing branch of iio.git.

Jonathan



