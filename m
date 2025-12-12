Return-Path: <devicetree+bounces-246108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED0FCB8ADD
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 12:12:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DCE0230797BA
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 11:11:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65C7D31AAA3;
	Fri, 12 Dec 2025 11:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com header.i=@resnulli-us.20230601.gappssmtp.com header.b="iauBTHPB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8EF289E06
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 11:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765537906; cv=none; b=EzfuLdvW/UdnNBXxAmvdnL4TbkfQoQplLKpGXOXqKfxZOShoa88KjColteaouO7LFdXI9zAfmRZtPZpO1j9d1YKsCIvGm3t2JUqPGUhf2dVlknVXIpUWN3sIvkr96ly2rJIwd3nfE7C90taYx0LFZQto+EeIrB+SDgLYdhrDA0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765537906; c=relaxed/simple;
	bh=Qi0kf4DHgZSF0itXehy4M1IigW5Ye60xVK7z3FqTfn4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ledHr+2BzCXSH5emz1dRDgKkyeX1RgZ6Ryq5DxeRkgQsJvz1fcJw18YETzdv0ZEV5Da1J2KcltNcdH9XQJBX7b8hbFwjgh5NUG0IsPjiBYIKJcO2B1VOx4YcFIrVDrdoGapazNzM0GYLk3dwZF5Val0vwCN+YyaFYfdSltIXWrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=resnulli.us; spf=none smtp.mailfrom=resnulli.us; dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com header.i=@resnulli-us.20230601.gappssmtp.com header.b=iauBTHPB; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=resnulli.us
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=resnulli.us
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b7355f6ef12so196941266b.3
        for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 03:11:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1765537902; x=1766142702; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Qi0kf4DHgZSF0itXehy4M1IigW5Ye60xVK7z3FqTfn4=;
        b=iauBTHPB/kYvCWaG+gZXix1aKPd5pH1a65a7kwwJ6jP83aNhh3NmmIqkNHieaJlPxy
         CHHRuGYMn80P9NSMicWru9MAm/JK+VgWsnvpeKN7RryKoIt2GRY/wMO4I9dPwc6HJ3em
         TLRhesGA2nCcanFaS6HPCBfFeZ5fiQr+Tm3JhCtLi8thlKri5u7WFSLiBFFkFjC76KI/
         60auXu7YE+369LsABH6c52p1jgLXPmvp/icXVNXKjeCNawb/Jm4/sI7Zemk1frAZzDBC
         /+G4GMq2lqqtJ7ll5bDqP/Co2IwwLb8aWl1sddFx7sTyxec2qNU9ri/d6Vw5oLdgfkGO
         h8mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765537902; x=1766142702;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qi0kf4DHgZSF0itXehy4M1IigW5Ye60xVK7z3FqTfn4=;
        b=sKeSOlYsbjUg+jvL0K8qTcouD7CiIw9tJFGvjg1JYtzI3WpMGc2SSS9NwkSpN5/bMr
         DOcsqfUZEsyxd0fL6fikPX2Uq4fekoQ+gw0+eDQdNOqK7oKE+GMG3uD8GXe6nA4tOPXL
         4cI7HExxkJrAwyHsXrQE4RDbbuMIHgl/dv4sIVxZOHmv6grXZ0I2SC09i5ZaQAimpskZ
         wMfETvptGj3AUiOoZzAAO2o+B5JmJOwdyshIlmP/WTnwEl8PAHEQRf9PhBRs4Pmm4dfD
         4ipCnkkSG5XC84YOgQtGlrqQWBVGjcGS1D6ppl3hFid93AU1Wf1PF7zFVOTmCSs1JeWN
         YHJw==
X-Forwarded-Encrypted: i=1; AJvYcCXAoX1WuzCaW3Wc5L9C8yAr9Yfqm4Pgd/Dbu331uoiRJgfvvmWxxzJ3UTfkqiTauCGpp5zaA538ToUH@vger.kernel.org
X-Gm-Message-State: AOJu0YwH8D347oQ1TYNokLisXCEZM6NHIgTQ889xEyQuLdThyNMql2os
	TjxIgnRQdYeHCo1lQY1/hWbvhXsH/9fnyF3LMJGsos9FAvD6pD6SBdd12ogUnD5Qvck=
