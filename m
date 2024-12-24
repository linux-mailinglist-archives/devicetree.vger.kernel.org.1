Return-Path: <devicetree+bounces-133826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 116C29FBCCC
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:58:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40B9D162C8A
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:58:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD7761B532F;
	Tue, 24 Dec 2024 10:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tHhQfxDj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA1EA1B3945
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 10:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735037891; cv=none; b=YuShFtoG1sTauCEOI/UT4jMD5YKT//NurwFf9u9fy1MTraqb/M0ldlPJxjrib/k5hBAmjsTEkTLCF412Mp9cmr23yon74GgV7CpNAZx5ie6rxOjywQEZBg7bqz1Zw3ydyVBbwDAbWE74jA9NBaVn+okD31XnrOqHDMKS4MXX080=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735037891; c=relaxed/simple;
	bh=67z40HlFoHPukuZpcvkJ103/YrG7E0JT9k6eds45gaE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RAlLEA7TZzr4/ztdHU8emCww4e+is8Ug4v5RRCNl7SBSkDtHBp04Hz4jlD5HywTz0YvKP1VCkRHvRSJ2Bfi6ucDZvhiXT6hSbup/I32z9Fv/2sZeMzb5REtMFsa8uTcelOH0bw5hAKhCaLd36Rc5rSrJKyIVDtoJF4KOGHpIjGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tHhQfxDj; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-e3c8ae3a3b2so4062478276.0
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 02:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735037888; x=1735642688; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VpK2ftdkbt4R+pFm3fosJx4wuVtu20lzej0WhTZaeNI=;
        b=tHhQfxDjp+mG794ViZh34feCLLOvICabvw5hCf4laPtydBqmNWHp8SKSnNlvCPhZgC
         DPQFzVAmFG6RjEwU3iW6kSFN9kwGeaJw/0CRnmTOns3P0VzaXYYjEi86zGA5gidXnvJc
         oHeRYp5IA8VS4NpBWbwiU0yWXWfWfvbVKsrfPmdEMGkZu76MoEHPV66q+rr4td2u5QUc
         mfoeB61PVg/Bb1ExY4ZjYE9t9tshQLf52pFz8JqgsF+H1faXq9fvm59Z2zkIkEdPdomh
         eFavST45lIUS93hHwo+m8qZUDlVu8UUVUDvnTq+xmzT8zQfhycaSONZyoG5jPqk/ekpv
         2neA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735037888; x=1735642688;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VpK2ftdkbt4R+pFm3fosJx4wuVtu20lzej0WhTZaeNI=;
        b=GkmyY+yIyjtpeZY80iXxK/0OWuRXhfEGx1nGRaEQMBXz0Az/vncVm/H2aiWPN2koOg
         0NEkx8Llmmrg1PNhJrMy6f+hyFC3DniCISCzeeGdy7v5LQglNbdpseGS5Pcd+HOxSix+
         7qJgLjARhXO8HhVGqicm+6LuaGWTseKYpzOjFU8ZZSAhLvnbL9Qa/vdCmUeFjs2Wcihq
         hHkJ1S/o8pKlBRyCLtE2//mPUxOdQIvhec4C6m61A719efuJgZSpY3yzIQW0TM9PFf8I
         FU/PMKlWBuvLH7iq8fhWQJsWifNIhHfQPMFIccP13K2UNftegZI9t7RNMo/43FqoGNb6
         sphA==
X-Forwarded-Encrypted: i=1; AJvYcCXvk+WfXxjYm98h8X2It+oJ8ktCSjrJtupsfKo/kCp/NDAzfC8p7Np34VArKc5LbWj0cZ2RFNIsLWeC@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/AF8ilUwzSAY7RC5iXe9wmMg21nHRNRcCejbwew67Z9JcNoIR
	/bVcg56nAokcU3UnrDjXVgJ+4o/6kQoHtj0kgux2WZ2ZHSSBNFi+Lor2VdjIKRDlcfA5hzPs1pN
	9or4i/c3CeJS1wVcmAvUps4HSV0e/t6lgqM8+jw==
X-Gm-Gg: ASbGncua3UwClFayRTZW2Bnl72JBSDYlXPltGG5lv0Jb6ntCgqg4AX7NUPQ7GN2ja9V
	zzTbdiReulvHOQ/igxdmfUWh10vnA1TTmJ4vsBAofZG8vJWRZ1eHf
