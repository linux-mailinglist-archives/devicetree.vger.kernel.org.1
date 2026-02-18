Return-Path: <devicetree+bounces-266326-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IF0dGsF+lWl8RwIAu9opvQ
	(envelope-from <devicetree+bounces-266326-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 09:56:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AA41545EA
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 09:56:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D07F3009507
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 08:56:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8685333064A;
	Wed, 18 Feb 2026 08:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="eHqXEQZD";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="CwUdryx2"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5359D32939C
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 08:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771404965; cv=none; b=IUumuOsvxOFu6TibQ1thUM1qehwFI78IwhttM/qsf4aRvlDhQBikFj2dvvvIAOMTiDJy2laF/bMeuzVzE6Hz7GKHMrxPUKvtqPri4u28atwblB3GVlRkyhcMlej5PT2DEmTKE7p7E9Fc0hi7Sr52qPkEol00eUYZPBfEmW03Eq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771404965; c=relaxed/simple;
	bh=/9otZd25ocNn9HUDGmNAX0+CEXD0GlGASUVcWCKDTQI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JYDGxGD0PTwvO0WRI7cRgtgu3wJXPVEqYumL4uPRz5q4XU3uBZ1MYpEhpSKODsAB/Vx2fDvaYuYCy/5mvzKN4JJ2q00L1oec2N+EXfHLRY/wKh43cBNZh0+xcXwam+kPc73sOqHmaAOsrFt48YWytzxgOVHfBpAa5vgLDiM3pVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=eHqXEQZD; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=CwUdryx2; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771404961;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/9otZd25ocNn9HUDGmNAX0+CEXD0GlGASUVcWCKDTQI=;
	b=eHqXEQZDZ52O1vvy4DVzuRDATt+OyJ2cw4G6YuSQEjUb34APk6mTUggs6xEqG3MIZSXhix
	A2YvexCnrLz5j0FOXIKNa0VfomXkz9/LQGO7qQNw7xHZZXkXYseodUQzsTwOY4RSCUzl+0
	L0fi6NsjXAr2fRnBZTXeIYDAYD1b7Rk=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-217-bhla5DmyNHyQqEY3K1lS0A-1; Wed, 18 Feb 2026 03:55:57 -0500
X-MC-Unique: bhla5DmyNHyQqEY3K1lS0A-1
X-Mimecast-MFC-AGG-ID: bhla5DmyNHyQqEY3K1lS0A_1771404956
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-435991d4a3aso2995644f8f.1
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 00:55:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1771404956; x=1772009756; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/9otZd25ocNn9HUDGmNAX0+CEXD0GlGASUVcWCKDTQI=;
        b=CwUdryx2NxMJK45zh1litSV6nuaJO+NimyF2MQ87vJOsJ/kb+YnMkhoz8gx9CNfkIv
         1lyBaF8AmvPFaqgHelNfudJIti7DstYEFf7yxjhymYKqdkpXO3fb3ovMrwTmrAnzj00J
         c2jpk8gjNaTdzgGmN44YLiadLkT1IOr7q7s83VAGqqobXohnMlFeZm1KBqhutjWeyFWU
         kZOrOiJGPcfwDQZ0fkHnKFqeAzY5U/ZV7S0e43kCznRkdnP4gNdsIPc/dhi+ClVjRg05
         H8rzUh4Gwli7OgiSkdEFw5OB6fk4aslcQ032CtbZeXO+DJX+1HXT/mARqn9DrAGP6EON
         yhRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771404956; x=1772009756;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/9otZd25ocNn9HUDGmNAX0+CEXD0GlGASUVcWCKDTQI=;
        b=gy9fG1D2ViP+V8RYVznRLyXJtSOtNEpuZTu4jvStFrErTfJDQRjkdHiOvdmbb5A/FL
         1lexIObMSb+csORSL6EwXQUmuH3aVFZOoQIeqedeEm086FoPNHC3C3fS4dbyAmFxLbjL
         28lcgCardPhh5g8/y8M/msaNJmbCWs/KAFykTU2eBeWq7BduaxdUhC8djMtKkdgOnjp5
         ghI35Xrt9yL6It2KtkwAuK+/pk3jiVa+bh3LjK+rGUrbHDSAYAna50nInS9NSph3ZROD
         O6DqNZwiDtb1B8aH/udPqZBAnsyqPuM9+aT5BEgNsIiAM1a+zX92QF8tRrb5kCd7WTL1
         Rmyw==
X-Forwarded-Encrypted: i=1; AJvYcCWLv8KIW0rjcUV7WHRPXsWMiwBZEwpaMSzHG5hrUD3HYc4CaDL2rteXorD9ky4WpCHwV2+eW4ANBp65@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7kuOwnXXWhPTqxDWSKOn4QfwQoRRVIS6LESgxMVJzQD2hIFLA
	16zo6FJLau1nwobHKR+iLWO6OZjG+BTyAignSTWgFmQ8MBXwQK5OGOC4svTzLfAXsILUmW242Vx
	gOcMWTKi0SuGbeQTIDkt3NZ69AmUXb3Kl1Kam8oBdRIOBQvLtEcysgLpowQhRqEw=
X-Gm-Gg: AZuq6aJoMOKIOyAKJ8MkGtN1Zw9/AJ1Lo9JpnUQG+fGC4np2c7TGIuwKvUt8fCQnKLx
	9qAOIPZqAH2OmOMhZ7LNgKW+L+AvW9Q9RxjDP9d0OUBU+JS7UmfWrVLzGCaHajtI8QwGbc8y2y9
	RrT26YeDv4FJWq74ajsOv5h5mofa6KBs7UhFQiuF6RBBAHDoLaYZ5h2RpEi1JKt26Emop9QK7F7
	61M7uWjQ0lsiuZnkId+dWGYQHGATy/qGaTCl7McOxyeXf/oaMs5PUZKjnVHlunS2GenlNzmKP2T
	O6GfQnmDtEFstC1vO3dA2RD34OO0lU2x0dQR2MCttatTaeinx70/5tfJ7nROuiD3uzPdWnVoaw=
	=
X-Received: by 2002:a05:6000:26cf:b0:435:95dc:b8ca with SMTP id ffacd0b85a97d-43958e4c9a0mr1686371f8f.40.1771404955682;
        Wed, 18 Feb 2026 00:55:55 -0800 (PST)
X-Received: by 2002:a05:6000:26cf:b0:435:95dc:b8ca with SMTP id ffacd0b85a97d-43958e4c9a0mr1686327f8f.40.1771404955056;
        Wed, 18 Feb 2026 00:55:55 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac8209sm41853724f8f.30.2026.02.18.00.55.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 00:55:54 -0800 (PST)
Date: Wed, 18 Feb 2026 09:55:53 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Thierry Reding <thierry.reding@kernel.org>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, 
	John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, 
	Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, 
	Mike Rapoport <rppt@kernel.org>, Sumit Garg <sumit.garg@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
Subject: Re: [PATCH v2 04/10] mm/cma: Allow dynamically creating CMA areas
Message-ID: <20260218-lean-faithful-beaver-2efd77@houat>
References: <20260122161009.3865888-1-thierry.reding@kernel.org>
 <20260122161009.3865888-5-thierry.reding@kernel.org>
 <20260123-active-witty-rabbit-0fc5b9@houat>
 <aY3j57xvdOY09EwQ@orome>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="sfzhuutowl7gwtka"
Content-Disposition: inline
In-Reply-To: <aY3j57xvdOY09EwQ@orome>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266326-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linaro.org,kernel.org,collabora.com,arm.com,google.com,linux-foundation.org,redhat.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,kvack.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B5AA41545EA
X-Rspamd-Action: no action


--sfzhuutowl7gwtka
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 04/10] mm/cma: Allow dynamically creating CMA areas
MIME-Version: 1.0

