Return-Path: <devicetree+bounces-34617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3939483A580
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 10:32:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A587CB2D406
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 09:27:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36AE617BAB;
	Wed, 24 Jan 2024 09:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Odf7cGTf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E6F18030
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 09:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706088441; cv=none; b=E5rwKbmI0eFNXmsiKIYE9+a9bI/P2OEabWb87dVIzwHuprm7SpycEV94Iz4SzgXJ/FgWu9hXF6iGHSTjFhMnuf97JkzN+w5QMML5Z4UZdiIvY4g6L95su8J8WK+g41rvl1sq+OxkE9zyoUvNI9tJjcFnSKIHoKtSBxZyMyAC+sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706088441; c=relaxed/simple;
	bh=Yg7cxrPYkLByor6AjkyC/Af/nMffPDpsznRGPI8i11g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fpE6GeWhVTSZnhFim/h66rvjQjzV+EO5Q944NL9crWZMVFNiljBYcbj5gYmUI7YZX4LJen50pchvPAuKcfdRbjElfNV7wLNJCzyjsDSJXDLEUVZV8oqb8bd39BvMf2z71DWllePiX8saNwU1hkgPGuINAd/5gnUB6664cAEk5aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Odf7cGTf; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7835aea8012so366929885a.0
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 01:27:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706088438; x=1706693238; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=E3zAt9PcF7yATUyrrb7psfvGTtv4iUg57h33Ci06ZZ4=;
        b=Odf7cGTfcq811oDuN142BbbcTgzDcLLxp37sRpMOHpM/uAev22RJVFE65A/MgfWIr9
         VwT4/OP1sCJOWT9PEZow0WXAW88shukAFt0AKnzw0n+cduHieEi149DKS4WabcyYqHhc
         /yjDaRFfXkUSplFFgXkUgFG/FGmGT1OBN/gPc0PmKX0P2nx2F9WZjizB6b795D2/lPrx
         IulOAK1vsB3QiBY9fFfDZoS1cjClFXtAyfxt3Hrn1FQ7Y5M4AtqwJBDIBCL+xiaKCsDR
         uWCxUDx/5Ah+YqdgSE1zGNpUFZGQHdqhD7x4CmReA9Dij3JfYPX1uoHcfZlLnWWsMngZ
         5JJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706088438; x=1706693238;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E3zAt9PcF7yATUyrrb7psfvGTtv4iUg57h33Ci06ZZ4=;
        b=Tc943qBA07W0up2/jCogJgyaw+TMc6Uiyx5P1kMtIDMCgS4L9euX/oZzzSiy8CoK+L
         Qo76bKzHjLeO3G6b/R60daTKgTl+YmNkesn+R5+RKR42zsym+PEaYXyJTTIRkODoXYdn
         uCbpsR2zaEdvAL74X1YiYuYCLPq9g0i9563cAFpOrLvqXgmjyy1ZP5sLmwyT49Mvj6bt
         NQqggEuTi6UOKHCuUTQk7ZJexWrZI9RA0ZeOMxH8n9dYotEOoPE5nvvKwm9p4U3rQniU
         /RfA/xLcScmxyvBspLnFPdFrDi/zmucWvvkmLHsoEzMpfbpun1RC8HPrwXr/f3Ouyews
         lLBA==
X-Gm-Message-State: AOJu0YzKXuglXCrgt73MezAP90LmMA/u+0oW1F0vEbNHtwVcUe0y+wSx
	SOzm8EgPGX/6tczWU7vgLlaWj63WsVy33sh/ev4KQ9r2UlNbqB3GNY5sQy+V4w==
X-Google-Smtp-Source: AGHT+IFYlynug4KEMDsvHjh6oSd0tRgvwlKwrLcTMbbMy1j5GrAnTdy97aF9IO2CQY1DLUemI/KKGw==
X-Received: by 2002:a05:620a:4483:b0:783:6e78:5138 with SMTP id x3-20020a05620a448300b007836e785138mr9056164qkp.55.1706088438264;
        Wed, 24 Jan 2024 01:27:18 -0800 (PST)
Received: from thinkpad ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id t8-20020a05620a034800b00783a206381csm2230091qkm.37.2024.01.24.01.27.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 01:27:17 -0800 (PST)
Date: Wed, 24 Jan 2024 14:57:08 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Nikunj Kela <quic_nkela@quicinc.com>, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
	srinivas.kandagatla@linaro.org, vincent.guittot@linaro.org,
	ulf.hansson@linaro.org
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <20240124092708.GI4906@thinkpad>
References: <1935cb82-648c-f079-8852-d461dc9f8609@quicinc.com>
 <20231214061742.GG2938@thinkpad>
 <66f82e2c-0c42-4ead-93f5-2136ad478df2@linaro.org>
 <7768258d-4748-84f7-0da2-43988138e5cc@quicinc.com>
 <20240123161231.GG19029@thinkpad>
 <d3d07e07-5f47-496c-9417-34d502242b40@linaro.org>
 <20240124083919.GC4906@thinkpad>
 <7980834a-6bdf-4d6c-9f76-71b156e143d3@linaro.org>
 <20240124085306.GG4906@thinkpad>
 <597b7aeb-79f1-4d34-94f6-965adfed9eb0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <597b7aeb-79f1-4d34-94f6-965adfed9eb0@linaro.org>

