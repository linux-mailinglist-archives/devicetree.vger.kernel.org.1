Return-Path: <devicetree+bounces-12388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B870A7D93B5
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 11:31:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E8C901C20F7D
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:31:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2839515AFF;
	Fri, 27 Oct 2023 09:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="HosLYxpS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 736C7156F7
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 09:31:18 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48DC4D6
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 02:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1698399076;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=XNrFs0h07QQ3WzL8XWJs8qa636YWY8uqFNGGrlBPzmc=;
	b=HosLYxpSVk6EbFNtvBpcf3CITVYZaQoWwsp1Q+fZHYXPK8XX1R/WRKCQ13tnUbKsL/mvsJ
	RCBn42q38OHz6l9NMMqvedXZ8+U05IOhKOIcvgjHH9/BXn9Ovcd95VSPUWoEiizW4vTNZd
	XS81OfvardOen5S928ZvvXHEb0Z6W8U=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-631-wYydcP3EO6qZ2kr84WuYtA-1; Fri, 27 Oct 2023 05:30:59 -0400
X-MC-Unique: wYydcP3EO6qZ2kr84WuYtA-1
Received: by mail-lf1-f69.google.com with SMTP id 2adb3069b0e04-507bd5f4b2dso2073545e87.2
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 02:30:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698399058; x=1699003858;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XNrFs0h07QQ3WzL8XWJs8qa636YWY8uqFNGGrlBPzmc=;
        b=tYkjA488pkJqv5zCm+GYWRPeTRUTuzVpE6OtGlv2N1J9Onn4FMY9HuULmVW5Klwkqq
         16tuuM1JST1kV0hiSSgVsyXoNFvepkJHbAnXauRWTxeVaJf1Wkr+w3Cxx8eX3mkEKD3D
         ymQvKsFIyYFYNhkzNa7L3l6Odvc6v9se+ixK+/tmRCANLbWiVBAmg1y0Mrzrk5P1EK12
         9pnyAcpFarsKudbV29TurAZYeTxo+lAh1Ruzo9js4+31Jq0c4pR4z1VID3JIi14lKzOc
         PTp0i6GAzQJZVT/CsJ3KsO6Fz3mDFYBayoukS58+ukcyH9ImWvcljzgYaqATq0oSyaAv
         BXdQ==
X-Gm-Message-State: AOJu0YzKSYmaKVSZWcd/fidzpepbAWfZl5VsCYJxsN9tmpjdMNRBzDL9
	coU83yOSDBEiek0geDY9wwhDfz1gVTQ+iBor/Pkyxg4SqQKdEmBMVF+6sp3tTK6t4K4MahDkv2f
	U/bVyndzsEqBE2wQotxfzZw==
X-Received: by 2002:ac2:5449:0:b0:505:7371:ec83 with SMTP id d9-20020ac25449000000b005057371ec83mr1392688lfn.48.1698399058345;
        Fri, 27 Oct 2023 02:30:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJVuGYSYuMReQZAoVFqQtGlXfjg/2jaYA5k0xGLUkM/iujstFcVk8aJjyyfMM1Ijuxe8lSmA==
X-Received: by 2002:ac2:5449:0:b0:505:7371:ec83 with SMTP id d9-20020ac25449000000b005057371ec83mr1392668lfn.48.1698399057931;
        Fri, 27 Oct 2023 02:30:57 -0700 (PDT)
Received: from localhost ([212.80.183.76])
        by smtp.gmail.com with ESMTPSA id a1-20020a05600c348100b00402ff8d6086sm1165870wmq.18.2023.10.27.02.30.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 02:30:57 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, David Airlie <airlied@gmail.com>, Daniel
 Vetter <daniel@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, dri-devel@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, Conor
 Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH] dt-bindings: display: ssd132x: Remove '-' before
 compatible enum
In-Reply-To: <169801218855.747717.5658253186246322717.robh@kernel.org>
References: <20231020223029.1667190-1-javierm@redhat.com>
 <169801218855.747717.5658253186246322717.robh@kernel.org>
Date: Fri, 27 Oct 2023 11:30:56 +0200
Message-ID: <87y1foo1in.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Rob Herring <robh@kernel.org> writes:

> On Sat, 21 Oct 2023 00:30:17 +0200, Javier Martinez Canillas wrote:
>> This is a leftover from when the binding schema had the compatible string
>> property enum as a 'oneOf' child and the '-' was not removed when 'oneOf'
>> got dropped during the binding review process.
>> 
>> Reported-by: Rob Herring <robh@kernel.org>
>> Closes: https://lore.kernel.org/dri-devel/CAL_Jsq+h8DcnpKqhokQOODCc8+Qi3M0PrxRFKz_Y4v37yMJvvA@mail.gmail.com/
>> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
>> ---
>> 
>>  .../devicetree/bindings/display/solomon,ssd132x.yaml      | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>> 
>
> Reviewed-by: Rob Herring <robh@kernel.org>
>

Pushed to drm-misc (drm-misc-next). Thanks!

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