X-Gm-Gg: AY/fxX77KG1PJEwT2uGZjCgK0Cei2KcxKFAxJRTgvq+fjSgXQFgkJPBR2O2x7UBTBle
	U0l1wQn9pi7Kz/iBrV9W4HOazkh0UyaQ/ep9deHhP/4lZ1C5YSOzF9NLX9iGjM9OoxbLXzA26Q3
	eGqQOS8Z1nYnaJZR85qrln52WiziNd2iqKkYV8I4ZTWEdCWcCR8RPkzb2Zw87BXPVQ/jiqHpDfz
	hCufKxx6LjPoz313vBuH9vkJA2dxSjh5kCo2l2psjHSt0fiaaOdMyARpdcwej7KsHgYjuwsWUDy
	YMOrZ6TXJHOZlYafAAP153GH1iy+5iJyjYV9wqMhC1vW/SadVcyIeo91muaKoyNonqusw0LaSbK
	TcQVtMPcOYL94zgHYIFvbuTqAIcLuUevQhTbutPM59Ds4uTZU11FZYLhZq2eBn6qX2eS3dH5avn
	HyPkYhSx3HPktQq7QRbdA=
X-Google-Smtp-Source: AGHT+IFmv5COMcmA4FT2YaOWuFJZ5E1bCiuQtdXozfcy670hljn+VWTpNS9TuLAE+vRQXNnfHH9yBw==
X-Received: by 2002:a17:907:960d:b0:b72:ddfd:bca7 with SMTP id a640c23a62f3a-b7d23c1b1a9mr146070066b.35.1765537902376;
        Fri, 12 Dec 2025 03:11:42 -0800 (PST)
Received: from FV6GYCPJ69 ([85.163.81.98])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa570174sm530693266b.55.2025.12.12.03.11.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Dec 2025 03:11:41 -0800 (PST)
Date: Fri, 12 Dec 2025 12:11:38 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Ivan Vecera <ivecera@redhat.com>
Cc: netdev@vger.kernel.org, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vadim Fedorenko <vadim.fedorenko@linux.dev>, Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, 
	Grzegorz Nitka <grzegorz.nitka@intel.com>, Petr Oros <poros@redhat.com>, 
	Michal Schmidt <mschmidt@redhat.com>, Prathosh Satish <Prathosh.Satish@microchip.com>, 
	Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
	Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, 
	Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>, 
	Richard Cochran <richardcochran@gmail.com>, Jonathan Lemon <jonathan.lemon@gmail.com>, 
	Simon Horman <horms@kernel.org>, Alexander Lobakin <aleksander.lobakin@intel.com>, 
	Willem de Bruijn <willemb@google.com>, Stefan Wahren <wahrenst@gmx.net>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org
Subject: Re: [PATCH RFC net-next 11/13] dpll: zl3073x: Enable reference count
 tracking
Message-ID: <utlzkss7sj6xgur4aysi3wpt2v4ssxmh5rxsrk7hiqitjlx2qi@btkzluwtapsb>
References: <20251211194756.234043-1-ivecera@redhat.com>
 <20251211194756.234043-12-ivecera@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251211194756.234043-12-ivecera@redhat.com>

Thu, Dec 11, 2025 at 08:47:54PM +0100, ivecera@redhat.com wrote:
>Update the zl3073x driver to utilize the DPLL reference count tracking
>infrastructure.
>
>Add dpll_tracker fields to the driver's internal device and pin
>structures. Pass pointers to these trackers when calling
>dpll_device_get/put() and dpll_pin_get/put().
>
>This allows a developer to inspect the specific references held by this
>driver via debugfs when CONFIG_DPLL_REFCNT_TRACKER is enabled, aiding
>in the debugging of resource leaks.
>
>Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Care to do this for the rest of the users? Not so many of them...

