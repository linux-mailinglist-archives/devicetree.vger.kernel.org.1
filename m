Return-Path: <devicetree+bounces-258944-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLRSDfZ3c2kfwAAAu9opvQ
	(envelope-from <devicetree+bounces-258944-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:30:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DE38076443
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:30:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4D6733002D39
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:30:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7D7E280037;
	Fri, 23 Jan 2026 13:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="CYZlga9M";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="Xc4UvFvn"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B2926ED33
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 13:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769175021; cv=none; b=X5uICPKXEaA9z7/kku20jZ8MqgqSE6/9Gqd2iAOXWqeA97mFU/70D9lpgHVU57gvjuhzdMSfionad71rHOUsYPqXXuAhuPPDOeGco9yTNDOd797inUpmkVXpbpYMQhR0BT21pfniGaSIoYH5VdBGSphCPzGizKqSAe2zg/Vr4XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769175021; c=relaxed/simple;
	bh=q7Dwu+CNXtg5bTxCbEyb6A4+Vw/Acc988cNs3Meb1J8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OLPs2PBRHm26fKB4aj5uyqb8fL3FwF1bXDkyxGSw+dympsy+2NTbl2YV1evTDkDyP0RaLCFldHd37EY+br8RCz+GkGwaEHpVhbESNCE/94Wqvk5EMik0ggZKmme8DlyQmYXSo/cXL00Qc7IlImYrU7jIwMOQI2UGcNUJvmP6uqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=CYZlga9M; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=Xc4UvFvn; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1769175019;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=q7Dwu+CNXtg5bTxCbEyb6A4+Vw/Acc988cNs3Meb1J8=;
	b=CYZlga9Mf0vKluuPkLAOTVDehTLUOTQMqqztMPLb9XEtfIaRlV24a64MpWuoTqxwDj5f6e
	2hQji93YyQzbI3YUR2BbmuoKdPYKfAJhFNREtOIWfTE849y3u5ToXQRA163nJuiUI8D87I
	ylnXU1o/MXu0cGmVWp9Gn3Midd8Bq3s=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-9-s6GxUF5cM7urHcq_561Bxg-1; Fri, 23 Jan 2026 08:30:17 -0500
X-MC-Unique: s6GxUF5cM7urHcq_561Bxg-1
X-Mimecast-MFC-AGG-ID: s6GxUF5cM7urHcq_561Bxg_1769175017
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-4779ecc3cc8so17778905e9.3
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:30:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1769175016; x=1769779816; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q7Dwu+CNXtg5bTxCbEyb6A4+Vw/Acc988cNs3Meb1J8=;
        b=Xc4UvFvnVu9INXyCEvv+keBPFSSaDKE+7js9Gqy43m2xOUyy9TfAb3kKBep6M/AEMj
         AfUtO6snIjdPpWUZ5uPQ64c0zTC//vRs8T1Dg6PEIcUPtdvEYnTJx+bFKNRi+N9uVd/1
         ydpCPj2krpzNgTCk/G/NqHnCrASzGtFXLEFI5cSQK1rj05Zt+sQ9hhsyiyTFxGZdctTC
         8A3oCl84CJSWsfm/BHfEzaLU28amMhDoX3S9lIy2GUJtK1gjqfMvKRaJWsjg0LsHLvsV
         dHbRmx+y58qkp1HyNAPCxMasT7iaVTA0O6hsLcVY8S8I9SU9AphtJky4/1G6t/4DSY81
         TjFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769175016; x=1769779816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q7Dwu+CNXtg5bTxCbEyb6A4+Vw/Acc988cNs3Meb1J8=;
        b=dYmQ04ndovF4s64S23KZMoHYPtmOj1oEa/IGw3h1sNpJlRi99mwtAIxej7db952t9f
         IK1komEPZfe1KMMQ/P7r8ps+/xMNzh1KBBZfkeYT9uVfmnQKj0FnTM9ot6tH+87JJV0k
         dZnyiTvoAhF0sT2iZjKlp4aOo2h06FqJr7d/lPlY7oDdsZkqgnVwWi6g1CYNo5j0vd3F
         L1aP+yC+KbGoU32xKh5H2IpZTzxzwI3iB0GuQDHUb17SQ7CzvGBOGzAWWvWh7UPgEQzl
         NdmyjFpA/gwmjYv687EKvSlOaXS//dVup+0Ri+kBBCOt6CjUxVfqKNA9DqmPFjvEcse2
         hG2g==
X-Forwarded-Encrypted: i=1; AJvYcCUr+knqysbxO64uhPxc47OTgLqwNGlWAibZQ/ngCb5KFPLaJUS8VAoqJt347BP+5tinFTOgCCkfB/Aa@vger.kernel.org
X-Gm-Message-State: AOJu0YxXta4WbwRG1dLoPtc9M0gt+hH7ikZCNzWHw+MvB4vcsJiWrUeP
	Ruaj4Q7Mb3c/qW6O5w/tW66lGA1oN/b+AYtw4las6ftYk892UyqxQypHSRfhS60r8Vu1W84S6DO
	sbn9HfvibusiSBJbdSlFzTnJRb3BKh2C9iQ/O7ohTKIXsOXBAdInqWrSxqdhZG+s=
X-Gm-Gg: AZuq6aKGI1YwlSOnPuRtdnzPXHNR7lyelxM/tUivS0uBNtEdvJc7+3u8qa1gOZ44OdX
	QRfa3B9lnHlEQHwI6sNndi0Ce/1qSoXbyTPlKfZl0nk2VM+Ipza7XEejGLe20JtsSaOO3y3M0nb
	DP5wrxVtwhOb/Dz3ZGRoUvsZECIee9qdt0zRZZWMgF5IJXnUYm1N7BOnA9tIbTL5AbkeKZ4A8hf
	kn+4trk54sJRQ44Z+9+3YdvVoGEFlLx9GNxZ5tq974agZIKQLKUOaCeXStwzly1tmtWrCN7jz0g
	vMn0J9SibfPBQmpUsmkAoDfdb/7+OeGHr9mZV9LMY0OECx911xLxhd/7m/Az4Q==
X-Received: by 2002:a05:600c:310b:b0:47d:73a4:45a7 with SMTP id 5b1f17b1804b1-4804c9b4d0dmr52292865e9.24.1769175016393;
        Fri, 23 Jan 2026 05:30:16 -0800 (PST)
X-Received: by 2002:a05:600c:310b:b0:47d:73a4:45a7 with SMTP id 5b1f17b1804b1-4804c9b4d0dmr52291525e9.24.1769175015283;
        Fri, 23 Jan 2026 05:30:15 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804db63817sm22696555e9.3.2026.01.23.05.30.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 05:30:14 -0800 (PST)
Date: Fri, 23 Jan 2026 14:30:14 +0100
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
Subject: Re: [PATCH v2 06/10] dma-buf: heaps: Add support for Tegra VPR
Message-ID: <20260123-meteoric-butterfly-of-imagination-fd691f@houat>
References: <20260122161009.3865888-1-thierry.reding@kernel.org>
 <20260122161009.3865888-7-thierry.reding@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="xayh7cobbiwzraak"
Content-Disposition: inline
In-Reply-To: <20260122161009.3865888-7-thierry.reding@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258944-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linaro.org,kernel.org,collabora.com,arm.com,google.com,linux-foundation.org,redhat.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,kvack.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,nvidia.com:email]
X-Rspamd-Queue-Id: DE38076443
X-Rspamd-Action: no action