On Thu, Feb 12, 2026 at 03:44:11PM +0100, Thierry Reding wrote:
> On Fri, Jan 23, 2026 at 02:25:16PM +0100, Maxime Ripard wrote:
> > On Thu, Jan 22, 2026 at 05:10:03PM +0100, Thierry Reding wrote:
> > > From: Thierry Reding <treding@nvidia.com>
> > >=20
> > > There is no technical reason why there should be a limited number of =
CMA
> > > regions, so extract some code into helpers and use them to create ext=
ra
> > > functions (cma_create() and cma_free()) that allow creating and freei=
ng,
> > > respectively, CMA regions dynamically at runtime.
> > >=20
> > > The static array of CMA areas cannot be replaced by dynamically creat=
ed
> > > areas because for many of them, allocation must not fail and some cas=
es
> > > may need to initialize them before the slab allocator is even availab=
le.
> > > To account for this, keep these "early" areas in a separate list and
> > > track the dynamic areas in a separate list.
> > >=20
> > > Signed-off-by: Thierry Reding <treding@nvidia.com>
> >=20
> > AFAIU, this won't create a new cma heap when registering. This goes
> > against the recent work we did to create one for every cma region.
> >=20
> > I guess, since you have a driver that would explicitly handle that
> > region, we should create some kind of opt-out mechanism, but by default,
> > we should still create such a heap.
>=20
> It sounds like there's a bit of a conflict between what you want to
> achieve and what this series attempts to do.

