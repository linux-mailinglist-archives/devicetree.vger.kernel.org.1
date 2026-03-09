Return-Path: <devicetree+bounces-273132-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0A16KrI5r2kPQQIAu9opvQ
	(envelope-from <devicetree+bounces-273132-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 22:20:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 540E92418F6
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 22:20:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5E24330DBEF8
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 21:16:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE3DE340A62;
	Mon,  9 Mar 2026 21:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Au+7B/Ah";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="cJYvtcTQ"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DAE2DC76A
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 21:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773090967; cv=none; b=Mu8NqbdDl2OoWJZRECOjquDKtEtloYjUe3M3xpr7irkltlZ388x4Fo9hIhbj3t9ISoa7AwzA6RL8nhS37cOYuLJcryUZsJhJchzVvDA9uopg1GSREx4r/ttGj/p9oPbQWYqqGxPGhbhBOL/OzFoPzLTezIuoQ+svTofXolSpHG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773090967; c=relaxed/simple;
	bh=9mXjXVVxTe1P3tuZMnUde/SL8ghtHGQeRE1ObEba6ds=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UaG/53w/Brb2yp7lGfHIDms4AKLpCG7mqBzGTo4UKPGZH8u4rXbwJR02iz2esANL4Uzb8g+y0krouahKYT1HbPhh7iL3l4ea+Mv0BWJ2cB+2NoJ+o0TXz0xrariWvlJxDU5QtYqqjVQzpl5FGqK0bYhihqF17IHDw1urKJk8DY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Au+7B/Ah; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=cJYvtcTQ; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773090964;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qQL1VhgKHAA+ngckVrAOEKHHkR+ETQSpB8jOYFzaBGc=;
	b=Au+7B/AhHSXIpO+R1vGP/OE/ykpX3CVW4rSCKdJZVCibkzAU/5TcTsao6VXGZHO0QPkFsc
	v/e1ouwE93nx6dgFfCRLo7fz1/gdfyE0d0Lt/UssDb0TtUTWAjxu+69OU6g2HXvEBfaAtC
	O2JXhOACdRZs5iIu/7Dp/newwEBC5jg=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-497-DERe6AHfP6Cu1QTy2FOQhQ-1; Mon, 09 Mar 2026 17:16:03 -0400
X-MC-Unique: DERe6AHfP6Cu1QTy2FOQhQ-1
X-Mimecast-MFC-AGG-ID: DERe6AHfP6Cu1QTy2FOQhQ_1773090962
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-89a1f95aea0so346783256d6.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 14:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1773090962; x=1773695762; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qQL1VhgKHAA+ngckVrAOEKHHkR+ETQSpB8jOYFzaBGc=;
        b=cJYvtcTQnTGrI68peTgCWFaOMMU8EQjk736JFyG/4UaLWSZmsXc+f/JlVmb8iTh1BI
         59wBq+PEVmAtvVMkUkmOkAc933vS8H+iIdywxeO4a/oMifaqWEm0fAlPu5SsfCQ1JfMu
         S7M0KvXO+lqjCxgZVZRvhUbmWwCTjc0iJNCaAkHtqJf4UYEKNeLEzu9fV2CyhgPwGOu2
         uLkJaOoChFTGF8VCUz6TIyrp6DOug54li+D5x4rl43Vbvif6YKWV+WIeyUg7q0/i1Hdl
         Pxh6HuaTWaxoGhbtkllw6Ln8dKn90vj0XW9MFyfcgeLzxyaDp7PZ/awbrVPSzeQ8zpKS
         MzVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773090962; x=1773695762;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qQL1VhgKHAA+ngckVrAOEKHHkR+ETQSpB8jOYFzaBGc=;
        b=LJGaANU3ZNgfvjH/7aHqhi4e7i1t2WqwFHT+WwItrGXjG1teBTRw3IvlAXWoa7tG2H
         JDqBFxGYEoFJXpd7XKzRu2fal1N8dZ7WdED2oawwB+ujf0ltzBBEM8bvefrUxW9DeAIR
         CjbcE1w0wGhoWdqp9yRu9pOenQUEjCEaKC40hoAdWkKjfzM+n0HtmVGh317ASQc05TlI
         Q4wZBgBmL5RoIgJOSoi3yFLW6pljv5kb8G8wbXIspKpg46xZhzhxQPABLTzA1Ee2ONgA
         oSaVKEtbAoMrqq6+0kbiFpUaxC34WGcVtVFXqZvii4f3VEF8XNWPCPm9NojgoVrIxh1+
         l0pw==
X-Forwarded-Encrypted: i=1; AJvYcCXVVwqCWLmMlHW2Pg0GTWtO88tw9Gl5OvDL7lmG7/H/m9pJV1EbxW4tu9wv/LgzTj/oI8GElVIV+D6M@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1OyqPuB1DSysEkykAg5WvpYh3hL9RQEnjccv121/VGcuING1/
	+uR1okt+EjkywYk2tT+uDFIkmiHJXQLG5Ea45TFJlNJUXECnuoKpv1JwHijHjXHMrAGhF7ovUdN
	fuFk5Eg0mQfZG2aG8mRcnldoCwOmgegfR8OWLE4ijEJa6kkgvCAgDM8ijwNnQppI=
X-Gm-Gg: ATEYQzwzIKqHnWTmZUS+si4+EUj2K47mzMFVYUQS4+8gDCJhQEcPmKMOvwp1xqH7aGV
	e+SuuY5bwllnmlhzeRHNqt80m9gTH0zsZpNpywxD4gaA0UPB2cVNiilUVgHkg6qoqUEMh+ruEBI
	SaVErbQvxA6xMDZgYp9r3yNTBrPhifmp4N+/dWtMJa3KALk2tYbF1T1/SNDtqWkUPwhuFksDw2+
	rkbGOQ817MP/PQy7q4wMmFYcYDDCUMucq2JsVHT9aukIvy7V8bF8UJgXOzNuC19p6CKCsmX4qy3
	4nplTNVQfPgLJygje4rI0ITTZFo0XBMFnXNq3CCCGkBL9+mCk+mW2BvkWBqsHmuHzIkt1vGaKfM
	tIClvDNGVz0nwRW+8kFEMlH0LeGvfUf2XUwMcH3vFhb2yr9LjcXJfti/V
X-Received: by 2002:a05:6214:c68:b0:899:eff6:6e73 with SMTP id 6a1803df08f44-89a30a1e8d1mr193817626d6.7.1773090962401;
        Mon, 09 Mar 2026 14:16:02 -0700 (PDT)
X-Received: by 2002:a05:6214:c68:b0:899:eff6:6e73 with SMTP id 6a1803df08f44-89a30a1e8d1mr193817286d6.7.1773090962011;
        Mon, 09 Mar 2026 14:16:02 -0700 (PDT)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a57a18140sm6725596d6.3.2026.03.09.14.16.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 14:16:01 -0700 (PDT)
Date: Mon, 9 Mar 2026 17:15:58 -0400
From: Brian Masney <bmasney@redhat.com>
To: Drew Fustini <fustini@kernel.org>
Cc: Stephen Boyd <sboyd@kernel.org>,
	Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>,
	Drew Fustini <dfustini@oss.tenstorrent.com>,
	Joel Stanley <jms@oss.tenstorrent.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	joel@jms.id.au, mpe@kernel.org, mpe@oss.tenstorrent.com,
	npiggin@oss.tenstorrent.com, agross@kernel.org,
	agross@oss.tenstorrent.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v8 3/3] clk: tenstorrent: Add Atlantis clock controller
 driver
