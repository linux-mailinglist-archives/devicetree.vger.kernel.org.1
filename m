Return-Path: <devicetree+bounces-25596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 300F3813D37
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 23:23:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DAA691F20F20
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 22:23:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 721D92C69D;
	Thu, 14 Dec 2023 22:22:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF4496AB84
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 22:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-6da4893142aso68696a34.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 14:22:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702592535; x=1703197335;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IMQMwJd9xaZGRsEiGYUsiE5l2C6EMtbma5zygaGEwUE=;
        b=MA8HTzVEquxmjyhj39WybWPSmtRu5PI8901Y7GvRzyK+ije+GcxyoTqsATkmGvQ5Fz
         3vxRnqwKsqrMzecevpBEYgFa2WNFCBtJV3lDecOxSudlVPy8fAph8/bdCLuslX852xD6
         WPE5YiTSO7g5ncCdT7kgA/rehiikHWjqrbzIwLcYg6yyxwkalFymial8KGHsXX/ASeV5
         q/4eOmIKfiEI7qrm0L1LN7mKzWvJ/yHBksoX4gpyGrYstBMYTqoLWEd98pW2rcxu9QBq
         9pGcH02FXLEcvCzcNadES34NNqJqrK+2NL9zyBfFZhr60J3ofdlNqYTgCifoNwyccle0
         CTMQ==
X-Gm-Message-State: AOJu0YyYt4PvydNRWhb+LVuOc9HGnd3OWCThynvXAxDtMuX7Ej6tZbDw
	fnEFg1dABnl9/vFgSTko/g==
X-Google-Smtp-Source: AGHT+IF8PRpEdy7GmE83n9Cf0gt5H7z2RE7g5isCY1lvipql7ZU3L/SbYhiI2C1l5XUpG0norFYWug==
X-Received: by 2002:a9d:65d6:0:b0:6d9:e756:ca8a with SMTP id z22-20020a9d65d6000000b006d9e756ca8amr10663883oth.21.1702592534759;
        Thu, 14 Dec 2023 14:22:14 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id p26-20020a9d695a000000b006d85518ae62sm3326425oto.76.2023.12.14.14.22.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 14:22:14 -0800 (PST)
Received: (nullmailer pid 1043392 invoked by uid 1000);
	Thu, 14 Dec 2023 22:22:13 -0000
Date: Thu, 14 Dec 2023 16:22:13 -0600
From: Rob Herring <robh@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: will@kernel.org, Conor Dooley <conor+dt@kernel.org>, bwicaksono@nvidia.com, devicetree@vger.kernel.org, suzuki.poulose@arm.com, rwiley@nvidia.com, linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, mark.rutland@arm.com, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, ilkka@os.amperecomputing.com, YWan@nvidia.com
Subject: Re: [PATCH v2 4/5] dt-bindings/perf: Add Arm CoreSight PMU
Message-ID: <170259153356.1024552.13737544149896160495.robh@kernel.org>
References: <cover.1702571292.git.robin.murphy@arm.com>
 <3c2dd41b585efe44d361f41fcea0181ff2a9c9c5.1702571292.git.robin.murphy@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3c2dd41b585efe44d361f41fcea0181ff2a9c9c5.1702571292.git.robin.murphy@arm.com>


On Thu, 14 Dec 2023 16:31:07 +0000, Robin Murphy wrote:
> Add a binding for implementations of the Arm CoreSight Performance
> Monitoring Unit Architecture. Not to be confused with CoreSight debug
> and trace, the PMU architecture defines a standard MMIO interface for
> event counters following a similar design to the CPU PMU architecture,
> where the implementation and most of its features are discoverable
> through ID registers.
> 
> CC: Rob Herring <robh+dt@kernel.org>
> CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> CC: Conor Dooley <conor+dt@kernel.org>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> v2: Use reg-io-width instead of a new property; tweak descriptions
> ---
>  .../bindings/perf/arm,coresight-pmu.yaml      | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml
> 

With the line wrapping fixed:

Reviewed-by: Rob Herring <robh@kernel.org>


