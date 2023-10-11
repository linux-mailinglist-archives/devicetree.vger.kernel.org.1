Return-Path: <devicetree+bounces-7713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B7A7C5254
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:43:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9654281050
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:43:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 047AE1E537;
	Wed, 11 Oct 2023 11:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qj4xVyVP"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9883515481
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:43:22 +0000 (UTC)
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0892B94
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 04:43:20 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-53dd3f169d8so1135169a12.3
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 04:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697024598; x=1697629398; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZgxFWFlqtNB9y2KoDFsWngJ4vKWBFSBMlRLjDq6FqUA=;
        b=qj4xVyVPsrXDBZxWVxip23NHfdQHvXuxYt9nKvGyQ+yuJIkIQbASDZNqQJOZSCFvEh
         C6JLIOZnEROUtpR0NEGaBAgHVSSTh5oa1uhSMvWNIPB8XEV8hrfO7uMKtBlBideuuzcu
         aoMS5+7Z0o3l88oMzWqyTulh0NeN5Qv0lltLf+MwwDKtjhAvLyQWQU3RPu6fwVilZchX
         6DVtTWwJD+JUnA2Rxfyu32lAWdNo8z8mcO5GDyYpTZjafGGMbqflEqRom6Wfx5qRHjFc
         w/wesujSH43WkuisdlHeTDQkCNaQq61hpKp7H1/0nNhAEUtUF2XgGtO6KvmTLOKBYZX8
         dAeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697024598; x=1697629398;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZgxFWFlqtNB9y2KoDFsWngJ4vKWBFSBMlRLjDq6FqUA=;
        b=BotIggo/2k+Walg8ibH8Rc2cr6tP1nRMsK1txwawp/GFvJIpwcxSYFW1cx6xLEMU8D
         YK3KzVHHzSKLNY/jRFv0WqAdgNfB2zGP5IfQLEGv0ckZFoMoCKfBxiINJTaoYTHapy0F
         FZNIYMjSl1VYMG1JsXVNZjKqCxEadPaxPaNggKXp70u8QIqDHGqTKkciVdIzdjXdBA32
         61+VsnXGPlLlkbdqnKT6/JHtsntvFIhP1wBeErzZukM0P+4ft9XBSg1pYpc4tb/PeJEQ
         mF8oIb1465OvPqQFv5TAHyxpz745WLlJ6ZSyZVGxPq8exX2vQg6bFgvAsaJkTVTN8u/R
         hzlQ==
X-Gm-Message-State: AOJu0YyJfa9JwqaBRNlrud8A2ZyPA6fjRnTbraVF514nbWaF31H6Axdx
	uG2P7aGRPEXZpi47Km11GnPhyaYaF0Kk+c/pIGvhDg==
X-Google-Smtp-Source: AGHT+IF+0sYBl6h4x+B0Hh3LisaV7RDJ/W7t5rpHpMiyWZMWhMOJ9yAdGZnDXCwDAWqrX82dofTUxKy7oUeA7d1TUFg=
X-Received: by 2002:a17:906:8a73:b0:9a1:e758:fc73 with SMTP id
 hy19-20020a1709068a7300b009a1e758fc73mr17381841ejc.67.1697024598423; Wed, 11
 Oct 2023 04:43:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1695218113-31198-1-git-send-email-quic_msarkar@quicinc.com>
 <1695218113-31198-2-git-send-email-quic_msarkar@quicinc.com>
 <20230921183850.GA762694-robh@kernel.org> <28bf111f-b965-4d38-884b-bc3a0b68a6cc@quicinc.com>
 <8effa7e5-a223-081b-75b8-7b94400d42e6@quicinc.com>
In-Reply-To: <8effa7e5-a223-081b-75b8-7b94400d42e6@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 11 Oct 2023 14:43:05 +0300
Message-ID: <CAA8EJpp+3_A-9YXF1yOKdFweVKqrpTxvxKoJcUH6qiDHfCQ-dQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/5] dt-bindings: PCI: qcom-ep: Add support for SA8775P SoC
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: Shazad Hussain <quic_shazhuss@quicinc.com>, Rob Herring <robh@kernel.org>, agross@kernel.org, 
	andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	konrad.dybcio@linaro.org, mani@kernel.org, quic_nitegupt@quicinc.com, 
	quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com, quic_krichai@quicinc.com, 
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>, linux-pci@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev, 
	linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, 11 Oct 2023 at 14:14, Mrinmay Sarkar <quic_msarkar@quicinc.com> wrote:
>
>
> On 10/6/2023 4:24 PM, Shazad Hussain wrote:
> >
> >
> > On 9/22/2023 12:08 AM, Rob Herring wrote:
> >> On Wed, Sep 20, 2023 at 07:25:08PM +0530, Mrinmay Sarkar wrote:
> >>> Add devicetree bindings support for SA8775P SoC.
> >>> Define reg and interrupt per platform.
> >>>
> >>> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> >>> ---
> >>>   .../devicetree/bindings/pci/qcom,pcie-ep.yaml      | 130
> >>> +++++++++++++++++----
> >>>   1 file changed, 108 insertions(+), 22 deletions(-)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> >>> b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> >>> index a223ce0..e860e8f 100644
> >>> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> >>> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> >>> @@ -13,6 +13,7 @@ properties:
> >>>     compatible:
> >>>       oneOf:
> >>>         - enum:
> >>> +          - qcom,sa8775p-pcie-ep
> >>>             - qcom,sdx55-pcie-ep
> >>>             - qcom,sm8450-pcie-ep
> >>>         - items:
> >>> @@ -20,29 +21,19 @@ properties:
> >>>             - const: qcom,sdx55-pcie-ep
> >>>       reg:
> >>> -    items:
> >>> -      - description: Qualcomm-specific PARF configuration registers
> >>> -      - description: DesignWare PCIe registers
> >>> -      - description: External local bus interface registers
> >>> -      - description: Address Translation Unit (ATU) registers
> >>> -      - description: Memory region used to map remote RC address space
> >>> -      - description: BAR memory region
> >>> +    minItems: 6
> >>> +    maxItems: 7
> >>>       reg-names:
> >>> -    items:
> >>> -      - const: parf
> >>> -      - const: dbi
> >>> -      - const: elbi
> >>> -      - const: atu
> >>> -      - const: addr_space
> >>> -      - const: mmio
> >>> +    minItems: 6
> >>> +    maxItems: 7
> >>
> >> Don't move these into if/then schemas. Then we are duplicating the
> >> names, and there is no reason to keep them aligned for new compatibles.
> >>
> >> Rob
> >
> > Hi Rob,
> > As we have one extra reg property (dma) required for sa8775p-pcie-ep,
> > isn't it expected to be moved in if/then as per number of regs
> > required. Anyways we would have duplication of some properties for new
> > compatibles where the member numbers differs for a property.
> >
> > Are you suggesting to add the extra reg property (dma) in the existing
> > reg and reg-names list, and add minItems/maxItems for all compatibles
> > present in this file ?

This is what we have been doing in other cases: if the list is an
extension of the current list, there is no need to duplicate it. One
can use min/maxItems instead.

> >
> > -Shazad
>
> Here we have defined reg and interrupt per platform as clocks is defined.
>
> -Mrinmay
>


-- 
With best wishes
Dmitry

