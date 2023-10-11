Return-Path: <devicetree+bounces-7582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D949D7C4BF7
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 09:34:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 16C3B1C20C26
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 07:34:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42C8C199B4;
	Wed, 11 Oct 2023 07:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="d2ZH9hOK"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076806AAB
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 07:34:40 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 579BB9C
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 00:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1697009677;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PT6Sw/x4JIJ/TiIyhjM4l1jVYrrCLNDF9k0rE6BJkQw=;
	b=d2ZH9hOKXcfjAPF4R5UEcIXGjlCYU8x3AwEO4Z3v6ZZZtbX2hL3UREGEJp4vYntjsA8s5Z
	AMUk+2jsBRySL+UAYCF1JiXX+AyRfrWRu22RLaCXjvOZSE42+TMJuMO+s8YCQCXZWjM9uU
	ykj/6Y5i3ZhUHea+1fIucyd602iZdj4=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-21-5m38YPuSNoeVk3R_wqEe0A-1; Wed, 11 Oct 2023 03:34:30 -0400
X-MC-Unique: 5m38YPuSNoeVk3R_wqEe0A-1
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-3fef5403093so2960785e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 00:34:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697009669; x=1697614469;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PT6Sw/x4JIJ/TiIyhjM4l1jVYrrCLNDF9k0rE6BJkQw=;
        b=IlxE9WvrOBNHnrT4V/dSGQ2u/toGq68SM7nfVuTGHi9x9M/p+itpzPmqTaKEn8vI3E
         ujz7z2vLPoIMu1B+rMo4wEtKo4Jfw/G245EwUpo/3n3HeyOcUvlRwOmzssGBh2gBpb/s
         paQuxBgk7xJHb/QnrDtBIy/4CTe3Dbdx3ffg8tJfECZO99rtByq/YG0gOr5SUzzlqF0C
         9E9wipGmQTKhDYYeDljkwgK+hhIkaFMeTso4tPF0JbqWMd9s0SnL3QI6L1a4Emlpeouk
         evncfYHudI5xWsaJSFFhzbJpjYRVWbr9puNFKtbqBYIDBVwEzdPViZBpau9t08yNcqBI
         mnSg==
X-Gm-Message-State: AOJu0YyfV0JF/GB91LXNg/nk7xkMPBOL8FP0wu56ZpQlRcdAS/weOWjn
	cmgcAPP6iamlloVORw1CbblalYPxXr2ZD6v1KkSie43FDwe+s6TYZjbXVBJQaqbGL25juGOlEgE
	gBWHGDVEdUDuZ3yYd3x83Kw==
X-Received: by 2002:a05:600c:827:b0:405:2d29:1648 with SMTP id k39-20020a05600c082700b004052d291648mr13461807wmp.19.1697009669620;
        Wed, 11 Oct 2023 00:34:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGsejCRRnJRskgCxuslOB4PnR/uGl69Os7lgF/uOLkrZgLkZeJMtWHRM0lwrPP4gwBR56jZDQ==
X-Received: by 2002:a05:600c:827:b0:405:2d29:1648 with SMTP id k39-20020a05600c082700b004052d291648mr13461784wmp.19.1697009669247;
        Wed, 11 Oct 2023 00:34:29 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id f19-20020a7bc8d3000000b00405959469afsm16076183wml.3.2023.10.11.00.34.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 00:34:28 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Thomas
 Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, linux-kernel@vger.kernel.org, Maxime
 Ripard <mripard@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 8/8] dt-bindings: display: Add SSD132x OLED controllers
In-Reply-To: <87v8bdslx7.fsf@minerva.mail-host-address-is-not-set>
References: <20231009183522.543918-1-javierm@redhat.com>
 <20231009183522.543918-9-javierm@redhat.com>
 <20231010165838.GA1039918-robh@kernel.org>
 <87v8bdslx7.fsf@minerva.mail-host-address-is-not-set>
Date: Wed, 11 Oct 2023 09:34:28 +0200
Message-ID: <87sf6hsjcr.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Javier Martinez Canillas <javierm@redhat.com> writes:

> Rob Herring <robh@kernel.org> writes:
>
> Hello Rob,
>
> Thanks a lot for your feedback.
>
>> On Mon, Oct 09, 2023 at 08:34:22PM +0200, Javier Martinez Canillas wrote:
>>> Add a Device Tree binding schema for the OLED panels based on the Solomon
>>> SSD132x family of controllers.
>>
>> Looks like the same binding as solomon,ssd1307fb.yaml. Why a different 
>> binding? Why does that binding need a slew of custom properties and here 
>> you don't?
>>
>
> It's a sub-set of it. Because only the minimum required properties are
> defined. But also, is a clean slate schema because the old ssd1307fb fbdev
> driver only supports the Solomon SSD130x family, so there is no need to
> follow the existing solomon,ssd1307fb.yaml nor the need for backward compat.
>

I think this answer was a little sparse, let me elaborate a bit. The Solomon
display controllers are quite flexible, so that could be used with different
OLED panels.

And the ssd1307fb binding schema defines a set of properties that are almost
a 1:1 mapping from properties to the configuration registers. This makes the
driver to support most SSD130x controller + panel configurations but at the
expense of making the binding more complicated (a slew of custom propertie
as you pointed out).

Now, as mentioned this is support for greyscale Solomon controllers (the old
fbdev driver only supports monochrome controllers) so we don't care about DT
backward compatibility.

I decided for now to keep the binding at a minimum and be more opinionated in
the driver with having what I think are sane defaults for most of the config
registers.

If there is a need to expose any of this configuration as DT properties, then
we can later added it share some of the existing solomon,ssd1307fb.yaml custom
properties and move them to a common schema.

We can always change the driver in the future anyways, but we can't do the same
with the DT binding schema since that is considered an ABI.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


