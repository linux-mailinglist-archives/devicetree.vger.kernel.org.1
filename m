Return-Path: <devicetree+bounces-276102-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2MVBB5vit2mzWwEAu9opvQ
	(envelope-from <devicetree+bounces-276102-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:59:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DEF298602
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:59:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A4CAC3028EE2
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:55:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52B6439023F;
	Mon, 16 Mar 2026 10:55:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="HaGSGGqy";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="jyisup4R"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11ED138E130
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=170.10.129.124
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773658507; cv=pass; b=U7iJ4u+oLPYJt/5ETL+lrrSbFhaxJW4cr3PKT7ctVahE7WgrWDwJeWe46FGdKhHsCjCoBS4JtzzGwZ/cmlXPWVDNG/GPf1oBQK0etaPVyDs0p7r0+mc/Uf0TQFwPHj6YldfzMg5Cx7GUwFaTGugJBAM8ggkQ7Wp3ObXQTrgmT1s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773658507; c=relaxed/simple;
	bh=PENpEpatLH0WgmJ8nuINA9vJeOA32NMCLpwxPNCjmic=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cppYsBok+x4IqPU+JjqNyApff8uyPO1F+5SF1fjkENqPA/JvM4T1Mpl0iwI4VJT/TDCoiLuSgUSA7Ari9TPWn10C/ps4l4l3PBousWMorso2zJvHyzASjOoEdBNB6zhf2cyd/ztPxCVOrwezPZgVPCQVYgPDAxNL/OZ6YDiWdXU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=HaGSGGqy; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=jyisup4R; arc=pass smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773658505;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=j/4AllVOKh8z4TecylNv9BZB3czFOIQzZj3H/I9GZN8=;
	b=HaGSGGqyqNoof3Zy7y+eQNFzjoTXW0vtCtSIvGUpyOha2YVjkbhCCul/gYrsRmYCZ1atdf
	xQ3XqLxoGgvUkxVkgv0wJeZTNJHvCqWSY3Bs0g2oMXhTCyyAR0E/PdM29OP4I/+JHpDGRD
	8jzhMTWWrd68PYOpc4IXtzmwkqkgmL8=
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com
 [209.85.128.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-615-LccEsJsUMBi1HDK3G0UFTg-1; Mon, 16 Mar 2026 06:55:03 -0400
X-MC-Unique: LccEsJsUMBi1HDK3G0UFTg-1
X-Mimecast-MFC-AGG-ID: LccEsJsUMBi1HDK3G0UFTg_1773658503
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-798531a0f58so86779307b3.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 03:55:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773658503; cv=none;
        d=google.com; s=arc-20240605;
        b=NvxCfNNp2uic+1UwPH5B7QY+JGrcywzmG7hh324AsM9zKM9nM636/aiCaMpoB6YQtx
         DcuyJ6imQaStbwfg69DGyUhV/wZd3PAJtjbrc72TUbEP4HRXmSYAfGWgIH4SoF3oiqkM
         Rh+dmmoQjNFxdEgvcB7lVktBmx323w/YVQVBSAJB0zbOnUdIOlwSdKNKrCfmjwHU/vFX
         YvhhuibqGOKb7ex50SDHZro19/GkcuubaMzXW0B+7bRXQnE/r4VFHQZRlfspHEAerYYP
         IrynOkzHyEFzPsa8MCSxnp8aP7OPicvKZ1Wt6IiepUW/DgqEMlOhTogfLJ/LGmydhhq3
         yBuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=j/4AllVOKh8z4TecylNv9BZB3czFOIQzZj3H/I9GZN8=;
        fh=AWJDEOiIGDxYyppWF/NGhT0/bmzAcIBHbYew0PeCt4Y=;
        b=Ds0/z5eVk3LmOb59CSEY73ESwXiWHJmHRwasnKeZyX26UJmAmA5JLFbhMoDAaci9er
         m0XQZ8h2+p/EIlGybR+J04KIzz2r95gNZjvOLHGd/7IiB9ARH+ztmrhFyTdMQEE0HAhU
         mp6DHYLXXz6lrbB6qE+cpaxD9IIk3hfAc+0r1WmK8UTuSrX+AmFCpbRsQE71XIF4nz5V
         7rsCDMfcyif8xcNnH6AEdWsXdC1oYfBcw2hzDDXVKWYNyrBe8wHpt9koSkjhzEj4NXtd
         BySzS7WyOxSSpbwc2eXDxy7c694ZSLDNyAXtdRFU6lv8uKTuczCIbN4aNBc2WAdP8HuJ
         VIYw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1773658503; x=1774263303; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j/4AllVOKh8z4TecylNv9BZB3czFOIQzZj3H/I9GZN8=;
        b=jyisup4RP0zLN67GpUM8espMWmKxjaknfhj53x+FKhqaDgN03OAc2StAD20sOpK0zx
         ys1uOwlLaTf8AChqX+k/3mZxZV1RtkTwraz2M4JsJepZxUcYOU/AaICeiBW5vxfxGN36
         oaIgjNmgdil2pCyW3lofgS1zvVq4QsF0vUTl8eF9/MAwAVEvxNqkg6eFGoDVtqA/qF2E
         YcaHxCl9Cvl88JsYcOczKXisYrCJ/u95V3VU3BGDotUiv5sPfrgbpoDeW4hgpSaPTlSe
         zFEmI61QLTkUFOELFdPi59a+yqnHdGSJPJADrVji79RFsYhBHfSLagltZn1W7s2COMHC
         bcLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773658503; x=1774263303;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j/4AllVOKh8z4TecylNv9BZB3czFOIQzZj3H/I9GZN8=;
        b=r/89tMcy3rrrvYiTuvSgYahvUbn+o5qzwTniKxCoeoGVZ3TQwXrToNe8eCEH+3Pd2S
         IRw23v44lW7NtFy7vBkssHEb6VQGBvyUOdj+qSNGHY4IyEPpOBEKyVxPh5oQM7MgAfQz
         8EZP7XBp9/YM868YOE4yFf9qlUbm1IkJ5VyI1UZMcNXPoLfDHp8aSVO4irFv0Mn7Nz32
         D0VF6VGmFmSFgnttwpLaRieHTDyMbUE6dGxGY7zvaq4CIQK2Ek1YJoe32O3aXedF7RGh
         0CA/Un4e2xaXJOFj+Ajjr98gu02CRWS3X1MMm6szE9nJFiB66lXF6KjZmMyxuHwrxTVR
         PZjg==
X-Forwarded-Encrypted: i=1; AJvYcCXUVSFgpW9r+LMa0vDby2x/lLTALhNJ5QUNf5lkDAXSVL/B0w57K2I/0DatSeWijleXe17iHys1ISiy@vger.kernel.org
X-Gm-Message-State: AOJu0YxPF22L7LbpDOrVbFyBR9n/zJBVfgE67bnU/xXVCCVRYGXXhkHS
	jJG9bMUg5UxT5G+r80UkS7NjKrACZkc4UqBsBTR8U11OOfp5WOZoiu/A4y0JbwqHEjY4BcjJlF/
	UxZOTmo+Mm9n5Vp9WoMbp/XyeL2GY8BW3DmkqdVt0dVWEbZDOrOVvXbfzhVkTx2ru02F55lL/Lk
	qwANqzfJwKeDy1TcQVioudAGOmH98g++VtLCdHzg==
X-Gm-Gg: ATEYQzysU3TixWY4nrQbi++4VetQJE2YgB5EpHeQm/NntgK6E6xFgX1UGMIEraYGXoy
	1ccSaV4hAupk85LkXrXvTxZBjZLalLfYwrYjBPLoBOewPf1OPp1BGqrZDTYRQ4YgndWCxr8pfvy
	ptH7P6ydzcj3xxMi+IjuAtXB29sPXqm7g9L5IdpgKXe7678Ay3VKmEaFc/Kr2za2ulI+0o1yAmy
	A==
X-Received: by 2002:a05:690e:449a:b0:64a:db50:fab2 with SMTP id 956f58d0204a3-64e630d964emr9195116d50.80.1773658503288;
        Mon, 16 Mar 2026 03:55:03 -0700 (PDT)
X-Received: by 2002:a05:690e:449a:b0:64a:db50:fab2 with SMTP id
 956f58d0204a3-64e630d964emr9195107d50.80.1773658502956; Mon, 16 Mar 2026
 03:55:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306-b4-dmabuf-heap-coherent-rmem-v3-0-3d00d36c9bc4@redhat.com>
 <20260306-b4-dmabuf-heap-coherent-rmem-v3-3-3d00d36c9bc4@redhat.com> <20260313230629.GA3603067-robh@kernel.org>
In-Reply-To: <20260313230629.GA3603067-robh@kernel.org>
From: Albert Esteve <aesteve@redhat.com>
Date: Mon, 16 Mar 2026 11:54:51 +0100
X-Gm-Features: AaiRm51o4lEgIIRwy7J8EQU-dh_zU9bcODR7YayBvstmpxh8vjYCQuobudoxI8I
Message-ID: <CADSE00JymMjob5J02bh+YSw+2zyjx8OWxks5aEhuM2GX8ZB7=A@mail.gmail.com>
Subject: Re: [PATCH v3 3/6] of_reserved_mem: add a helper for rmem device_init op
To: Rob Herring <robh@kernel.org>
Cc: Sumit Semwal <sumit.semwal@linaro.org>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, 
	John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Robin Murphy <robin.murphy@arm.com>, 
	Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, 
	devicetree@vger.kernel.org, mripard@redhat.com, echanude@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276102-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 73DEF298602
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Mar 14, 2026 at 12:06=E2=80=AFAM Rob Herring <robh@kernel.org> wrot=
e:
>
> On Fri, Mar 06, 2026 at 11:36:34AM +0100, Albert Esteve wrote:
> > Add a helper function wrapping internal reserved memory
> > device_init call and expose it externally.
>
> Why?
>
> The diff tells us what. The commit msg needs to tell us why. Maybe the
> rest of the series explains it, but this commit needs to stand on its
> own.

ACK.

This patch prepares for the heap implementation in patch #4, which
uses the new helper function. I will add the information to the commit
body.

>
> >
> > Use the new helper function within of_reserved_mem_device_init_by_idx()=
.
> >
> > Signed-off-by: Albert Esteve <aesteve@redhat.com>
> > ---
>
> Version history?

You mean track it in the commit body? History is already detailed in
the cover letter.

>
> >  drivers/of/of_reserved_mem.c    | 68 ++++++++++++++++++++++++++-------=
--------
> >  include/linux/of_reserved_mem.h |  8 +++++
> >  2 files changed, 52 insertions(+), 24 deletions(-)
>


