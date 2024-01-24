Return-Path: <devicetree+bounces-34650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D96383A6EC
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 11:36:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DA135B23D45
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 10:36:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9773D30E;
	Wed, 24 Jan 2024 10:36:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lF7zkZ2U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A84D313
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 10:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706092596; cv=none; b=GEEIIr+fNZek4rpL4owENp3FlA2BGv52W+LYoSOSnl67du1XgfvNLU5kI2nOCNvj7lycKJcFe77TRxDjgYBd5xR2Dlkc8j9g+Xt3GHxFzqUyrSSIJ1N5UXLd4vPORzubocIG7jYx3nj6eCkzzoigOWgIlp98F/q0YAYieTQe11s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706092596; c=relaxed/simple;
	bh=1Z7kKAsbNa2U761k/XT2TXHAbsSVRP7066pXV08GyF0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jU2ctwyH3bduxFrlBW9pMHFePt2B/S9+YT+UdzCZDmcL3l7qqjyosqPjV3leVvjfljeS6wdHTwXScUjKp+OW+ZDm1LtsoI03QcjdtuEFlKJDpb0u60steFOkQwfaqe7qPGH6Ptjr/fPUkeQnyEgGYHgv/3aFsInjD2eTdJX41CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lF7zkZ2U; arc=none smtp.client-ip=209.85.160.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-42a029c8e76so34783911cf.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 02:36:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706092594; x=1706697394; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9aXXICJVSk2tiKt7DsaJxXLKLTCGgdrkqckP82diHyU=;
        b=lF7zkZ2UZEiQ9MQNDxPxMUxVU+72hUZ+DK+bnTiJhqnJbknMk59fbfE8+VIUEDv1au
         mNYv2W0tFl9xyVdM5zSmK/a1ioBbLpSlCIeFN/iNhlCnK8PTLaDWKvw1kh8roVOZ6umG
         ZyFpl6CLjbv/d1lFI6uL+mMNHyvQTR8K6sdZmWpl+XW9wZUKhxyzTFA0jj4wjwKMkWut
         pocgW/WS72fnLLlcRimQ5nLZuFA/hEcBcD6zAYJ6Pu0NoFU83QykJFjDAuO/7F/jrBqK
         Lm5nq50HaJ8OMmkkq+NR+sq2QJSVDdi8UZqwCleslhR3Q/XFOd6NbRhJ3krzdF/HAJIF
         pQFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706092594; x=1706697394;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9aXXICJVSk2tiKt7DsaJxXLKLTCGgdrkqckP82diHyU=;
        b=D5y1CeQDPQBrLe2Qnm/jxpnJkVLLUlClRi2wP7SR3r5gpMECfVO2ET0Mgxc5tloXCa
         xIoBE3MSos87nVTbZmVsFPqPMmMMXT1dnDVlchLVJGzdQ93tqzogjboy3FcE2faBFSr6
         lddwyCzO7k5PO5e5rpfIPryk/KTRnh+7YN3ocNcPu8mIksgRpczaR1RLOoA5V98Ax3Dl
         kHXp6vT/kmhozvNJAjudktYsSRsHWzRaN8ae5Gkq8cE+AG9My3MYSAIMtCtslV9xP8rR
         WFXsc4T7C+f4NZ4efCZIdRVzbNU0FwJEJoljJ4Zj2kqBPTzUPLMCQvnrxOLIg/iqNAci
         i9nw==
X-Gm-Message-State: AOJu0YxcT+IIozrvbrAosCIYzJniUtUFKTul2d1hrtbwahYVmSHhHL16
	3nAlUf+lpJzz8cR6Zx5qJINc/gS1Q71ytnANoHVO+GsJQXWYJL30u0QmfPSgCA==
X-Google-Smtp-Source: AGHT+IGANn0OKF11E35h3+u7EwB8UbZPdC0BCzJmM5kTDaAVdBaEu1quWq2kWLniIby6E5mz3Ov3fw==
X-Received: by 2002:a05:622a:64e:b0:429:c7ce:46a1 with SMTP id a14-20020a05622a064e00b00429c7ce46a1mr2689146qtb.119.1706092593672;
        Wed, 24 Jan 2024 02:36:33 -0800 (PST)
