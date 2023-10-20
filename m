Return-Path: <devicetree+bounces-10498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAEF7D1917
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 00:28:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8588C1C21048
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 22:28:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9CC5354F0;
	Fri, 20 Oct 2023 22:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ZlVYifF2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC42354EB
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 22:28:55 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32C2210C6
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 15:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1697840922;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6WBYVjTA6Jk3GAZvnh+7RXQwGKV/swUxWZnIaQXvoxU=;
	b=ZlVYifF2jjmE6/k5TDJs2FpDRbJemY9x5PAngeQeliiWjc7eDALfNs0wLM8E8rF3KdVrCV
	uuZiti71ErC2eoT+YYnV3gdWdvHu5rlEXzaOjVaB01jvXl0lyKubKLrL2Rj2jalaUupu8E
	L9dJJW/IwEC5GGz/R32MrooGA8MZclw=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-642-Y5sTAKE8NFKjANywDmN_5g-1; Fri, 20 Oct 2023 18:28:28 -0400
X-MC-Unique: Y5sTAKE8NFKjANywDmN_5g-1
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-4084e263ec4so7336415e9.2
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 15:28:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697840906; x=1698445706;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6WBYVjTA6Jk3GAZvnh+7RXQwGKV/swUxWZnIaQXvoxU=;
        b=oW4A04Tivhp+sR5Ix21WsSVQ5KuKTcR7+EfRTiGisBmh2pDK5R3ydPliqX5lhdXpKT
         pHBvM9KPRr+F6gvmfn957DKQYqio3uu5TghVKK9EHHfgptVgnDbzGRPZkr+28qcfteIz
         bYSioxeUJxxresoklsB0nWegLay/TNupSk2ucEYWDgBvs1ssXXKyufBL6stR8/Uskjhc
         jb8upwmfxtpohZe0iYcz5XsdqzZUV1qu80g7Utf3/BzTUbrqIpK3xzfdlAE9EsVbcEu0
         Nl7A5wv1Aplv1BfJkg4w5HwZoJzCXHt7i2D0CFuU7Qgpljofc/edrSvHQGLXHYgv1ZgU
         AEvQ==
X-Gm-Message-State: AOJu0YzE89sE91WxMNC2LSa7nsuXXx6MOgyyMaGlv3Htm2cR2WgG6N4S
	bNyBE5QjtF2xBMXFTJ6NFKk1dxKOe9ZOQGkkmr0Sl/nJTQR/ZzCtJD13GbxTxuB1gVfGQ3g9URk
	ti65LifDByKtGP+pg4oV4eg==
X-Received: by 2002:a05:600c:3502:b0:3fe:2bb1:11ba with SMTP id h2-20020a05600c350200b003fe2bb111bamr2550037wmq.27.1697840906528;
        Fri, 20 Oct 2023 15:28:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGTnnTeJTyNAw2QeFS5BxK7GMEmdb888js+Xuo4NjtnX6/IvU3LnEp5F1fCQHlS3MrK3LISAg==
X-Received: by 2002:a05:600c:3502:b0:3fe:2bb1:11ba with SMTP id h2-20020a05600c350200b003fe2bb111bamr2550029wmq.27.1697840906158;
        Fri, 20 Oct 2023 15:28:26 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id l23-20020a1c7917000000b004063cced50bsm3079357wme.23.2023.10.20.15.28.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 15:28:24 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard
 <mripard@kernel.org>, Conor Dooley <conor@kernel.org>, Geert Uytterhoeven
 <geert@linux-m68k.org>, Conor Dooley <conor+dt@kernel.org>, Daniel Vetter
 <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 6/6] dt-bindings: display: Add SSD132x OLED controllers
In-Reply-To: <CAL_Jsq+h8DcnpKqhokQOODCc8+Qi3M0PrxRFKz_Y4v37yMJvvA@mail.gmail.com>
References: <20231014071520.1342189-1-javierm@redhat.com>
 <20231014071520.1342189-7-javierm@redhat.com>
 <CAL_Jsq+h8DcnpKqhokQOODCc8+Qi3M0PrxRFKz_Y4v37yMJvvA@mail.gmail.com>
Date: Sat, 21 Oct 2023 00:28:23 +0200
Message-ID: <87bkctj5dk.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Rob Herring <robh@kernel.org> writes:

Hello Rob,

> On Sat, Oct 14, 2023 at 2:15=E2=80=AFAM Javier Martinez Canillas
> <javierm@redhat.com> wrote:

[...]

>> +maintainers:
>> +  - Javier Martinez Canillas <javierm@redhat.com>
>> +
>> +properties:
>> +  compatible:
>> +    - enum:
>
> Now this is a warning in linux-next. The '-' should not be there.
> Please send a fix.
>

Sure, I'll post a fix. Thanks for reporting the issue.

This is a leftover from when the compatible string enum was a 'oneOf'
child and the 'oneOf' got removed during the binding schema review.

> Not sure why there wasn't a report, but most likely it didn't apply to v6=
.6-rc1.
>

Yes, I'm not sure either. I didn't notice it when testing with:

make dt_binding_check DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/d=
isplay/solomon,ssd132x.yaml

> Rob
>

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


