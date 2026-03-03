Return-Path: <devicetree+bounces-270570-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KsdEPv1pmmgawAAu9opvQ
	(envelope-from <devicetree+bounces-270570-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:53:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D141F1D3A
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:53:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D07C53078714
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 14:47:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75F3547D931;
	Tue,  3 Mar 2026 14:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="PFP3bTMS";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="AskVjbzh"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C14547D926
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 14:47:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=170.10.133.124
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772549251; cv=pass; b=VwRLOjztymcH3pucX2TTDL4lGUNWVt4QXYHv8BqvUjGltzNxEEIaWZ5zsF/2Uc5L1OqUu6EVyJsyeMHRfmuAn0CujmAcvmAVi1J/SEZylQmSTa7iQISJ+2JnhjXgf1i+UxGyLZAcZIVTIR81DLgwpK23qTxJhPylcjDksXX9/sQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772549251; c=relaxed/simple;
	bh=7MpbblFcPZi3wBjzTsxHXVpnWCSauFBEUdLtqyENUK4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JLj4TFzolPydBaxHsy71g1APB9vDNzdV0T3vi7yZSbgL2BIXsBonIvHy24h8bQaPA7qVSVLtteP2X3QzcxSh3HwYs60cE2RapHaYNIEoOtztz5cp5CUkJT+YyXqmBDzXnQ/1W1XOiFRoqwh9U1uvWWOLSKtIC2VkyOSG3/kvTo4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=PFP3bTMS; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=AskVjbzh; arc=pass smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772549247;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=67yY3F56XFWrwiaal1aRX9aq+ZjoX8WGlYCGFwR1Ay0=;
	b=PFP3bTMSneHi9dSlPnKRLuz7w2912yPdBciw8Lk10GPYCskjy6z5OCDC2nG0f7/IOJ8lSZ
	KZlQ5IUA8eHL8i2JIje1fXJFfQEx2QBU1tmg0/ZGCod8tAaSwn9BDas9fJTFIpmd9Kqy3F
	qmErmJ9UNg3P72UUsAg1CFsWFTxbaKE=
Received: from mail-yx1-f70.google.com (mail-yx1-f70.google.com
 [74.125.224.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-590-OLJXNOIhObSiyexUl0ZM3w-1; Tue, 03 Mar 2026 09:47:26 -0500
X-MC-Unique: OLJXNOIhObSiyexUl0ZM3w-1
X-Mimecast-MFC-AGG-ID: OLJXNOIhObSiyexUl0ZM3w_1772549246
Received: by mail-yx1-f70.google.com with SMTP id 956f58d0204a3-64cad8f8d03so10105095d50.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 06:47:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772549246; cv=none;
        d=google.com; s=arc-20240605;
        b=l2hV1Iu0C8EzErk3EQ1wrZG0Oh1JDaW7t7rWKvnc6/7t3klA9i+hDYKugcTgtf4jsU
         kgVxDYn7hMLG3/FMeoniUgoqCrjVuw0Zgr2PVISY9w7XDlBafdIrUQS/z3bg2AciUVeT
         0Fu77hPArIgZBUWve2uw7ELJFkulUqaFWx9AGV8EE9ApkVKSMvG9nwV3wldBxH02TE6B
         EyWU5Xv7bDeBN6MzyFJOC4M2or6iMuhs89DCJMNzxfs/kMOfZNW+YDLILRekv2MnS63/
         cjCSeDLdSNH305O86rn7QbdSfehXO86R/QrtJ9tIGSgVquJwM/EdC+IDut2PczJrsRK3
         VrWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=67yY3F56XFWrwiaal1aRX9aq+ZjoX8WGlYCGFwR1Ay0=;
        fh=LHUEkJapcZy5J57axS3a2gxDk6cOGW3tzEM/kQ/iA3g=;
        b=XrkZYi0Yo83i6Aq0DK+Dk+gq9BcAXC+1TC3tArGQvUeT99GJ9arLfNT4tkL+1Bmmhy
         I6Z8N9ix4wY1p2Lr0lGSTSyQ4kTmfgUY5djyANRR/A0T5aIeL4mD9pxiuON5YWIEFamF
         2mE2IjIbbWzx+rhUkRbIWGNH6KW1mthdu5fxtuKL0MvWFPMpxnYgjEfjDp0D9HWfuusf
         fltG2kjO00w1BqCj7Zmu27LJ2tRVHqL8osOGC+ZXPkNRwM6nKS5RWxYsd1xryENYssMx
         8ZJ2wyi6y1bkGhraAMLbiL28jgg+BSmQ2xwkKpwdh6qBm2vZUDOTw7MIZKYRJNXt3rvc
         w5HQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1772549246; x=1773154046; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=67yY3F56XFWrwiaal1aRX9aq+ZjoX8WGlYCGFwR1Ay0=;
        b=AskVjbzhUmXtUyZMf+W0SISoCbdVXlt+QpO5fU8PuAxgQkIPxzAPDM0UQm6Ys9l8fH
         JBmbnbiO9c1Us6yb6MvUfvYOLcslQSHhTmy0eH/FZWRca20/oVRBDYagi8Mo8zwSmW9B
         GGLenNTo9VCxQr2r2jPsY4FhZQvTRkfICn/SF7YLZoKoxfFzLi7Usbs0v0wxMqmIeJy1
         Y9n2N4SyZ8J2YKzpVCrVjCbuWAvQUGw85pxhDEzjFkby76nTB++Bs0gN45L7mWob/hrT
         19uZ9mlolqotFdpbuxe5l/MVyLiC9LrQBLWhTxzu2ZyIJGoywOHD3ULJVF8+MSkesGNT
         7iqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772549246; x=1773154046;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=67yY3F56XFWrwiaal1aRX9aq+ZjoX8WGlYCGFwR1Ay0=;
        b=tRYIuqWJEMlVgVngmL7NbtKZAbmuwfsbGk2y04sx2GqntqkhiCMqKcTDN0KKGbkRoo
         sSn52Cs3eCIRB7Oa2HfAcMf6xuNIxeisQLA+TmhFP5lMzzFP2yFG44+Jrfn/CWtLozUy
         aYFmk1Oa4Ci0SBzwIVqrXqErGZYhl1lcS3TteTf+dC74SLUdV8QWDWY+u8NZqPNlnnoT
         tdUEwd4OuDX13yZXTyMwfTFhS6Qpt8xus3kjkfg01ZBt0N8ufOvTxUjwOSKgLeQnNakw
         oZHkEYZiHlabIZ+fsBnK5jJ0/BtAWOx6NMpNYL4BInv6VZWoBKdOhVOvHy/h25cVyXqS
         3C3A==
X-Forwarded-Encrypted: i=1; AJvYcCUn5AnmrOrd3/LOUvaJ1652Rn+vlgyE2sJ+E5EiNSrzB0Mz6e8LDW8rD+/HvGYICaqLExEOVxjOfge9@vger.kernel.org
X-Gm-Message-State: AOJu0YwjYTOJZwRqbxXb9VZhmn8bhu+Pk3KqjKrp4yT7kIYze0Cek9jP
	OqFz1njhfiCkoFT1cFoMJTp18ho991fI08RAo2xZjFkMRKIAtzQwmE8LNMR5DJUkQ3PjcGtRbrL
	oWKaG59x8tCq4VOBVUKsdokhzsSjMrUqAKBaH22qxqu0NKPtX9J9jVFdsBOfx7+LiksHhrUPFgc
	m6y3pA3BMX+hmj9G7DFcVgMJhNt6LauoTqlrmJvg==
X-Gm-Gg: ATEYQzzH8AFbGugh4VSD6vD1SNaPUNcHjK1kjwZINxmTTvnFTfwX5b5yzrMciRxWWEJ
	iRAfCIXvRmVdwXFCBN02YBRmwLTrSSfr64XQUKiY1AzaM/zFgbbX88mh5QnG+H+5PkJpvckTS/o
	cvxKmHJFxSIodVlIDXS/XShvm4vA7sVAT2Ct/wwIuzIbB+Ox7nQgQR0ulQkhSJ9RH95UWPfWxOe
	w==
X-Received: by 2002:a05:690e:b4b:b0:64c:cfae:a9c4 with SMTP id 956f58d0204a3-64cedbb766amr1502446d50.15.1772549245618;
        Tue, 03 Mar 2026 06:47:25 -0800 (PST)
X-Received: by 2002:a05:690e:b4b:b0:64c:cfae:a9c4 with SMTP id
 956f58d0204a3-64cedbb766amr1502428d50.15.1772549245221; Tue, 03 Mar 2026
 06:47:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260303-b4-dmabuf-heap-coherent-rmem-v2-0-65a4653b3378@redhat.com>
 <20260303-b4-dmabuf-heap-coherent-rmem-v2-4-65a4653b3378@redhat.com> <20260303-rigorous-cow-of-saturation-23f87b@houat>
In-Reply-To: <20260303-rigorous-cow-of-saturation-23f87b@houat>
From: Albert Esteve <aesteve@redhat.com>
Date: Tue, 3 Mar 2026 15:47:14 +0100
X-Gm-Features: AaiRm519G2sejRBJyA3Xs8Zi4JtzQv5MBBjaKxQXlykPb9RAYNkCbJ50N8lMMy0
Message-ID: <CADSE00+jCZSHi=OLbmOebBwnue5tjG7AFPKN76CbYDWYBcP+AA@mail.gmail.com>
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
X-Rspamd-Queue-Id: 84D141F1D3A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270570-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,exp_info.name:url]
X-Rspamd-Action: no action

On Tue, Mar 3, 2026 at 2:20=E2=80=AFPM Maxime Ripard <mripard@redhat.com> w=
rote:
>
> Hi,
>
> On Tue, Mar 03, 2026 at 01:33:47PM +0100, Albert Esteve wrote:
> > Add a dma-buf heap for DT coherent reserved-memory
> > (i.e., 'shared-dma-pool' without 'reusable' property),
> > exposing one heap per region for userspace buffers.
> >
> > The heap binds the heap device to each memory region so
> > coherent allocations use the correct dev->dma_mem, and
> > it defers registration until module_init when normal
> > allocators are available.
> >
> > Signed-off-by: Albert Esteve <aesteve@redhat.com>
> > ---
> >  drivers/dma-buf/dma-heap.c            |   4 +-
> >  drivers/dma-buf/heaps/Kconfig         |   9 +
> >  drivers/dma-buf/heaps/Makefile        |   1 +
> >  drivers/dma-buf/heaps/coherent_heap.c | 426 ++++++++++++++++++++++++++=
++++++++
> >  include/linux/dma-heap.h              |  11 +
> >  include/linux/dma-map-ops.h           |   7 +
> >  6 files changed, 456 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
> > index 88189d4e48561..ba87e5ac16ae2 100644
> > --- a/drivers/dma-buf/dma-heap.c
> > +++ b/drivers/dma-buf/dma-heap.c
> > @@ -390,8 +390,8 @@ struct dma_heap *dma_heap_add(const struct dma_heap=
_export_info *exp_info)
> >
> >       heap =3D dma_heap_create(exp_info);
> >       if (IS_ERR(heap)) {
> > -             pr_err("dma_heap: failed to create heap (%d)\n", PTR_ERR(=
heap));
> > -             return PTR_ERR(heap);
> > +             pr_err("dma_heap: failed to create heap (%ld)\n", PTR_ERR=
(heap));
> > +             return ERR_CAST(heap);
>
> This looks unrelated and should possibly be squashed into the previous
> patch that introduces dma_heap_create()?
>
> > +static int coherent_heap_init_dma_mask(struct device *dev)
> > +{
> > +     int ret;
> > +
> > +     ret =3D dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(64));
> > +     if (!ret)
> > +             return 0;
> > +
> > +     /* Fallback to 32-bit DMA mask */
> > +     return dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(32));
> > +}
>
> Why do you need to mess with the DMA mask? I'd expect that device to be
> able to access everything.

When I tested I was getting: "reserved memory is beyond device's set
DMA address range", so I tested if it was fixed with
dma_coerce_mask_and_coherent() and/or dma_set_mask_coherent(). I did
not debug the value of coherent_dma_mask, but given the error I assume
it was not set properly? Ultimately, using the 64 bit mask fixed it,
and I added a 32-bit fallback to ensure support for 32-bit systems.

>
> > +static int __coherent_heap_register(struct reserved_mem *rmem)
> > +{
> > +     struct dma_heap_export_info exp_info;
> > +     struct coherent_heap *coh_heap;
> > +     struct device *heap_dev;
> > +     int ret;
> > +
> > +     if (!rmem || !rmem->name)
> > +             return -EINVAL;
> > +
> > +     coh_heap =3D kzalloc_obj(*coh_heap);
> > +     if (!coh_heap)
> > +             return -ENOMEM;
> > +
> > +     coh_heap->rmem =3D rmem;
> > +     coh_heap->name =3D kstrdup(rmem->name, GFP_KERNEL);
> > +     if (!coh_heap->name) {
> > +             ret =3D -ENOMEM;
> > +             goto free_coherent_heap;
> > +     }
> > +
> > +     exp_info.name =3D coh_heap->name;
> > +     exp_info.ops =3D &coherent_heap_ops;
> > +     exp_info.priv =3D coh_heap;
> > +
> > +     coh_heap->heap =3D dma_heap_create(&exp_info);
> > +     if (IS_ERR(coh_heap->heap)) {
> > +             ret =3D PTR_ERR(coh_heap->heap);
> > +             goto free_name;
> > +     }
> > +
> > +     heap_dev =3D dma_heap_get_dev(coh_heap->heap);
> > +     ret =3D coherent_heap_init_dma_mask(heap_dev);
> > +     if (ret) {
> > +             pr_err("coherent_heap: failed to set DMA mask (%d)\n", re=
t);
> > +             goto destroy_heap;
> > +     }
> > +
> > +     ret =3D of_reserved_mem_device_init_with_mem(heap_dev, rmem);
> > +     if (ret) {
> > +             pr_err("coherent_heap: failed to initialize memory (%d)\n=
", ret);
> > +             goto destroy_heap;
> > +     }
> > +
> > +     ret =3D dma_heap_register(coh_heap->heap);
> > +     if (ret) {
> > +             pr_err("coherent_heap: failed to register heap (%d)\n", r=
et);
> > +             goto destroy_heap;
> > +     }
>
> I guess it's more of a comment about your previous patch, but it's not
> clear to me why you needed to split dma_heap_add into dma_heap_create /
> _register. Can you expand a bit?

So first I tried to just use dma_heap_add() and then use the heap_dev
afterward to call of_reserved_mem_device_init_with_mem(), but if that
call failed, the error path required some kind dma_heap_remove()
function as the heap was already registered by then.

In the CMA heap for example, dma_heap_add() is invoked at the end of
the `init` function. Therefore, you do not have this issue, if it
failed it means the heap was not added and you just need to clean
everything else.

However, performing a remove() does not sound like something that can
be done safely. I've spent some time thinking on alternatives, but
splitting felt the best pattern.

This way I can:
1. Create the device
2. Call of_reserved_mem_device_init_with_mem
3. Register the heap

This places registration at the end, making every error path and
cleanup easy to handle.

Also, the `dma_heap_add()` code already seemed to handle these two
parts/phases implicitly with device_create(), so splitting felt
architecturally sound.

>
> > diff --git a/include/linux/dma-heap.h b/include/linux/dma-heap.h
> > index 1b0ea43ba66c3..77e6cb66ffce1 100644
> > --- a/include/linux/dma-heap.h
> > +++ b/include/linux/dma-heap.h
> > @@ -9,10 +9,12 @@
> >  #ifndef _DMA_HEAPS_H
> >  #define _DMA_HEAPS_H
> >
> > +#include <linux/errno.h>
> >  #include <linux/types.h>
> >
> >  struct dma_heap;
> >  struct device;
> > +struct reserved_mem;
> >
> >  /**
> >   * struct dma_heap_ops - ops to operate on a given heap
> > @@ -53,4 +55,13 @@ struct dma_heap *dma_heap_add(const struct dma_heap_=
export_info *exp_info);
> >
> >  extern bool mem_accounting;
> >
> > +#if IS_ENABLED(CONFIG_DMABUF_HEAPS_COHERENT)
> > +int dma_heap_coherent_register(struct reserved_mem *rmem);
> > +#else
> > +static inline int dma_heap_coherent_register(struct reserved_mem *rmem=
)
> > +{
> > +     return -EOPNOTSUPP;
> > +}
> > +#endif
> > +
> >  #endif /* _DMA_HEAPS_H */
>
> Do you still need that now that you switched to an iterator-like
> function?
>
> > diff --git a/include/linux/dma-map-ops.h b/include/linux/dma-map-ops.h
> > index 60b63756df821..c87e5e44e5383 100644
> > --- a/include/linux/dma-map-ops.h
> > +++ b/include/linux/dma-map-ops.h
> > @@ -12,6 +12,7 @@
> >
> >  struct cma;
> >  struct iommu_ops;
> > +struct reserved_mem;
> >
> >  struct dma_map_ops {
> >       void *(*alloc)(struct device *dev, size_t size,
> > @@ -161,6 +162,7 @@ int dma_alloc_from_dev_coherent(struct device *dev,=
 ssize_t size,
> >  int dma_release_from_dev_coherent(struct device *dev, int order, void =
*vaddr);
> >  int dma_mmap_from_dev_coherent(struct device *dev, struct vm_area_stru=
ct *vma,
> >               void *cpu_addr, size_t size, int *ret);
> > +struct reserved_mem *dma_coherent_get_reserved_region(unsigned int idx=
);
> >  #else
> >  static inline int dma_declare_coherent_memory(struct device *dev,
> >               phys_addr_t phys_addr, dma_addr_t device_addr, size_t siz=
e)
> > @@ -172,6 +174,11 @@ static inline int dma_declare_coherent_memory(stru=
ct device *dev,
> >  #define dma_release_from_dev_coherent(dev, order, vaddr) (0)
> >  #define dma_mmap_from_dev_coherent(dev, vma, vaddr, order, ret) (0)
> >  static inline void dma_release_coherent_memory(struct device *dev) { }
> > +static inline
> > +struct reserved_mem *dma_coherent_get_reserved_region(unsigned int idx=
)
> > +{
> > +     return NULL;
> > +}
> >  #endif /* CONFIG_DMA_DECLARE_COHERENT */
> >
> >  #ifdef CONFIG_DMA_GLOBAL_POOL
>
> To preserve bisectability, you shouldn't do it that way. Introduce this
> function into a preliminary patch, and then use it in this one.
>
> Maxime


