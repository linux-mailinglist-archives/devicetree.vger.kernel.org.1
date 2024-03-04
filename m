Return-Path: <devicetree+bounces-48089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BF987006D
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 12:30:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 371B3280EB8
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 11:30:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11AB138DE6;
	Mon,  4 Mar 2024 11:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z1xweZBH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365351B965
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 11:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709551802; cv=none; b=ah2GciwS53byVZYAGVsKuDjm3ysZBqW7JQLg52J1/wHwBnZBbGjmFAotobPwmxxazDggz4Iqxex3c0EgtD9pDcnT/2KLPFksWV7jM2k6S0vTYenSS4CVcHWFtHWHMOQ4iV5zVJ9LuCmYDGl7/hEn2+hIJq8c/y/ezbIOCHiJla4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709551802; c=relaxed/simple;
	bh=POF8bIP0CYLebakTbVz0OjNPak7NCTXg0wlnU4niFqs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E78BfYvUxnwVNa6ggZo+BvlJOG3ATQYh0ca8Hu38Rzus1vpCTHTFlv3gzPjIDmo4aallQnUULykNKdLXNSpR2JvlzQ+v8rvhRE4F82tHQ0Lg21OcJjYoghbfWU0PCiwy9Z0eRak7c29tXKQNTAi63KVse1pNSmi5ttynM2Cl2vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z1xweZBH; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2d28051376eso57713001fa.0
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 03:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709551798; x=1710156598; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4vL0LqK5KGeMh29yJkxMT78RWM5joaKt0C5y/rSqDNA=;
        b=Z1xweZBHCkjSIz+uZiWTczKXVMyAkXbjAmOmvEDZW2RKyWYd9ETmokKFbrLHyxwkQU
         4tC7xEmckyFdyXt2h3zjqjl3n9KULSEj1N8eSmiiEN+AL4QH/CcV9lk6tyDFjM57Zu9f
         s/MkWr9lQt1Npg6r24d9OCnvnNBQOL2wFcLfTPwMmLcxCxvyOXogneTTQZjEjcIWwa7n
         Zd/Tu7cfRdbJZtD2lRvUhsbfdQH9TuhV2neg8NzM6jAxnj1nsrfJaUKOXu1zpr3Qcmg0
         nk0nXYnwLcdisMm1ZkfDCgX1cfASjQfrFQoeXkG9JuUjt1JZStU8EuVORBSUViMT16O5
         xpxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709551798; x=1710156598;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4vL0LqK5KGeMh29yJkxMT78RWM5joaKt0C5y/rSqDNA=;
        b=dZfU0+0zb/Te+20L4wGWbY+H8OAbReUUQLzZtXLiHV2rCR0f3d1WHVvTmEtw9jaLnq
         cHz3qDOZlnR3uhzuH+b6pfTC6VrBh9Kem/vI5NWSpyxe9J26Y+Z5z5+K9MJ8wwRoXHV+
         VYv8n/GdOyllBm2MjW/rXLYJ+guEXPjuVZ6kOUKFZPIBd8/gUFnHdM/qiLz9BkhAju1t
         euDiHY1B31OWuAk/yYWgVraJwdoGUA4jn1Im9PjLvOrf97wJutoe5n3GZmS/momAgv0d
         /TI3o1iTNpzbengBEO56U10x9GzmqEB/tRwq6cnAxsbLKnXbn+sll+q/qY7fLQUgSj5E
         wbKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUue1cDSaZ24WfGoCIu5YMdDATPxmxEMojrnkJYXTT28Q1OyzhxeJ+gzuvJKKK1hdcCgU84G2VM6KZsQkkeiC1d4zTDPMjUQY2d7A==
X-Gm-Message-State: AOJu0Yzg9h1jF1qX6MKcXL4LHoX+jhNCJ3HbQRmDNzTTZckwCjkkaLU+
	1wIlD9ZBq8+FBhD0Wj09E0UyOQe248eP+BGw8LDu261eRDu9zB3h5rtJGSEd7zY=
X-Google-Smtp-Source: AGHT+IFCZr5TnZzbIjgFDs70xFEbSdnDduXpFSo0k5iseIZ42JOLm6EDtlRW4UYmc7bEsd4Ex6jYzA==
X-Received: by 2002:a2e:9914:0:b0:2d2:b929:9389 with SMTP id v20-20020a2e9914000000b002d2b9299389mr5842283lji.40.1709551798212;
        Mon, 04 Mar 2024 03:29:58 -0800 (PST)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id r9-20020a05600c458900b00412b3bf811bsm14264443wmo.8.2024.03.04.03.29.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Mar 2024 03:29:57 -0800 (PST)
Date: Mon, 4 Mar 2024 11:29:56 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Patrick Gansterer <paroga@paroga.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	Lee Jones <lee@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: backlight: Add Texas Instruments LM3509
 bindings
Message-ID: <20240304112956.GH102563@aspen.lan>
References: <20240302212757.1871164-1-paroga@paroga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240302212757.1871164-1-paroga@paroga.com>

On Sat, Mar 02, 2024 at 10:27:56PM +0100, Patrick Gansterer wrote:
> Add Device Tree bindings for Texas Instruments LM3509 - a
> High Efficiency Boost for White LED's and/or OLED Displays
>
> Signed-off-by: Patrick Gansterer <paroga@paroga.com>
> ---
> <snip>
> +  ti,unison-mode:
> +    description: |
> +      Enable unison mode. If disabled, then it will provide two
> +      independent controllable LED currents for BMAIN and BSUB.
> +    type: boolean

How does not-unison mode interact with the backlight property in
panel-common.yaml ?

If this mode intended to provide two strings that can be controlled by
different panels then a phandle link will no longer be sufficient to
describe the connectivity.


Daniel.

