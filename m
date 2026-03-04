Return-Path: <devicetree+bounces-270890-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAmPHE3mp2mrlAAAu9opvQ
	(envelope-from <devicetree+bounces-270890-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:59:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C928F1FC14A
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:59:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2B233017265
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 07:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E347C382F29;
	Wed,  4 Mar 2026 07:59:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="VW0X/hp4";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="gXvkxwCx"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B02DD386C0F
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 07:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=170.10.133.124
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772611140; cv=pass; b=tONaayjFERhXHG/07i587a3I8iRlVtg38KiFwWiSYU3o32vK/BBSQbtFzkLRGije2BzZcqDiinY+1C02WQaHqQ6wWEWxhhGtmxtlqjHMeQmYbfHhWk9FQld7h/i75spj7G4xxaOgtGFG36fpR3T5wQZZxsWSPrtXucUkzxtxLjo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772611140; c=relaxed/simple;
	bh=7DX6Xti3V185YiZv0qsnJejX66rVhLRc4dUIutVTUlA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=T3eKqHFmpoFRSF1j/3PiGakMWDfbOOxHslzZLD8VWiSpeEpWwnFQkcwF+hOdFwwJYtw1Ii1H+j5yUhQ61HajauoZwz4vQo1BmtHejSeCZeMNZveyxF/HawcapFJSpd6oOuFFM07cqGZc1zd+bEaTjzbCZLumu5tW3vqjXctQzys=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=VW0X/hp4; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=gXvkxwCx; arc=pass smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772611135;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wcqpRt8jvMP8XWtSPkO4bteIZfJG5tmplM3Y6kGZdoo=;
	b=VW0X/hp4O1IQo+Lv3+QFu2uH75QK0Ag2xrWlbtJRpOEknfg2vibGbb3Lb+qcEbPOBbtPXI
	MS6bgpIqBeai4zzshIsP5diS0Hhe/bPbrBr5bykJpj6zP5UZoQMuXGdHPKk5hAlqXEOaJW
	IK2yfCXgJ4JY+eYSGSoDRsRTZ8XCboU=
Received: from mail-yx1-f70.google.com (mail-yx1-f70.google.com
 [74.125.224.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-466-GO9rhlGAPfauOvpWPh1WTg-1; Wed, 04 Mar 2026 02:58:54 -0500
X-MC-Unique: GO9rhlGAPfauOvpWPh1WTg-1
X-Mimecast-MFC-AGG-ID: GO9rhlGAPfauOvpWPh1WTg_1772611134
Received: by mail-yx1-f70.google.com with SMTP id 956f58d0204a3-64ca5bae25aso10353669d50.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 23:58:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772611134; cv=none;
        d=google.com; s=arc-20240605;
        b=hN7ZqRyFM8DrOHc86MRd09jrkeV0nfubSRcyO8loWvaoE7WilBJ0cus3wzgCVDURKm
         cftwOEgxkp2OggiV4ntYw9apqO2vti8wx2BwzHQB46k29iLkKC5ciQU2Z96uSRwxRx67
         dqD8tF0btfXQVEDyjk2pKite8HXeDhdZ6NVMdhsPGe1espEn4Dwj7QZx1RveovHpX8tv
         u7g+V+OAQ3pvo6eoyZtN/II6Z/EpMIBCao6seTbuD9GDTYfuHXvjozTj15uIV1unByKT
         jwmg293EWl3YU9iUX9tM3UcZTYlfy2f3JObFOyk/MWnD/8GI58ySreviosrAtTIKUP8O
         6ZqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=wcqpRt8jvMP8XWtSPkO4bteIZfJG5tmplM3Y6kGZdoo=;
        fh=6kFAhp0tgzYkrYaHS7znlbbxvlaqJxbdkPVV5oP3zlQ=;
        b=QNS+rhrrSYRj37QA4LDcn0DiK4ErueGia3UnB3wUVIXxVaQp9dgzKaEo9jUgfLDPON
         J46Fvx6UwhuZbO3JfA+e0CYRPvgJAeZXqNk87UX3+tmEFxy6K+S31lXJ6JUi4WfeceoV
         THq2E08ohKEFVKzBV9msmlIILeO36Nf853yxr8J6YG/vLxycI0vWC4gYDEGiiD5c3S+F
         71ACEVW2mJ8j3G1BWCjq0Y0sCUuyxrMqHpZs7dIlsmzb3/6rxIVm1050qolVNsbAZCdi
         ptDlta4pwq0Oe8evHT5RkOqa1r5/+7QCJfZkkpfO3JdZYousu/WAYFjDdUWc93wKTnn9
         oolw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1772611134; x=1773215934; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wcqpRt8jvMP8XWtSPkO4bteIZfJG5tmplM3Y6kGZdoo=;
        b=gXvkxwCx5UGJ7aDb/360IBk8YmmNLdLJ9rSCtR1DFv7nkNQ+veNdtyKTmf9Az1tCpd
         tZL9rXxya/5GTLBEtNLitFAz6iCzwnqvmzvvt29nFypz8W2nAXqnkcHNjLApJuH2I8yU
         ZbVaWuSsQV91XTXwWKQ16eAFc1rIH+2fR7+/z+Nl9+VIRoFBVaTHY5fs2WfkoBvjjYU2
         4iYo/ACApWuFuuYGJRycMlxgwCa/VOtAb7RJTRIFc0e3sHoxGsZBFUbMsPehwnIFVDdV
         9f278yyIJ89pml0f+eqxTLSSUx8u3mAUXO7wbKaBIQ3j79Sz1lFZAnHrhPRNIQWSh/1f
         HbtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772611134; x=1773215934;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wcqpRt8jvMP8XWtSPkO4bteIZfJG5tmplM3Y6kGZdoo=;
        b=ueZP060qmS9zItZ5lLsLlCaJ/9ZhDXvZIEoEQVWnpm5ALHjztFZ5IsZJ/l8h+nV0ln
         tCQhgLG2qc2gX/ZpOOozri4eILZLEVP9pNdsJ2aFgcvYIH28xfhNYDikYdTGbFEh9yTg
         sAzdh4wopx2RA4BWaZVTnWaC8JIotruPYJaKt/LZEGHR8VtstTdlijKfzGgUiZlhMWAp
         N8Ob+2/UI0F5fq9aB1NBQU+rcls1dX+rxKzwsbeVXI1U0vR/hiWtOZ4eMamPX/wTOWyd
         b35TWYN6mnIK6jmmlAHZ2kUf/UXwtwD67IwNwEcdMTd265tU+PF5f17UGmleRbbnVPJY
         9sPA==
X-Forwarded-Encrypted: i=1; AJvYcCWfJcrlvFqqVosYsfC3gwEpzkRUQOCSdhg+QLkmo8RxQD5kTFyDssLHK2SP/1vMj+Cfm2SkM/+FaxMF@vger.kernel.org
X-Gm-Message-State: AOJu0YxW8WbmLoCY8qJyTtZ/yhj13EEw4OuX1uTj9AhOdan9mx7NnBtn
	BS+a/edPL/DhR+EhYaIJ4KWK+MzNUJvSVzCx1M/3rtf2iXSsV4cIv3lnnTt5xQVvdqumWzBPWhE
	FEdBDqdDrDNVv5xu3ER7TWBhmZmbNqWbO/kDKsovA0WggYTjfIcvyQZii1TQpVGm3U+EJZZiUdT
	ZBRK8CR0jCzIRXwvYdkn7dCdcFnQH0s5F3vhtdKw==
X-Gm-Gg: ATEYQzyLXHbTkZcdMRBuZtogxpOcAx/Bi8RyCfeRMgnNrSFT5tHzYpa+xAPl9bEej9N
	4Uu+qxthqr+jDYJTDA45S1DlH1HaM7VLilbcwozhenhUc4HIX7+UgNTa9lNoOxWTRLAWToSdafw
	nAVAnug01e+fPcNWGX1Pgpkft6AGpDbarcoOaWOk5Trvp7LdlvwZeay8sTc1F0qlQnzLoFbgr+5
	g==
X-Received: by 2002:a53:ee53:0:b0:649:b04c:25c3 with SMTP id 956f58d0204a3-64cf9c1872amr761646d50.62.1772611134087;
        Tue, 03 Mar 2026 23:58:54 -0800 (PST)
X-Received: by 2002:a53:ee53:0:b0:649:b04c:25c3 with SMTP id
 956f58d0204a3-64cf9c1872amr761636d50.62.1772611133749; Tue, 03 Mar 2026
 23:58:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260303-b4-dmabuf-heap-coherent-rmem-v2-0-65a4653b3378@redhat.com>
 <20260303-b4-dmabuf-heap-coherent-rmem-v2-3-65a4653b3378@redhat.com> <20260303-weightless-crafty-hyrax-bdf1ca@houat>
In-Reply-To: <20260303-weightless-crafty-hyrax-bdf1ca@houat>
From: Albert Esteve <aesteve@redhat.com>
Date: Wed, 4 Mar 2026 08:58:42 +0100
X-Gm-Features: AaiRm50vjbd8iZF9aZq1Cno_RqIuyn0PYTIuzz9Iq5d5rpEaa4iOCaZKKjWryT4
Message-ID: <CADSE00LodeTg8Xfvo4VOZDvHh25=8+Jsqq+V8iynmpYx2bBRjA@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] of_reserved_mem: add a helper for rmem device_init op
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
X-Rspamd-Queue-Id: C928F1FC14A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270890-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Tue, Mar 3, 2026 at 2:13=E2=80=AFPM Maxime Ripard <mripard@redhat.com> w=
rote:
>
> On Tue, Mar 03, 2026 at 01:33:46PM +0100, Albert Esteve wrote:
> > Add a helper function wrapping internal reserved memory
> > device_init call and expose it externally.
> >
> > Use the new helper function within of_reserved_mem_device_init_by_idx()=
.
> >
> > Signed-off-by: Albert Esteve <aesteve@redhat.com>
> > ---
> >  drivers/of/of_reserved_mem.c    | 27 +++++++++++++++++++++++----
> >  include/linux/of_reserved_mem.h |  8 ++++++++
> >  2 files changed, 31 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.=
c
> > index 1fd28f8056108..3a350bef8f11e 100644
> > --- a/drivers/of/of_reserved_mem.c
> > +++ b/drivers/of/of_reserved_mem.c
> > @@ -605,6 +605,28 @@ struct rmem_assigned_device {
> >  static LIST_HEAD(of_rmem_assigned_device_list);
> >  static DEFINE_MUTEX(of_rmem_assigned_device_mutex);
> >
> > +/**
> > + * of_reserved_mem_device_init_with_mem() - assign reserved memory reg=
ion to
> > + *                                       given device
> > + * @dev:     Pointer to the device to configure
> > + * @rmem:    Reserved memory region to assign
> > + *
> > + * This function assigns respective DMA-mapping operations based on th=
e
> > + * reserved memory region already provided in @rmem to the @dev device=
,
> > + * without walking DT nodes.
> > + *
> > + * Returns error code or zero on success.
> > + */
> > +int of_reserved_mem_device_init_with_mem(struct device *dev,
> > +                                      struct reserved_mem *rmem)
> > +{
> > +     if (!dev || !rmem || !rmem->ops || !rmem->ops->device_init)
> > +             return -EINVAL;
> > +
> > +     return rmem->ops->device_init(rmem, dev);
> > +}
> > +EXPORT_SYMBOL_GPL(of_reserved_mem_device_init_with_mem);
> > +
> >  /**
> >   * of_reserved_mem_device_init_by_idx() - assign reserved memory regio=
n to
> >   *                                     given device
> > @@ -643,14 +665,11 @@ int of_reserved_mem_device_init_by_idx(struct dev=
ice *dev,
> >       rmem =3D of_reserved_mem_lookup(target);
> >       of_node_put(target);
> >
> > -     if (!rmem || !rmem->ops || !rmem->ops->device_init)
> > -             return -EINVAL;
> > -
> >       rd =3D kmalloc_obj(struct rmem_assigned_device);
> >       if (!rd)
> >               return -ENOMEM;
> >
> > -     ret =3D rmem->ops->device_init(rmem, dev);
> > +     ret =3D of_reserved_mem_device_init_with_mem(dev, rmem);
> >       if (ret =3D=3D 0) {
> >               rd->dev =3D dev;
> >               rd->rmem =3D rmem;
>
> I think you need to take the allocation of rd, and everything below.
> Otherwise, your device, despite being attechd, wouldn't be listed
> anywhere.

True, I did not pay enough attention to that part. I will fix it in
the next version.

>
> Maxime


