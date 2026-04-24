Return-Path: <devicetree+bounces-290134-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SOfgCM6m62mrPwAAu9opvQ
	(envelope-from <devicetree+bounces-290134-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 19:22:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EDE461E14
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 19:22:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BC3A2303C400
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 17:11:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D194D3E4C9F;
	Fri, 24 Apr 2026 17:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWBg9CoY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A055F3264E6;
	Fri, 24 Apr 2026 17:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777050697; cv=none; b=hB1tVKHPjtthyxPLOUu10Y7XB6ut4lIuDttkCeSLi69EVROhSCh5QI0sUCcg5TCelhF15kMXX3DahOSr7qDLC/Hgh3gb9R2t6pw9sRa06HJG581kZq6TDnrRlBWW2MsCPGeMpsIYVkq4VDKw3AoHnBZZic/DHrWzJ28lA3qL1pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777050697; c=relaxed/simple;
	bh=xLZz4WC8Bo8u0efX2LWmkvpBmMfi9ZcfdInsNPrIn4A=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=M+VfwIjLuGmlM/qRXvSSCShasYpcx94RqrBZ9iaVOFPHw8oxuyxcyD0whM8Tdzvm9HRRbunxTOJdOgVjBG9dUhoxjooA4RLJLmDFbadNyqOFkzD+DGcph+DCuaAFM1e+R1DJ/smhSFfacoY+GF4Vk07Qf3ST41Lq2QflpnovqB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWBg9CoY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 923C8C19425;
	Fri, 24 Apr 2026 17:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777050697;
	bh=xLZz4WC8Bo8u0efX2LWmkvpBmMfi9ZcfdInsNPrIn4A=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=mWBg9CoYIa1d+e43erewy3MvCpQVOp7TUxQ+7W2m9+oGX7OlGF2kD3C2JQdQaWThG
	 TcE0jz3jmfNwMopsEE74S2AS8ObuSicruj1fl/Bgd1MZh8YMG447wSdsuHCKqa49Sd
	 oiNury1DOjrJ2hteAhPSKUluuiz9zIlyR/mm5s11J+XrTRH749Vzovf8cs8xD1kWUU
	 ZZeAAB+PqogvTfiSw+Aq3qVUNdm0pmiGp1Fp4aWQXeFzoHeSCQSlGJyp95PzTV7XFU
	 4daqLy0k9ZhK8KRLAKJc007LH8b0/dU9+0RHFG91hKJNw+kXq6fB+KQ+wQPR51UgoX
	 IMYC6Kj6QTQPg==
Date: Fri, 24 Apr 2026 18:11:25 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
Cc: Rodrigo Alencar via B4 Relay
 <devnull+rodrigo.alencar.analog.com@kernel.org>,
 rodrigo.alencar@analog.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Michael Auchter
 <michael.auchter@ni.com>, linux-hardening@vger.kernel.org, Lars-Peter
 Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, David Lechner <dlechner@baylibre.com>, Andy
 Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Kees
 Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH 21/22] iio: dac: ad5686: add triggered buffer support
Message-ID: <20260424181125.7df826eb@jic23-huawei>
In-Reply-To: <h65ofgapkjztmi5szcmtejcwtjchiyxyp73njefrppxyalw7y3@fjz764sgxkbz>
References: <20260422-ad5313r-iio-support-v1-0-ed7dca001d1b@analog.com>
	<20260422-ad5313r-iio-support-v1-21-ed7dca001d1b@analog.com>
	<20260423192714.04eaa55e@jic23-huawei>
	<h65ofgapkjztmi5szcmtejcwtjchiyxyp73njefrppxyalw7y3@fjz764sgxkbz>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 79EDE461E14
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290134-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[]

On Fri, 24 Apr 2026 10:20:43 +0100
Rodrigo Alencar <455.rodrigo.alencar@gmail.com> wrote:

> On 26/04/23 07:27PM, Jonathan Cameron wrote:
> > On Wed, 22 Apr 2026 15:45:55 +0100
> > Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:  
> 
> ...
> 
> > > +static irqreturn_t ad5686_trigger_handler(int irq, void *p)
> > > +{
> > > +	struct iio_poll_func *pf = p;
> > > +	struct iio_dev *indio_dev = pf->indio_dev;
> > > +	struct iio_buffer *buffer = indio_dev->buffer;
> > > +	struct ad5686_state *st = iio_priv(indio_dev);
> > > +	const struct iio_chan_spec *chan;
> > > +	u16 val[AD5686_MAX_CHANNELS];  
> > 
> > I may be wrong but I suspect the static analysers won't like the
> > fact that only part of this is initialised and they can't
> > tell how much of it is then used. We might need some sanity checks
> > to keep them happy even though we know they will always be fine
> > (branch predictors should quickly make them near cost free).  
> 
> will just add = { } to end, so it get initialized to zero:
> 
> 	u16 val[AD5686_MAX_CHANNELS] = { };
> 
> > > +	int ret, ch, i = 0;
> > > +	bool async_update;
> > > +	u8 cmd;
> > > +
> > > +	ret = iio_pop_from_buffer(buffer, val);  
> > At somepoint we should probably add a sanity check on buffer size to that.  
> 
> nothing to be done here then, I suppose that should be an API-level change
> for iio_pop_from_buffer().
> 
Exactly. One for another day :)

J
> > > +	if (ret)
> > > +		goto out;  
> 