X-Google-Smtp-Source: AGHT+IHRDHsx1k+Od69u4uBsB0C3Jh2W8Sh5sKAFibjZe96Qe/QtkETMHIOtOv/wvGXXoSbgAKHtaf75ZpGsRUgiJtU=
X-Received: by 2002:a05:690c:c92:b0:6f2:9533:8fba with SMTP id
 00721157ae682-6f3f80d6121mr123466747b3.1.1735037887716; Tue, 24 Dec 2024
 02:58:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241223-preset_v2-v3-0-a339f475caf5@oss.qualcomm.com>
 <20241223-preset_v2-v3-2-a339f475caf5@oss.qualcomm.com> <piccoomv7rx4dvvfdoesmxbzrdqz4ld6ii6neudsdf4hjj2yzm@2bcuacwa4feb>
 <d317c51a-3913-6c49-f8db-e75589f9289a@quicinc.com> <wjk32haduzgiea676mamqdr6mhbmm3rrb6eyhzghqpczjuiazx@ipik3jhjzmhz>
 <7bc9f3f2-851c-3703-39b4-fea93d10bd7f@quicinc.com> <ntag3wc3yqax2afsbzesev32hpj3ssiknhjq6dtncuuj4ljrxh@23ed4qdwfrxi>
 <49ccd5f2-8524-eba4-25ef-4cdc39edc93b@quicinc.com> <7busek7zgost2s7mjklgvlccaef3lgz4k7btki72nkr5et7fdn@wkv2z6zbicdj>
 <fb17e142-e66f-85a7-353c-0e498892b884@quicinc.com>
In-Reply-To: <fb17e142-e66f-85a7-353c-0e498892b884@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Dec 2024 12:57:56 +0200
Message-ID: <CAA8EJpr=ktQ4c2dGxnCQNF4rLOCuCLRr6OYT4yVkyOnk2nF+Og@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] PCI: of: Add API to retrieve equalization presets
 from device tree
To: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, 
	Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	konrad.dybcio@oss.qualcomm.com, quic_mrana@quicinc.com, 
	quic_vbadigan@quicinc.com, Bjorn Andersson <andersson@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 24 Dec 2024 at 12:36, Krishna Chaitanya Chundru