Received: from thinkpad ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id hf16-20020a05622a609000b0042a3358bf59sm3786099qtb.79.2024.01.24.02.36.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 02:36:33 -0800 (PST)
Date: Wed, 24 Jan 2024 16:06:23 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Nikunj Kela <quic_nkela@quicinc.com>, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
	srinivas.kandagatla@linaro.org, vincent.guittot@linaro.org,
	ulf.hansson@linaro.org
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <20240124103623.GJ4906@thinkpad>
References: <66f82e2c-0c42-4ead-93f5-2136ad478df2@linaro.org>
 <7768258d-4748-84f7-0da2-43988138e5cc@quicinc.com>
 <20240123161231.GG19029@thinkpad>
 <d3d07e07-5f47-496c-9417-34d502242b40@linaro.org>
 <20240124083919.GC4906@thinkpad>
 <7980834a-6bdf-4d6c-9f76-71b156e143d3@linaro.org>
 <20240124085306.GG4906@thinkpad>
 <597b7aeb-79f1-4d34-94f6-965adfed9eb0@linaro.org>
 <20240124092708.GI4906@thinkpad>
 <74b9b07c-dd28-4825-b367-d702a1adfb0d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <74b9b07c-dd28-4825-b367-d702a1adfb0d@linaro.org>

On Wed, Jan 24, 2024 at 10:40:53AM +0100, Krzysztof Kozlowski wrote:
> On 24/01/2024 10:27, Manivannan Sadhasivam wrote:
> > On Wed, Jan 24, 2024 at 10:01:05AM +0100, Krzysztof Kozlowski wrote:
> >> On 24/01/2024 09:53, Manivannan Sadhasivam wrote:
> >>> On Wed, Jan 24, 2024 at 09:45:05AM +0100, Krzysztof Kozlowski wrote:
> >>>> On 24/01/2024 09:39, Manivannan Sadhasivam wrote:
> >>>>> On Wed, Jan 24, 2024 at 09:02:16AM +0100, Krzysztof Kozlowski wrote:
> >>>>>> On 23/01/2024 17:12, Manivannan Sadhasivam wrote:
> >>>>>>> On Thu, Dec 14, 2023 at 07:18:25AM -0800, Nikunj Kela wrote:
> >>>>>>>>
> >>>>>>>> On 12/13/2023 11:49 PM, Krzysztof Kozlowski wrote:
> >>>>>>>>> On 14/12/2023 07:17, Manivannan Sadhasivam wrote:
> >>>>>>>>>> On Tue, Dec 12, 2023 at 11:06:42AM -0800, Nikunj Kela wrote:
> >>>>>>>>>>> + Linaro team
> >>>>>>>>>>>
> >>>>>>>>>>> On 12/12/2023 11:01 AM, Krzysztof Kozlowski wrote:
> >>>>>>>>>>>> On 12/12/2023 18:45, Nikunj Kela wrote:
> >>>>>>>>>>>>> We are abstracting some resources(ex. clocks) under new firmware on an
> >>>>>>>>>>>>> existing platform therefore need to make changes in certain drivers to
> >>>>>>>>>>>>> work with that firmware. We need to make a distinction between two
> >>>>>>>>>>>>> different variants of the FW. In one case, some resources will be
> >>>>>>>>>>>>> abstracted while in other case, they won't be abstracted. My query is -
> >>>>>>>>>>>>> "should we define a new compatible string for the variant with
> >>>>>>>>>>>>> abstracted resources(in FW) or we should add a new DT property keeping
> >>>>>>>>>>>>> the compatible same?"
> >>>>>>>>>>>> Hi,
> >>>>>>>>>>>>
> >>>>>>>>>>>> Usually change in the interface or behavior warrants new compatible.
> >>>>>>>>>>>> Property would be suitable if the same device, e.g. same SoC component
> >>>>>>>>>>>> with same FW, was configured differently on different boards.
> >>>>>>>>>>>>
> >>>>>>>>>> Here, the hardware is going to be the same, but the resources (clocks,
> >>>>>>>>>> regulators, etc...) will be controlled by the firmware instead of OS.
> >>>>>>>>> Yeah, that's the problem with generic questions, instead of specific...
> >>>>>>>>> "Talk is cheap."
> >>>>>>>>>
> >>>>>>>>> OK, so the hardware is exactly the same? Does FW bring any
> >>>>>>>>> incompatibilities in the interface or is it just about the clocks? I
> >>>>>>>>> guess I should not have included "with same FW" in my last statement.
> >>>>>>>>> It's true, but way too narrow. Therefore let me rephrase it:
> >>>>>>>>
> >>>>>>>> HW is exactly the same. Let me give more insight on the setup. We have been
> >>>>>>>> using the HW in virtual environment but now the ownership of certain
> >>>>>>>> resources (e.g. clock controller etc.) is handed over to a different VM(non
> >>>>>>>> Linux VM). Earlier the ownership of the resources was local to the same
> >>>>>>>> VM(Linux VM) via passthrough mode so it could directly access them however
> >>>>>>>> now Linux VM talks to non-Linux VM for its operations for resources that it
> >>>>>>>> doesn't own anymore via some interface(shared memory/doorbell).  So shall we
> >>>>>>>> use property like 'qcom, controlled-remotely' or do we need a new compatible
> >>>>>>>> for such setup?
> >>>>>>>>
> >>>>>>>
> >>>>>>> Krzysztof, just a ping on this thread.
> >>>>>>>
> >>>>>>> To summarise, the hardware is exactly same. We can consider the case of UFS. The
> >>>>>>> UFS controller is exactly same in this proposed setup but the resources of the
> >>>>>>> UFS controller are taken care by the VM. So instead of enabling the resources
> >>>>>>> one by one, Linux kernel will just ask the VM to do so using an SCMI command.
> >>>>>>>
> >>>>>>> Due to this difference, we need to make the changes in the UFS controller
> >>>>>>> driver. So we want to know if we can use a different compatible for the UFS
> >>>>>>> controller altogether in DT (this will allow Linux kernel to have a separate
> >>>>>>> driver and will simplify things) or just use a property like
> >>>>>>> "remotely-controlled" to let the driver detect this setup and take action
> >>>>>>> accordingly.
> >>>>>>
> >>>>>> What devices do we talk about? Are they released? For which other
> >>>>>> devices you want to use it?
> >>>>>
> >>>>> If you are referring to "peripherals" as "devices", then this new interface is
> >>>>> going to be applicable to most of the peripherals in the SoC like PCIe, UFS, USB
> >>>>> etc...
> >>>>>
> >>>>
> >>>> And what about SoCs and final products?
> >>>>
> >>>
> >>> Sorry, I don't understand what you mean. This interface is still under
> >>> development and going to be available in future SoCs. At that time, we need
> >>> changes to the drivers to adapt to this interface.
> >>
> >> Hm, confused... The message was saying: the same hardware. Same hardware
> >> means for example Qualcomm SM8550 SoC.
> >>
> > 
> > Same hardware means all the peripherals are same as of previous gen SoCs apart
> > from usual improvements. Maybe I confused you by saying that this interface is
> > only applicable for newer SoCs, that is not accurate.
> > 
> > So for instance, even if you take SM8550, Qcom can use this interface (VM) and
> > ship it to a customer. The VM is just part of the bootloader package. So if the
> > VM is shipped with an SoC, then Linux should not try to handle resources for the
> > peripherals and instead request VM to do so using the SCMI interface. Much like
> > how ACPI behaves in the x86 world. But how the OS should be made aware of the
> > presence of VM is the question here. Qcom likes to convey that information using
> > DT.
> 
> So this is not an existing SoC? Then why do you need to change the
> meaning of compatible? You have new compatible.
> 

