Return-Path: <devicetree+bounces-273616-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOa2FQRDsGlLhgIAu9opvQ
	(envelope-from <devicetree+bounces-273616-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:12:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A46254631
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:12:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1E0AC32CEDAE
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 234D43A6411;
	Tue, 10 Mar 2026 15:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="G3bIIElj";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="X4eImVV7"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E4639DBDC
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 15:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=170.10.129.124
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773157603; cv=pass; b=eWqHuk6NKgK4ruJ8Vi0LdZtM712iHZ74E+VUvX22zttHKt9pHmTIb17nvnwYcPQTPKllm0rt4MjmXZpNMANZGP+Cb3tRlMXCfHg9tfBDYsJ58zP9UUFPUbMx/ujQiUVi2Y8ScKmGVQPCN/4l0nudMiSPhVB66hnxRtQXL3jPa1s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773157603; c=relaxed/simple;
	bh=F08TgPh030yz8+md6SB+C8RT0YDoIoklYB+Pplsjyik=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CReYrdCzMCQ6Rf+IoFRBSrk9fjHarH/P/k/1w9NhHKxyQmFkjt0RYfsloBNXxPob9Td3DRZKVoEgJM3q9zPve5r/xk5L9mJYApXnoRTia11nnnx1PtaoZDZOAMNuK0I15NuaQFf5p5xawG5YahZJjkMBXjwr2jzF/TMvmSvExRE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=G3bIIElj; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=X4eImVV7; arc=pass smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773157599;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Jm9RLDPaaT3j+gPSqhDteLms1KMvfMsdB8K+UVkI8jo=;
	b=G3bIIEljxCaSiYbn/3w3XfxwOwJw/c0wcXgPcyHpPVYpWFkSngTlRbY2zWsPSVR5vF2Gvx
	Zfm43FsdFxbdNA1BMIaFtalQweGP6N3qcJ4w8Od7z0pyRLVEbNks0LcR0vOPihEqBwz1UC
	arjAlrV7spfDNe3+qGMG5FxOeBumOjE=
Received: from mail-yx1-f71.google.com (mail-yx1-f71.google.com
 [74.125.224.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-137-2C-c6HiKOCmk96r1SKIPkA-1; Tue, 10 Mar 2026 11:46:38 -0400
X-MC-Unique: 2C-c6HiKOCmk96r1SKIPkA-1
X-Mimecast-MFC-AGG-ID: 2C-c6HiKOCmk96r1SKIPkA_1773157598
Received: by mail-yx1-f71.google.com with SMTP id 956f58d0204a3-64ca4e3767dso2636067d50.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 08:46:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773157598; cv=none;
        d=google.com; s=arc-20240605;
        b=C/z7X5nhyEmmphUDpsiYz3ZKxsTkDuIlQdEZkc1etlPQQ9wuscprBkPkQyHGDHCx2U
         kmcalHrGoYvUwrFfez5iAzxMui6xtcU/yzcoVl+zrwYdD+4SYokQGxgIPT2y9s98yBPU
         6EX6OevyGtkuGmqeoRkyu6ffMFz8f/GmKo0x7y4HQOJq7uOeZEFriVtUHhZJY4dJnr33
         7d5MO7MqqFR7/jJwMtDsq1agB1sMCxSeLkXAa6gXp1VODiv4weeAXLfVh3OfsVUxAs5/
         4cAFLfveOPC1VqruejUtzcDT2Tc0qesfIGtOxUXtmSz9xzYn20go92mwErgSXxGdcctn
         XIkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Jm9RLDPaaT3j+gPSqhDteLms1KMvfMsdB8K+UVkI8jo=;
        fh=eLGPG2EHsOLroNoWrXBshTdLE5wGbmOXoqiAIRZwTlg=;
        b=LuOJYOMXjFT0Urlag2q+iigLi1kOa7pHnLSHymH9709TB/TTRJwTdEAz2LLXBZSYbC
         veXcgrJsp8cwPQIsqw8B2v9idl9PlIba3Pz5NNzRzs7yoUmwhiAkwOTFgfLLgy4UfeAw
         LSHI52fZ1qxBIdxXfEnjf7uw5GzgCWTZcW9kA44zC2v270YpMSwJCUELXv2f5VsGoK8g
         DzTM41bASkl9WdHBPKfOMFiC+Eq7BBnktbi9CJcEcVBZQUDn9I8RfEQG2ZuAAgRNv83V
         ygFUXQ0sSBELqs+ltcxDykS5oaB0j+kjp4Vr3iF9c0Y50TFCHF0ruxBnqDfiExXBoYYM
         TsCw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1773157598; x=1773762398; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jm9RLDPaaT3j+gPSqhDteLms1KMvfMsdB8K+UVkI8jo=;
        b=X4eImVV75e9nE7xKLjkeC4ul/KlHnoaXQevRd7ypf/tcEVqWHI6mD1LRSJf9r89+GU
         0kGa7wzDwxpc792Gj2iMcMjMFfgcwyYJktfl/L8KcMKHiaD9bbwvCDqkFA14cs35/bOP
         PdmpLkuI4cr7bu4UuRFdCDgYjnnB6Dh5dvhCkH+e0QBhGxdsi73ecbvvgWvMacD1iXpR
         VxlP3e0Buzg5cK/qcC9bzSq+tgqPYMzehU9i0jtF0ugvnpACIm7dEsWl+z4P0CQSbEYO
         rw3+aM3Svi/giC9FZGuCWIcGzD/h0lA2QsxSRICSwQmgFFM7xQRr8n0DuPJQcDzmjUZP
         awLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773157598; x=1773762398;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Jm9RLDPaaT3j+gPSqhDteLms1KMvfMsdB8K+UVkI8jo=;
        b=QA6mgxoZkQAG+6RfQ2mKA4eTVEJnRYBb9asrOOws9+fnDHMX2YuSu3NLYI8QSukyHu
         kyjeArV8i3unOoyJ8uF4iBubqzSSIfC5l6hV8lYJx2dQJhFZs4QvY3GDIhE5OQSJYNsX
         LnLI25R4bLoHcpt1ugE3dJLkMEkFpCTEY1A30EJmYl211I4jrTpYTtQPTmUM1Vl1FrMc
         YI0Z6MPyPJfUv0bFcFfkim4GjvR7+y1ilQHjZDRmOqwFtwa9T6Ai9pR3wG8K1siHJRrz
         F3hFS/vtlRwOadve/ympVG997PAO/rE4xvBdcWJq1MR0LvDwRAZni3+s2wDsnFoHNF00
         9Obw==
X-Forwarded-Encrypted: i=1; AJvYcCWx4jWSgpgiHVrLIPi37ddvbf6Baw37md8LdsP33K3S7tlPX/vTwVzsDimBbz2h+ZznfQ65JQtSwl/0@vger.kernel.org
X-Gm-Message-State: AOJu0YwL8KwckWVn/0MQ+pJ/uKKl1VkGXusmBa+2BWgPzlKnFQS+U1vJ
	6twlmOZpO3pjAVLsQr1i5pLMfT8Ip9Chg/6Lo4YAf0PHr9NfvYGFWvIzkXllAzadbS3Tb3/Em6L
	G50doVh7o1/utUFUI0re062CNaTTslORUUGU59MWMD6oCY66gfq0Vun0JCH15RAsyITE77WPLMo
	6TcZVRdsTl+HPUwTj7VhA1qadfrBfWuOzOw1qXNg==
X-Gm-Gg: ATEYQzw6VjDLGz+PKEleBGSwReW+W44nNLOQWAPFT2rT4HK9XAhklZ0Wjss/ja4lp38
	X68BKhvxhBg1HPhT8qtPU/ckG9H34pqlsMeOl4ZZsTFcvhD2GD+QwXix18+/8jOlhn6xiNF6Ydf
	A2+6wWG1gcsKp3SkzCrsGKgdktpDKSMc+Jkn+V8AQFODhtKbTV7frvKNaIZhdjNfQOKzZZIXkSD
	Q==
X-Received: by 2002:a05:690c:c52e:b0:794:cf56:5bc4 with SMTP id 00721157ae682-798dd7967acmr135920167b3.43.1773157597688;
        Tue, 10 Mar 2026 08:46:37 -0700 (PDT)
X-Received: by 2002:a05:690c:c52e:b0:794:cf56:5bc4 with SMTP id
 00721157ae682-798dd7967acmr135919707b3.43.1773157597202; Tue, 10 Mar 2026
 08:46:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306-b4-dmabuf-heap-coherent-rmem-v3-0-3d00d36c9bc4@redhat.com>
 <20260306-b4-dmabuf-heap-coherent-rmem-v3-1-3d00d36c9bc4@redhat.com> <c7c1a4dd-dd10-4490-998b-55f9ec5989a7@ti.com>
In-Reply-To: <c7c1a4dd-dd10-4490-998b-55f9ec5989a7@ti.com>
From: Albert Esteve <aesteve@redhat.com>
Date: Tue, 10 Mar 2026 16:46:26 +0100
X-Gm-Features: AaiRm52UQkdg-mPAmXvgjVPkoZxrbr_lB6LVxp0pI4Zhk--PPRrGDed_i5m98TE
Message-ID: <CADSE00KgYP0RsSN7wpSrPHDJUfVye40R=KW6XznLxzW16=QmAA@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] dma-buf: dma-heap: Keep track of the heap device struct
To: Andrew Davis <afd@ti.com>
Cc: Sumit Semwal <sumit.semwal@linaro.org>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, 
	John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Robin Murphy <robin.murphy@arm.com>, 
	Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, 
	devicetree@vger.kernel.org, mripard@redhat.com, echanude@redhat.com, 
	John Stultz <john.stultz@linaro.org>, Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: E3A46254631
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273616-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,linaro.org:email,mail.gmail.com:mid,ti.com:email]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 3:38=E2=80=AFPM Andrew Davis <afd@ti.com> wrote:
>
> On 3/6/26 4:36 AM, Albert Esteve wrote:
> > From: John Stultz <john.stultz@linaro.org>
> >
> > Keep track of the heap device struct.
> >
> > This will be useful for special DMA allocations
> > and actions.
> >
> > Signed-off-by: John Stultz <john.stultz@linaro.org>
> > Reviewed-by: Maxime Ripard <mripard@kernel.org>
> > Signed-off-by: Albert Esteve <aesteve@redhat.com>
> > ---
> >   drivers/dma-buf/dma-heap.c | 34 ++++++++++++++++++++++++++--------
> >   include/linux/dma-heap.h   |  2 ++
> >   2 files changed, 28 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
> > index ac5f8685a6494..1124d63eb1398 100644
> > --- a/drivers/dma-buf/dma-heap.c
> > +++ b/drivers/dma-buf/dma-heap.c
> > @@ -31,6 +31,7 @@
> >    * @heap_devt:              heap device node
> >    * @list:           list head connecting to list of heaps
> >    * @heap_cdev:              heap char device
> > + * @heap_dev:                heap device
> >    *
> >    * Represents a heap of memory from which buffers can be made.
> >    */
> > @@ -41,6 +42,7 @@ struct dma_heap {
> >       dev_t heap_devt;
> >       struct list_head list;
> >       struct cdev heap_cdev;
> > +     struct device *heap_dev;
> >   };
> >
> >   static LIST_HEAD(heap_list);
> > @@ -223,6 +225,19 @@ const char *dma_heap_get_name(struct dma_heap *hea=
p)
> >   }
> >   EXPORT_SYMBOL_NS_GPL(dma_heap_get_name, "DMA_BUF_HEAP");
> >
> > +/**
> > + * dma_heap_get_dev() - get device struct for the heap
> > + * @heap: DMA-Heap to retrieve device struct from
> > + *
> > + * Returns:
> > + * The device struct for the heap.
> > + */
> > +struct device *dma_heap_get_dev(struct dma_heap *heap)
> > +{
> > +     return heap->heap_dev;
> > +}
> > +EXPORT_SYMBOL_NS_GPL(dma_heap_get_dev, "DMA_BUF_HEAP");
> > +
> >   /**
> >    * dma_heap_add - adds a heap to dmabuf heaps
> >    * @exp_info: information needed to register this heap
> > @@ -230,7 +245,6 @@ EXPORT_SYMBOL_NS_GPL(dma_heap_get_name, "DMA_BUF_HE=
AP");
> >   struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_=
info)
> >   {
> >       struct dma_heap *heap, *h, *err_ret;
> > -     struct device *dev_ret;
> >       unsigned int minor;
> >       int ret;
> >
> > @@ -272,14 +286,14 @@ struct dma_heap *dma_heap_add(const struct dma_he=
ap_export_info *exp_info)
> >               goto err1;
> >       }
> >
> > -     dev_ret =3D device_create(dma_heap_class,
> > -                             NULL,
> > -                             heap->heap_devt,
> > -                             NULL,
> > -                             heap->name);
> > -     if (IS_ERR(dev_ret)) {
> > +     heap->heap_dev =3D device_create(dma_heap_class,
> > +                                    NULL,
> > +                                    heap->heap_devt,
> > +                                    NULL,
> > +                                    heap->name);
> > +     if (IS_ERR(heap->heap_dev)) {
> >               pr_err("dma_heap: Unable to create device\n");
> > -             err_ret =3D ERR_CAST(dev_ret);
> > +             err_ret =3D ERR_CAST(heap->heap_dev);
> >               goto err2;
> >       }
> >
> > @@ -295,6 +309,10 @@ struct dma_heap *dma_heap_add(const struct dma_hea=
p_export_info *exp_info)
> >               }
> >       }
> >
> > +     /* Make sure it doesn't disappear on us */
> > +     heap->heap_dev =3D get_device(heap->heap_dev);
> > +
> > +
>
> Is this actually something that matters or could happen? Seems you
> just remove it in the next patch anyway.

