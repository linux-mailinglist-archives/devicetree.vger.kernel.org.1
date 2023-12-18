Return-Path: <devicetree+bounces-26450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B20A1816869
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 09:42:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E54171C209B9
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 08:42:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBA5110780;
	Mon, 18 Dec 2023 08:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="J7paCzqY"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A027210941
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 08:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1702888952;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=aE81s+rpsMUIps3Hpsmx+/hY64xiBrpWlJ3caeLyXLg=;
	b=J7paCzqYWxmEMxEuIQOC9IYlrTDAW8Pvv3Xj5Q8aks5ckxodTY400sGUjvDNuzbbjFrJJ4
	SiVMyeaLISNT059VGMTHyM0vGCf88Cdg96hl8Z3XA8QhqzRiGFSDAetZvZarz/CHG9BZy0
	prfB/ECN2q6BJd613lcX4TL2sbf4guc=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-330-H3pwU6xNNyicy_XXCYf9sw-1; Mon, 18 Dec 2023 03:42:30 -0500
X-MC-Unique: H3pwU6xNNyicy_XXCYf9sw-1
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-40c2c568108so21685995e9.1
        for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 00:42:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702888950; x=1703493750;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aE81s+rpsMUIps3Hpsmx+/hY64xiBrpWlJ3caeLyXLg=;
        b=ViP2Tcpo0mn2Yc+TckkzLjyrBVTmqWc9cPn6OQaKR0bsUp8i1NdlwRrZr6SF1ktSnq
         z6ze7jjEz8HNX01Y1sr0iUZOAShDG5sXQawFGjBaieoxMrXivacHbVRiWocinBvo2XaK
         bEO760LMONWRhEB6+z00ImxBqS/NT2XxpOtFzlkUUPQMeQIvUcXjBnFiphOKVsMc3e0U
         kZtHnlpUJ+d1JspGBSjHZLS+9peAuU2tFCrjv0soNLtAsb/vL6e9rxPmVcINIVXQEaYE
         gEvgtD5xV1YWaXcGYyRdfqpHdG7x5N4SVy8+XmvWPTKl+PfN3dwhcFswFgMP2vOgGHOC
         wkkg==
X-Gm-Message-State: AOJu0YyG8a/fgqD4o+BuAFjdPOvysHcWvnns1gFp3JzhVYQbWDDBMlrJ
	6EQ/9wjc3tiECISd+BhhtvkGphrTx8lKpyLXFZlv09AiYQ5WcDpyU0QWrbBjdCofD/4CbEb95P8
	XqSuJCMVVRpCQZTghnMIuRw==
X-Received: by 2002:a05:600c:480a:b0:40c:5971:615a with SMTP id i10-20020a05600c480a00b0040c5971615amr4700429wmo.13.1702888949858;
        Mon, 18 Dec 2023 00:42:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEDbJozhTIyhGKsrROqfZ9kJ86y/4TSXjAJ9EZdeOE+d+zYkSPgYGAJdd9a/HPYX6i0fLLHDw==
X-Received: by 2002:a05:600c:480a:b0:40c:5971:615a with SMTP id i10-20020a05600c480a00b0040c5971615amr4700420wmo.13.1702888949543;
        Mon, 18 Dec 2023 00:42:29 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id u9-20020a05600c19c900b0040d1746f672sm5439115wmq.14.2023.12.18.00.42.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 00:42:29 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-kernel@vger.kernel.org
Cc: Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann
 <tzimmermann@suse.de>, Conor Dooley <conor@kernel.org>, Rob Herring
 <robh@kernel.org>, Peter Robinson <pbrobinson@gmail.com>, Geert
 Uytterhoeven <geert@linux-m68k.org>, Conor Dooley <conor+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 1/2] dt-bindings: display: Add SSD133x OLED controllers
In-Reply-To: <3d1fb191-5ef2-4569-962f-1d727c1499c5@linaro.org>
References: <20231217100741.1943932-1-javierm@redhat.com>
 <20231217100741.1943932-2-javierm@redhat.com>
 <3d1fb191-5ef2-4569-962f-1d727c1499c5@linaro.org>
Date: Mon, 18 Dec 2023 09:42:28 +0100
Message-ID: <871qbjnbpn.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> writes:

Hello Krzysztof,

> On 17/12/2023 11:07, Javier Martinez Canillas wrote:
>>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: solomon,ssd1331
>> +    then:
>> +      properties:
>> +        width:
>> +          default: 96
>> +        height:
>> +          default: 64
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    i2c {
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +
>
> Use 4 spaces for example indentation.
>

Sure, I'll change it in v2.

> Best regards,
> Krzysztof
>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


