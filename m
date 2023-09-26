Return-Path: <devicetree+bounces-3389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E9F7AEA9E
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:41:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id B7C131C204DA
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 10:41:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27C4663AE;
	Tue, 26 Sep 2023 10:41:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C426257C
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 10:41:48 +0000 (UTC)
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C86D6FB
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 03:41:46 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1c44c0f9138so59875155ad.2
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 03:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695724906; x=1696329706; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lSWJC//rMZdfMKBsyCVpinhHKBaaOO78CmTA3WsbQBU=;
        b=WI+g2pfo8ahqvhVyISn9tV2CgwUA0myNyOqucA4Xluxz8ytjhSivH+YqbjcNRgbrcn
         CNkH0v7QCtsITIxbjnaaSJuNuNtJAOU/+vysl7kX9txggtD14Lh4tk3hiPngZvhNDgBf
         F9ZmPWtqqwo7qRWMgi0yWUNYsn/Q7GgI9ylwAiDE+Vt14kCMV4YcuorgpGQDjFtd/27T
         zPZfFZ1RUTvMTDkqaz77n/Y1Ern+NPXSsejRUnx8hJIwjL8yvzdENJ1xXLKFIvJnfaUC
         nnEWRXiGjejLLzjZ/6elv5Ds6HHRUApTVx6pzPvyDNxRTKRStYVBa0pn2eZL/kQA2BRn
         BdPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695724906; x=1696329706;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lSWJC//rMZdfMKBsyCVpinhHKBaaOO78CmTA3WsbQBU=;
        b=gF59k/eaZ/9aeU/h1T2UGyeLA6dAOiN4Ov+wKQTJ5JF/qy/gMLU5xrZ6+LNiK8fWMQ
         smjFtKYa2OhYxrDh2rnbl1B12UO3WNGOP5ERBLQEyus3H2zZDkvtKkcSanRu9XtNpoPD
         3W8vLVVjKh+JHZMjemHmb8ORFlFRPauzhko7pLLCQQtpZQMr1FjpULtHWPhvhFbXCXIz
         hkb1wEhlABg0O/3mrO1c84LcXKSvkCxhX800vALA/QmpCX1Ud3sF8eE+xChTlK/wSrLj
         CnGy6AD8DfRu8nnYS9MHPUeT9Bm2Zd8M/BLQB8TaR2H4xzlYmrwfrVUZBEp8txcRN9KD
         OxJw==
X-Gm-Message-State: AOJu0Ywpxlh4NZX7A3cecPJQ2lNDIL8wAKkv56vb+d5C2GPbgfBnlrj8
	6PtRygpl2cbck6+wJEAMd4AdT9+RgvPTseQn8DJ1Zw==
X-Google-Smtp-Source: AGHT+IEABlvjgUiC/l2noFGyiy4QIJmw3FGGuAmOCafGHPrLpz1AuVmuQMCO92cIIizonKPuAukE5QxkYH2JLwrNPNQ=
X-Received: by 2002:a17:90a:728e:b0:274:6503:26d with SMTP id
 e14-20020a17090a728e00b002746503026dmr6479095pjg.33.1695724906247; Tue, 26
 Sep 2023 03:41:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230925220511.2026514-1-robh@kernel.org>
In-Reply-To: <20230925220511.2026514-1-robh@kernel.org>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 26 Sep 2023 11:41:35 +0100
Message-ID: <CAJ9a7Vji+0vqSPBq2Kr14wZ5mXFCqi7f+L79i3VmE=rg9UGchw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm,coresight-cti: Drop type for 'cpu' property
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
> 'cpu' has been added as a single phandle type to dtschema, so drop the
> type here.
>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/arm/arm,coresight-cti.yaml | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/arm/arm,coresight-cti.yaml b/Documentation/devicetree/bindings/arm/arm,coresight-cti.yaml
> index 6216cfb0a188..b9bdfc8969cd 100644
> --- a/Documentation/devicetree/bindings/arm/arm,coresight-cti.yaml
> +++ b/Documentation/devicetree/bindings/arm/arm,coresight-cti.yaml
> @@ -92,7 +92,6 @@ properties:
>      maxItems: 1
>
>    cpu:
> -    $ref: /schemas/types.yaml#/definitions/phandle
>      description:
>        Handle to cpu this device is associated with. This must appear in the
>        base cti node if compatible string arm,coresight-cti-v8-arch is used,
> --
> 2.40.1
>

Reviewed-by: Mike Leach <mike.leach@linaro.org>
-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

