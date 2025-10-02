Return-Path: <devicetree+bounces-223474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AE1BB588B
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 00:14:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CC9C74E2606
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 22:14:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC17426FA67;
	Thu,  2 Oct 2025 22:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KRssk/Hh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412C9255F28
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 22:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759443259; cv=none; b=Mnbvtt0sgNsUz82Sach8RnIXyN7x/DnwdtIalD5oVXJbXQh9Cno4ptVfkMrUMcJNzY1SMd2xjwxmocn53Y1GLsxyhdcXo9sc6G5nlS5y7bi3k082NFBHGY/yuFXViSL7i1a3LbanA8bk70VmUbFCpKfxdBOZc33U0Wsx3XQwDkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759443259; c=relaxed/simple;
	bh=bJqxID90rzeZQW6x4VioAiM9HO5SSBRl9HBk2YS5H4U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jep9jkO7NK/MjxtUYwailQlgYgQReNbNrd7hJoAGn+3Wjd+Fls/GPsvCQ8H2Bh5XAebswpJXBwDVeNO6KGlsx3yvRQDqK48V70Igtp5CQiznqq80vZ2VxwmtvqJc7UeNAnaavV1j0gCr0onllhT2rITYiH0mk3qXQowKv7TZ4EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KRssk/Hh; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-271067d66fbso14724845ad.3
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 15:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759443257; x=1760048057; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=H3afLalH6Ixhx5uorw5x+fuC8TSKfvIs8t48zMbaAbA=;
        b=KRssk/HhYlk35ehaI0gpGlh9LYbeb2RurGBEnSf4DyrH6KZqkDs7PdwhtTiQ2du+eQ
         C4UwFbmMBk7UjEOaxS786ftH0b5GYx9FU1km0nXmfjuXcjs7Gw67WFKsdwDqxXuD3fsF
         FuRY18ILEzo/cYlmwFw34KKKo6buuuhbMm2LsQbW1jXEw/YTza3XsWk3vbssAs/VH1yX
         5/nSXipMMKAoRB0vBs6JcbJHacaYdgx5tb+3KW8LM7uVmdo5qEy0p83Z3l/232YqqkvD
         0WzP4A3GjHNNxBQpcbA8R5orfhwkF3q92akMxSQBSlj6CQQBekFsiCnv85P1oR/BbKKr
         dA5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759443257; x=1760048057;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H3afLalH6Ixhx5uorw5x+fuC8TSKfvIs8t48zMbaAbA=;
        b=Tml7IfSAYYMneFC0ZHqpzfhGnUJ4U2D7V8MN255gjUZYXineV3+j1Go6SlWuwCD4NV
         Kw66sVIykeFNHDVLTYwqs7xinxmugCyKiORx9dnId1mLDaXEAuKYC7Ca6eQJDujJikfw
         TOIZ1gc6KNji6nisCgzv5yW+ffq9FiMsvuXIv+pwdVT/sb/mg1/aOaX0GrNaq5twLtsN
         IxrtkWsjCtPjQFQtNO4+KKLbk+hHaux16XbD9xJ0brXMoqhjxPEHgDkpgfaw7Vjx7YKn
         furxZ7o+RoZ4Itp923hocYp+3iYHijTzfZHF67G49Wyb3A2oVQI5J4/QaqMKxtFcEFzv
         c5xg==
X-Forwarded-Encrypted: i=1; AJvYcCUux6BCHUEEpxowyLre2CfGtnScrOCsZSR8guZ18A3zoD+QQ+GfthXJ7FD+z0VnJo4llvxRIkO2PP7S@vger.kernel.org
X-Gm-Message-State: AOJu0YzKE/3qkCVrKqrKBiolpdJ2esmIiHzOrVXRPvJi7uDJWa/L5oaI
	DUhHMuWAXF9SMmykVBwu7MpKNXLoRMDm2swEJuf4FFDAfckAGGjoMIDv
X-Gm-Gg: ASbGncucUEePjFKvMGwUuAJxJmjCXTLZUOBclP91yWzu8VMyOw+uD0hol9UpIKHXh6V
	OjCdmhSvZ4t4OiXuNas94vh32HCNvr+BYDlgERXABSfB/TCugoUNbXAT5fcfVfjP+lSD3U9ruA2
	9MkhTAMqG0hVQpNZH6IGzgyf5nZeIuAALg6l8l3vaItowPP5fxa8pOEkhg00CRJ713eSHYxYPXR
	NvYsnTb0letzatDNIgvY578ZscZm3BJZE+7IFDyIUhZs1VW+5Ze9YcM6oLjD0TnNJEBY0fLtgx4
	OWfiQagdCqE0kZ2P1F4x+DFePgmBw9GVyNUSONKx2XUxgLsogp/WQrRZn4rvmZUzkRIAK6iJUEB
	+a2PS/Q+AFqQSSxfbmkgzhSIlrJimF2IkLcUebXvwsOAKhQgdc17J8pc=
X-Google-Smtp-Source: AGHT+IENBul3bFqweSZ0dwqDKMkxMEi9ojWTa2JsfjOjJH/8VekQN37yrh4kPtbRCy3N115vb7fIgw==
X-Received: by 2002:a17:903:1b4f:b0:28d:18d3:46bd with SMTP id d9443c01a7336-28e9a6be1bbmr9153845ad.43.1759443257422;
        Thu, 02 Oct 2025 15:14:17 -0700 (PDT)
Received: from localhost ([2804:30c:b65:6a00:ceaa:2ed0:e81e:8f51])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-28e8d1127a3sm30497785ad.20.2025.10.02.15.14.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 15:14:16 -0700 (PDT)
Date: Thu, 2 Oct 2025 19:15:09 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Kim Seer Paller <kimseer.paller@analog.com>
Cc: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: pmbus: add max17616
Message-ID: <aN75bfJINa3nV57Y@debian-BULLSEYE-live-builder-AMD64>
References: <20250930-upstream-max17616-v1-0-1525a85f126c@analog.com>
 <20250930-upstream-max17616-v1-1-1525a85f126c@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250930-upstream-max17616-v1-1-1525a85f126c@analog.com>

Hi Kim,

For completeness, the dt doc could also have the SMBALERT interrupt.
Though, I see the patch has been accepted and I don't want to make upstreaming
take longer than needed. Maybe the comment below can be taken as follow up 
patch suggestion. Though, if you end up doing a v2 for any reason, you can add
my review tag.

Reviewed-by: Marcelo Schmitt <marcelo.schmitt@analog.com>

On 09/30, Kim Seer Paller wrote:
> Add device tree documentation for MAX17616/MAX17616A current-limiter
> with overvoltage/surge, undervoltage, reverse polarity, loss of ground
> protection with PMBus interface.
>
> Signed-off-by: Kim Seer Paller <kimseer.paller@analog.com>
> ---
>  .../bindings/hwmon/pmbus/adi,max17616.yaml         | 48 ++++++++++++++++++++++
>  MAINTAINERS                                        |  7 ++++
...
> +properties:
> +  compatible:
> +    const: adi,max17616
> +
> +  reg:
> +    maxItems: 1
> +
> +  vcc-supply: true

  interrupts:
    description: Fault condition signal provided on SMBALERT pin.
    maxItems: 1

> +
> +required:
> +  - compatible
> +  - reg
> +  - vcc-supply
> +

Best regards,
Marcelo

