Return-Path: <devicetree+bounces-271155-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KO9IGLhcqGmZtgAAu9opvQ
	(envelope-from <devicetree+bounces-271155-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 17:24:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6888820429C
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 17:24:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A76EF303F5D0
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 16:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DCDE34D4EB;
	Wed,  4 Mar 2026 16:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="PCSdGew0";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="af7l/Wwm"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A34346E7E
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 16:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=170.10.133.124
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772640490; cv=pass; b=akEQtjgZn61/w0Z2EQhs7lRLJN5Mn1HOsKQc7oAtsS7SRhaaOD6IewBIMpVI+CyUWuB+J1ShmSDPT2cGsFXlYJaO/W+NhV4Ald2i1dH71la1hfr7hK/dBykjMfUCHCAVxcD538pTBxg94HAypALTdUOJDiuCa8oikLobbFltCR8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772640490; c=relaxed/simple;
	bh=XuIJEyuPZseimNyB1dClJ9+gsbn4gJI4NK41evppQNk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nv6kvQYDPuDvhJNhZUob+EvjHS7q6U645zZDpEd2MvqbSdD9UMZqaShnU+WguOhZnsS205kmeuAuKXhMauNtB1fT2x44xqvy/CCOij34Uo5vlDxr2pv9nkOQIuXE/DqaIwmp7nY4nS62s0UiZxJ1klplCBVFHDaY2H0ITreKZsY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=PCSdGew0; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=af7l/Wwm; arc=pass smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772640488;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XuIJEyuPZseimNyB1dClJ9+gsbn4gJI4NK41evppQNk=;
	b=PCSdGew0GVQDy/dW/GyB6OX0zX1YXFJjrIS2FbPR/r2kEqjVCElTH+h7bwsAvWJXLPF17h
	HuXgieT+KfVHfVXhTMkJzwVujXYlL2gRHUi5NTMCCq8A5fXSyAj/jWf7MFJFSZXGxK/vuF
	QIMCkLP/qAWHJKUixVoK0xgdSk214wE=
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com
 [209.85.161.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-664-abgf-x0WP2i4RETukxxCFg-1; Wed, 04 Mar 2026 11:08:06 -0500
X-MC-Unique: abgf-x0WP2i4RETukxxCFg-1
X-Mimecast-MFC-AGG-ID: abgf-x0WP2i4RETukxxCFg_1772640486
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-679ca40278bso116129185eaf.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 08:08:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772640486; cv=none;
        d=google.com; s=arc-20240605;
        b=fO88tb7lQPSWTGckdLP5kJ3U3/kHw7GOkhcqxrjhTJLLVPk6vylSnxf9/6ilkOoB0o
         /71PiW4gSXbwyVshgdvo/6zMO6U8DcQpd/fN4Mi3fRN+LadSabmTaov/R4QCN2ibZzLL
         t5J6zmy8EKwTBL7ZaxS1xAbgnWN9qe3dfsSiYGG+6TKQWWn+zmlhxb4DAl64JkSYq4Qg
         Bl97QvZx8Akjuj1VwKoRnjPceANcFfN1s710KNrDJr66DVIY995ash/2YhmVp7OO0OIf
         qMVonFZKXypaGlBPT5gXhn6bLQ0zqur39msvjief6TCZlEFWnEDt+v//TnJ/CiV1znxL
         3mWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=XuIJEyuPZseimNyB1dClJ9+gsbn4gJI4NK41evppQNk=;
        fh=gkVbqHZMHCkfGa5Gbj63hrJOERrLIzGK76WBO/thYUk=;
        b=TJtuaC8U5u6ReKPiFuhZVgG4283yeVrdydaqlSdB+A7njP05cAFrI40w8Yg6YSfRHy
         +2/mbn5yuWlehAGjc4Rhe6h5gKO8z5Wv9IThNybn0r9ykQI+/RYq0fv+cZ7BoCCHh7Lg
         bZvPJuL7BE0w6U3GtmmeJuVGRjCnBCtdC69rkUDy6w1LHR0B18Qe++d44pLdLxeLz4jM
         8STHpmMUM/Eg+sklys3vKne/61dZtngoil9vcyW7hx8yKZjZI62gZzFeg3qWP4qq/EhS
         nTOtFDA4m7ewhk2EHmE0gD38kWnc/llSHLYIsHff7R78kOk2NbRDxhwJvoIUN/+MkRDy
         rp3A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1772640486; x=1773245286; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XuIJEyuPZseimNyB1dClJ9+gsbn4gJI4NK41evppQNk=;
        b=af7l/WwmjSccYL25DU+Sg4Gbsvu9x6sJ0Rhx3G/i1tsKJMht5fnmfJ7xdPYXe1wZ0g
         Rv0yBaXnZaqEG1zJkqX90BU3rJvdxEV8W+i+IFNtI0NuNALTNuWe4Ye9zYRhsdDUDEXj
         dM9YFKQq3R7dwZVmTZjedghcrCaAa1P08iqTcWSgLqOMDxhaLZUHl3YNcVjewyAAm+kM
         wfeCIx3u8O9pF5iBui+MRSp9mIpO+3VMu8YUqNXpWJCUbSvHwn5I6/mDxthd3pfwW6Vh
         XKbNXs4H1ORRkzhZa4av92IEFypsbAjjDkxRUykGBYWd3jimIVkFgh7GpaVvCN97Tm8n
         3naQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772640486; x=1773245286;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XuIJEyuPZseimNyB1dClJ9+gsbn4gJI4NK41evppQNk=;
        b=BF3DIJ2N6p5GtT44BFUa6DO1dQVmndp1sbrfYgBlLt27hS7m9RTtL3VaOG81ho+m+a
         MuD4ekBml8Y/SwvRTCnLCeNIBBRYtZQQAN2vNakzSmgK62M3A63Aj32mOyoEsImQjH7j
         3XAV6WTgvUoU34DrGJD16MXmbQrQU1OIhxCqoZ6520AAVd5XMvplBINIwnflIy/7YMp6
         ezvvJo9mITOs2THJPX5Xxe57lWEc2qJmsAF56zg/4W2aXIQMwpVb7g81kIieiA7DTXVE
         aG67O4uR6XCsRkgpWQFxPdMa5YWtCNQUqscg4xU8hkEW9DDOM+w6zZIn29zhNaHDA8cI
         AJzA==
X-Forwarded-Encrypted: i=1; AJvYcCUPNpSCjqwg1CND/Mn53ZXOQWeGvik9QA+AlakIDDhvmAH+G7bLrHLby05HdMhQAhnkxHkzpO+LYLk5@vger.kernel.org
X-Gm-Message-State: AOJu0YxqkwEnb6FjrTSmPtRuE3DTYEhEUiE1IeEzvG2x4/2exOjpSTHp
	7HWNns8HOyiS4i6tnshRqHMYA0EF8GtfzzF1ssIINx/gbey7gi2NADxAR6ZiNQND8NuDUCB0/Ys
	rUlpMNq5PL1nGve0TtN7bBdoxTTwAXJG8BAbgolcH1KiPF/YS2+kb2a22lAw2xVkDEGx6AD3vqY
	BwlWg/9uKIgcr/AfGOjlBf5b25bvrjxaY2QZFvOQ==
X-Gm-Gg: ATEYQzxykP1VA4J9cDR1WP+njbHHBEfGz8YXRXJKwlL3dlxj1HA5t35K1wko994e7X8
	Ox3MxAi1D5gJxJr6xmqGRctpcBAI40hmw45ynCphRTPPNJwJSGVLMQem7+tlyRcGScxh2TXCTu3
	tslu4RWS29NFP7kfO430cX9pcdj6UJ7OZlpltk0hOjFt5m/MgB/yRy7aO7l4+YYgImMtLCUByLS
	g==
X-Received: by 2002:a05:6820:1ca4:b0:679:e68b:f95d with SMTP id 006d021491bc7-67b1776bde5mr1385811eaf.53.1772640486054;
        Wed, 04 Mar 2026 08:08:06 -0800 (PST)
X-Received: by 2002:a05:6820:1ca4:b0:679:e68b:f95d with SMTP id
 006d021491bc7-67b1776bde5mr1385781eaf.53.1772640485669; Wed, 04 Mar 2026
 08:08:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260303-b4-dmabuf-heap-coherent-rmem-v2-0-65a4653b3378@redhat.com>
 <CANDhNCrVVGsxEjgRcVJSn_E9WPUVY_9zpd+t0X_Jy7JqbcHDqA@mail.gmail.com>
In-Reply-To: <CANDhNCrVVGsxEjgRcVJSn_E9WPUVY_9zpd+t0X_Jy7JqbcHDqA@mail.gmail.com>
From: Albert Esteve <aesteve@redhat.com>
Date: Wed, 4 Mar 2026 17:07:54 +0100
X-Gm-Features: AaiRm51Q5GvpC48eWrWjCC8xCsFxsretWrNgIwHjulMNxRdjdZzE0CFF6Jj-oi0
Message-ID: <CADSE00KqF-7m+ZMYLzzgL3FzZv3P_G-v8ycYdXBj_WE4=P2_jw@mail.gmail.com>
Subject: Re: [PATCH v2 0/6] dma-buf: heaps: add coherent reserved-memory heap
To: John Stultz <jstultz@google.com>
Cc: Sumit Semwal <sumit.semwal@linaro.org>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, 
	"T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Robin Murphy <robin.murphy@arm.com>, 
	Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, 
	devicetree@vger.kernel.org, echanude@redhat.com, mripard@redhat.com, 
	John Stultz <john.stultz@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 6888820429C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271155-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Tue, Mar 3, 2026 at 9:55=E2=80=AFPM John Stultz <jstultz@google.com> wro=
te:
>
> On Tue, Mar 3, 2026 at 4:34=E2=80=AFAM Albert Esteve <aesteve@redhat.com>=
 wrote:
> >
> > This patch introduces a new heap driver to expose DT non=E2=80=91reusab=
le
> > "shared-dma-pool" coherent regions as dma-buf heaps, so userspace can
> > allocate buffers from each reserved, named region.
>
> Just a nit here: Might be good to provide some higher level context as
> to why this is wanted, and what it enables.
>
> Also, "shared-dma-pool" is also used for CMA regions, so it might be
> unclear initially how this is different from the CMA heap (you do
> mention non-reusable, but that's a prettty subtle detail).

Sure, I will expand this for the next revision and try to clarify the
points you mentioned here (and add these points to the relevant
patch).

BR,
Albert

>
> Might be good to add some of the rationale to the patch adding the
> heap implementation as well so it makes it into the git history.
>
> thanks
> -john
>


