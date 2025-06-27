Return-Path: <devicetree+bounces-190269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7CDAEB34E
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 11:48:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 95BDC16E129
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 09:48:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4207295531;
	Fri, 27 Jun 2025 09:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="DgnghXcj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452E9293B7D
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 09:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751017732; cv=none; b=gr4PETrSYSBfHcCqfHb/+NpiA+Wh5iXoLPcgGaA5XZuAI+hrTvZx1JZvJx+K2D16BkHYJnDQasKd0s+KKWzFss/qieiXvPIrpavok7J40L14oV0CM5Dovk7eS95zJuXyVzF5PMvVMrxs4n3u1memGCT6XeuUNB8IKtudiWiGOIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751017732; c=relaxed/simple;
	bh=jk2XiQuMfpRR7673S2qBhzwFnyhsfwKb+E//hNbwE/8=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=NGAXzM8Uuu9lsjm9Z+7m1mqV8d8TqJAk/06ErD3JPsoYg6Tn2YkNg2pPy79aVtsQIo8u4gVeTMCmgOM2De3ntXapfE/zE5krO2jj1dy6Tzo9I149GtbYQQLnqTvJ3I6KaJTMtHJbeLT9jp3zxwtpJhHRiXEjBgB3llbIVHiv8tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=DgnghXcj; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ae0dad3a179so270033266b.1
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 02:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1751017728; x=1751622528; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DCDsaW+29dJd0Q/+M489tK44pMH2jQe/+cBTe7kaALo=;
        b=DgnghXcjsrotg8y7cMdF4zPAE5zzvSYpFtnjEJZXTdqYZxnl7KoLWQX0+Be9yZrs9M
         EMSjj9kbC/ZBATAlw6ajk+s9OHKhyssHXfUtVzgxOzuEbxf934Dn3PK4aKmvF7cRMNvx
         VtvANfhXNRv8+hTJ+e9v7pv7nBAr24RMzQlCW5cQAfwPOVKsU5EeCkuj3qaqjanZA5Uz
         YbPOBeD5Jbs1rp2jdh97zfdcSDCuUwXG9oRvtUqbeyfl2ltPOQYXStsKAXl90+BVegcp
         pzDp6JqulaX8w04KV7BkXB1TEm9vDH0xaiLWTKzlWyVLmnVrN9N6XK90D0YKiKtnaOR0
         tP5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751017728; x=1751622528;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DCDsaW+29dJd0Q/+M489tK44pMH2jQe/+cBTe7kaALo=;
        b=rUmUnPd25tcn6AoqLQJqSWdSU9Kbw5mwHqROpQNYP8B+U9zOuV8yliePN70LcjwIvk
         Rjyd+P45WKUnm2M4mTXydoVU/X5BLvz3IJv16jmFQ7IxTl+CDoXnYezmBMdgr6+m7Hbj
         Fd/oDfXnRJ9Z7YeLiX7nS6a1Vj2YJIpxgCKa+EtUiVsPaLwOuyc7ASEdv6hO/SemRZ1N
         T3e4ZcCU5JxElVzyiCy9XVHFSCTMGNbMZh1kxIJP36E3DYD1epkjst1jRPB1Mvk3hEww
         w17ra98kbSLTcX+p7XN+kRqPPHqlGsXOKRpeRoCZ7BJb90x27TDKX91SJ5o9wz4pwQ/y
         q1lQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvK7fL9nd2AuiGmUGODt8XRnuXKXK5jkrjgOTnj31dblf6iWL8IuzfDPeh4D+xwsy+HjvuVDnE4ICu@vger.kernel.org
X-Gm-Message-State: AOJu0YxcizRxBj6fQ5zIX383DARlkgkg0VPAtcciTYrR37o7RK62Y+wP
	zCasC/eJuLeVPg41e87M5BbvUB+WW7uX91+lng2/oaEIFPAP/IHafGtaxTz48UQVLD4=
