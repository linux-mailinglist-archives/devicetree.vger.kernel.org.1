Return-Path: <devicetree+bounces-41278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47AF3852FE1
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 12:52:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D0F31C229A9
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 11:52:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBF0538380;
	Tue, 13 Feb 2024 11:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z0UOAGBZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B2B381CF
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 11:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707825125; cv=none; b=uUk0SKuus7VRW6yJKE56wC32+QLToSVGpY6EYrtsGjuWmvnkhjNJekwslyR40fJBkA5sI+XOgAp7NA9hXO/nrscXxlWpVSLq32FCWqwZ5l5vTIjBMRRgWNmip0jOvls/wKmLERMupYaH7hqBreTwv1pjAaUJpSTE4Vt5maIlyDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707825125; c=relaxed/simple;
	bh=8PVeWWEzc89wIRJEgxvjCzfcaaHKlOXSsiMYtbhCdJY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hsilXRukNbBl0aIoBTNXOx1aUFoj50XukAdUmZ5ESSyeINUrna9H2XVX1LnwScSaT39xe7GcRLvl5pESNhLisD6PeUINzLAYQowptbe1NXw9Y3TUubkoSRHgC9lMC2ZkGipsJuJ21fHRoX5ZUFel0gnioDdTkDyT6vnAcyLQQSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z0UOAGBZ; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-410db155e57so13464635e9.1
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 03:52:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707825122; x=1708429922; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d/8hvfnB52WKyQuDYeSY+T60yEnMttg2LqXyXeds56w=;
        b=Z0UOAGBZpsK8vZbaYTEfdvugUHgiBN3xMhO5212l2mWXFF5m8N+KGEBxxE0l7F0NfE
         7fPUwMtgH0t9lFiYN2rgPP0fW306hrvZD6M5E0syY6EdPzpu5Zn+280NTWSrJ6NCw18u
         b6N6XGK4oZHmHLrqd6S1eLn5i4t7h0nZSDT29tAOazXTkyA5AnKZD3usIuO1IUFQWyqs
         THf7BE2mQap+6ZLvQSP3PvL3+Ew/XbxAY4pGCqZfI9WqFJMWahW/RL6EkZXjsrC4XVD4
         d8hQ5TesIddxrsSXYQpRWvNsD9PMCwjjlP7tyoVdl0KrrJ3YdMY/vCsEEemPu26AdzSj
         2lzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707825122; x=1708429922;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d/8hvfnB52WKyQuDYeSY+T60yEnMttg2LqXyXeds56w=;
        b=VWVtNaiCDOlahX4EjzNMiYNtARyYgKspAHNft2Ce5ppDAEVypBseWyxP1xwabOaSOy
         PGVAlo3HPZNl+I/gwL12xBohcW2wZ7gxQLeTJIlEKOEtwyxT/s61rAIBpl+JymMFSHnj
         2y39+a9hf2kN0bYhanf1/tAJPUJRIwlSFqOoV+c0n+DmtJnry/A8jk8ecl4HlZRwZToi
         C2/LH+z5yX38HxClhjOUWYpfcUzcGzZSwX7NGz6mkbkSB08VQwjI0odw6h2PUmQYJsk9
         3d/J0sJmGGVtgCR8Nnp9fCKYFIOJXylXmCTkHai9dMu8TLfQ1fP0jmXq3oDZ0o8v07C2
         vrNA==
X-Gm-Message-State: AOJu0YwcNAFM2uSfjjGrgl/mUsehZAb2yGFUdotgTHGVVsJc17NuKcOS
	2SgGsP8ISFy6bQOUbes2f4yFdGU4uNpiEFpdOq6JoAAq1Te+28idQZ/GU1ldBxc=
X-Google-Smtp-Source: AGHT+IHonkkurPUvJavEJpeMYX9VSCpuekmQBUsogxy3x8teNWtObawj37dzh2fc1R7htZFP4Udrxw==
X-Received: by 2002:a05:600c:4709:b0:40e:e834:3d86 with SMTP id v9-20020a05600c470900b0040ee8343d86mr8201325wmo.37.1707825122315;
        Tue, 13 Feb 2024 03:52:02 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXKMaS9AuJ7XQ3rkJVqEFEokJo3tjRWlKUvffNx5SXum2LJHH3Bvw0+P7i2To8z3wox0BEW8GkCSwe+SXVk3znoZmyeshQISrNsyjs7zMDUyJFL38qjuUmhfy5k4SegeW8Wp5aIs6dRoHJYx0xDPZUi8/TBF+rF36VGvWP2GTKRiaBchP2AOHZFbrJxURBoUNQf5tGycsufQQObs88oRRy4vzTCA0pxcCXin917IQaQ9nac097iwu1NoLeih0Vcc4b5VRf+pNj4zpcDfxeTg8LL0+gFv2fptmONcPLI4r5S9DaNNlKW4Naw1H80d72U7w4uHzakpGcWtRFSf8hehB+bBzJn35LwduBRv4A5QXdL3WIA4f26kw28jVrFyBL3AY4qHh80wcDU61ArYNO55urLifMR8JDj1v3Wam/JYebbFY4c/4vr88kiVXpT5AGcjvOPd+JJf3fy4doEHm6PlHFEIFJikG92FVTH2soa2Gew4rq2bcqdOJLA3uISsCqtEkPHV6RITM5ictW24MYhvREgM41McQU7s/geUbKFl/KbGSK7JUU9thr1zfQcSsTi1J9B9OZg89vKL/lwCnmCoNRtpNkSPoZJs9Jle3JBf+Aa
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id ce9-20020a5d5e09000000b0033cddadde6esm1090631wrb.80.2024.02.13.03.51.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 03:52:01 -0800 (PST)
Message-ID: <840738f2-abfb-422e-bf2a-c2763e76197b@linaro.org>
Date: Tue, 13 Feb 2024 12:51:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] dt-bindings: display: Document ST7703 panel rotation
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 tzimmermann@suse.de, mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
 quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, megi@xff.cz,
 kernel@puri.sm, agx@sigxcpu.org, heiko@sntech.de, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
 <20240212184950.52210-4-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240212184950.52210-4-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/02/2024 19:49, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Document the rotation property for ST7703 based panels.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

(with or without empty line removal)

Best regards,
Krzysztof


