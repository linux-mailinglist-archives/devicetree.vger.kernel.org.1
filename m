Return-Path: <devicetree+bounces-9651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E97657CDBD5
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 14:36:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B1EF281DE0
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 12:36:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CBF217990;
	Wed, 18 Oct 2023 12:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="IEVK83ey"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1FB34CD5
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 12:36:04 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E813010F
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 05:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1697632562;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=DvkIUJlsPsk9rKKrIiotFgIDw4k3ZXO6WEuCH5meJOE=;
	b=IEVK83eysqRiFCabDFTRnoXcBSf9w6v7Vp8ztTH1KcCrrtXRBmHiixKgg+GHBVEphwJfkC
	FPqJ/K4KQ58Ed2E5u/FWe+raTYQBz2ROeaPWxX7fNjChWKC2DTqUqQx9K0sUcU0nbsEszK
	nIY9CN8nVu0vsWSysyKI3FRTOV/ExgA=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-53-K9qKs29OMye7h__pHogT-A-1; Wed, 18 Oct 2023 08:36:00 -0400
X-MC-Unique: K9qKs29OMye7h__pHogT-A-1
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-30e4943ca7fso4159218f8f.3
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 05:36:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697632559; x=1698237359;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DvkIUJlsPsk9rKKrIiotFgIDw4k3ZXO6WEuCH5meJOE=;
        b=k5LhcCfXYaQrQ6fL5EnubHNbyZt5Dm8zYOLeRNOY0Njc9Cm6l57b92lB1WQviM/8ZR
         9aFSYd3RbyJT1aXcdRCFXf0wR0C9bzIXScidnIOYoDP8Qx1q8FmbiW0h/8LdBYtoa514
         5GBjY1bRaybU8B5co4LAKhFMpJdgwv2UKSdPBa0cxTHxOVk2VIsyve2SQoWKYPJ23BOp
         GTs0+/r8rDesJuxyC8L6P8wEQcPo+/ko1vNE/nR/I9RzOETl4Ssat/1RSpN9gXGFncMj
         t6yzL6o1W7oLIWEhOr5UPLqFvngKJL2ttx/LEaT+DFq5oonYUwrPaw9ZH1iE/oJKXQ/F
         SCVQ==
X-Gm-Message-State: AOJu0Yx3o1jiP6sQKIcST06cRlee9q5hnaVpkdA1KLwdB+8//lEP/HHD
	TgtSfHRbiQtyXAdlMPn9hc+Nmf8uwqQiLKPZvNeaNXQSAZTrTYFoRkdL82SmI8k7gQMvD7H9VP4
	QzzoKsw47GymmYPeFSkylnA==
X-Received: by 2002:adf:f7c3:0:b0:32d:89b5:7fd9 with SMTP id a3-20020adff7c3000000b0032d89b57fd9mr4190445wrq.56.1697632559650;
        Wed, 18 Oct 2023 05:35:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFRw2wtzC78mi1fzASa956lKjGhi0QeXQyM0+7DBplHT/RMgj9Axr/3Zwe8PoI7WZzPEHj2EA==
X-Received: by 2002:adf:f7c3:0:b0:32d:89b5:7fd9 with SMTP id a3-20020adff7c3000000b0032d89b57fd9mr4190430wrq.56.1697632559317;
        Wed, 18 Oct 2023 05:35:59 -0700 (PDT)
Received: from localhost (210.red-80-36-22.staticip.rima-tde.net. [80.36.22.210])
        by smtp.gmail.com with ESMTPSA id n13-20020adffe0d000000b0032d9382e6e0sm2029069wrr.45.2023.10.18.05.35.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 05:35:59 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>, Peter Robinson <pbrobinson@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard
 <mripard@kernel.org>, Conor Dooley <conor@kernel.org>, Geert Uytterhoeven
 <geert@linux-m68k.org>, Conor Dooley <conor+dt@kernel.org>, Daniel Vetter
 <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 0/6] drm/solomon: Add support for the SSD132x
 controller family
In-Reply-To: <20231014071520.1342189-1-javierm@redhat.com>
References: <20231014071520.1342189-1-javierm@redhat.com>
Date: Wed, 18 Oct 2023 14:35:58 +0200
Message-ID: <874jioqf9t.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Javier Martinez Canillas <javierm@redhat.com> writes:

> Hello,
>
> This patch-set adds support for the family of SSD132x Solomon controllers,
> such as the SSD1322, SSD1325 and SSD1327 chips. These are used for 16 Gray
> Scale Dot Matrix OLED panels.
>
> This is a v4 that just rebases on top of commit a48e2cc92835 ("drm/ssd130x:
> Fix atomic_check for disabled planes"), that landed in drm-misc tree and
> conflicts with this series.
>

Pushed to drm-misc (drm-misc-next). Thanks!

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