--xayh7cobbiwzraak
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 06/10] dma-buf: heaps: Add support for Tegra VPR
MIME-Version: 1.0

Hi,

On Thu, Jan 22, 2026 at 05:10:05PM +0100, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
>=20
> NVIDIA Tegra SoCs commonly define a Video-Protection-Region, which is a
> region of memory dedicated to content-protected video decode and
> playback. This memory cannot be accessed by the CPU and only certain
> hardware devices have access to it.
>=20
> Expose the VPR as a DMA heap so that applications and drivers can
> allocate buffers from this region for use-cases that require this kind
> of protected memory.
>=20
> VPR has a few very critical peculiarities. First, it must be a single
> contiguous region of memory (there is a single pair of registers that
> set the base address and size of the region), which is configured by
> calling back into the secure monitor. The memory region also needs to
> quite large for some use-cases because it needs to fit multiple video
> frames (8K video should be supported), so VPR sizes of ~2 GiB are
> expected. However, some devices cannot afford to reserve this amount
> of memory for a particular use-case, and therefore the VPR must be
> resizable.
>=20
> Unfortunately, resizing the VPR is slightly tricky because the GPU found
> on Tegra SoCs must be in reset during the VPR resize operation. This is
> currently implemented by freezing all userspace processes and calling
> invoking the GPU's freeze() implementation, resizing and the thawing the
> GPU and userspace processes. This is quite heavy-handed, so eventually
> it might be better to implement thawing/freezing in the GPU driver in
> such a way that they block accesses to the GPU so that the VPR resize
> operation can happen without suspending all userspace.
>=20
> In order to balance the memory usage versus the amount of resizing that
> needs to happen, the VPR is divided into multiple chunks. Each chunk is
> implemented as a CMA area that is completely allocated on first use to
> guarantee the contiguity of the VPR. Once all buffers from a chunk have
> been freed, the CMA area is deallocated and the memory returned to the
> system.
>=20
> Signed-off-by: Thierry Reding <treding@nvidia.com>

Aside from the discussion on CMA, it doesn't look like the heap defines
anywhere the attributes of the allocated buffers this heap provides.

Maxime

--xayh7cobbiwzraak
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaXN35QAKCRAnX84Zoj2+
di8FAYCOkztgtjE43ySzEaa0yAsqQduekc23hd1d+jt1Rs7EtiAvzP+ciybiSQwk
DUzYoicBgP4Oh3gf3t211CT8YUccPrYQrrNg2xkUvpgMi28C/P9/n1V75W2MOChK
DyngiCfqgA==
=4Im3
-----END PGP SIGNATURE-----

--xayh7cobbiwzraak--