X-Gm-Gg: ASbGncuLP3wM0+WfvyleHtL2lVNNuSzEAwAexc1GLC9pfyjvSx/v7zM6eamDdfC8YSH
	cZ7v+LRuJkfoupHvxH4NVdNz5QdyBFIK3OXQc6lvFEXufa/JGxKiQRVwIUN5Nler6sh3kjRK7jt
	Gr06DSC0SKSrTZz86BTBwiBftbv1Nb/eUP0eXHSvsdZveoeza9aiWlyFhfP1m+5nHy6HsMnAj94
	0Ssm3ryR8jTaw8JD4PB79fvEekrdSti+3tdz+Rsd4+6wIstqEOshEL+n10NME8NFFQPIGQPKtrz
	i6l+4ufStEjGweqmLV5dEVcx/dRH/rXbHNBNTQ0UeVlGuhyBcTlB2OO4plISoER5XQt32yF5WLI
	4NZNiyntGqTrOdmsmaUlJ5r8KYqTH8BY=
X-Google-Smtp-Source: AGHT+IFvxLKtOUHTAM6IaJNk+LxRIz+Sbrpu2XNC5tbYBRY8piKKH2knwTobMqopOBPkPqKUqvHZeA==
X-Received: by 2002:a17:907:1c0b:b0:ae0:6dab:1a83 with SMTP id a640c23a62f3a-ae34fd0783bmr221032566b.7.1751017728509;
        Fri, 27 Jun 2025 02:48:48 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353c0427bsm92425166b.84.2025.06.27.02.48.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 02:48:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 27 Jun 2025 11:48:47 +0200
Message-Id: <DAX7ZB27SBPV.2Y0I09TVSF3TT@fairphone.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Cc: "Hans de Goede" <hdegoede@redhat.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Javier Martinez Canillas"
 <javierm@redhat.com>, "Helge Deller" <deller@gmx.de>,
 <linux-fbdev@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/5] dt-bindings: display: simple-framebuffer: Add
 interconnects property
From: "Luca Weiss" <luca.weiss@fairphone.com>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250623-simple-drm-fb-icc-v2-0-f69b86cd3d7d@fairphone.com>
 <20250623-simple-drm-fb-icc-v2-1-f69b86cd3d7d@fairphone.com>
 <20250627-mysterious-optimistic-bird-acaafb@krzk-bin>
In-Reply-To: <20250627-mysterious-optimistic-bird-acaafb@krzk-bin>

Hi Krzysztof,

On Fri Jun 27, 2025 at 10:08 AM CEST, Krzysztof Kozlowski wrote:
> On Mon, Jun 23, 2025 at 08:44:45AM +0200, Luca Weiss wrote:
>> Document the interconnects property which is a list of interconnect
>> paths that is used by the framebuffer and therefore needs to be kept
>> alive when the framebuffer is being used.
>>=20
>> Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>>  Documentation/devicetree/bindings/display/simple-framebuffer.yaml | 3 +=
++
>>  1 file changed, 3 insertions(+)
>>=20
>> diff --git a/Documentation/devicetree/bindings/display/simple-framebuffe=
r.yaml b/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
>> index 296500f9da05e296dbbeec50ba5186b6b30aaffc..f0fa0ef23d91043dfb2b220c=
654b80e2e80850cd 100644
>> --- a/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
>> +++ b/Documentation/devicetree/bindings/display/simple-framebuffer.yaml
>> @@ -79,6 +79,9 @@ properties:
>>    power-domains:
>>      description: List of power domains used by the framebuffer.
>> =20
>> +  interconnects:
>> +    description: List of interconnect paths used by the framebuffer.
>> +
>
> maxItems: 1, or this is not a simple FB anymore. Anything which needs
> some sort of resources in unknown way is not simple anymore. You need
> device specific bindings.

The bindings support an arbitrary number of clocks, regulators,
power-domains. Why should I artificially limit the interconnects to only
one?

The driver code also has that support added in this series.

Regards
Luca

>
> Best regards,
> Krzysztof


