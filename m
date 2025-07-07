Return-Path: <devicetree+bounces-193563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A2DAFAEAD
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 10:32:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E5FAD7A9F1C
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 08:30:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF2A828A3E1;
	Mon,  7 Jul 2025 08:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com header.i=@resnulli-us.20230601.gappssmtp.com header.b="EONtYeiX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4393027A10D
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 08:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751877126; cv=none; b=T76thIxCVdp1aWz7fjSN9O9qkS8XoEM3ID9rCF1ynQe1iPd/joxXvzS5ge3t7daboB56VLAuBAOqm7kbYemE5N58s4An/SnGvfK8g8uY0HSLU3em21QFaZIorg5ms60MmA61R8xFpZVO/wZG2WuCD8Hct1S2377ow45lMRwUbec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751877126; c=relaxed/simple;
	bh=EokrUka+8q9BFBcMOPMx0zXPzrf3e9HtqUOEMOxQYtI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=alIST9ymfkxGyJhKhazLyFrDAi93Wwr7iGEWXrODJ/Fw4cbbaRRoBaQfPipcdnYrVBxLhXqAIYk+/dHqRpfvEvUOaMHKN8UomcDAOmw1JopsJnUN+vn06j/Evsf9OYpZAzHrTK3EnThwOx9QuFbHW0o9ahpWJrlizFKVhPcGaMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=resnulli.us; spf=none smtp.mailfrom=resnulli.us; dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com header.i=@resnulli-us.20230601.gappssmtp.com header.b=EONtYeiX; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=resnulli.us
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=resnulli.us
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-450cfb79177so15342685e9.0
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 01:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1751877124; x=1752481924; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jk0DSP+snP0yxTTILdaG1XmNWZzWY5PtYg8JXeBa+lA=;
        b=EONtYeiXWJn8LaG/NqokndqOoqXPgjEgcv/moDY8jYvTqtgRBC429lkhFxgDG20opY
         67sXTT2KL5lze2Z2LlSM/pk3O/u3GJ2eN4f4aa2bAxHiXe7qCH5Xt19XVLyyiKbv2zC7
         0d7ljB/zDp67PqFvNxPl4S8cMZRrOVrnQLU8bTzfH/aXJ2sh7hqbs+g6dEB7lSODJDRk
         CP496xERYKz5jvrSqbWGYbCCQbRUMZTNVQUWJ6zmCzq2z7trJLHliVXamVGKUpVzIgkD
         7wMCmV4GLtbaUyyyibI+Jy2Syta5dhu27pACG6iPBkzqH/n7eIYXRI3maabPSE4b0qtT
         jo+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751877124; x=1752481924;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jk0DSP+snP0yxTTILdaG1XmNWZzWY5PtYg8JXeBa+lA=;
        b=oBe5G8Wxw2vy5Op8IEHq6bomb6en9wP27TZ+SV6PoBc8ZRM6WTDwXPF26dxwuGdX3S
         4rBuyWUxLPzLRyfPDeRinkp+GgndB287M644FBN3ydZGnLNiV33D6EwZ7bSzz9segNCI
         ATvAoRKH+leuz6c/byP6RsCtEgMgYJaTIkyIljO4q7of9Y3o1x5uLmHVdSHMaGPAtdHQ
         CAhJDbe+3u/LAVDiiRYhPK2foEPVjNYZlDScl6Cy3L2e4oSNOtR3m5dHeKkvidc4DMmL
         3ggxdLbuVeL7hgxgK3Ob6UhnrsjxAyTUarSrKip2PE5SvwSrNkxSZVatUfGuowvtguz8
         MQpQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0Rb1SEPY0rgWfFL+mLrJTCCU9Mcqkub7yn+dXA3NrNZMhbCQyVC7oRauQ61c9L1ZktPQMQs5sbHQS@vger.kernel.org
X-Gm-Message-State: AOJu0YwNorRtLm1D2jgxgK2P6SjuxwMlYBnb0kLs+RVNUvsEpp/raGmx
	e0a0afLX+CFzyo+iCbjwPckh3TPNMaRPABdeGO8+8+dM6q+jVdp6EhDxD29ayY33aB0=
X-Gm-Gg: ASbGncvzkKVoNXzRjBiesIS2nt2/nGMWj12ugo2YB3gXTpfM9XhgvrHkwaWtiPA7J3d
	StcrXel13nKE150+wZPbpCJi0jo0zzenjQxZ0SFN5oHUNE5xptvR3dXKQ9p6enn+4A5KMOoMs9X
	FsXnlKsJTk+R+Ilm1KJOEdh4RLKkYk6PIdSAeEMMRo3RivFYTy254z2hX2NGESbgFIvjtv9vucR
	+G2nuepnneyT6RrsJzpFRPMQArSZmDIMjGca92znWs+O0FDa7qt/UJiiM6A9rdly7tY0wWTFvWf
	rcgNV9kc9/pM9aSBi/Ty/6nFDnHviOnnKE0fJU42PFW0DQNQI0yZ/rwMRsqQ4Ho=
X-Google-Smtp-Source: AGHT+IHColHEC/SleUA2FaGBvscXm99Qomr8ucT1fEnsASZPSUvkTO+j3OPSIwgqWNk5VgdiiF29Ag==
X-Received: by 2002:a05:600c:3b1a:b0:43c:fffc:7886 with SMTP id 5b1f17b1804b1-454bf4092c3mr47838765e9.8.1751877123334;
        Mon, 07 Jul 2025 01:32:03 -0700 (PDT)
Received: from jiri-mlt ([85.163.81.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454abea60d5sm94590505e9.1.2025.07.07.01.32.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 01:32:02 -0700 (PDT)
Date: Mon, 7 Jul 2025 10:32:00 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Ivan Vecera <ivecera@redhat.com>
Cc: netdev@vger.kernel.org, 
	Prathosh Satish <Prathosh.Satish@microchip.com>, Vadim Fedorenko <vadim.fedorenko@linux.dev>, 
	Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Jason Gunthorpe <jgg@ziepe.ca>, 
	Shannon Nelson <shannon.nelson@amd.com>, Dave Jiang <dave.jiang@intel.com>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-doc@vger.kernel.org, Michal Schmidt <mschmidt@redhat.com>, 
	Petr Oros <poros@redhat.com>
Subject: Re: [PATCH net-next v13 12/12] dpll: zl3073x: Add support to get/set
 frequency on pins
Message-ID: <idzmiaubwlnkzds2jbminyr46vuqo37nz5twj7f2yytn4aqoff@r34cm3qpd5mj>
References: <20250704182202.1641943-1-ivecera@redhat.com>
 <20250704182202.1641943-13-ivecera@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250704182202.1641943-13-ivecera@redhat.com>

Fri, Jul 04, 2025 at 08:22:02PM +0200, ivecera@redhat.com wrote:

[...]

>+static int
>+zl3073x_dpll_input_pin_frequency_set(const struct dpll_pin *dpll_pin,
>+				     void *pin_priv,
>+				     const struct dpll_device *dpll,
>+				     void *dpll_priv, u64 frequency,
>+				     struct netlink_ext_ack *extack)

Unrelated to this patch, but ny idea why we don't implement
"FREQUENCY_CAN_CHANGE" capability. I think we are missing it.


