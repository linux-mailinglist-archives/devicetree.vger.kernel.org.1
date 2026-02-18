Return-Path: <devicetree+bounces-266338-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GLxLJaJlWnqSAIAu9opvQ
	(envelope-from <devicetree+bounces-266338-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:42:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58303154CE0
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:42:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5FFAE300DDD3
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 09:42:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2E7733CEB4;
	Wed, 18 Feb 2026 09:42:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="OTqWQ7mG";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="eXMGsFTv"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A23A42367D9
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 09:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771407752; cv=none; b=Gx8qo2xoQY7pYZDOMhvaSbVwzdmXr2gVrLZ14TcPLogna85OheCbBRAunbtJKL7ltjCVU/pgEDhpfeCQ+keXfHdw5Yi+epnjVfCr7r3BZEpBcCiRR9Aj1Wgv3mhAKypLw4RhNFMtahg55fCoMc8lG091WZaG/YCD034pGfBgR8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771407752; c=relaxed/simple;
	bh=pbLBL9om1fu4jfoAPaZMybNUHZLF4uVBzJp7dWB+x3o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KVAmLvLOHL754EeDZtRwU08LF5v9EAKExZFCv7g7J/+GCmEq67iXhVN5eHLNX66iQygF18JX3XmXM51C+CBquhJPkzxwdnM4oSFzz0e5QomOZyJ6xMXKp/lUoYOU43YE1U/5cIwKD/4dl8GZOXD44T/Wu+d4ZgDYfyzEdc9XP5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=OTqWQ7mG; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=eXMGsFTv; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771407749;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pbLBL9om1fu4jfoAPaZMybNUHZLF4uVBzJp7dWB+x3o=;
	b=OTqWQ7mGmF0rRm3MLncG0qpaj/kNJJjhMuq5u12bTKA+4JaYSC8HO1cMYAfkJIjVceB1uj
	qIE4q5t/DJEuFy0IvkMY03CqrfZVVLN1LK+o/InGGUGQKF8/SIF3mq01VO/+1FBS6qcmSd
	G83V74n/8b3h0gCyDfgYCFQrJ2nT8V4=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-618-2RoTmYcgP42SCkZY1xadDA-1; Wed, 18 Feb 2026 04:42:26 -0500
X-MC-Unique: 2RoTmYcgP42SCkZY1xadDA-1
X-Mimecast-MFC-AGG-ID: 2RoTmYcgP42SCkZY1xadDA_1771407745
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-48069a43217so50489075e9.1
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 01:42:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1771407745; x=1772012545; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pbLBL9om1fu4jfoAPaZMybNUHZLF4uVBzJp7dWB+x3o=;
        b=eXMGsFTvCKr5A05dlu+2cw4o+7Ny2CHRrGPJFvKPRcaBxJqT90c4+EUymhqSY9ZaLW
         rKWTuwN0ENv9I/T6GYhsNcgkrh/yS1xgJkEOJWgHvOPV73hjYkk4Uqv1n7kcULR0HgTH
         V7+4Wfbn4T8ZkyAxoAfwHKtawc9Su36hdqNbta2fzxvMxgpUdOEtvF6SZapCOinhdO+V
         BK7Ch04QBR7I1qIUwE15v0SVjSRXK2d2R8UGlHnIbN3lfcPHfy5jOi7Vw3OrfzNFJxKh
         BvxgachSOTAFpM6+asfE7inRL90swszrAcj1lCfxTT4c/s1eDVTG8/xV7JKFhW3J3h58
         2FmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771407745; x=1772012545;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pbLBL9om1fu4jfoAPaZMybNUHZLF4uVBzJp7dWB+x3o=;
        b=Zas5LjxZ8RDUg+7L4RkpaqPyQHRP52WuIeOSJ9WlvBEvcMTj6PwaujZFTdHwOrJ9zt
         IxO79lmyxUGys1N0EyEzQFEmBTugtu31pQRdIozI0dr6BM1Ux/OUMGUUFXaNPFs8BhZN
         TN8rf7wnRqO+NJRwZTAv7lZL/jq/jaGsK86Iq/MNR+LkvJ1EcyobVq63TTUyPP/QG5LD
         yfNdGtIrTAmrHt6O+99Eu88kHGySonGOWRqXcnWdW6HB7HRam+nJYhvdOudC+06HtKMf
         j6CJzysbqM1pR5olBBfJA6EiHBN5MCaLN5wbHGbYGQdsFnIHPJ7NUiWBxNpXGEHJnljL
         uZlw==
X-Forwarded-Encrypted: i=1; AJvYcCWMv3aL4ljUVNMBZdFX+TY9l6nN8XpnMXLtOu8bU23aTFJYBZBUIngwGPTzgVXxBBz6Co9omk880nvn@vger.kernel.org
X-Gm-Message-State: AOJu0YyAMusqWOliPxOml/qol/VQxfTbFNy48gH6j88NBStBCkXhJDvs
	AneFJr8+IEuJQbEh0Q9pIrcmAK2KCiH4Ip7ie3Ca8398aBVtyiQcr1tErAW9GrUwd54SfKQ5yQ0
	jVzoeemp+R6ABDSUtS7FtNlmXWPxEyDuilpLWjfLccE6IIteQchaNmVkURrN1Jxw=
X-Gm-Gg: AZuq6aJyoiCrgwJkbKgI0h9+sZKfYAwsy5+noLZ0d/hl/YxVdOcEXV57z13c3qqWjh+
	I0V9G5fw/e//N8hqfZm8RT2aLtudRdprNIh6V9b+KGRB8dONtzwHJhOcBZ8SnrpkKYLJ3rLuE/y
	X1XlS7yJv7/byIVKArPJ1EqDohH+bpvtWyuvD+hT6b4F8v7gAn86rLxHtpDcWy42Njn6kZUI80N
	SL19TaBTQwWvnE/4Key0WVEGZ8QjquVA8b1oVHzura9Ufu+JuZFtSoyoVJyzzJskHJTnARuU9W/
	yAp33Zh6BdkEKW2dLWgae6oHZO9dx7O1AIt3u6+JG5nbzig9/rOBLmO6nwwkb8A9hQOpBJ3MMw=
	=
X-Received: by 2002:a05:600c:528f:b0:483:702f:4641 with SMTP id 5b1f17b1804b1-48379b8c45fmr250986205e9.3.1771407744691;
        Wed, 18 Feb 2026 01:42:24 -0800 (PST)
X-Received: by 2002:a05:600c:528f:b0:483:702f:4641 with SMTP id 5b1f17b1804b1-48379b8c45fmr250985705e9.3.1771407744101;
        Wed, 18 Feb 2026 01:42:24 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4836ff00332sm354774195e9.2.2026.02.18.01.42.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 01:42:23 -0800 (PST)
Date: Wed, 18 Feb 2026 10:42:22 +0100
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
Message-ID: <20260218-voracious-orchid-malamute-febce0@houat>
References: <20260122161009.3865888-1-thierry.reding@kernel.org>
 <20260122161009.3865888-7-thierry.reding@kernel.org>
 <20260123-meteoric-butterfly-of-imagination-fd691f@houat>
 <aY3nov29aBGWw93Y@orome>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="4auwmrzja7jm6td5"
Content-Disposition: inline
In-Reply-To: <aY3nov29aBGWw93Y@orome>
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
	TAGGED_FROM(0.00)[bounces-266338-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 58303154CE0
X-Rspamd-Action: no action


--4auwmrzja7jm6td5
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 06/10] dma-buf: heaps: Add support for Tegra VPR
MIME-Version: 1.0

On Thu, Feb 12, 2026 at 03:50:09PM +0100, Thierry Reding wrote:
> On Fri, Jan 23, 2026 at 02:30:14PM +0100, Maxime Ripard wrote:
> > Hi,
> >=20
> > On Thu, Jan 22, 2026 at 05:10:05PM +0100, Thierry Reding wrote:
> > > From: Thierry Reding <treding@nvidia.com>
> > >=20
> > > NVIDIA Tegra SoCs commonly define a Video-Protection-Region, which is=
 a
> > > region of memory dedicated to content-protected video decode and
> > > playback. This memory cannot be accessed by the CPU and only certain
> > > hardware devices have access to it.
> > >=20
> > > Expose the VPR as a DMA heap so that applications and drivers can
> > > allocate buffers from this region for use-cases that require this kind
> > > of protected memory.
> > >=20
> > > VPR has a few very critical peculiarities. First, it must be a single
> > > contiguous region of memory (there is a single pair of registers that
> > > set the base address and size of the region), which is configured by
> > > calling back into the secure monitor. The memory region also needs to
> > > quite large for some use-cases because it needs to fit multiple video
> > > frames (8K video should be supported), so VPR sizes of ~2 GiB are
> > > expected. However, some devices cannot afford to reserve this amount
> > > of memory for a particular use-case, and therefore the VPR must be
> > > resizable.
> > >=20
> > > Unfortunately, resizing the VPR is slightly tricky because the GPU fo=
und
> > > on Tegra SoCs must be in reset during the VPR resize operation. This =
is
> > > currently implemented by freezing all userspace processes and calling
> > > invoking the GPU's freeze() implementation, resizing and the thawing =
the
> > > GPU and userspace processes. This is quite heavy-handed, so eventually
> > > it might be better to implement thawing/freezing in the GPU driver in
> > > such a way that they block accesses to the GPU so that the VPR resize
> > > operation can happen without suspending all userspace.
> > >=20
> > > In order to balance the memory usage versus the amount of resizing th=
at
> > > needs to happen, the VPR is divided into multiple chunks. Each chunk =
is
> > > implemented as a CMA area that is completely allocated on first use to
> > > guarantee the contiguity of the VPR. Once all buffers from a chunk ha=
ve
> > > been freed, the CMA area is deallocated and the memory returned to the
> > > system.
> > >=20
> > > Signed-off-by: Thierry Reding <treding@nvidia.com>
> >=20
> > Aside from the discussion on CMA, it doesn't look like the heap defines
> > anywhere the attributes of the allocated buffers this heap provides.
>=20
> Attributes like what? Where would you expect the driver to define this?
> I don't see anything in struct drm_heap_export_info that sounds like
> what you expect, nor does the allocation ABI provide any means of
> reporting attributes.
>=20
> There's also not a whole lot to this, other than that the memory
> allocated by this can't be accessed by anything other than a select set
> of devices. You can't have any CPU access to these buffers (the hardware
> will refuse to let the CPU read from this memory) either, which is
> hinted at by the fact that no mmap() operations are allowed.
>=20
> Can you elaborate what you're looking for?

Are the buffers you're getting when allocating cacheable? uncacheable?
mappable? physically or virtually contiguous? etc.

See
https://docs.kernel.org/userspace-api/dma-buf-heaps.html#heaps

Maxime

--4auwmrzja7jm6td5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaZWJdwAKCRAnX84Zoj2+
duX+AYCJXsCjOrlEdYQB6RhYNSa4Pv3CLkFQFr1nVSSBelNLtgkkxbQHuCJrRHFs
/M4ii7YBgMXgh8YAl2SPDy/1KeWGMmlbxnWoeLENw02uUWqVixSx2Xv05JLfe8V/
j/WNZ8aHOg==
=vKsS
-----END PGP SIGNATURE-----

--4auwmrzja7jm6td5--


