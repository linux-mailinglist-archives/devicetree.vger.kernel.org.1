Return-Path: <devicetree+bounces-3391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 874997AEAB1
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:46:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 39044280E24
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 10:46:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98A8813AD5;
	Tue, 26 Sep 2023 10:46:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA1D125A9
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 10:46:55 +0000 (UTC)
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A963095
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 03:46:53 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1c5cd27b1acso74438505ad.2
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 03:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695725213; x=1696330013; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=x7TAsjUHwem8Kp86Puq8NmvImkceCNDS6+Uq+a+QFMw=;
        b=pDXbG8Xm71Y2BsAvg1+lQWnpD/Ninx80RNMMq3WV7Vx+HxPX3hJ+iuz6LVW78Ze47u
         qBtJu33fxGKAAR2Q7Pu5W/6ZOCdZu91xH+n+shmkVVCa/2o3t5ump1xMR9bO1OH+KlO7
         wDjQIvFbuo5GDw9D9zox7jUv1lWBmWX77NlAh5OCBwCSjdX+/ltKAR17BTZ5tFASOee/
         Gm2IK/eNkTAeKXyqpufKsdWFBoZWie7cNQjVH5XgRV0ph6T0wlZE1krTQD4bXjPxmZ1K
         KWHoT62mH/KUlzOKFrJdcRBZxVOj5wrGzFDnfbpQaIxErrCBvAR9Y++ZlLsUevh60Rf9
         od1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695725213; x=1696330013;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x7TAsjUHwem8Kp86Puq8NmvImkceCNDS6+Uq+a+QFMw=;
        b=VFt7M6Qr0vfxgWacvQ965obe1ZdWho/NKQHGmXrKjWSuDKhRZvuMhZ90I4a/oT21sX
         NASd35EwVhwa38Fup1ltl1YfhpSPE7neXLhckYViV+J9NWMWBuU6tyD0LDnW6cEFsyDX
         hzFNBhG1kWVLVGkUvEauxP2ynF4iA8ios+VsR5riBaWqrBmAlVFzKxmUB3B4LaXAk0xn
         8IfmrtCm/OqEhW5aQc5EIdjFA2DCvgh7tw4uOS5MUDH84fNZUfHeeeMIr4Q2AJeuf+1o
         rbhP8KvHc/zrlZa9iraBd271TndGIDbeq2JO5pDeWBqY4Ac4ctZw9olytsE2wlWjZ2qO
         eNyg==
X-Gm-Message-State: AOJu0YzrTDvs9d5Hh1JDyfsalGTdgjbsaZ09zlamrlH+XLWa6Nj6CSQ2
	fwnVaErbAVYXFZ3J6jxQRiweqmcjFC5n/rS/TJvN3g==
X-Google-Smtp-Source: AGHT+IE2rvdbnUFQ/+0OzMfhE1u2rLdf5Kj27JFCEBMZGP0PKvSZWXltI4Lakowyh92+G1HNfqGqfgwtGCwp6VLIkMU=
X-Received: by 2002:a17:902:b709:b0:1c5:e1b7:1c13 with SMTP id
 d9-20020a170902b70900b001c5e1b71c13mr8024462pls.3.1695725213126; Tue, 26 Sep
 2023 03:46:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230925220511.2026514-1-robh@kernel.org> <20230925220511.2026514-2-robh@kernel.org>
In-Reply-To: <20230925220511.2026514-2-robh@kernel.org>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 26 Sep 2023 11:46:42 +0100
Message-ID: <CAJ9a7VgoeByBL2C+q1D6kxK2tNQj4QxjeE7q61CfRAQMvPM8XA@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: arm,coresight-cti: Add missing
 additionalProperties on child nodes
To: Rob Herring <robh@kernel.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, James Clark <james.clark@arm.com>, 
	Leo Yan <leo.yan@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, 25 Sept 2023 at 23:05, Rob Herring <robh@kernel.org> wrote:
>
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
> diff --git a/Documentation/devicetree/bindings/arm/arm,coresight-cti.yaml b/Documentation/devicetree/bindings/arm/arm,coresight-cti.yaml
> index b9bdfc8969cd..2d5545a2b49c 100644
> --- a/Documentation/devicetree/bindings/arm/arm,coresight-cti.yaml
> +++ b/Documentation/devicetree/bindings/arm/arm,coresight-cti.yaml
> @@ -93,9 +93,7 @@ properties:
>
>    cpu:
>      description:
> -      Handle to cpu this device is associated with. This must appear in the
> -      base cti node if compatible string arm,coresight-cti-v8-arch is used,
> -      or may appear in a trig-conns child node when appropriate.
> +      Handle to cpu this CTI is associated with.
>
>    power-domains:
>      maxItems: 1
> @@ -112,12 +110,12 @@ properties:
>      description:
>        defines a phandle reference to an associated CoreSight trace device.
>        When the associated trace device is enabled, then the respective CTI
> -      will be enabled. Use in a trig-conns node, or in CTI base node when
> -      compatible string arm,coresight-cti-v8-arch used. If the associated
> -      device has not been registered then the node name will be stored as
> -      the connection name for later resolution. If the associated device is
> -      not a CoreSight device or not registered then the node name will remain
> -      the connection name and automatic enabling will not occur.
> +      will be enabled. Use in CTI base node when compatible string
> +      arm,coresight-cti-v8-arch used. If the associated device has not been
> +      registered then the node name will be stored as the connection name for
> +      later resolution. If the associated device is not a CoreSight device or
> +      not registered then the node name will remain the connection name and
> +      automatic enabling will not occur.
>
>    # size cells and address cells required if trig-conns node present.
>    "#size-cells":
> @@ -129,6 +127,8 @@ properties:
>  patternProperties:
>    '^trig-conns@([0-9]+)$':
>      type: object
> +    additionalProperties: false
> +
>      description:
>        A trigger connections child node which describes the trigger signals
>        between this CTI and another hardware device. This device may be a CPU,
> @@ -140,6 +140,21 @@ patternProperties:
>        reg:
>          maxItems: 1
>
> +      cpu:
> +        description:
> +          Handle to cpu this trigger connection is associated with.
> +
> +      arm,cs-dev-assoc:
> +        $ref: /schemas/types.yaml#/definitions/phandle
> +        description:
> +          defines a phandle reference to an associated CoreSight trace device.
> +          When the associated trace device is enabled, then the respective CTI
> +          will be enabled. If the associated device has not been registered
> +          then the node name will be stored as the connection name for later
> +          resolution. If the associated device is not a CoreSight device or
> +          not registered then the node name will remain the connection name
> +          and automatic enabling will not occur.
> +
>        arm,trig-in-sigs:
>          $ref: /schemas/types.yaml#/definitions/uint32-array
>          minItems: 1
> --
> 2.40.1
>

Reviewed-by: Mike Leach <mike.leach@linaro.org>

-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

