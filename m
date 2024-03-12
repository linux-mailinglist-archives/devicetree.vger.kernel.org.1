Return-Path: <devicetree+bounces-49948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EEE878E65
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 07:04:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B3388283554
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 06:04:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96DD538DFB;
	Tue, 12 Mar 2024 06:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vh3u5K7u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4CE51E48C
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 06:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710223474; cv=none; b=mKN6k6UxlGIU8z8M2lBhMUJOgbTB9slZzdCZ4kGqk/n5xjBmR8Gb9kLZqKFN+Viu8uJxMTCK22l5g/4b9m3RKYyvFbgTE6qF9+oNxeadMqCdtufEsjL1KMkJLY19mCUck/e1ZI0/fRUA/RXkS5YdIvikfqEAAc8+BBDupXCKR0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710223474; c=relaxed/simple;
	bh=9jB4t/FMl4MSxLFMoUWxqI02cw1lVYppihYctJKdru8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X98ZdctQv+VQWIbyZcHs76KUfmO1Cx5sU+fZ6JmauaGjUjeG1pgqtIC9VuVIESKNcZ8iNbbxbigtnUIhOuNwGvuoQ+lBXfQCep4PWoli72ZrZyakNns2AfhKoUOm1ZwQtj9mi+5+XnSnr/8aBdbRjJibgBzAhUx4sIVFNUU5Eks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vh3u5K7u; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-5cddc5455aeso3058311a12.1
        for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 23:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710223471; x=1710828271; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Qi1j9nXbepLSnAZq2xPJYsLpHSLoOTfVPK3ch6zUNmo=;
        b=vh3u5K7uLi7b0htaFCjydnLKB5SOw+PXWbjDCybcGKpLMeAzm5FkQ9g7Qxt3S5L9Rl
         guH9NyFkVmwuNYSoFxRDispu7irn9Rd6XVmbHOdOOlHGiIUgFv5mXcEB6E9wjk1ZhIOO
         T8XPsDkvGasALQDGUk/l2s0Csc8BpJUZsdTGLIZOBKG549rA3DJxtMxdGNT7TnEHuaEo
         GecEYZYHfkdpUccdL+3u/GO7uaIp5bZx7bZJ957Y7SSnt8xT0NtlwU6Qydh66tzVoew/
         TpnU/Lb+hrrwdgpUdxtHzSzMYlWLR/Ij5RaAMtbDr9M8gnmTpeiIsqI7bZ6P9v04FYuv
         0Zxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710223471; x=1710828271;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qi1j9nXbepLSnAZq2xPJYsLpHSLoOTfVPK3ch6zUNmo=;
        b=lPYIjATImp+yeA0DoakEob0gxVF+toBs3PRq6z5oIBvlUt1Q6H9vZdZA/Bp9kWZyTM
         GlwoTz5WKbvIYEj4IDJdxwCRIeMKsmS1+3nIbSYf8a+NVKgGYbWMNwOo+vHZll/zwOZ5
         0m/QC3eJrQvY32Ka2qq/KK3fRpFerV37qVVK8vJrIjHmVL6nVmFLtayvJKq7urj4tO7E
         L1B9ZyuE5R55rYNiFXI53b4gaQpSfkrjmZkwRNcLY4Ge/uaYA+fhhzdAqOweBekLy4uw
         10FkaDPG6a05ZxmE6JFrvPvUEA+yKNBYdZXY2jbl8rEvW/rlv+LD08BOSbDo5SoiPHWj
         Q4WA==
X-Forwarded-Encrypted: i=1; AJvYcCWtfvZXfS3cdTjx5u+mrqOT1xLaYDB4dePbplLSkfcPmU3GqC8FrXfB8MciM0cj2FSWHXSDYYUPnVB/h1bG7NNbA3YKzDd1TKmodw==
X-Gm-Message-State: AOJu0Yz4JWsFOhZC/vA5HsdhovydMEHr204PhPasZ94W52s9zizp12ER
	T9c0HAXbMGLIQ9hIIEnJqvAEDGVpIBE5w6tQfYxKG353q7N9LVNVAd/A+cIYzJ4=
X-Google-Smtp-Source: AGHT+IHXsJZxoKfM1XfX/YP/0RviH05W5+ufj1/onjKWZOloDTG2V7hvnC4M3ITEMpJ9QD+Yu+oTTw==
X-Received: by 2002:a05:6a20:8e14:b0:1a1:3cff:874e with SMTP id y20-20020a056a208e1400b001a13cff874emr7401881pzj.8.1710223470921;
        Mon, 11 Mar 2024 23:04:30 -0700 (PDT)
Received: from localhost ([122.172.85.206])
        by smtp.gmail.com with ESMTPSA id l4-20020a17090a150400b00296a7ac8b5fsm9451769pja.6.2024.03.11.23.04.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 23:04:30 -0700 (PDT)
Date: Tue, 12 Mar 2024 11:34:27 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Viresh Kumar <vireshk@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: dma: snps,dma-spear1340: Fix data{-,_}width
 schema
Message-ID: <20240312060427.jizd3bvsbh4erfrh@vireshk-i7>
References: <20240311222522.1939951-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240311222522.1939951-1-robh@kernel.org>

On 11-03-24, 16:25, Rob Herring wrote:
> 'data-width' and 'data_width' properties are defined as arrays, but the
> schema is defined as a matrix. That works currently since everything gets
> decoded in to matrices, but that is internal to dtschema and could change.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/dma/snps,dma-spear1340.yaml      | 38 +++++++++----------
>  1 file changed, 17 insertions(+), 21 deletions(-)

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

