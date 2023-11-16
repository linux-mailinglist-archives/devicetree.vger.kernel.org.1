Return-Path: <devicetree+bounces-16342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0CF7EE52C
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 17:29:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD2081C208A3
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 16:29:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D0803A8EB;
	Thu, 16 Nov 2023 16:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A5F3AD;
	Thu, 16 Nov 2023 08:28:58 -0800 (PST)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-1ea82246069so482665fac.3;
        Thu, 16 Nov 2023 08:28:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700152138; x=1700756938;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SHpsolomr1O8IoNZNmWuKJghrcMhtNlGZuOKvxu4Hyg=;
        b=rAPReS48rdOynBf8fZhqE/qyTywjD1L+pbSHRe0OssTTniIOmVafVxA5uvW+6qUFqv
         aGnNH3afUMy3hfRnpcqgkCRZk8VMaHpmDmb1v1whtA3pp9adiv3HmRfSTYhUzRDn/NrB
         +No9dhTTbtXmr3moQWOUiVS54B+omnb+Dfy9vdrIkE3bbksL+UyCW3R4nS/LbAO2lZWr
         jhj/XpvMALMqgqbfQwr1y/wUtElRaLSYNxlA+HG2pcn31qZ3VvCpA8xqeZFu9INzDJU8
         Ii/HCBPN0rP+vwJ8rqTFo8VpWlMT7jZGbLHaA7aDyECvHmCbFdMIYwjP1ks+iVbSmdzV
         2yFQ==
X-Gm-Message-State: AOJu0Yx7QbGIFAIelyRvsLgwdpOE+2tAve+Ycpj3JABysEJSUBaAcpkR
	FeJ8v+Ierj3ulNv/8FALLw==
X-Google-Smtp-Source: AGHT+IEN7OCfu+AaT2L23F6tUrWC+9ztcQ5rH5Mxyh/0SpCy8jBoSr8cd13j15tMtuSmOolw2nIBzQ==
X-Received: by 2002:a05:6870:6c05:b0:1f0:6931:e301 with SMTP id na5-20020a0568706c0500b001f06931e301mr21055183oab.0.1700152137858;
        Thu, 16 Nov 2023 08:28:57 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id bp9-20020a056871280900b001eb79fedbb1sm2156514oac.17.2023.11.16.08.28.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 08:28:57 -0800 (PST)
Received: (nullmailer pid 2438161 invoked by uid 1000);
	Thu, 16 Nov 2023 16:28:55 -0000
Date: Thu, 16 Nov 2023 10:28:55 -0600
From: Rob Herring <robh@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Inki Dae <inki.dae@samsung.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/5] dt-bindings: gpu: samsung: constrain clocks in
 top-level properties
Message-ID: <20231116162855.GA2435337-robh@kernel.org>
References: <20231112184403.3449-1-krzysztof.kozlowski@linaro.org>
 <20231112184403.3449-3-krzysztof.kozlowski@linaro.org>
 <20231113-sultry-cold-d63dd9f015d9@squawk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231113-sultry-cold-d63dd9f015d9@squawk>

On Mon, Nov 13, 2023 at 01:51:30PM +0000, Conor Dooley wrote:
> On Sun, Nov 12, 2023 at 07:44:01PM +0100, Krzysztof Kozlowski wrote:
> > When number of clock varies between variants, the Devicetree bindings
> > coding convention expects to have widest constraints in top-level
> > definition of the properties and narrow them in allOf:if:then block.
> > 
> > This is more readable and sometimes allows to spot some errors in the
> > bindings.
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> 
> Åcked-by: Conor Dooley <conor.dooley@microchip.com>

  ^

Not an 'A'. I only caught this because I go thru everything 
Acked/Reviewed-by first and this one was missed.

Rob