Let me put it this way: Qcom wants to use a VM to control the clocks, regulator,
PHY for the controllers in the SoC that is already out there in the market.
They will just change the bootloader to include the VM and the VM will take
control of the resources. All the resources will be specified in the DT as it is
for the affected controllers.

Right now, the device drivers in the OS are controlling the above mentioned
resources. Can Qcom use DT to convey this information to the OS? So that the
device drivers in the OS can use SCMI interface to manage the resources with the
help of VM. Otherwise, if OS tries to control the resources as usual, it may
result in some access violation.

- Mani

> > 
> >> OK, I think we are way past possible theoretical discussions. Please
> >> send patches and we will discuss it from there.
> >>
> > 
> > Well, this decision (whether to use a different compatible or a property)
> > impacts all the peripheral teams inside Qcom as the driver update heavily
> > depends on this decision. So let's try to conclude the decision here itself.
> > If something is not clear, please say as you said above. I'll try my best to
> > clarify.
> 
> Then again - list exact existing SoCs which will be affected. If this is
> for future SoCs, then why we are even discussing this? Everything
> started - first sentence! - with:
> "existing platform"
> 
> Sorry guys, I am getting more and more confused.
> 
> Best regards,
> Krzysztof
> 

-- 
மணிவண்ணன் சதாசிவம்

