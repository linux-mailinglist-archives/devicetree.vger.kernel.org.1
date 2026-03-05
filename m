Return-Path: <devicetree+bounces-271560-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAgOItx8qWkg8gAAu9opvQ
	(envelope-from <devicetree+bounces-271560-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 13:53:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC3F212265
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 13:53:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C32830B3BC9
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 12:50:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F6D83A0B13;
	Thu,  5 Mar 2026 12:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="hAk8h0LN";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="nR/IqVkQ"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 809CB39E19D
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 12:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=170.10.129.124
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772715056; cv=pass; b=kXFSwCOrbROZAOtruqQAZDs04nLN5RNoDE+q7sm+V9MYf9Nx6Sif9cLYp8Qe84NA7ZEuCpzGLxopd8TYJ279WJp5qxZgncMEMpmyxHlAP9Yfd+cQRgmoNXAdgnTvMTwCPilWHjzLRHNyXSE71Pcc5uXWKVjyooLQWGpQczkPdkg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772715056; c=relaxed/simple;
	bh=/PAlgOnQ/jejanH9Gll9iSda9UAkKTHJRugY2qJVQ+I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qofRAqqyxsVLRjDkWRqcE7vdbLlSeDiu/x0ECwIVRrKuJznKadM7ehFRbUqxxzNKLoMgywO999YF53uyOWS/89lolc9L39Nq3yzjqXEUIO7v9NZuqsTYJ28vjOa5u6BmV+A8tH9DNK4aVbUiAVWuu4flIfvtm0clEa3KJyYJEso=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=hAk8h0LN; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=nR/IqVkQ; arc=pass smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772715052;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mGQD+cOc++KkO42kzws1oQJrJ/tIu6r6dd9H8Ca4j6g=;
	b=hAk8h0LN1V0U9yxkzJ64iijEr3Vw7dbSm9mD5x6VgyaR5GJecl2OQRp46BTHUmHMLhtHup
	MGQ36vBmlTDnTWlmhImYdOfoGri6MB8+Oa5iVBFgIRgmZ7X1iapVuQU2lCuVJ3aMctWr38
	63aNhNxUoYbpIsooUPszFdzBvwY3alU=
Received: from mail-yx1-f70.google.com (mail-yx1-f70.google.com
 [74.125.224.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-345-V387BB9XMpKq8PomhA802A-1; Thu, 05 Mar 2026 07:50:51 -0500
X-MC-Unique: V387BB9XMpKq8PomhA802A-1
X-Mimecast-MFC-AGG-ID: V387BB9XMpKq8PomhA802A_1772715051
Received: by mail-yx1-f70.google.com with SMTP id 956f58d0204a3-649f0d26e5eso10658124d50.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 04:50:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772715051; cv=none;
        d=google.com; s=arc-20240605;
        b=giZmPtv6fzMHMSLdwn5YM6IgZsm5OLZUlCY5cdhV/aoRd3JMB1QAqOBngIX6oi8SSm
         MaShr9leg1vDkQJdW/Y/PS+6sVIWbZiq7lOEM8dlBKFtNBG+L7V8nO1swYwLjf5KGvR6
         uKSAwbS6sBGrom0L95Iw7XLlLH7j2aWI7850bhPEUAS2fgBPxvsTbUUT+Rk8v7yXcRuT
         EGs4OkOavQ/HDEjkCZSBfkVnUYPZGlnVoliB6djzzK2gg68WHCZRDL/VeSCp4wzH6fUR
         VYnoSLWozBPPDb4CusXmmjI5jxKB8O0J2EcXeZdGFpgMWWLa5XwkuscPrIeA2YRqTevI
         S34g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=mGQD+cOc++KkO42kzws1oQJrJ/tIu6r6dd9H8Ca4j6g=;
        fh=z3mTG3bd1Bko5YvzZ5dJSGamUPy8+mVymZL6jJxDU5E=;
        b=lKmYqoGUgAY2dlJWEuMDHE4NYdmFbT5R+i0hi1ZdUTilFZHWmSRgCW4yLG345N2acD
         d321ufjw7PZF4i0O2CMP9Jhesl3yPB9CF3hCf0If+2sY4W35VhFyU+vFcdRLIVljK/bX
         vd7WKiUKNh8ODO+pQf+Numl9wNgAgZcC5MInzMkBbp2opjwv06nheohOFtaDxB7H5iOs
         DKn8JuEewhR9Z64wLEkIq9ODH1UWVHD98sjGFucBO2+C+qX5NLvVTRppWCYAiB3HGd4l
         gTCuxyfiVDB+r70Ee6FhjYMB/JQns+kZxZ5tsfdvjTLkNlR9Aa9ZhbvBY6wu6EwLyu2d
         0qrA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1772715051; x=1773319851; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mGQD+cOc++KkO42kzws1oQJrJ/tIu6r6dd9H8Ca4j6g=;
        b=nR/IqVkQ9wq40UxOS7oo6W9yaAQZ1E0yAoQpq6gh71RoQVNkmwCAbCYqlmulVeYR22
         4kN66xfQP9vtptiphOKXJRmlPS9AO0tDo8PlFYxbNMBmGqioE1gCbyAAzW2+MJtdcafT
         IWwvPsrERf+AiFkK6j5EHcyENIiIwtb9+UmqMBcnBUxVQMTkgLEcZZvFH83g49vPPg6b
         nok8ACYnfhC06C1hPAANFUjg4R52WrEIKcVJTL5TqyVmmvwzsxcJONgmLRLxY/NVmEsp
         bLXskxF/+h8839QFVvgTE0prTThAdNDP2Fi9X33mUJWKpZQuZ+LykLzdYw+vEPwFcvvy
         Y4cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772715051; x=1773319851;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mGQD+cOc++KkO42kzws1oQJrJ/tIu6r6dd9H8Ca4j6g=;
        b=xH0a1nP369f70MNc/bMj6e9SvLUsFlle/FVY8Oi027mVGxvHS5peH1RA2SYdN+/cF7
         Mz5Kck6WRdM+HV9YTl7uQ+5O/g9Ztsreiobj07fm/Y0dw3Hq5T42GFl/Ue0upZv2g4pq
         NbtSszmb20q5X0Eg34ZUyhP12MH1ku18FH1ZnQTyessnl0v0gXrPZifqurOPfF3SflUa
         2gWr7vqiGvu9FHV/crsDIHxwydlgwu3oRhIQLMlrIKz56tYA0pzTvxNbT0PiMtfDndtZ
         /U4JuWEvh5uMqVPGFbXJI/GZtYG3my7TzbgUa292MgE8uc+JfuGMQJHmQ5LClqnUZgQ7
         JQ5A==
X-Forwarded-Encrypted: i=1; AJvYcCVjPZaDjcpsmjQegtC+NmE1BRC3fgNLKRvuscAPaZbDYED1CZsxVc9B7qnpcLoG6McTLBbXzPcTZGAa@vger.kernel.org
X-Gm-Message-State: AOJu0YwDhEpKTSqFefP2zz2dnBWwsXOlRgL8eUHG5ZhBUpOavNGmpOdq
	kiiBz4J/5L5q0KN27Imr0F/GTRO5cByxquec7fzNsRSS7NA+zxsYkpyU1JHkT925mduQ2cKVQOk
	QPEb3KHWaW7ifMnCVlaJ81mJyQRmKlw6EA2MAECXxHP+BtwgbvenJDNu2T7JAbu1n1LsTvhmPg4
	4rhTF+2AhGzVj5KpsuxGHYuAY9F28UzndSvJ9Oxw==
X-Gm-Gg: ATEYQzxL5KDhuo3QwI7jKr5Scod5QN/ppiq9B+OAPFR7/h7NLg65xgDrKJYbYCyUNhn
	7s9Oz0Xfm6xzf6TZvogpt2hUBgMOORQyseKH/SIlSo2V4iwnXhsZNFj8Jr4z38KpZqGJ0wJ8WrZ
	9kLvOip6OWB4jsyRIcuSAT7HNfpEMx8IvWjbrPFGnLlirIe7j5XTJJPOdXYFwc8pJOhA8F8ppz1
	g==
X-Received: by 2002:a05:690e:b4d:b0:64c:e7a0:7eb8 with SMTP id 956f58d0204a3-64cf9b4e46dmr4272156d50.24.1772715050837;
        Thu, 05 Mar 2026 04:50:50 -0800 (PST)
X-Received: by 2002:a05:690e:b4d:b0:64c:e7a0:7eb8 with SMTP id
 956f58d0204a3-64cf9b4e46dmr4272126d50.24.1772715050349; Thu, 05 Mar 2026
 04:50:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260303-b4-dmabuf-heap-coherent-rmem-v2-0-65a4653b3378@redhat.com>
 <20260303-b4-dmabuf-heap-coherent-rmem-v2-4-65a4653b3378@redhat.com>
 <20260303-rigorous-cow-of-saturation-23f87b@houat> <CADSE00+jCZSHi=OLbmOebBwnue5tjG7AFPKN76CbYDWYBcP+AA@mail.gmail.com>
 <20260305-antique-flying-gopher-4cbe34@houat>
In-Reply-To: <20260305-antique-flying-gopher-4cbe34@houat>
From: Albert Esteve <aesteve@redhat.com>
Date: Thu, 5 Mar 2026 13:50:39 +0100
X-Gm-Features: AaiRm520Qsz-JqgW5810FPhKu21ZofkmrOtPWlvIEAnCY9wjM-bxXO9YQ-thsLs
Message-ID: <CADSE00K2PnP-AwS3Ad3UCrQd_ZG7a1L70i1+6EdQsrg0QM3OSA@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] dma-buf: heaps: Add Coherent heap to dmabuf heaps
To: Maxime Ripard <mripard@redhat.com>
Cc: Sumit Semwal <sumit.semwal@linaro.org>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, 
	John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Robin Murphy <robin.murphy@arm.com>, 
	Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, 
	devicetree@vger.kernel.org, echanude@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: DAC3F212265
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271560-lists,devicetree=lfdr.de];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[redhat.com:+]
X-Rspamd-Action: no action

On Thu, Mar 5, 2026 at 1:30=E2=80=AFPM Maxime Ripard <mripard@redhat.com> w=
rote:
>
> On Tue, Mar 03, 2026 at 03:47:14PM +0100, Albert Esteve wrote:
> > On Tue, Mar 3, 2026 at 2:20=E2=80=AFPM Maxime Ripard <mripard@redhat.co=
m> wrote:
> > > On Tue, Mar 03, 2026 at 01:33:47PM +0100, Albert Esteve wrote:
> > > > Add a dma-buf heap for DT coherent reserved-memory
> > > > (i.e., 'shared-dma-pool' without 'reusable' property),
> > > > exposing one heap per region for userspace buffers.
> > > >
> > > > The heap binds the heap device to each memory region so
> > > > coherent allocations use the correct dev->dma_mem, and
> > > > it defers registration until module_init when normal
> > > > allocators are available.
> > > >
> > > > Signed-off-by: Albert Esteve <aesteve@redhat.com>
> > > > ---
> > > >  drivers/dma-buf/dma-heap.c            |   4 +-
> > > >  drivers/dma-buf/heaps/Kconfig         |   9 +
> > > >  drivers/dma-buf/heaps/Makefile        |   1 +
> > > >  drivers/dma-buf/heaps/coherent_heap.c | 426 ++++++++++++++++++++++=
++++++++++++
> > > >  include/linux/dma-heap.h              |  11 +
> > > >  include/linux/dma-map-ops.h           |   7 +
> > > >  6 files changed, 456 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.=
c
> > > > index 88189d4e48561..ba87e5ac16ae2 100644
> > > > --- a/drivers/dma-buf/dma-heap.c
> > > > +++ b/drivers/dma-buf/dma-heap.c
> > > > @@ -390,8 +390,8 @@ struct dma_heap *dma_heap_add(const struct dma_=
heap_export_info *exp_info)
> > > >
> > > >       heap =3D dma_heap_create(exp_info);
> > > >       if (IS_ERR(heap)) {
> > > > -             pr_err("dma_heap: failed to create heap (%d)\n", PTR_=
ERR(heap));
> > > > -             return PTR_ERR(heap);
> > > > +             pr_err("dma_heap: failed to create heap (%ld)\n", PTR=
_ERR(heap));
> > > > +             return ERR_CAST(heap);
> > >
> > > This looks unrelated and should possibly be squashed into the previou=
s
> > > patch that introduces dma_heap_create()?
> > >
> > > > +static int coherent_heap_init_dma_mask(struct device *dev)
> > > > +{
> > > > +     int ret;
> > > > +
> > > > +     ret =3D dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(64));
> > > > +     if (!ret)
> > > > +             return 0;
> > > > +
> > > > +     /* Fallback to 32-bit DMA mask */
> > > > +     return dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(32));
> > > > +}
> > >
> > > Why do you need to mess with the DMA mask? I'd expect that device to =
be
> > > able to access everything.
> >
> > When I tested I was getting: "reserved memory is beyond device's set
> > DMA address range", so I tested if it was fixed with
> > dma_coerce_mask_and_coherent() and/or dma_set_mask_coherent(). I did
> > not debug the value of coherent_dma_mask, but given the error I assume
> > it was not set properly? Ultimately, using the 64 bit mask fixed it,
> > and I added a 32-bit fallback to ensure support for 32-bit systems.
>
> So you don't need to handle the fallback because
> dma_coerce_mask_and_coherent will truncate the generated mask to
> dma_addr_t, which is 64bits on 64 bits platforms, and 32 bits on 32 bits
> platforms.
>
> https://elixir.bootlin.com/linux/v6.19.3/source/kernel/dma/mapping.c#L908