<quic_krichai@quicinc.com> wrote:
>
>
>
> On 12/24/2024 3:25 PM, Dmitry Baryshkov wrote:
> > On Tue, Dec 24, 2024 at 02:47:00PM +0530, Krishna Chaitanya Chundru wrote:
> >>
> >>
> >> On 12/24/2024 12:00 AM, Dmitry Baryshkov wrote:
> >>> On Mon, Dec 23, 2024 at 10:13:29PM +0530, Krishna Chaitanya Chundru wrote:
> >>>>
> >>>>
> >>>> On 12/23/2024 8:56 PM, Dmitry Baryshkov wrote:
> >>>>> On Mon, Dec 23, 2024 at 08:02:23PM +0530, Krishna Chaitanya Chundru wrote:
> >>>>>>
> >>>>>>
> >>>>>> On 12/23/2024 5:17 PM, Dmitry Baryshkov wrote:
> >>>>>>> On Mon, Dec 23, 2024 at 12:21:15PM +0530, Krishna Chaitanya Chundru wrote:
> >>>>>>>> PCIe equalization presets are predefined settings used to optimize
> >>>>>>>> signal integrity by compensating for signal loss and distortion in
> >>>>>>>> high-speed data transmission.
> >>>>>>>>
> >>>>>>>> As per PCIe spec 6.0.1 revision section 8.3.3.3 & 4.2.4 for data rates
> >>>>>>>> of 8.0 GT/s, 16.0 GT/s, 32.0 GT/s, and 64.0 GT/s, there is a way to
> >>>>>>>> configure lane equalization presets for each lane to enhance the PCIe
> >>>>>>>> link reliability. Each preset value represents a different combination
> >>>>>>>> of pre-shoot and de-emphasis values. For each data rate, different
> >>>>>>>> registers are defined: for 8.0 GT/s, registers are defined in section
> >>>>>>>> 7.7.3.4; for 16.0 GT/s, in section 7.7.5.9, etc. The 8.0 GT/s rate has
> >>>>>>>> an extra receiver preset hint, requiring 16 bits per lane, while the
> >>>>>>>> remaining data rates use 8 bits per lane.
> >>>>>>>>
> >>>>>>>> Based on the number of lanes and the supported data rate, this function
> >>>>>>>> reads the device tree property and stores in the presets structure.
> >>>>>>>>
> >>>>>>>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> >>>>>>>> ---
> >>>>>>>>      drivers/pci/of.c  | 45 +++++++++++++++++++++++++++++++++++++++++++++
> >>>>>>>>      drivers/pci/pci.h | 17 +++++++++++++++--
> >>>>>>>>      2 files changed, 60 insertions(+), 2 deletions(-)
> >>>>>>>>
> >>>>>>>> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> >>>>>>>> index dacea3fc5128..99e0e7ae12e9 100644
> >>>>>>>> --- a/drivers/pci/of.c
> >>>>>>>> +++ b/drivers/pci/of.c
> >>>>>>>> @@ -826,3 +826,48 @@ u32 of_pci_get_slot_power_limit(struct device_node *node,
> >>>>>>>>        return slot_power_limit_mw;
> >>>>>>>>      }
> >>>>>>>>      EXPORT_SYMBOL_GPL(of_pci_get_slot_power_limit);
> >>>>>>>> +
> >>>>>>>
> >>>>>>> kerneldoc? Define who should free the memory and how.
> >>>>>>>
> >>>>>> I will update this in next series.
> >>>>>> as we are allocating using devm_kzalloc it should be freed on driver
> >>>>>> detach, as no special freeing is required.
> >>>>>>>> +int of_pci_get_equalization_presets(struct device *dev,
> >>>>>>>> +                                  struct pci_eq_presets *presets,
> >>>>>>>> +                                  int num_lanes)
> >>>>>>>> +{
> >>>>>>>> +      char name[20];
> >>>>>>>> +      void **preset;
> >>>>>>>> +      void *temp;
> >>>>>>>> +      int ret;
> >>>>>>>> +
> >>>>>>>> +      if (of_property_present(dev->of_node, "eq-presets-8gts")) {
> >>>>>>>> +              presets->eq_presets_8gts = devm_kzalloc(dev, sizeof(u16) * num_lanes, GFP_KERNEL);
> >>>>>>>> +              if (!presets->eq_presets_8gts)
> >>>>>>>> +                      return -ENOMEM;
> >>>>>>>> +
> >>>>>>>> +              ret = of_property_read_u16_array(dev->of_node, "eq-presets-8gts",
> >>>>>>>> +                                               presets->eq_presets_8gts, num_lanes);
> >>>>>>>> +              if (ret) {
> >>>>>>>> +                      dev_err(dev, "Error reading eq-presets-8gts %d\n", ret);
> >>>>>>>> +                      return ret;
> >>>>>>>> +              }
> >>>>>>>> +      }
> >>>>>>>> +
> >>>>>>>> +      for (int i = 1; i < sizeof(struct pci_eq_presets) / sizeof(void *); i++) {
> >>>>>>>> +              snprintf(name, sizeof(name), "eq-presets-%dgts", 8 << i);
> >>>>>>>> +              if (of_property_present(dev->of_node, name)) {
> >>>>>>>> +                      temp = devm_kzalloc(dev, sizeof(u8) * num_lanes, GFP_KERNEL);
> >>>>>>>> +                      if (!temp)
> >>>>>>>> +                              return -ENOMEM;
> >>>>>>>> +
> >>>>>>>> +                      ret = of_property_read_u8_array(dev->of_node, name,
> >>>>>>>> +                                                      temp, num_lanes);
> >>>>>>>> +                      if (ret) {
> >>>>>>>> +                              dev_err(dev, "Error %s %d\n", name, ret);
> >>>>>>>> +                              return ret;
> >>>>>>>> +                      }
> >>>>>>>> +
> >>>>>>>> +                      preset = (void **)((u8 *)presets + i * sizeof(void *));
> >>>>>>>
> >>>>>>> Ugh.
> >>>>>>>
> >>>>>> I was trying iterate over each element on the structure as presets holds the
> >>>>>> starting address of the structure and to that we are adding size of the void
> >>>>>> * point to go to each element. I did this way to reduce the
> >>>>>> redundant code to read all the gts which has same way of storing the data
> >>>>>> from the device tree. I will add comments here in the next series.
> >>>>>
> >>>>> Please rewrite this in a cleaner way. The code shouldn't raise
> >>>>> questions.
> >>>>>
> >>>>>>>> +                      *preset = temp;
> >>>>>>>> +              }
> >>>>>>>> +      }
> >>>>>>>> +
> >>>>>>>> +      return 0;
> >>>>>>>> +}
> >>>>>>>> +EXPORT_SYMBOL_GPL(of_pci_get_equalization_presets);
> >>>>>>>> diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
> >>>>>>>> index 14d00ce45bfa..82362d58bedc 100644
> >>>>>>>> --- a/drivers/pci/pci.h
> >>>>>>>> +++ b/drivers/pci/pci.h
> >>>>>>>> @@ -731,7 +731,12 @@ static inline u64 pci_rebar_size_to_bytes(int size)
> >>>>>>>>      }
> >>>>>>>>      struct device_node;
> >>>>>>>> -
> >>>>>>>> +struct pci_eq_presets {
> >>>>>>>> +      void *eq_presets_8gts;
> >>>>>>>> +      void *eq_presets_16gts;
> >>>>>>>> +      void *eq_presets_32gts;
> >>>>>>>> +      void *eq_presets_64gts;
> >>>>>>>
> >>>>>>> Why are all of those void*? 8gts is u16*, all other are u8*.
> >>>>>>>
> >>>>>> To have common parsing logic I moved them to void*, as these are pointers
> >>>>>> actual memory is allocated by of_pci_get_equalization_presets()
> >>>>>> based upon the gts these should not give any issues.
> >>>>>
> >>>>> Please, don't. They have types. void pointers are for the opaque data.
> >>>>>
> >>>> ok.
> >>>>
> >>>> I think then better to use v1 patch
> >>>> https://lore.kernel.org/all/20241116-presets-v1-2-878a837a4fee@quicinc.com/
> >>>>
> >>>> konrad, any objection on using v1 as that will be cleaner way even if we
> >>>> have some repetitive code.
> >>>
> >>> Konrad had a nice suggestion about using the array of values. Please use
> >>> such an array for 16gts and above. This removes most of repetitive code.
> >>>
> >> I don't feel having array in the preset structure looks good, I have
> >> come up with this logic if you feel it is not so good I will go to the
> >> suggested way by having array for 16gts and above.
> >>
> >>         if (of_property_present(dev->of_node, "eq-presets-8gts")) {
> >>                  presets->eq_presets_8gts = devm_kzalloc(dev, sizeof(u16) *
> >> num_lanes, GFP_KERNEL);
> >>                  if (!presets->eq_presets_8gts)
> >>                          return -ENOMEM;
> >>
> >>                  ret = of_property_read_u16_array(dev->of_node,
> >> "eq-presets-8gts",
> >>
> >> presets->eq_presets_8gts, num_lanes);
> >>                  if (ret) {
> >>                          dev_err(dev, "Error reading eq-presets-8gts %d\n",
> >> ret);
> >>                          return ret;
> >>                  }
> >>          }
> >>
> >>          for (int i = EQ_PRESET_TYPE_16GTS; i < EQ_PRESET_TYPE_64GTS; i++) {
> >>                  snprintf(name, sizeof(name), "eq-presets-%dgts", 8 << i);
> >>                  if (of_property_present(dev->of_node, name)) {
> >>                          temp = devm_kzalloc(dev, sizeof(u8) * num_lanes,
> >> GFP_KERNEL);
> >>                          if (!temp)
> >>                                  return -ENOMEM;
> >>
> >>                          ret = of_property_read_u8_array(dev->of_node, name,
> >>                                                          temp, num_lanes);
> >>                          if (ret) {
> >>                                  dev_err(dev, "Error %s %d\n", name, ret);
> >>                                  return ret;
> >>                          }
> >>
> >>                          switch (i) {
> >>                                  case EQ_PRESET_TYPE_16GTS:
> >>                                          presets->eq_presets_16gts = temp;
> >>                                          break;
> >>                                  case EQ_PRESET_TYPE_32GTS:
> >>                                          presets->eq_presets_32gts = temp;
> >>                                          break;
> >>                                  case EQ_PRESET_TYPE_64GTS:
> >>                                          presets->eq_presets_64gts = temp;
> >>                                          break;
> >>                          }
> >
> > This looks like 'presets->eq_presets[i] = temp;', but I won't insist on
> > that.
> >
> > Also, a strange thought came to my mind: we know that there won't be
> > more than 16 lanes. Can we have the following structure instead:
> >
> > #define MAX_LANES 16
> > enum pcie_gts {
> >       PCIE_GTS_16GTS,
> >       PCIE_GTS_32GTS,
> >       PCIE_GTS_64GTS,
> >       PCIE_GTS_MAX,
> > };
> > struct pci_eq_presets {
> >       u16 eq_presets_8gts[MAX_LANES];
> >       u8 eq_presets_Ngts[PCIE_GTS_MAX][MAX_LANES];
> > };
> >
> > This should allow you to drop the of_property_present() and
> > devm_kzalloc(). Just read DT data into a corresponding array.
> >
> in the dwc driver patch I was using pointers and memory allocation
> to known if the property is present or not. If I use this way I might
> end up reading dt property again.

Add foo_valid flags to the struct.

>  I think better to switch to have a
> array for above 16gts.

Whichever way works for you.

>
> - Krishna Chaitanya.
> >>                  }
> >>          }
> >> - Krishna Chaitanya.
> >>
> >>>
> >



-- 
With best wishes
Dmitry

