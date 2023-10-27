Return-Path: <devicetree+bounces-12565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A457DA279
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 23:30:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 54982B2148F
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 21:30:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 000823FE2C;
	Fri, 27 Oct 2023 21:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA3413FB1C
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 21:29:59 +0000 (UTC)
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBAD0B0;
	Fri, 27 Oct 2023 14:29:58 -0700 (PDT)
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-1e9c9d181d6so1574394fac.0;
        Fri, 27 Oct 2023 14:29:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698442198; x=1699046998;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kNGJKvEldoT9PmYXR0BTbSqlmq0sSRwAAORJfa42T8Q=;
        b=LVNKf/LKBZ+l4UiE1atmI9AZ8nPUl1jRjDfiIk/t+L3nzSNDGt2MSEiDwKU5LnWbxJ
         MoF0DcXXlbUs1oHUEyG+gLnU1w3nemRbqXk8v4iNpOg7I4u2l81ELtryXAPaur5+WFIA
         pHHTW5+/JXhmPIwD60Y3f1ccUKitLtcbx8D4XK44beIbljdFLyuvpRbVxTskmmgBRwH/
         PSZuAc3VGPrMbg0uKKboQIsD+vdhPInmd0ukMzgJrI+MK0exJt6AVYPeGHCv0bEacxak
         RQSOtBPSoifGf6EG98aQhOKE8uCvIDYPLAHjWPfmxzzZD1P6IXSmOSrHUiNnhxTrYB5Q
         kINQ==
X-Gm-Message-State: AOJu0Yy5bT2JEt90IJm+e+9hIsU4HEybQNZx+f3TEqywzwHIjJe91QDY
	+mqQyhn+yzHzbvxcvzoNvA==
X-Google-Smtp-Source: AGHT+IGuKz3y2T4ah9nZVE2uj6UueeplwSlnm5Su8lnIY0Azaoq7IaEILJphqDhnUBYiQtTwQFuTGA==
X-Received: by 2002:a05:6870:1712:b0:1e9:8a35:863a with SMTP id h18-20020a056870171200b001e98a35863amr5036395oae.20.1698442198089;
        Fri, 27 Oct 2023 14:29:58 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id n40-20020a056870822800b001dd5857e243sm460947oae.14.2023.10.27.14.29.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 14:29:56 -0700 (PDT)
Received: (nullmailer pid 3404725 invoked by uid 1000);
	Fri, 27 Oct 2023 21:29:55 -0000
Date: Fri, 27 Oct 2023 16:29:55 -0500
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sre@kernel.org>
Cc: Jacopo Mondi <jacopo.mondi@ideasonboard.com>, devicetree@vger.kernel.org, linux-media@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: vendor-prefixes: add GalaxyCore
Message-ID: <169844219487.3404665.10937682775716979340.robh@kernel.org>
References: <20231027011417.2174658-1-sre@kernel.org>
 <20231027011417.2174658-2-sre@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231027011417.2174658-2-sre@kernel.org>


On Fri, 27 Oct 2023 03:12:01 +0200, Sebastian Reichel wrote:
> GalaxyCore Shanghai Limited Corporation manufacturers
> CMOS Image Sensor and Display Driver IC.
> 
> Signed-off-by: Sebastian Reichel <sre@kernel.org>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


