Return-Path: <devicetree+bounces-12277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1F07D8A42
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 23:27:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E2AB1C20EEA
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 21:27:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A670A3D3AF;
	Thu, 26 Oct 2023 21:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495684426
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 21:27:33 +0000 (UTC)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74DD01AC;
	Thu, 26 Oct 2023 14:27:31 -0700 (PDT)
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-6ce2ea3a944so908032a34.1;
        Thu, 26 Oct 2023 14:27:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698355651; x=1698960451;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/EMXIcpHSKnRTuLylII/ZpQ5n4GTqlZbG/j7hrJ68Ck=;
        b=xFfs/QC5lAPPrpRPE7n1kbXKeLx8jgDTkHntXMltHAbuAIfQlO4P4COz3P891TiKbJ
         9miK2LnaVMzqPMAOpCWSbp7aTwDO5DE4R8W3DMvDnxTU6jkfIUs3YzerTmfGCpaWwDPf
         9nISZsyca6VQfz+PcewXB4eTdbna1MEE8DzXMk4NN07Zyhjzz8St3p/g/jH48R9HOnu5
         y2z3CHvLZANxvhqU/E9IxMNWpM/d2O/hkcdMUjjro01sR88rSpYA9J0ESYbs88jzV3PX
         VvBcGnIgScWgx7s2No8KkWwlMa14H9t2sN6MkqeR9tzjm9LS5Qguwt2ffUNYRQGpGWRe
         f4Tw==
X-Gm-Message-State: AOJu0YyvnkNsriSnVanoVOL/jtS9GWgVvTKcwTnOY5yGztXgRV/03KEC
	99d4hSiPCz9OZ+VyfgSYrQ==
X-Google-Smtp-Source: AGHT+IFU5nALSUr7ZK5qe0Wg8jsRH4jAloExK8pSw1hfRVORNKptCU3NQtqMAgqNRjrLsXHkTeh2+w==
X-Received: by 2002:a05:6871:3418:b0:1ea:7bd1:c491 with SMTP id nh24-20020a056871341800b001ea7bd1c491mr1100791oac.41.1698355650783;
        Thu, 26 Oct 2023 14:27:30 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id xv8-20020a05687121c800b001e9dabc3224sm21020oab.50.2023.10.26.14.27.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 14:27:30 -0700 (PDT)
Received: (nullmailer pid 426723 invoked by uid 1000);
	Thu, 26 Oct 2023 21:27:29 -0000
Date: Thu, 26 Oct 2023 16:27:29 -0500
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>, linux-pm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, "Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: cpufreq: qcom-hw: document SM8560 CPUFREQ
 Hardware
Message-ID: <169835564570.426629.7094287034889572855.robh@kernel.org>
References: <20231025-topic-sm8650-upstream-bindings-cpufreq-v1-1-31dec4887d14@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231025-topic-sm8650-upstream-bindings-cpufreq-v1-1-31dec4887d14@linaro.org>


On Wed, 25 Oct 2023 09:25:06 +0200, Neil Armstrong wrote:
> Document the CPUFREQ Hardware on the SM8650 Platform.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
> For convenience, a regularly refreshed linux-next based git tree containing
> all the SM8650 related work is available at:
> https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
> ---
>  Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