Good question. Technically, device_add() (and therefore, also
device_create()) already increments the refcount by calling
get_device() internally. So I'm not sure if this is necessary, I just
carried it over when I picked the patch. It feels like a safeguard to
have the device owner hold an extra reference so that if other code
decreases the reference count, the heap device won't be destroyed. So,
having the extra reference causes no harm.

I dropped it in the next patch because otherwise, I would have to
account for (and drop) both references when implementing
dma_heap_destroy().

So, I'm not sure what the best pattern is here. But I do agree that I
should either remove it from both patches or keep it for both.

BR,
Albert.


>
> Andrew
>
> >       /* Add heap to the list */
> >       list_add(&heap->list, &heap_list);
> >       mutex_unlock(&heap_list_lock);
> > diff --git a/include/linux/dma-heap.h b/include/linux/dma-heap.h
> > index 648328a64b27e..493085e69b70e 100644
> > --- a/include/linux/dma-heap.h
> > +++ b/include/linux/dma-heap.h
> > @@ -12,6 +12,7 @@
> >   #include <linux/types.h>
> >
> >   struct dma_heap;
> > +struct device;
> >
> >   /**
> >    * struct dma_heap_ops - ops to operate on a given heap
> > @@ -43,6 +44,7 @@ struct dma_heap_export_info {
> >   void *dma_heap_get_drvdata(struct dma_heap *heap);
> >
> >   const char *dma_heap_get_name(struct dma_heap *heap);
> > +struct device *dma_heap_get_dev(struct dma_heap *heap);
> >
> >   struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_=
info);
> >
> >
>


