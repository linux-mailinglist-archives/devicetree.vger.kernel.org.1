Return-Path: <devicetree+bounces-12554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C400E7DA19E
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 22:07:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F2E911C210BF
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 20:07:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA47F39878;
	Fri, 27 Oct 2023 20:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="LKalK66+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3756128
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 20:07:55 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BC6B187
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 13:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1698437272;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=TKT2siFILLclNs7DXkgdMslrVPbCgf+UzQ9e1S29k4Y=;
	b=LKalK66+b+2o3mk/MXoVVbJh8vxyRvw0Ejw42m8ryF2pu7I0A2qrvvQSlSHDzdxpaEVYnX
	o+hDXtavddJa42hbJDgWEJAPXbbqOpl7T5yIvE8BnDPU53UHKS7xHuxCqdhBQJK5bzceHk
	/EwoGThOO9sLNPmJApNldMl0jqFRwPE=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-618-0mNL7CPEMH6bpFk0O0mrsA-1; Fri, 27 Oct 2023 16:07:50 -0400
X-MC-Unique: 0mNL7CPEMH6bpFk0O0mrsA-1
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-32deb4e2eb7so1259240f8f.1
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 13:07:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698437270; x=1699042070;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TKT2siFILLclNs7DXkgdMslrVPbCgf+UzQ9e1S29k4Y=;
        b=joVvaeGkldnBl0zPCo/YYWjCJpkk1HxCwLJ14wQGpuAoMQ836u++XoKWDc/VcLUY6I
         Zdbc49FNqYWzu6FfBTXpxd8uOOgci7T7oGwALusMLIUleIS9xKfwO5suXy8swavUbTkD
         h9bE9CpWV3E4wbmwhSD1a1jcvO7DMVd5jcN423PBoehqUwhRmosmG46VXqQTS/ZxnwFs
         S7z1KuF4XJwp9r/pfU7nA0ELIlmUJFeo9bJ74Pww0rS2D7YOB92VH8dhcfhe4S7E0Vcb
         U9KWCOUElnqdmpjLUm6wqrVong2XB76kiaYAFL4t4kYWT6uFsOOzPKDyoDVp+tljAV4S
         KhYg==
X-Gm-Message-State: AOJu0YxB3J9o6LPLWZNE2AzdijAU9MYtQto0rfLh6bg16++dA9QxjVZs
	ncLLET3ILSpUIjNBJIklSTxK1yaqIrWeq6VnEccOv/jJ5CqmQk9ibejVCVcOybmTAmGLOvsEdNf
	6gSONZmiRrBl+Th+F8pnC0w==
X-Received: by 2002:a05:6000:401f:b0:32d:b081:ff38 with SMTP id cp31-20020a056000401f00b0032db081ff38mr2954643wrb.0.1698437269877;
        Fri, 27 Oct 2023 13:07:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGkgUTGYjS6f4IS8gpL2kOvvhHnXXSaIDACgCVW9FuhNqYJjmfMRlQW2XMkSuftApFYRJIr7Q==
X-Received: by 2002:a05:6000:401f:b0:32d:b081:ff38 with SMTP id cp31-20020a056000401f00b0032db081ff38mr2954630wrb.0.1698437269519;
        Fri, 27 Oct 2023 13:07:49 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id z9-20020a5d44c9000000b0032d9caeab0fsm2414342wrr.77.2023.10.27.13.07.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 13:07:49 -0700 (PDT)
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
In-Reply-To: <20231027172753.GA2834192-robh@kernel.org>
References: <20231020223029.1667190-1-javierm@redhat.com>
 <169801218855.747717.5658253186246322717.robh@kernel.org>
 <87y1foo1in.fsf@minerva.mail-host-address-is-not-set>
 <20231027172753.GA2834192-robh@kernel.org>
Date: Fri, 27 Oct 2023 22:07:48 +0200
Message-ID: <87msw3omln.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Rob Herring <robh@kernel.org> writes:

Hello Rob,

> On Fri, Oct 27, 2023 at 11:30:56AM +0200, Javier Martinez Canillas wrote:
>> Rob Herring <robh@kernel.org> writes:
>> 
>> > On Sat, 21 Oct 2023 00:30:17 +0200, Javier Martinez Canillas wrote:
>> >> This is a leftover from when the binding schema had the compatible string
>> >> property enum as a 'oneOf' child and the '-' was not removed when 'oneOf'
>> >> got dropped during the binding review process.
>> >> 
>> >> Reported-by: Rob Herring <robh@kernel.org>
>> >> Closes: https://lore.kernel.org/dri-devel/CAL_Jsq+h8DcnpKqhokQOODCc8+Qi3M0PrxRFKz_Y4v37yMJvvA@mail.gmail.com/
>> >> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
>> >> ---
>> >> 
>> >>  .../devicetree/bindings/display/solomon,ssd132x.yaml      | 8 ++++----
>> >>  1 file changed, 4 insertions(+), 4 deletions(-)
>> >> 
>> >
>> > Reviewed-by: Rob Herring <robh@kernel.org>
>> >
>> 
>> Pushed to drm-misc (drm-misc-next). Thanks!
>
> Given what introduced this is before the drm-misc-next-2023-10-19 tag, 
> isn't it going into 6.7 and needs to be in the fixes branch? Though that 
> doesn't exist yet for 6.7 fixes. I don't understand why that's not done 
> as part of the last tag for a cycle. But drm-misc is special.
>

I pushed to drm-misc-next because I thought that there will be a last PR
of drm-misc-next for 6.7, but it seems I missed it for a couple of hours
(that is drm-misc-next-2023-10-27) :(

https://lists.freedesktop.org/archives/dri-devel/2023-October/425698.html

The solution now is to cherry-pick the fixes already in drm-misc-next to
drm-misc-next-fixes, to make sure that land in 6.7. I can do that once
drm-next is back merged to that branch, if you think the schema warning
fix must land in 6.7 and can't wait for the next release.

> Rob
>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