Good! I didn't realise that. I will remove it for the next revision.

>
> But I think my point was more than there's nothing specific to the
> coherent heap itself: the device allocated for the heap should have the
> right mask for any heap, so it's something I'd rather put in
> dma_heap_add.

That was my first take too. But when I checked, I did not see
dma_heap_add() doing anything to dev->coherent_dma_mask. So I assumed
the problem relates to the rmem being bound, which triggers the check
to ensure the memory pool is within boundaries. That's a specific
issue with the coherent heap, so it sounds like it would be better
handled here in the heap-specific code rather than in
`dma_heap_add()`, which would affect all the dmabuf heaps.

That being said, setting the mask is probably(?) harmless for the
other heaps anyway, so I would be fine with moving it -- to
dma_heap_create() to be more specific.

BR,
Albert.

>
> > > > +static int __coherent_heap_register(struct reserved_mem *rmem)
> > > > +{
> > > > +     struct dma_heap_export_info exp_info;
> > > > +     struct coherent_heap *coh_heap;
> > > > +     struct device *heap_dev;
> > > > +     int ret;
> > > > +
> > > > +     if (!rmem || !rmem->name)
> > > > +             return -EINVAL;
> > > > +
> > > > +     coh_heap =3D kzalloc_obj(*coh_heap);
> > > > +     if (!coh_heap)
> > > > +             return -ENOMEM;
> > > > +
> > > > +     coh_heap->rmem =3D rmem;
> > > > +     coh_heap->name =3D kstrdup(rmem->name, GFP_KERNEL);
> > > > +     if (!coh_heap->name) {
> > > > +             ret =3D -ENOMEM;
> > > > +             goto free_coherent_heap;
> > > > +     }
> > > > +
> > > > +     exp_info.name =3D coh_heap->name;
> > > > +     exp_info.ops =3D &coherent_heap_ops;
> > > > +     exp_info.priv =3D coh_heap;
> > > > +
> > > > +     coh_heap->heap =3D dma_heap_create(&exp_info);
> > > > +     if (IS_ERR(coh_heap->heap)) {
> > > > +             ret =3D PTR_ERR(coh_heap->heap);
> > > > +             goto free_name;
> > > > +     }
> > > > +
> > > > +     heap_dev =3D dma_heap_get_dev(coh_heap->heap);
> > > > +     ret =3D coherent_heap_init_dma_mask(heap_dev);
> > > > +     if (ret) {
> > > > +             pr_err("coherent_heap: failed to set DMA mask (%d)\n"=
, ret);
> > > > +             goto destroy_heap;
> > > > +     }
> > > > +
> > > > +     ret =3D of_reserved_mem_device_init_with_mem(heap_dev, rmem);
> > > > +     if (ret) {
> > > > +             pr_err("coherent_heap: failed to initialize memory (%=
d)\n", ret);
> > > > +             goto destroy_heap;
> > > > +     }
> > > > +
> > > > +     ret =3D dma_heap_register(coh_heap->heap);
> > > > +     if (ret) {
> > > > +             pr_err("coherent_heap: failed to register heap (%d)\n=
", ret);
> > > > +             goto destroy_heap;
> > > > +     }
> > >
> > > I guess it's more of a comment about your previous patch, but it's no=
t
> > > clear to me why you needed to split dma_heap_add into dma_heap_create=
 /
> > > _register. Can you expand a bit?
> >
> > So first I tried to just use dma_heap_add() and then use the heap_dev
> > afterward to call of_reserved_mem_device_init_with_mem(), but if that
> > call failed, the error path required some kind dma_heap_remove()
> > function as the heap was already registered by then.
> >
> > In the CMA heap for example, dma_heap_add() is invoked at the end of
> > the `init` function. Therefore, you do not have this issue, if it
> > failed it means the heap was not added and you just need to clean
> > everything else.
> >
> > However, performing a remove() does not sound like something that can
> > be done safely. I've spent some time thinking on alternatives, but
> > splitting felt the best pattern.
> >
> > This way I can:
> > 1. Create the device
> > 2. Call of_reserved_mem_device_init_with_mem
> > 3. Register the heap
> >
> > This places registration at the end, making every error path and
> > cleanup easy to handle.
> >
> > Also, the `dma_heap_add()` code already seemed to handle these two
> > parts/phases implicitly with device_create(), so splitting felt
> > architecturally sound.
>
> That makes sense, thanks!
>
> Maxime


