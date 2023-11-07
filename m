Return-Path: <devicetree+bounces-14383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 366397E3F76
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 14:02:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 671D51C20B9A
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 13:02:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6E6A2C851;
	Tue,  7 Nov 2023 13:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r5Few5gp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F43F12E7B
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 13:02:02 +0000 (UTC)
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8871F7AAC
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 05:01:59 -0800 (PST)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-5a82c2eb50cso61635957b3.2
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 05:01:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699362118; x=1699966918; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vKVO9Km+ohatrlDcgogUtJ4mNCpxTTFHDSK1wMZmOyc=;
        b=r5Few5gpA76Ifz0dX1zlEQNbsMf92BhqfRDD+0U85UtZhe8OTiUVKxvIVlEXOJfE4i
         y3ayktHHwujW29SkiK8YLXqxM1ZbbhM+f/I7MzIA2afZ3aac/Wq0VWzNkAuVqAeCy/1P
         7h7g6SbKBR4yryNNbg5v/5SofqqZRFlaKOYr0uotIQfY8JPw+8hXdqTVTZIl3dbaQGTx
         PChQBD72Qe+PFPMcyePbGppoTiBTvpkm3kelhZ5fgFEnsSYSmhtkzmjaK9w8v0uSF043
         ICL6zsglBB9ML92k7sOpiJqsqggFo339o8fy6CK/lJfg50HOTIgYTw3hQEHTeyWIh6XN
         cBhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699362118; x=1699966918;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vKVO9Km+ohatrlDcgogUtJ4mNCpxTTFHDSK1wMZmOyc=;
        b=ZhANaTs9nVGTBseJx9M39liOnbSFaCtX9ZPAaKytW8AogZfhZVj2CoQltgjr9ih8R5
         XajntC8pCYpLvdBEjJMe3OrP45YDaO5ogs67Okb2cWxdpN3QI8OmKjgDz7Xss2k3lmbT
         1GDuYFaCtSFG2QR6STodJCG8DGG0prP98NxHCRXHii45E+2RgENqZDc+Az01jghldIUN
         3+ghJOuDRzuwvo8tD2i1ZbuNJtXStcrmFkjvhjZTlWweH/4M9praM89t2iJbsMSknNt+
         i0vloEftFw7V5QJs6MoKLcSKrkMhPK9rxgVRwPJ0jUurJ9s//qx+utD1AOvXCYPx3P/J
         aswg==
X-Gm-Message-State: AOJu0Yz+iNzqR6cqUlh+QYcph6B8RT3LzGk+PWV6iNgeLzbEV47m75FB
	tTFGH0uFfy+D9c2LyNnBOkMkUix6t6OI+Mmgu5NusA==
X-Google-Smtp-Source: AGHT+IHKQoKSsmRcg/sOieixzdu1e2l7NoB3NK+XgDvDXaMmTUjWJdL0uuTj6OuaO4uthq+8deJFWHoWrBfrpSar5O8=
X-Received: by 2002:a81:5210:0:b0:5a8:181e:8d6c with SMTP id
 g16-20020a815210000000b005a8181e8d6cmr10151699ywb.10.1699362118505; Tue, 07
 Nov 2023 05:01:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231107-refclk_always_on-v2-0-de23962fc4b3@quicinc.com> <20231107-refclk_always_on-v2-1-de23962fc4b3@quicinc.com>
In-Reply-To: <20231107-refclk_always_on-v2-1-de23962fc4b3@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 7 Nov 2023 15:01:47 +0200
Message-ID: <CAA8EJpqvCJsft3Y-m2ZYORBg=6P7EhT-PsCSkuQ4xaxuf3KOwA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,qmp: Add PCIe
 qcom,refclk-always-on property
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_vbadigan@quicinc.com, quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com, 
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com, quic_parass@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 7 Nov 2023 at 14:26, Krishna chaitanya chundru
<quic_krichai@quicinc.com> wrote:
>
> Document qcom,refclk-always-on property which is needed in some platforms
> to supply refclk even in PCIe low power states.
>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml        | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index 2c3d6553a7ba..263291447a5b 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -93,6 +93,13 @@ properties:
>    "#phy-cells":
>      const: 0
>
> +  qcom,refclk-always-on:
> +    type: boolean
> +    description: If there is some issues in platform with clkreq signal

nit: there are some

However this still doesn't describe what kind of issues with clkreq
you observe. I mean, clkreq is just a GPIO pin.

> +      propagation to the host and due to that host will not send refclk, which
> +      results in linkdown in L1.2 or L1.1 exit initiated by EP. This property
> +      if set keeps refclk always on even in Low power states (optional).
> +
>  required:
>    - compatible
>    - reg
>
> --
> 2.42.0
>
>


-- 
With best wishes
Dmitry

