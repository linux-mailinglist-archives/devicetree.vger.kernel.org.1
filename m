Return-Path: <devicetree+bounces-187719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A47AE11F2
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 05:53:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF4613B8950
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 03:52:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8552A1E0DE3;
	Fri, 20 Jun 2025 03:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JqQwGxGa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C33C322E
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 03:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750391598; cv=none; b=oRrVqT0RxinZzI5NdqBjBs7oOIgPl/q+I94jD+Bn3XpLNSrgCcrrSq+G8ZhxSHdCGE6S9zkmybywGm79vMxlO2Z7D385/e7Sw8PvC0xd50PV2mLzOSK6OvQwHABVIaliHDx05z8zORk4fnEL4sAwL2do3PG8VJRmx4hYuyqii+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750391598; c=relaxed/simple;
	bh=VwrYgiU9qLl9h5RiaQZdlQWFJ3QfhivfwTz0HNGgX18=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TyXfy7mw9RxQiD+g8tc1Q0hAJSj89KLIFVvFMM0CSfEJRB+kxeqwFr80NLnSAMoFBUt5LzxU2C6HG9vQX3wJbu4mr3O3aN6BH03DrQu3azU9NQGQT98IGZ24hjzp546d3o7SPXi2x0EwwaBKSLHwjgoJp7/91x9yStd8LLuXaQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JqQwGxGa; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2363497cc4dso10937005ad.1
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 20:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750391596; x=1750996396; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QQes6Cas/O2Il66TXoZhd9SrmsyHWm0zoxLufdtfzV8=;
        b=JqQwGxGaF1GPbQAa5dem8DcGR1+oVjdrZjrwBS5xbOB0ZwN/qBYKb3mltcI1H2tyBK
         cyQGSjenlrPtRkeJOlt7cNV/BeCSaw7FHGCqjIG0qaW/da3h9Ia48nwVlj47wi2SJO//
         lFuLPDEWCrixZZ9NVcbCYmo55z6UJMbtO5sobXdZEotS93LqbMqCCjAk2k5flMhgJ7Pv
         nhglpMShYEhMV0dR6pPyHq3W+RV6FyGBiGOZi+PlqnLDNx/8THvf6IWzgDHyAxHa1PqP
         re6UvpC9M8hfEBnN82OySsb18Vp6IK7xoqq61XmLVVe/6UVzAvMl9ARqETR7yitKHOpf
         ZgPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750391596; x=1750996396;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QQes6Cas/O2Il66TXoZhd9SrmsyHWm0zoxLufdtfzV8=;
        b=DfNs7lvLVlZ0Vsz4x1dVnkxWB300QGVko6AVJqr0Uh0KduFKwz+TeoJWCR7w9FjJWE
         3pgRMrUT1qn3hzRfWG6CA0noFdaBn93TrHGxvXtJQ92XvtF9bvOq4MWE/QkBl4xtkH7G
         YC0ZLd6APDDuqWV4khX+6ztVPIlBWr97rJZLrBkXLVtRgXQJXb6VLzxjZzJv1KmOb8i6
         3pQvnk1A9+7mJD4dXLjZeK4eCJnj89/BqpzgvOPP3gtKSxSj7uKtsqrglAWrm+wzjVTh
         pg60LXT4fRkFVkhDh45zYRRzG6thZz+7OJdYpoo+PL73CYyCEvj4fH+u9l30GXVLWyvg
         SG3Q==
X-Forwarded-Encrypted: i=1; AJvYcCWP//4nZLr8TNn7haQ7T2NmdSKfRnpDFIFgKExM2+jdoBw7I7BObtXmvfon0wW9G/tUaMUJUqE5zYv8@vger.kernel.org
X-Gm-Message-State: AOJu0YyzL/RdRrFlCiW3liex0MJZsq/33hMBLMC5H3L5w/YfzWrkin+Z
	GAqeWkEhSEKUzlUCFK2VvuSW9DyELPDrL3jkK8SDlJ8PRaDkz6ilZMuh
