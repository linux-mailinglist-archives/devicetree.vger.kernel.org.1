Return-Path: <devicetree+bounces-220897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB21B9C608
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:41:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 01F2D3AD0AD
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 22:41:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BB79296BDF;
	Wed, 24 Sep 2025 22:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AEZ4LpWl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D4A126C05
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 22:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758753709; cv=none; b=k3pvxL/LX4ZKNNU2jKagO4TADz+inhO6O4AWMOOVcX8ENQ3UmCEEi6ZKEu7iSn5gUL6RIpB3Qpr2kLGwSQu5ks1/qmfbF7L8wrQIOLBNQ8JP+5a+Hpz888jfYNOGAgjBowd84dgcQEoGZUfqOm1B2rmawZF7AUMnFGLH0qFe+14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758753709; c=relaxed/simple;
	bh=qZAL+k6XR6suqjqnIHWZgbpTt032kyc+8wEcjm2cTi0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e6YTT4aXvl50GUXhCnTQt2L8Jc7kJxiP9yvtmJu29GfBjDUhPLSiujlA168Ts3Rz5KKbcDp6FKYjvIz1dJ9nV19M9wBmkfHxFz4T0eUgU3+UtBwKLCI6W15sZ+ZS3rDKIPHP0H2ddoCKavi1dsqHFYMbC/nLSnyESK2cu0EoZ+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AEZ4LpWl; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7810289cd4bso84568b3a.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 15:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758753707; x=1759358507; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nTLuHAgen/gp5eor0F//xJbqIEJ5qUIL+VXfFCSnxP4=;
        b=AEZ4LpWlddvyIyh4nq2QhXqnoNEfgYaA2+IwPAkcqf+ZSAvl09iDhhMC6DDXJYHbKV
         y23VytLuryadMGKYZlhNvWYCIMWwuu/x7B1VggS5cEd9L9/uQ9S9oE73nlrXbjtlmlpk
         pQLZgTXW8ltYVhVDC4JulKBBaRtCiJvfKaSqeNahVrL3UYUIzbpIiPqaTFgVzDKquRQN
         d0xAyUuJjwblGVHTtKq+lgW1UJupEhRYo68u/1J6ZTvLQjHbwyybmOm/906iUO1+6AZK
         G6P/Jqj7QrZrV/oQnw3/okE48HJMx7lpovk+peZxFm4k6cuRXVbu6aMPadDaPXATThjh
         3oHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758753707; x=1759358507;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nTLuHAgen/gp5eor0F//xJbqIEJ5qUIL+VXfFCSnxP4=;
        b=ifpqaotkFoupo6tIrz6AB7K/MoaX5E01S/qvUHCqDEvXMzzp+TaFyOKDKEs6NSuw9G
         qsno3s5qpOgz3n1zXELksuzZKvB/Aqir+Z5sa0LmdCEVwnuypitw2zCBd3omfmCXLOez
         vdV/aqa2Y4z9rc/NHRtjMV66PQnis3+sCAUUjAGDoWiTA/zVd9SNiT9ZrohrCM5xAdK2
         c3LgClm2Bi+SnQLAxFWthUWID07gLovqZMuUTlG+usBzJUav3iPdilc1GtxzXzahTowz
         N45Mi7ar+dGMO4cqkV670pMUU0mEaxWFDJUkI4X4oql+KGaAkX9UZTNm+l1FAsaxnTCJ
         1T8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVgRcgvbee+Mj03cJbtykA0wEDLgA1HuEX9Wc1o86bshfo8nRHA3BT8uvgDCjbFDz4B0JNTIpIiYPMl@vger.kernel.org
X-Gm-Message-State: AOJu0YwWhJ75u6EV5rfmZ4WZ6rZi7rgYvIHcvJ4DiEfuqXZhpbgVH4eV
	mZ+smROqewTXGutQXhrZ26UvpA3zOkm4nyE/7f3Kx2y4hAeVBuYyoe5g
