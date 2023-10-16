Return-Path: <devicetree+bounces-8750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4118D7C9E9B
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 07:19:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8AAEBB20C0A
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 05:19:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEEE01C14;
	Mon, 16 Oct 2023 05:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Le0FQsGO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6602979CD
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 05:19:22 +0000 (UTC)
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 640FEA1
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 22:19:20 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-5a84204e7aeso20725717b3.0
        for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 22:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697433559; x=1698038359; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=84IjWES4NlZNq0zAo2UaGKzhd/8FqYzYRf4g+hayiP4=;
        b=Le0FQsGO828GcvmeiBCAo4NiB3IxL4HAvgwlJFEFS23RKWoHPi6S5vpc95ZXix6vhS
         gFtyeGgG8ZrHeC8mMDM5KsmoKywM2JKPtJOJXnmJYmCcFKBb7ZBNO31uMORtyBEF5R8u
         7qGHHx1vM63ARvOgVfKEowt2JuMdIer2cLCp2ru0pml8Vhf79kSSGfBS6/yQA2m+dZw6
         QtJ9TFlfe4uoUdwhW8e7xvmmCnzKR6z0W6oBdg6nGW740URiOa0Kn6pgfVZDah759n6J
         x3tiG3s+Ayqx5KEKE+Mvl8bfC/Xedy+rBOAmHZUss20pER0AOeUftz4BRfpf7tQxPzxR
         F9lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697433559; x=1698038359;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=84IjWES4NlZNq0zAo2UaGKzhd/8FqYzYRf4g+hayiP4=;
        b=Kpza/cDA32xaoVy+sN24uRq2VQKPqkj02Y3ZrreDVprOIrR1lPRrFym3luBFAGB9fC
         oj7oOqHqrJRdvC1rDD/jeR6fCGAsSHb6OQNMvRdsp7o6jtfOv2Tfnyftz6FHl9wbqi1+
         kNplvB9Oh20239/xV1RvCYuZzu2FvUWONTUAccLefLPd44AGAiQAp4UdtYkJa4IsWmkM
         gSs/zAWIP++b30ITPZI7bcsAhS71IFeBjW8ckHcc10Ym8kScTHg4iN6gA2Aoqo6pNiHT
         4xRbcg5DIP63wCEGZz6IQzpJced1uJmhczklxt1q23gw6KjnGFYy4xaxUV6Y3DzgxMjs
         ntQA==
X-Gm-Message-State: AOJu0Yxo2/r1vEkoaLhGV0nGYkJ67cM5DPtfsZJB3e6j65zss1m75zBw
	RZP/zeBQssKL7/EiAwDUgBGcxcvm2sjhaq1ofL06pA==
X-Google-Smtp-Source: AGHT+IE/vXkOLFuRYYMBg7ZvJNs5bHOB4hTJjGiuXZPuuYtQOwt1lltozcDD7mfPmsfdbCeYL+gkZLo7kSBUF3zo/ac=
X-Received: by 2002:a05:690c:ec8:b0:5a8:19b0:513f with SMTP id
 cs8-20020a05690c0ec800b005a819b0513fmr12200346ywb.14.1697433559519; Sun, 15
 Oct 2023 22:19:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1695218113-31198-1-git-send-email-quic_msarkar@quicinc.com>
 <1695218113-31198-2-git-send-email-quic_msarkar@quicinc.com>
 <20230921183850.GA762694-robh@kernel.org> <28bf111f-b965-4d38-884b-bc3a0b68a6cc@quicinc.com>
 <8effa7e5-a223-081b-75b8-7b94400d42e6@quicinc.com> <CAA8EJpp+3_A-9YXF1yOKdFweVKqrpTxvxKoJcUH6qiDHfCQ-dQ@mail.gmail.com>
 <31e6aab6-73f9-a421-9dfa-292d9d0e9649@quicinc.com>
