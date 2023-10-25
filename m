Return-Path: <devicetree+bounces-11554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B237D62AD
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:29:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B3E48B2102A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:29:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1642A17722;
	Wed, 25 Oct 2023 07:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="NJpK7cDj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 744F02D60B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:29:41 +0000 (UTC)
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 643A4DD
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:29:39 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5384975e34cso8385833a12.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1698218978; x=1698823778; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GaJ6zuWvLeAZ+++ztXhxYXgcxHY1LVJke6okHi+19jg=;
        b=NJpK7cDjGGcyvVbkPs7oPrWy6HP70s2F3Gxq47QyX+WqzGSRAaTq73cOL69VslnVj4
         nlDpzMk9ZfGP9oqTlbipioYuBOhan2OsxPc3pDg8Nx9mc/rChQjNJI+jreIQDeYWrnCL
         19ZXu4eVOA8ilhvULEghUvyhVEi5PYaDzsBTOwqe5FMljIU6uUsapzb0diIxprGjH+Qc
         JkvBVBPlKOR/ZmcVUfFmYFvHRJwVQZcFKDJfQnoI992vOUoklNIM49dlYDXagXIDJnJG
         NDnSHer8lj3SfBvycgZgEI2vabeVlBIaoTAqquD8jjcwqULY3LrRXhTZCs170Y35xMxo
         ib7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698218978; x=1698823778;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GaJ6zuWvLeAZ+++ztXhxYXgcxHY1LVJke6okHi+19jg=;
        b=Pw8EHxRCa2X5+OZgwgWsAgB5zSFh9pNz/EyR+Zm8WWed6P2lseMp0FzkMarHeVScZe
         6H1fcncjSMjoMKLl53AsEq1kDEUGESegT2gFOVqWdRTvJBralzawFqReh7W9BuKlD7ph
         nknx8uD52X9mR0rqb7sWQjewtoQqVlVuM8WFPtbaBUGfm/cQaHlZmzcTg+/geWhmMLBY
         a2MY43enYJ+UEgZK49e2RWoS4HUkbK/CzikWcviAuywKoq92dk53gMkMhWueVi6+nJhy
         lq5Gno6if+WOz/rodSWMkZ6yXWdg2msyn9t3Y8cNJ6Yf+BcmDuuwNOI44JJ1/TImWZec
         KisA==
X-Gm-Message-State: AOJu0Yz1A8VHluMvLldNw+tgexK9Z40wcsaMrvSF9MYjzSG5QKK4vNq5
	WdL+losDrm+rIoGw2o4XdiBr3g==
X-Google-Smtp-Source: AGHT+IHPmzZHfHPpMFOB8IpLnVIKGpxikP7sHcZ5pnFTtK0BR5d6mEiHX/eYSI4M+bomv8jRLrOWHA==
X-Received: by 2002:a05:6402:27d4:b0:540:88ad:11a1 with SMTP id c20-20020a05640227d400b0054088ad11a1mr4370282ede.39.1698218977887;
        Wed, 25 Oct 2023 00:29:37 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id s21-20020a056402037500b0053e0395059csm8881402edw.21.2023.10.25.00.29.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 00:29:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 25 Oct 2023 09:29:37 +0200
Message-Id: <CWHCDVXDDU74.3U8VFCO1HHIDU@fairphone.com>
Cc: <linux-arm-msm@vger.kernel.org>, <dmaengine@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: dma: qcom,gpi: document the SM8560 GPI DMA
 Engine
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Neil Armstrong" <neil.armstrong@linaro.org>, "Andy Gross"
 <agross@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>, "Konrad
 Dybcio" <konrad.dybcio@linaro.org>, "Vinod Koul" <vkoul@kernel.org>, "Rob
 Herring" <robh+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>
X-Mailer: aerc 0.15.2
References: <20231025-topic-sm8650-upstream-bindings-gpi-v1-1-3e8824ae480c@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-bindings-gpi-v1-1-3e8824ae480c@linaro.org>

On Wed Oct 25, 2023 at 9:25 AM CEST, Neil Armstrong wrote:
> Document the GPI DMA Engine on the SM8650 Platform.

Hi Neil,

The subject of this patch and a few others refer to 8560 instead of
8650. Please fix :)

* dt-bindings: dma: qcom,gpi: document the SM8560 GPI DMA Engine
* dt-bindings: usb: qcom,dwc3: document the SM8560 SuperSpeed DWC3 USB cont=
roller
* dt-bindings: soc: qcom,aoss-qmp: document the SM8560 Always-On Subsystem =
side channel

Regards
Luca

>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
> For convenience, a regularly refreshed linux-next based git tree containi=
ng
> all the SM8650 related work is available at:
> https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upst=
ream/integ
> ---
>  Documentation/devicetree/bindings/dma/qcom,gpi.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml b/Docume=
ntation/devicetree/bindings/dma/qcom,gpi.yaml
> index 88d0de3d1b46..0985b039e6d5 100644
> --- a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
> +++ b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
> @@ -32,6 +32,7 @@ properties:
>                - qcom,sm8350-gpi-dma
>                - qcom,sm8450-gpi-dma
>                - qcom,sm8550-gpi-dma
> +              - qcom,sm8650-gpi-dma
>            - const: qcom,sm6350-gpi-dma
>        - items:
>            - enum:
>
> ---
> base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
> change-id: 20231016-topic-sm8650-upstream-bindings-gpi-29a256168e2f
>
> Best regards,


