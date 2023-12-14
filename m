Return-Path: <devicetree+bounces-25542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 216FC81392C
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 18:56:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A698FB21823
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 17:56:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4E3E67B70;
	Thu, 14 Dec 2023 17:55:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 515CAAF
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 09:55:55 -0800 (PST)
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-5913b73b53eso2180306eaf.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 09:55:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702576554; x=1703181354;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=f+ggBAsNl/SO1BPagRujEHiLGgCPQPrmAyl7WswRSzg=;
        b=ttkYh1yw603Ts6VUsUh4wCylhOeWWGqGeQpwckEW1mBQOGTR9On7rAoktUP0SC12+f
         etoS9LXbVaOVls60vxtDIb+pP2YRfG07NwN6pXmtpEYSXyj2xDjZg2UDYtCvSdF/h/Cs
         gW+0tdSStnNVzavmamqsnU63FG8u57ej4Q846UCtyicVP4VUIuW1hPekrb2UdfQ2Arsh
         9urDrjTVRiXvFabSy/A/Q7wy1JH7vKrw0GbcjRtcU64wmpoWAyvmo7nzm958XbC3vTEy
         F51WMMyeGW1yPpGrvff1FTXeYzn4jsG5K2/A9oKq6xenhZKtU7cLPhdd8hab7V0STWqv
         jsUw==
X-Gm-Message-State: AOJu0Yxc1Tvvv41hLyboPUmuKriwzjdhw0J6c4jlfIIKQFeB0qsydIMP
	rKPfXhmHLxMBfkxtF8Q5lQ==
X-Google-Smtp-Source: AGHT+IG4QWnnRvW0ICIvB7B7R3tJBDhaqW5yfulK+YTN5QpleTTt8vlH6ibmm1Hp6r64xUkZPsO+Kw==
X-Received: by 2002:a05:6820:2292:b0:58d:974b:5056 with SMTP id ck18-20020a056820229200b0058d974b5056mr8007514oob.1.1702576554625;
        Thu, 14 Dec 2023 09:55:54 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id y9-20020a4a2d09000000b00584017f57a9sm3584089ooy.30.2023.12.14.09.55.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 09:55:53 -0800 (PST)
Received: (nullmailer pid 646665 invoked by uid 1000);
	Thu, 14 Dec 2023 17:55:52 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com, bwicaksono@nvidia.com, YWan@nvidia.com, ilkka@os.amperecomputing.com, will@kernel.org, Rob Herring <robh+dt@kernel.org>, rwiley@nvidia.com, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
In-Reply-To: <3c2dd41b585efe44d361f41fcea0181ff2a9c9c5.1702571292.git.robin.murphy@arm.com>
References: <cover.1702571292.git.robin.murphy@arm.com>
 <3c2dd41b585efe44d361f41fcea0181ff2a9c9c5.1702571292.git.robin.murphy@arm.com>
Message-Id: <170257655252.646649.16048051740823218749.robh@kernel.org>
Subject: Re: [PATCH v2 4/5] dt-bindings/perf: Add Arm CoreSight PMU
Date: Thu, 14 Dec 2023 11:55:52 -0600


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

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml:27:111: [warning] line too long (114 > 110 characters) (line-length)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/3c2dd41b585efe44d361f41fcea0181ff2a9c9c5.1702571292.git.robin.murphy@arm.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