X-Gm-Gg: ASbGncskQNNIOHMo1yQ7KOsoCinYxNdxWEnb9xmyGiWG6dW4SaXCVNGPso+gcAm5EMS
	2JpI1w4JXjF53B2kv8HlOcptBsU+nD3USk4rEYfsDB6eWglaAwoqtdqYZnyfZlsW9vyPBp6wSI5
	HVTYjLD+e9Rt4fDWM+tfvvaztsh3+VUWKjJ0fQhN4GNr1KnUy6zjWLdNJd6f1bHOOlaj/HGwe6S
	9jvPJJrD8BuN5lH6do32L7kjaaA14FawbZ/h81qRP+igTDbcssyZT+K00TT3MsMfFM1JpjEWEv3
	objwAZ+jCIpDnItM3a+YVsQc84BP0RSDYssdb+wTtIC5Gip/T1wZm6sFn35qM48/UqdQjDVuU0Z
	Eqg6YJobD2NaL7FdTioMQhoX1/dPYrz3R9wXWI1iX+a3gSsMo/LA=
X-Google-Smtp-Source: AGHT+IHuENhHTf6E8Z+FuiRNlT1PtBYuup5ughoLK0Km4Zg6G/ZLmMxp6en9/+WBezO9tZJgqfXJMw==
X-Received: by 2002:a17:902:c405:b0:234:ba37:87ae with SMTP id d9443c01a7336-237d97c89dbmr22895465ad.4.1750391596173;
        Thu, 19 Jun 2025 20:53:16 -0700 (PDT)
Received: from lcwang-Precision-3630-Tower.. (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d86ef84fsm6969405ad.216.2025.06.19.20.53.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 20:53:15 -0700 (PDT)
From: lcwang <zaq14760@gmail.com>
X-Google-Original-From: lcwang <lcwang@ieiworld.com>
To: conor@kernel.org
Cc: drm@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	noralf@tronnes.org,
	robh+dt@kernel.org,
	krzk@kernel.org,
	zaq14760@gmail.com,
	onlywig@gmail.com,
	cip-dev@lists.cip-project.org
Subject: Re: [PATCH 3/3] dt-bindings: display: Add MAYQUEEN PIXPAPER e-ink panel
Date: Fri, 20 Jun 2025 11:53:09 +0800
Message-Id: <20250620035310.735055-1-lcwang@ieiworld.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250619-earlobe-skiing-25605816a861@spud>
References: <20250619-earlobe-skiing-25605816a861@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: LiangCheng Wang <zaq14760@gmail.com>

On Thu, Jun 19, 2025 at 16:43:46PM +0100, Conor Dooley wrote:
> > spi-max-frequency:
> >   default: 1000000
> >   description: Maximum SPI clock frequency in Hz.
> 
> Does this actually not have a max?
> The display surely has a maximum supported frequency, which might be
> lowered based on the board it is connected to.

On Wed, Jun 18, 2025 at 08:13:38AM +0200, Krzysztof Kozlowski wrote:
> Don't send multiple patches but version them correctly.
> 
> > title: MAYQUEEN PIXPAPER e-ink display panel
> 
> Don't capitalize all letters. Mayqueen Pixpaper or whatever it is really called.
> 
> > description: |
> 
> Do not need '|' unless you need to preserve formatting.
> 
> > reg:
> >   maxItems: 1
> >   description: SPI chip select number for the device.
> 
> Drop description
> [similarly for spi-max-frequency, reset-gpios, busy-gpios, dc-gpios]
> 
> > additionalProperties: false
> 
> unevaluatedProperties instead

Hi Conor, Krzysztof,

Thanks for your detailed reviews!

To Conor:
Regarding the spi-max-frequency property,
you’re correct that the display has a maximum supported SPI clock frequency.
The provided datasheet for the Pixpaper controller does not explicitly specify this value,
but I’ve tested the panel on the RZ/V2H platform and found 1000000 Hz (1 MHz)
to be the most stable operating frequency.
The current binding’s default of 1 MHz reflects this tested configuration.
To ensure clarity and prevent misconfiguration,
I will update the binding to define a maximum: 1000000 constraint for spi-max-frequency in the YAML schema,
pending further datasheet confirmation

To Krzysztof:
I'll make the following changes to the device tree bindings:
- Update the title to "Mayqueen Pixpaper e-ink display panel".
- Remove the '|' from the description.
- Drop redundant descriptions for reg, spi-max-frequency, reset-gpios, 
  busy-gpios, and dc-gpios.
- Replace `additionalProperties: false` with `unevaluatedProperties: false`.

Best regards,
LiangCheng Wang

