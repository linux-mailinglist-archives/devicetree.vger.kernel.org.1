Return-Path: <devicetree+bounces-14147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FFE7E264E
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 15:10:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 019571C20B27
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 14:10:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 576E8273FB;
	Mon,  6 Nov 2023 14:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF78273F9
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 14:10:28 +0000 (UTC)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60788BF;
	Mon,  6 Nov 2023 06:10:27 -0800 (PST)
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6ce291b5df9so2895380a34.2;
        Mon, 06 Nov 2023 06:10:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699279826; x=1699884626;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Klrpc9/HMitoNsxi5eUxwCyC1GjEBwFfy1ew9+R/Oi4=;
        b=iQbUwz95c/REL6UrjmdTE4JPDh1LZYGRxr5sawPQDtu/xQRLHvBzevP8hog/J6b6Xm
         5SEW59pWombhW5VkhYcj2CHuR03WyaqNEyx0uvXN7mLbCNaZsZ5SQ7JqyornryDndSA8
         ackeL86uFsK8kkpmJmo0qaS8lt7xnP9R6+UXq338DXmfM46rp0T3BS/6clMi0MmgbyGh
         JokSjx16+O7k91ubckKf7GyalOliGPpuJn42hr8zH/gSOvKr9mKHXVIAg2cfwG4RebKr
         WD0SBN8gCVON9N4Lhdby7Yypm3vMcns3WiFUa5q17dxHgjo69h045xqV5lAdUrhpZSVM
         u6ng==
X-Gm-Message-State: AOJu0Yxul6Elew3nJIR6Lt3/poIjwrnJ+fjsuRScn6tlXbMUk0+Ppx9H
	sr3ZmuDzKARI2Q5tSfI8nA==
X-Google-Smtp-Source: AGHT+IH9k4iHDl+o7Uuw5S+gQLCcJqGlXx7N0fl3/Hzby7Ru3jSa5a6u0muTzBb+4QVMKQFJfJPnKA==
X-Received: by 2002:a05:6830:a:b0:6bd:1059:8212 with SMTP id c10-20020a056830000a00b006bd10598212mr29309594otp.26.1699279826655;
        Mon, 06 Nov 2023 06:10:26 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x46-20020a05683040ae00b006b8e8884f2fsm1273579ott.51.2023.11.06.06.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 06:10:26 -0800 (PST)
Received: (nullmailer pid 219226 invoked by uid 1000);
	Mon, 06 Nov 2023 14:10:25 -0000
Date: Mon, 6 Nov 2023 08:10:24 -0600
From: Rob Herring <robh@kernel.org>
To: Elliot Berman <quic_eberman@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>, Marc Zyngier <maz@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org
Subject: Re: [RESEND PATCH v2] dt-bindings: qcom,pdc: Add compatible for
 SM8550
Message-ID: <169927974215.213488.494934081428498717.robh@kernel.org>
References: <20231103224304.764730-1-quic_eberman@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231103224304.764730-1-quic_eberman@quicinc.com>


On Fri, 03 Nov 2023 15:43:03 -0700, Elliot Berman wrote:
> From: Abel Vesa <abel.vesa@linaro.org>
> 
> Document the compatible for SM8550 PDC.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
> ---
> I noticed this patch was never picked up while running make dtbs_check.
> No changes since it was last sent except the trivial rebase that came
> from me picking the change up.
> 
> Original patch:
> https://lore.kernel.org/lkml/20230127132558.1176730-1-abel.vesa@linaro.org/
> 
>  .../devicetree/bindings/interrupt-controller/qcom,pdc.yaml       | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!


