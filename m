Return-Path: <devicetree+bounces-300959-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDD7HFVRDmpq9wUAu9opvQ
	(envelope-from <devicetree+bounces-300959-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 02:27:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E68CB59D4A0
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 02:27:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 10F33304F42A
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 00:26:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45FBD2472AE;
	Thu, 21 May 2026 00:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LlUdVpwi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDEC921E098;
	Thu, 21 May 2026 00:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779323199; cv=none; b=uapgTX+5QbVsePvQRiJ8q4+z89+jM5XLDS4TuRpU9g0RN1hC5ej/JhEF47X7/3FNhGR5g7gisNPdVxA2X9iKSh/699f9nubOh6md597VqBLfbeNx12omCsYiVxjqfeS4jYkCpJOnc68PdOm/GMs8G9b3VDI14RRdRL5KzVEP//U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779323199; c=relaxed/simple;
	bh=5x/iRcZlf9FvST3ibe65fqLuCbX+ocZawQud/CYY2o0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jCA/gdCvuQs9rWbnYasmP+wuCLfqZ+nUJKhilwS+5Kfbb/CCIHdC9F6PhtuPUzzo6cu2Y1MNGASb+u67zUUG39GWoL+gxJVTOFEoe2/rGLiXo57yMH1aaPQJ272BQRk/hODdltR7TOUecf9b3yEWUcYFmJdjsf7x+S6M6XpT7eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LlUdVpwi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F6271F000E9;
	Thu, 21 May 2026 00:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779323196;
	bh=leqCqyvwJzYlq+jWVwct8Lb05XLKVxaJAs0YuOfdhpg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=LlUdVpwic84k9bFNNPAzpQrzUPUXoB5Hw/Iw69S72+0BMT6hSGZL9/t3wRmMVZErA
	 E6w9Eka82lydmDeAJEXLLhQ0nr0uTz3DLD/TuaeQqmUsAwWouq8UEVImi5vFpBHIXM
	 2StNxjHuR8OZT0cA1jRxQG4UF/Qwu0sxHH+twmRWqOJT2H24rwRwu1zcqPTqOnDIuv
	 2hGeG0m1cK2hFfdiZGdGJPrcGTsJFCXYCn6lOEIYZRpwTLfapnn9hG5wZgQ/eCS2iG
	 QT9PcdH7GUG7N4u3g6vF9YuUuFxJx7aQOTmiIlX4LNq1swsgc100+2T6nhSkyfr3DD
	 MJvspjImw6L6w==
From: William Breathitt Gray <wbg@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Wadim Mueller <wafgo01@gmail.com>
Subject: Re: [PATCH v4 2/3] counter: add GPIO-based quadrature encoder driver
Date: Thu, 21 May 2026 09:26:25 +0900
Message-ID: <20260521002627.172691-1-wbg@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260520044525.128529-1-wbg@kernel.org>
References: <20260520044525.128529-1-wbg@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4467; i=wbg@kernel.org; h=from:subject; bh=xRsJjqjIHW0mg5ieW1TqPbWbeDPc0eZ7puqTnBIo844=; b=owGbwMvMwCW21SPs1D4hZW3G02pJDFl8gcLaT8s7am7EfF6j+ejX+6X7Dr/X9doUrdW1Nkvrc fd+j4K6jlIWBjEuBlkxRZZe87N3H1xS1fjxYv42mDmsTCBDGLg4BWAif2wYGa5OT7/sMNm43btr q6eHbmjbtgXBi5hWz7yWtLzd/3sC70mG/7m/DsYVMv6WLQxfNePeVeYNEwKnbCoyUnLfv8zg5sw L/3kB
X-Developer-Key: i=wbg@kernel.org; a=openpgp; fpr=8D37CDDDE0D22528F8E89FB6B54856CABE12232B
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-300959-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wbg@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: E68CB59D4A0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Wadim Mueller <wafgo01@gmail.com>

On Wed, May 20, 2026 at 01:45:20PM +0900, William Breathitt Gray wrote:
> On Fri, May 15, 2026 at 05:36:15PM +0200, Wadim Mueller wrote:
> > +static int gpio_qenc_a_delta(struct gpio_qenc_priv *priv, int a, int b,
> > +			     int prev_a, int prev_b)
> > +{
> > +	int state = CREATE_QE_STATE(prev_a, prev_b, a, b);
> > +
> > +	switch (priv->function) {
> > +	case COUNTER_FUNCTION_QUADRATURE_X4:
> > +		return gpio_qenc_quad_x4_table[state];
> > +
> > +	case COUNTER_FUNCTION_QUADRATURE_X2_A:
> > +		/* Both edges of A; sign comes from current A vs B. */
> > +		return (a == b) ? -1 : 1;
> > +
> > +	case COUNTER_FUNCTION_QUADRATURE_X1_A:
> > +		/* Rising edge of A only. */
> > +		if (!prev_a && a)
> > +			return b ? -1 : 1;
> > +		return 0;
> 
> Quadrature X1 count modes trigger on the falling edge when the direction
> is backward. This isn't simply a requirement by definition, but
> necessary for the proper interpretation of the quadrature encoding.
> 
> Let's evaluate an incremental encoder used in a positioning application
> as typical use case.[^1] These are commonly implemented using a rotating
> shaft with a quadrature-offset pattern; aligned sensors detect the
> physical A/B pattern as the shaft rotates.[^2] As the shaft rotates a
> quadrature encoding emerges whose A-B phase difference allows us to
> determine direction: forward when rising edge of signal A leads B, and
> backward when it trails.[^3]
> 
> Now consider what happens to the signals when the rotation changes
> direction: there is a phase change between Signals A and B.[^4] The A/B
> pattern on the shaft is physically present so it has not changed; rather
> the pattern is now fed backwards to the sensors due to the direction
> reversal. The key point is the physical boundaries of the pattern are
> located in the same shaft positions they have always been, yet the
> signal edges representing those boundaries have flipped as a result of
> the direction change: positions marked by rising edges now appear as
> falling edges.
> 
> In Quadrature X4 and X2, the pattern reversal doesn't affect positioning
> because we count on both edges, so swapping rising and falling edges
> nets the same position count. Quadrature X1 presents a problem because
> we count on a single edge type, so a phase-difference in the encoding
> results in a physical shift in real-life position. The way to account
> for that phase shift is to swap counting to the other edge type when the
> direction changes. That's how dedicated quadrature encoder devices solve
> this problem.
> 
> I'm not sure of the best way to solve the Quadrature X1 problem in this
> driver. Right now we fire off interrupts on both edges, so perhaps
> there's a way for us to determine whether we're firing on a rising edge
> or falling edge and evaluate accordingly. Does the GPIO subsystem
> provide an indication for which edge triggered the interrupt? Or would
> it make sense to provide two interrupt service routines (one on rising
> edge and one on falling edge) and handle it that way?

The simplest method might be to evaluate the current GPIO level to
determine the edge polarity. Because we trigger on both edges, we can
assume a high level means a low-high transition (rising edge) and a low
level means a high-low transition (falling edge).

Using that assumption, we can implement the Quadrature X1 case by
checking the current state and direction, and adjusting the counting
accordingly when applicable: count up if rising edge and forward
direction, and count down if falling edge and backward direction.

Quadrature X1 A is handled by the signal A interrupt service routine:

	/* COUNTER_FUNCTION_QUADRATURE_X1_A */
	if (ca)
		if (direction == COUNTER_COUNT_DIRECTION_FORWARD)
			count++;
	else
		if (direction == COUNTER_COUNT_DIRECTION_BACKWARD)
			count--;

Quadrature X1 B is handled by the signal B interrupt service routine:

	/* COUNTER_FUNCTION_QUADRATURE_X1_B */
	if (cb)
		if (direction == COUNTER_COUNT_DIRECTION_FORWARD)
			count++;
	else
		if (direction == COUNTER_COUNT_DIRECTION_BACKWARD)
			count--;

There's an obvious caveat that this method only works if we're able to
check the GPIO level before the next edge arrives (we're limited to low
frequencies), but that's a caveat present regardless for our software
counter so I believe this is an acceptable solution.

William Breathitt Gray