Message-ID: <aa84jv9NkZnTgSLi@redhat.com>
References: <20260306-atlantis-clocks-v8-0-6c9b14a4aa8e@oss.tenstorrent.com>
 <20260306-atlantis-clocks-v8-3-6c9b14a4aa8e@oss.tenstorrent.com>
 <aa8pVqupeZr67bEd@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aa8pVqupeZr67bEd@x1>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Rspamd-Queue-Id: 540E92418F6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273132-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bmasney@redhat.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tenstorrent.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 01:11:02PM -0700, Drew Fustini wrote:
> On Fri, Mar 06, 2026 at 11:12:19AM -0600, Anirudh Srinivasan wrote:
> > Add driver for clock controller in Tenstorrent Atlantis SoC. This version
> > of the driver covers clocks from RCPU subsystem.
> > 
> > 5 types of clocks generated by this controller: PLLs (PLLs
> > with bypass functionality and an additional Gate clk at output), Shared
> > Gates (Multiple Gate clks that share an enable bit), standard Muxes,
> > Dividers and Gates. All clocks are implemented using custom clk ops and
> > use the regmap interface associated with the syscon. All clocks are derived
> > from a 24 Mhz oscillator.
> > 
> > The reset controller is also setup as an auxiliary device of the clock
> > controller.
> > 
> > Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
> > ---
> >  MAINTAINERS                             |   1 +
> >  drivers/clk/Kconfig                     |   1 +
> >  drivers/clk/Makefile                    |   1 +
> >  drivers/clk/tenstorrent/Kconfig         |  14 +
> >  drivers/clk/tenstorrent/Makefile        |   3 +
> >  drivers/clk/tenstorrent/atlantis-prcm.c | 870 ++++++++++++++++++++++++++++++++
> >  6 files changed, 890 insertions(+)
> 
> Hi Stephen, does it make sense for me to create clk branches [1] in the
> tenstorrent repo on kernel.org for Atlantis patches to go through?

I am not Stephen, but that's the approach that all of the other SoC
vendors use for the clk subsystem, so I would say yes.

Brian


