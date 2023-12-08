Return-Path: <devicetree+bounces-23107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5126680A462
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 14:24:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 822951C20AEE
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 13:24:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C5031C6B5;
	Fri,  8 Dec 2023 13:24:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEE869A;
	Fri,  8 Dec 2023 05:24:01 -0800 (PST)
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6d9daa5207eso1024691a34.0;
        Fri, 08 Dec 2023 05:24:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702041841; x=1702646641;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UFeKun/Ab01EZFKqneUQr7Yz/7P4BKP04UwHAmDFXZo=;
        b=g7OLXy2t030lvz0Vu+PFn6e5O0nXTmdCHwZscc8NnGKEzquQMPpBWkGi9B8Mg5Oh1/
         UTstChPU5rJS+/IFZbMKQT0f0rWK2TPgWzAJb0I+TSfzxTFBPHM0h7MUBmbCOY6ahMT/
         jKXSkZGJaQqLdb/DsKia9O710NjoNvErOcPNymMXpSeTYSajVPy5f/QWMGlEGaNduvx1
         6ul7AzBq4je6UWy4vxVZyTPfJQqVX/mZZ8uPmIEOVf9+hcvFQuZvgUHUUWTNmzMoi/nU
         flEIibMx6P4LV39lvvpTRN1D7I21i5RFGUSssddr34vMylhOg7+LeOEVtvc6m+eHVBeW
         9DaA==
X-Gm-Message-State: AOJu0YyOtlrMll/iZ9R/Nzg9oeFj73uB+NC9kORGamO/peknIGZcXV+T
	R1lW6t0zx5+7hj8qfIfC+Myj9ny5FA==
X-Google-Smtp-Source: AGHT+IEwvAkq9jK6mGhGY5c1svm3c0hRJ957nkwsNCjpz2Tmg7njhNnkY9qrkTB/OkIZBtm29yuCYQ==
X-Received: by 2002:a05:6830:1159:b0:6d6:441a:a6c with SMTP id x25-20020a056830115900b006d6441a0a6cmr21946otq.12.1702041841089;
        Fri, 08 Dec 2023 05:24:01 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w26-20020a056830061a00b006ce28044207sm297875oti.58.2023.12.08.05.24.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 05:24:00 -0800 (PST)
Received: (nullmailer pid 1155913 invoked by uid 1000);
	Fri, 08 Dec 2023 13:23:59 -0000
Date: Fri, 8 Dec 2023 07:23:59 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Subject: Re: [PATCH] dt-bindings: cache: qcom,llcc: correct QDU1000 reg
 entries
Message-ID: <170204182670.1155646.3136881067040734815.robh@kernel.org>
References: <20231107080436.16747-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231107080436.16747-1-krzysztof.kozlowski@linaro.org>


On Tue, 07 Nov 2023 09:04:36 +0100, Krzysztof Kozlowski wrote:
> Qualcomm QDU1000 DTSI comes with one LLCC0 base address as pointed by
> dtbs_check:
> 
>   qdu1000-idp.dtb: system-cache-controller@19200000: reg-names:2: 'llcc2_base' was expected
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Recent LLCC patches were not tested on QDU1000 thus the LLCC is there
> broken.  This patch at least tries to bring some sense according to
> DTSI, but I have no clue what is here correct: driver, DTS or bindings.
> ---
>  Documentation/devicetree/bindings/cache/qcom,llcc.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!