In-Reply-To: <31e6aab6-73f9-a421-9dfa-292d9d0e9649@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 16 Oct 2023 08:19:08 +0300
Message-ID: <CAA8EJpoapMmeAxj0GyHnJixEeObpSa5gjQWfkxuZKnVoLg4Awg@mail.gmail.com>
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
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, 13 Oct 2023 at 15:55, Mrinmay Sarkar <quic_msarkar@quicinc.com> wrote:
>
>
> On 10/11/2023 5:13 PM, Dmitry Baryshkov wrote:
> > On Wed, 11 Oct 2023 at 14:14, Mrinmay Sarkar <quic_msarkar@quicinc.com> wrote:
> >>
> >> On 10/6/2023 4:24 PM, Shazad Hussain wrote:
> >>>
> >>> On 9/22/2023 12:08 AM, Rob Herring wrote:
> >>>> On Wed, Sep 20, 2023 at 07:25:08PM +0530, Mrinmay Sarkar wrote:
> >>>>> Add devicetree bindings support for SA8775P SoC.
> >>>>> Define reg and interrupt per platform.
> >>>>>
> >>>>> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> >>>>> ---
> >>>>>    .../devicetree/bindings/pci/qcom,pcie-ep.yaml      | 130
> >>>>> +++++++++++++++++----
> >>>>>    1 file changed, 108 insertions(+), 22 deletions(-)
> >>>>>
> >>>>> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> >>>>> b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> >>>>> index a223ce0..e860e8f 100644
> >>>>> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> >>>>> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> >>>>> @@ -13,6 +13,7 @@ properties:
> >>>>>      compatible:
> >>>>>        oneOf:
> >>>>>          - enum:
> >>>>> +          - qcom,sa8775p-pcie-ep
> >>>>>              - qcom,sdx55-pcie-ep
> >>>>>              - qcom,sm8450-pcie-ep
> >>>>>          - items:
> >>>>> @@ -20,29 +21,19 @@ properties:
> >>>>>              - const: qcom,sdx55-pcie-ep
> >>>>>        reg:
> >>>>> -    items:
> >>>>> -      - description: Qualcomm-specific PARF configuration registers
> >>>>> -      - description: DesignWare PCIe registers
> >>>>> -      - description: External local bus interface registers
> >>>>> -      - description: Address Translation Unit (ATU) registers
> >>>>> -      - description: Memory region used to map remote RC address space
> >>>>> -      - description: BAR memory region
> >>>>> +    minItems: 6
> >>>>> +    maxItems: 7
> >>>>>        reg-names:
> >>>>> -    items:
> >>>>> -      - const: parf
> >>>>> -      - const: dbi
> >>>>> -      - const: elbi
> >>>>> -      - const: atu
> >>>>> -      - const: addr_space
> >>>>> -      - const: mmio
> >>>>> +    minItems: 6
> >>>>> +    maxItems: 7
> >>>> Don't move these into if/then schemas. Then we are duplicating the
> >>>> names, and there is no reason to keep them aligned for new compatibles.
> >>>>
> >>>> Rob
> >>> Hi Rob,
> >>> As we have one extra reg property (dma) required for sa8775p-pcie-ep,
> >>> isn't it expected to be moved in if/then as per number of regs
> >>> required. Anyways we would have duplication of some properties for new
> >>> compatibles where the member numbers differs for a property.
> >>>
> >>> Are you suggesting to add the extra reg property (dma) in the existing
> >>> reg and reg-names list, and add minItems/maxItems for all compatibles
> >>> present in this file ?
> > This is what we have been doing in other cases: if the list is an
> > extension of the current list, there is no need to duplicate it. One
> > can use min/maxItems instead.
> Hi Dmitry
>
> we have tried using min/maxItems rather than duplicating but somehow
> catch up with some warnings in dt_bindings check
>
> //local/mnt/workspace/Mrinmay/lemans/next-20230914/linux-next/out/Documentation/devicetree/bindings/pci/qcom,pcie-ep.example.dtb:
> pcie-ep@1c00000: reg: [[29360128, 12288], [1073741824, 3869],
> [1073745696, 200], [1073745920, 4096], [1073750016, 4096], [29372416,
> 12288]] is too short//
> //        from schema $id:
> http://devicetree.org/schemas/pci/qcom,pcie-ep.yaml#//
> ///local/mnt/workspace/Mrinmay/lemans/next-20230914/linux-next/out/Documentation/devicetree/bindings/pci/qcom,pcie-ep.example.dtb:
> pcie-ep@1c00000: reg-names: ['parf', 'dbi', 'elbi', 'atu', 'addr_space',
> 'mmio'] is too short//
> //        from schema $id:
> http://devicetree.org/schemas/pci/qcom,pcie-ep.yaml#//
> ///local/mnt/workspace/Mrinmay/lemans/next-20230914/linux-next/out/Documentation/devicetree/bindings/pci/qcom,pcie-ep.example.dtb:
> pcie-ep@1c00000: interrupts: [[0, 140, 4], [0, 145, 4]] is too short//
> //        from schema $id:
> http://devicetree.org/schemas/pci/qcom,pcie-ep.yaml#//
> ///local/mnt/workspace/Mrinmay/lemans/next-20230914/linux-next/out/Documentation/devicetree/bindings/pci/qcom,pcie-ep.example.dtb:
> pcie-ep@1c00000: interrupt-names: ['global', 'doorbell'] is too short//
> //        from schema $id:
> http://devicetree.org/schemas/pci/qcom,pcie-ep.yaml#//
> /
>
> //local/mnt/workspace/Mrinmay/lemans/next-20230914/linux-next/out/Documentation/devicetree/bindings/pci/qcom,pcie-ep.example.dtb:
> pcie-ep@1c00000: interrupt-names: ['global', 'doorbell'] is too short/
>
> added the patch in attachment.

Please, don't send patches as attachments. It is impossible to comment on it.

So, few points I had to fix to make your patch to work:

- Please, understand the difference between enum and items. You'd need
to add your compat string to only one of them. Or to a new entry. But
adding it to both entries is a definite mistake.

- You have extended items for existing platforms (reg, reg-names,
interrupts, interrupt-names). However you failed to add corresponding
minItems, allowing existing platforms to use the list with less items
in it.

- You do not need to have maxItems:N, minItems:N with the same value.
Please drop these minItems, it is the default.

- You haven't reviewed the patch on your own. You have erroneously
nested 'properties' clauses in two places.

$ git diff --stat
 Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml | 33
+++++++++++----------------------
 1 file changed, 11 insertions(+), 22 deletions(-)

Hope this helps.

-- 
With best wishes
Dmitry