X-Gm-Gg: ASbGncutGtlq3hzdgPUs5wW+vgviJw8d86Uxov0NAiONJdN01NmIHHpokCY0SKwD8oG
	8qv/2ZqwsPuj3kXp5AcSldZL3h84LdM3Cpz4zeBuGLgXrzJXHWSveAAWL18lyufpSDa9AcqILYf
	RaM/IAJzcbn8fJxfsfIpswknSME7DE+NG+JcBuUEl59d5LDWu73LffYqR4qYbC1yicJfe/hRieI
	6k3znZZnVL/oqh3K3y/XZb1BI2upy9kfdwagVC1DtCg+1h3LFQOlV1urvDkdSaBPjuBIfPSmPiF
	cyqirer4UbimS8hJvh+wnn+13Qsb4aFZ1FWbk92R0vCYW/LA1I+MHnJkD55choVjyRypbuQ2r9X
	F0sQYCbnvM05obG9ZTTcpDjhdRVzbm4cg0ZFMlyTJ0jv/ypkzutW8sl7TtXlg16jkeywJ5DJbxR
	ANOA==
X-Google-Smtp-Source: AGHT+IHQCCQBioSY8KFD1GNYyzOiguG3uokLQMUGixJtVIltlICVidMMUGysWt1PhXp8HG366QZOOQ==
X-Received: by 2002:a05:6a00:180e:b0:780:fcae:de6d with SMTP id d2e1a72fcca58-780fce9ffb1mr1628610b3a.18.1758753707259;
        Wed, 24 Sep 2025 15:41:47 -0700 (PDT)
Received: from ?IPV6:2804:14d:4c64:81ec:d0e6:1b41:e7f7:c7b4? ([2804:14d:4c64:81ec:d0e6:1b41:e7f7:c7b4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-781023c0741sm130527b3a.26.2025.09.24.15.41.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 15:41:46 -0700 (PDT)
Message-ID: <95e8d8ee-fb8a-41f5-91a6-746ab56540e8@gmail.com>
Date: Wed, 24 Sep 2025 19:41:40 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: iio: proximity: Add Lidar-lite-v2
To: William Breathitt Gray <wbg@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, dlechner@baylibre.com,
 nuno.sa@analog.com, andy@kernel.org, conor+dt@kernel.org,
 mranostay@gmail.com, ~lkcamp/patches@lists.sr.ht, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250824102324.427517-1-wbg@kernel.org>
Content-Language: en-US
From: Rodrigo Gobbi <rodrigo.gobbi.7@gmail.com>
In-Reply-To: <20250824102324.427517-1-wbg@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

> 
> Also, I`m quoting the driver author about this binding due the maintainer ref for it.
> 
> Dear @Matt Ranostay, I`ve noticed you were the original driver author.
> During the discussion about adding lidar-v3 as trivial [1], we noticed that
> this HW is not actually a trivial due other pins like power-enable
> and mode control. We are considering moving v2 and v3 (which was not documented)
> out of trivial and this is what this patch is trying to do. 
> Also, we need a maintainer for the binding file and I`ve quoted you there.
> I would appreciate your comments or suggestions over this topic.
> 
> Tks and regards to all.
> 
> Changelog:
> v2: creating an initial binding for lidar v2 and v3 (fallback to v2)
>     also, moving v2 out of trivial
> v1: https://lore.kernel.org/all/20250701223341.36835-1-rodrigo.gobbi.7@gmail.com/#t
> ---
>  .../proximity/pulsedlight,lidar-lite-v2.yaml  | 54 +++++++++++++++++++
>  .../devicetree/bindings/trivial-devices.yaml  |  2 -
>  2 files changed, 54 insertions(+), 2 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/iio/proximity/pulsedlight,lidar-lite-v2.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/proximity/pulsedlight,lidar-lite-v2.yaml b/Documentation/devicetree/bindings/iio/proximity/pulsedlight,lidar-lite-v2.yaml
> new file mode 100644
> index 000000000000..f49a1c365f3a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/proximity/pulsedlight,lidar-lite-v2.yaml
> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/proximity/pulsedlight,lidar-lite-v2.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Pulsedlight LIDAR-Lite v2 range-finding sensor
> +
> +maintainers:
> +  - Matt Ranostay <mranostay@gmail.com>
@Jonathan, in this case Matt didn't "ack" this and looking for other references I've notice two different emails like matt.ranostay@konsulko.com/matt@ranostay.consulting. 
What is the best approach here regarding the maintainers ref?

Either way, I'll work in a new patchset addressing all the things mentioned before.
Tks and regards.



