Return-Path: <devicetree+bounces-12981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6227DC193
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 22:06:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B36AEB20B03
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 21:06:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C69071BDDA;
	Mon, 30 Oct 2023 21:06:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662241A736
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 21:06:09 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DBD910A;
	Mon, 30 Oct 2023 14:06:08 -0700 (PDT)
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-6cf65093780so3320834a34.0;
        Mon, 30 Oct 2023 14:06:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698699967; x=1699304767;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2wlVKoWg8H92OiKuF0MQ5MCb3k6h3mwZbtACIGack/Q=;
        b=P+m7jMRDtsdGH56UjQcO8J16vlGubwGzufYvyHbRhENojCQqcxMxpylZY0LlFWEwlP
         e0p+C6S1KigdzS5gwn7q57iyF7rI7jiFmSaNYVKiy0fq43vyUogw9AMQWD5xBV1OEQ5v
         SccGNhMbLcHiMZZz7d0yqf/u4MFBELx7DnxbO42n7mUY8YL7M08ZyxF0uG5joSGg2iqi
         o2+C3OfPBOdScn4NHHb2Hl853PhO9EuIsqKPf6YmDGH5rUuLAIycI+QejpTBIN/VzD7+
         Kg6f9rT4QxBUqP/aFCbaOFuoiDE8spseVHscn6pQoc3xVxLzCoerDOeAMoYqMAg5tZuo
         lZ8w==
X-Gm-Message-State: AOJu0YwEd/PyMgyUDARmtEo4BJH7tCrantjTs1Vjd1DTE9ym1SBwVkHy
	F7to3Yd7S5V4gy6IiVE5Kw==
X-Google-Smtp-Source: AGHT+IHW6VbQAh0SIlYuhyuKZRMbhyMqqDmiK9t9DQyCdRqDAN82MX1+PQ4dTQxwXpnJf9VewUOPMA==
X-Received: by 2002:a05:6830:3494:b0:6b8:82ed:ea2e with SMTP id c20-20020a056830349400b006b882edea2emr14514036otu.4.1698699967310;
        Mon, 30 Oct 2023 14:06:07 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id a26-20020a9d6e9a000000b006c65f431799sm1574294otr.23.2023.10.30.14.06.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 14:06:06 -0700 (PDT)
Received: (nullmailer pid 2462504 invoked by uid 1000);
	Mon, 30 Oct 2023 21:06:05 -0000
Date: Mon, 30 Oct 2023 16:06:05 -0500
From: Rob Herring <robh@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Leo Yan <leo.yan@linaro.org>, Mike Leach <mike.leach@linaro.org>, James Clark <james.clark@arm.com>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, coresight@lists.linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: arm,coresight-cti: Add missing
 additionalProperties on child nodes
Message-ID: <169869996316.2462412.6288547804608819639.robh@kernel.org>
References: <20230925220511.2026514-1-robh@kernel.org>
 <20230925220511.2026514-2-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230925220511.2026514-2-robh@kernel.org>


On Mon, 25 Sep 2023 17:05:06 -0500, Rob Herring wrote:
> Just as unevaluatedProperties or additionalProperties are required at
> the top level of schemas, they should (and will) also be required for
> child node schemas. That ensures only documented properties are
> present for any node.
> 
> Adding additionalProperties constraint on 'trig-conns' nodes results in
> warnings that 'cpu' and 'arm,cs-dev-assoc' are not allowed. These are
> already defined for the parent node, but need to be duplicated for the
> child node. Drop the free form description that the properties also apply
> to the child nodes.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/arm/arm,coresight-cti.yaml       | 33 ++++++++++++++-----
>  1 file changed, 24 insertions(+), 9 deletions(-)
> 

Applied, thanks!