It's not ongoing really, it's part of 6.19.

> The way I see it, the CMA code is more of a helper that gives you a
> specific functionality set. Exposing each CMA area as a heap that
> userspace can allocate from seems like a bad idea to me.
>
> Without knowing anything specific about a CMA area you don't know if it
> makes sense to expose it as a heap. Given that there is very little
> information associated with a CMA area there's only so much guessing
> that you can do. I think it'd be more sensible to make CMA areas opt-in
> to have a heap created for them rather than requiring opt-out. Exposing
> a heap publicly applies only to a (potentially) small subset of all CMA
> areas, albeit at the moment it may seem that that is what it's primarily
> used for.

Do you have any specific example in mind except for that driver?

So, the reason why we did that was, mostly, to allow proper cgroup
memory accounting through dmem. In order to enable it in DRM and v4l2,
it was agreed upon that we would switch the use of dma_alloc_* to rely
on the heaps instead, where the memory accounting is greatly simplified.

So we want any reserved memory region a device can allocate from to have
a heap.

So I do think we need the call to register a heap in rmem_cma_setup.

That being said...

> In fact, for this particular driver nobody must allocate from any of the
> CMA regions associated with the heap driver outside of that heap driver,
> simply because the heap driver maintains meta data about these CMA
> regions for things to work. If we allow access to it from anywhere,
> things are eventually going to explode.

=2E.. I also agree that having it in dma_contiguous_reserve() might be
overdoing it, and I assume it would solve the issue with your driver?

> > That being said, it's not clear to me why the heap driver uses CMA in
> > the first place.
>=20
> We use CMA as a way of reclaiming memory if needed. The heap that we
> create is meant to be resizable, so that when nothing uses the heap, the
> memory can be reused for other purposes. However, when memory is
> allocated from the heap, we need to reclaim that memory for the heap and
> relocate any buffers allocated from the region somewhere else. CMA does
> all of that for us, so it seemed like the logical choice for this.

Ack, thanks!
Maxime

--sfzhuutowl7gwtka
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaZV+lAAKCRAnX84Zoj2+
dlYJAYC4+jPKHkn42l5qLnxTY3EvbGxcZHDH6RVzs/0th5A4+2dTD8lM8sIBBgPj
qui+8ooBf0t6WS1apZEC3zF8JlGWCr77XkBnVp5ZaozpXhqmNBMCQy7tm7z3cF/c
XrmTT30Bzg==
=yW5/
-----END PGP SIGNATURE-----

--sfzhuutowl7gwtka--