On Wed, Jan 24, 2024 at 10:01:05AM +0100, Krzysztof Kozlowski wrote:
> On 24/01/2024 09:53, Manivannan Sadhasivam wrote:
> > On Wed, Jan 24, 2024 at 09:45:05AM +0100, Krzysztof Kozlowski wrote:
> >> On 24/01/2024 09:39, Manivannan Sadhasivam wrote:
> >>> On Wed, Jan 24, 2024 at 09:02:16AM +0100, Krzysztof Kozlowski wrote:
> >>>> On 23/01/2024 17:12, Manivannan Sadhasivam wrote:
> >>>>> On Thu, Dec 14, 2023 at 07:18:25AM -0800, Nikunj Kela wrote:
> >>>>>>
> >>>>>> On 12/13/2023 11:49 PM, Krzysztof Kozlowski wrote:
> >>>>>>> On 14/12/2023 07:17, Manivannan Sadhasivam wrote:
> >>>>>>>> On Tue, Dec 12, 2023 at 11:06:42AM -0800, Nikunj Kela wrote:
> >>>>>>>>> + Linaro team
> >>>>>>>>>
> >>>>>>>>> On 12/12/2023 11:01 AM, Krzysztof Kozlowski wrote:
> >>>>>>>>>> On 12/12/2023 18:45, Nikunj Kela wrote:
> >>>>>>>>>>> We are abstracting some resources(ex. clocks) under new firmware on an
> >>>>>>>>>>> existing platform therefore need to make changes in certain drivers to
> >>>>>>>>>>> work with that firmware. We need to make a distinction between two
> >>>>>>>>>>> different variants of the FW. In one case, some resources will be
> >>>>>>>>>>> abstracted while in other case, they won't be abstracted. My query is -
> >>>>>>>>>>> "should we define a new compatible string for the variant with
> >>>>>>>>>>> abstracted resources(in FW) or we should add a new DT property keeping
> >>>>>>>>>>> the compatible same?"
> >>>>>>>>>> Hi,
> >>>>>>>>>>
> >>>>>>>>>> Usually change in the interface or behavior warrants new compatible.
> >>>>>>>>>> Property would be suitable if the same device, e.g. same SoC component
> >>>>>>>>>> with same FW, was configured differently on different boards.
> >>>>>>>>>>
> >>>>>>>> Here, the hardware is going to be the same, but the resources (clocks,
> >>>>>>>> regulators, etc...) will be controlled by the firmware instead of OS.
> >>>>>>> Yeah, that's the problem with generic questions, instead of specific...
> >>>>>>> "Talk is cheap."
> >>>>>>>
> >>>>>>> OK, so the hardware is exactly the same? Does FW bring any
> >>>>>>> incompatibilities in the interface or is it just about the clocks? I
> >>>>>>> guess I should not have included "with same FW" in my last statement.
> >>>>>>> It's true, but way too narrow. Therefore let me rephrase it:
> >>>>>>
> >>>>>> HW is exactly the same. Let me give more insight on the setup. We have been
> >>>>>> using the HW in virtual environment but now the ownership of certain
> >>>>>> resources (e.g. clock controller etc.) is handed over to a different VM(non
> >>>>>> Linux VM). Earlier the ownership of the resources was local to the same
> >>>>>> VM(Linux VM) via passthrough mode so it could directly access them however
> >>>>>> now Linux VM talks to non-Linux VM for its operations for resources that it
> >>>>>> doesn't own anymore via some interface(shared memory/doorbell).  So shall we
> >>>>>> use property like 'qcom, controlled-remotely' or do we need a new compatible
> >>>>>> for such setup?
> >>>>>>
> >>>>>
> >>>>> Krzysztof, just a ping on this thread.
> >>>>>
> >>>>> To summarise, the hardware is exactly same. We can consider the case of UFS. The
> >>>>> UFS controller is exactly same in this proposed setup but the resources of the
> >>>>> UFS controller are taken care by the VM. So instead of enabling the resources
> >>>>> one by one, Linux kernel will just ask the VM to do so using an SCMI command.
> >>>>>
> >>>>> Due to this difference, we need to make the changes in the UFS controller
> >>>>> driver. So we want to know if we can use a different compatible for the UFS
> >>>>> controller altogether in DT (this will allow Linux kernel to have a separate
> >>>>> driver and will simplify things) or just use a property like
> >>>>> "remotely-controlled" to let the driver detect this setup and take action
> >>>>> accordingly.
> >>>>
> >>>> What devices do we talk about? Are they released? For which other
> >>>> devices you want to use it?
> >>>
> >>> If you are referring to "peripherals" as "devices", then this new interface is
> >>> going to be applicable to most of the peripherals in the SoC like PCIe, UFS, USB
> >>> etc...
> >>>
> >>
> >> And what about SoCs and final products?
> >>
> > 
> > Sorry, I don't understand what you mean. This interface is still under
> > development and going to be available in future SoCs. At that time, we need
> > changes to the drivers to adapt to this interface.
> 
> Hm, confused... The message was saying: the same hardware. Same hardware
> means for example Qualcomm SM8550 SoC.
> 

Same hardware means all the peripherals are same as of previous gen SoCs apart
from usual improvements. Maybe I confused you by saying that this interface is
only applicable for newer SoCs, that is not accurate.

So for instance, even if you take SM8550, Qcom can use this interface (VM) and
ship it to a customer. The VM is just part of the bootloader package. So if the
VM is shipped with an SoC, then Linux should not try to handle resources for the
peripherals and instead request VM to do so using the SCMI interface. Much like
how ACPI behaves in the x86 world. But how the OS should be made aware of the
presence of VM is the question here. Qcom likes to convey that information using
DT.

> OK, I think we are way past possible theoretical discussions. Please
> send patches and we will discuss it from there.
>

Well, this decision (whether to use a different compatible or a property)
impacts all the peripheral teams inside Qcom as the driver update heavily
depends on this decision. So let's try to conclude the decision here itself.
If something is not clear, please say as you said above. I'll try my best to
clarify.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

