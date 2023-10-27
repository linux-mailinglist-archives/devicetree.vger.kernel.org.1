Return-Path: <devicetree+bounces-12559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BD97DA1E5
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 22:43:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 17FBD1F238A2
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 20:43:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C17973986C;
	Fri, 27 Oct 2023 20:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ZKXWdhXX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2764B257B
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 20:43:28 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA3801B5
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 13:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1698439406;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Rs7ONdb22HhWn9d4AOLrOhSSYx5jfAxh9HHbCywCFqE=;
	b=ZKXWdhXXFo0MMNEPYHwufI7GtQUoQGoJ4fP0eM9hmmpoi32VWqsGQeemj1dkrEPuWNTpWM
	zYuR/i7lYkR5FTghbbdzuHRG9vWqj4GUmYCde5+9DwVM5CPt6zfsj5wFvHNT1FOo6wdUQQ
	HsaSu3rJpnXHlDEt+MOh5uQGYGC91Co=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-328-zPnb4R3_NveODIE43l3Jug-1; Fri, 27 Oct 2023 16:43:24 -0400
X-MC-Unique: zPnb4R3_NveODIE43l3Jug-1
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-407da05ee50so18679735e9.0
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 13:43:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698439403; x=1699044203;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Rs7ONdb22HhWn9d4AOLrOhSSYx5jfAxh9HHbCywCFqE=;
        b=rTrHUDThsNpe6agNhTSzybigh+IEc4LXu4EtL1FxU/TGUn84zEKp9Wz3uee5K09WvH
         XFTRRAzdC/j2jDMhnzBreGiSJTrkzzyOZJgZj5657DMVQMkDm5kW0sPkuvQW4JzC9sRc
         VIygKLoQvA5eNOd8VnuKL8YktWnYWIPyIIx38r6mbir5xruhpRtopugJC/TSVHv5tlbt
         /N2wJnTGFHWBjdM+9mXffF9Vg0XO17WNHR+IehcJMZgHNiAI+EQ0UbE41ZDdnSQ6tSql
         gdVFRmBTiIFEOBj8NzaNqO7KPQpyich7G76QvFC2mloLXkWL5tGCGfae5BINQkus+VA2
         PcXA==
X-Gm-Message-State: AOJu0YzHcybZ+JUazXufl0pX4y0KlItVcqKrlAJC8S0O64lMSQYOaq8S
	RuCd7uh0uy4TNdgyzop2M56df3tqAxsmdJrc8QUP5CJueTwBcdsvXV3B4ilb4loGQczunxY+kFT
	f+m1OvhYSB2jXHRQ8JeY2WlIIef7suA==
X-Received: by 2002:a05:600c:19cc:b0:406:8494:f684 with SMTP id u12-20020a05600c19cc00b004068494f684mr2822667wmq.23.1698439403320;
        Fri, 27 Oct 2023 13:43:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0Rb8y5ov/YtT1rodUK9OcZKUb3rJHbs/rL+T8j5WsAHE4P0HDWV/RoYdEraUvs+e4vR3i9A==
X-Received: by 2002:a05:600c:19cc:b0:406:8494:f684 with SMTP id u12-20020a05600c19cc00b004068494f684mr2822658wmq.23.1698439402952;
        Fri, 27 Oct 2023 13:43:22 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id f7-20020a7bcd07000000b003fee567235bsm5865366wmj.1.2023.10.27.13.43.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 13:43:22 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, David Airlie <airlied@gmail.com>, Daniel
 Vetter <daniel@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, dri-devel@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, Conor
 Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH] dt-bindings: display: ssd132x: Remove '-' before
 compatible enum
In-Reply-To: <87msw3omln.fsf@minerva.mail-host-address-is-not-set>
References: <20231020223029.1667190-1-javierm@redhat.com>
 <169801218855.747717.5658253186246322717.robh@kernel.org>
 <87y1foo1in.fsf@minerva.mail-host-address-is-not-set>
 <20231027172753.GA2834192-robh@kernel.org>
 <87msw3omln.fsf@minerva.mail-host-address-is-not-set>
Date: Fri, 27 Oct 2023 22:43:21 +0200
Message-ID: <87msw3zthy.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Javier Martinez Canillas <javierm@redhat.com> writes:

[...]

>>> Pushed to drm-misc (drm-misc-next). Thanks!
>>
>> Given what introduced this is before the drm-misc-next-2023-10-19 tag, 
>> isn't it going into 6.7 and needs to be in the fixes branch? Though that 
>> doesn't exist yet for 6.7 fixes. I don't understand why that's not done 
>> as part of the last tag for a cycle. But drm-misc is special.
>>
>
> I pushed to drm-misc-next because I thought that there will be a last PR
> of drm-misc-next for 6.7, but it seems I missed it for a couple of hours
> (that is drm-misc-next-2023-10-27) :(
>
> https://lists.freedesktop.org/archives/dri-devel/2023-October/425698.html
>
> The solution now is to cherry-pick the fixes already in drm-misc-next to
> drm-misc-next-fixes, to make sure that land in 6.7. I can do that once
> drm-next is back merged to that branch, if you think the schema warning
> fix must land in 6.7 and can't wait for the next release.
>

Or wait for the drm-misc-fixes branch to be back merged and land it as a
part of the 6.7-rc cycle. I'll do that since it would cause less trouble
to the drm-misc maintainers.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


