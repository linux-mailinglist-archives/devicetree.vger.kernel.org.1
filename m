Return-Path: <devicetree+bounces-12831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 043677DB769
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 11:05:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 99D5CB20BA6
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:05:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C39210941;
	Mon, 30 Oct 2023 10:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="HeXt2BJG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A2D0EED9
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 10:05:35 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 003A87297
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 03:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1698660290;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=3jV9wsFuEisf3vb2BAnPpXdxe1/PPDMuldDZzCp400E=;
	b=HeXt2BJGndl7s9pqFzn9YgcOmZDKsYn7TxJ/OzKmZo+6+Rt4v5m1g6qbo9tU0VMeJjaOwG
	TLNkvprMIxVidmVY0s/aSbd4HwLfimCqbT/VAlcXVO01QFwRTLubV0hq4eKkwq9D4K53YJ
	ElGoOGTWXjdNdaM6nkEb5tbsvf9ZC6Y=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-169-qLBz60LDNe27-Vk16cagKg-1; Mon, 30 Oct 2023 06:04:44 -0400
X-MC-Unique: qLBz60LDNe27-Vk16cagKg-1
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-32f521150aaso2089459f8f.1
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 03:04:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698660283; x=1699265083;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3jV9wsFuEisf3vb2BAnPpXdxe1/PPDMuldDZzCp400E=;
        b=PqqBqJ/vIgHiBSOzEC+khhyZpPTHq8Ft7PyzelR6971l5PgNLcalZ6dNN15M4+bRrN
         YPzMHihy/Oz/Scq+9J0Iu5IX5/IHSvJAU9/A/SFaNLW54vNnkbCh7ltFHd+Ws8OwvCVr
         AkuoIH52OG/F76mtpGB9V84uH73ipnrIWJqI08325iKFgIhJ8Rlc97F+UyXzMSPijfey
         hhx+Lxkea3qo8zfC9OA8xg9tBmXFHSH2tCkjX9cTxu03xW2uYRbSxcHJP1VpsEBuESPf
         H62gSrqpW9Hnk/TXaUD+OmWD2oe/W1K3r41AODthsibyUkmcEz3z2k4emdj2fJE3MKIG
         9Ktg==
X-Gm-Message-State: AOJu0Yz3UVn+WWNJEm/4ub4UVEmxQO02IOIkLpW26mgs1oYlAfUNzJZb
	3bOQ/UBCJeT3cz2f1R1mpdKRRJbeXrN5LtXRYMCSF3i9jkyQQgul2myc5FwH+cpVITod7VeFVRe
	6bNaF2gx8n5hh42M+uACitg==
X-Received: by 2002:a5d:6d08:0:b0:32d:967d:1bae with SMTP id e8-20020a5d6d08000000b0032d967d1baemr8378510wrq.0.1698660283186;
        Mon, 30 Oct 2023 03:04:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHyZDSUvodlaTnopLvaCTSB7TOJfDUWETWpqkH2ReIYOzMzfqhzqmVbyJj2e+ZFmRu5TTpvyw==
X-Received: by 2002:a5d:6d08:0:b0:32d:967d:1bae with SMTP id e8-20020a5d6d08000000b0032d967d1baemr8378481wrq.0.1698660282858;
        Mon, 30 Oct 2023 03:04:42 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id a17-20020adfe5d1000000b003142e438e8csm7922409wrn.26.2023.10.30.03.04.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 03:04:42 -0700 (PDT)
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
Date: Mon, 30 Oct 2023 11:04:41 +0100
Message-ID: <87jzr4zarq.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Javier Martinez Canillas <javierm@redhat.com> writes:

> Rob Herring <robh@kernel.org> writes:
>
> Hello Rob,
>

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

Cherry-picked the commit in drm-misc-next-fixes as well.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


