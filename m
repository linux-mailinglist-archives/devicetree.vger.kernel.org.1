Return-Path: <devicetree+bounces-34598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9F383A497
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 09:53:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 47EA61C21843
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 08:53:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04CEE179AA;
	Wed, 24 Jan 2024 08:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OPVwD5vx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541F517988
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 08:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706086398; cv=none; b=CfXtMOCbGXMcfMPR8/wtEe3gActsO9/V+1ttp3ztkUJEV7xT7Rfd5TSpq2MnXLZjoDiQ1i2R1WNWFU8i0MucQ7/uVEbMCU8+YfV5HemF4ioe8j6MxxkDq6wnSyB7/3y73rBZWMdj88y7Th32RRPycu4jUVFrXfq76JfPHp0yq78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706086398; c=relaxed/simple;
	bh=aTmxjw2q5+VdU9ll87P9tijsDme9LehJwRqSm/TY5b4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EQT7ShlNGfe2eKuc+k1dHBSAeD11mKke5aA2uMOlk167eOxhE/BMLXUhoAd9WhhtwHo+Ei6LfoHcjEMRwb8YIjRevVyytAUvV11pVknDFby5GryTl/4qxvCeuHm+ZsFUBxDrugDaIFQa0MLgBkPZeCz/wgK7wb6X0tEcwkC6W00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OPVwD5vx; arc=none smtp.client-ip=209.85.219.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6818a9fe380so32226636d6.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 00:53:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706086396; x=1706691196; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mDcTiJd2aq3GEkI0tMQiAxIo02UbPaefBcKxl97qRV0=;
        b=OPVwD5vxz0no2l0Z1HlKx7bFf3FhkdyE8eeVl0uR34MhJh7ob01IOwVULJLqt9D6p6
         X3FJW3M2p3EmLbxS7qJBHBAb+qIVkyhT4Ucyz21pDIc8YjhdUzuuUsBOLxXmX8R6ewu4
         xpnaRAvitmtxs8+BfGvq8f9SRygeLDGVUekQYrmVCK/tKxOncdWrReMutyu2ttriu9UG
         7GKxAa+ilY1wKt5CJYQwB9Zwn7wq3V8DISWUncMXmt82ryCm5qDpOviTmbjq2ar5eFyY
         /Ys+K7RvV7MN9vKnkYp1JKPgV5codogIaKsdxoHC52a3Tn2elEFo1Sd/kYhxHloY7ICV
         LpPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706086396; x=1706691196;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mDcTiJd2aq3GEkI0tMQiAxIo02UbPaefBcKxl97qRV0=;
        b=bi+ntscVH9TrBZ8cWb3FnSc8Lx94v3EtmhBdpn+jPAOtMAyWNjcGI4OzhVJ7Nds8L3
         A+et4A6c57vUONRqEx1USUC5B6bnnaJFEPFYdM/zGIVz9w5HXI/w66oaMFySduiAYWId
         VPxVDSDTnszGIk/XwMBoyXbeZEaA0SK2wAMyEYAqSc67rQqCsEUW5T/SeFxHfxRE8y+t
         KafLk2guEvk55c8tUUm2cC6sgRe70pKNNqvpQTfNfvDT7Xk5g56Lw/07i527k7eWCwYF
         DE4c4qgQ5v3ipiSE1GQJmkJxVFIRJfN//8/7WeSzufn5RzV3rYa3XUYDSQ0Rz2Ct0fd7
         +fUw==
X-Gm-Message-State: AOJu0Ywqvp1lSsMOu9xcNTTONDiyjdh4s3u+ekXg+FSaDY7cMsR3GXbC
	VsRpRnDNPAb0leBQYiE9C1uNGkfJ+exYfM2H9e18FFWhN9yg1QvEHPaWj7FqIQ==
X-Google-Smtp-Source: AGHT+IFhV9yGShb5e3NbKqMeGNNp5KxF0h/EE6X0pNJsA7Z9i6drX7Z5CNpVs18mmK4qrE6I3SoBJw==
X-Received: by 2002:ad4:5ae4:0:b0:683:c2b7:bee8 with SMTP id c4-20020ad45ae4000000b00683c2b7bee8mr3396336qvh.72.1706086396261;
        Wed, 24 Jan 2024 00:53:16 -0800 (PST)
Received: from thinkpad ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id e3-20020ad44423000000b00680f8a7c026sm4244096qvt.65.2024.01.24.00.53.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 00:53:15 -0800 (PST)
Date: Wed, 24 Jan 2024 14:23:06 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Nikunj Kela <quic_nkela@quicinc.com>, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
	srinivas.kandagatla@linaro.org, vincent.guittot@linaro.org,
	ulf.hansson@linaro.org
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <20240124085306.GG4906@thinkpad>
References: <be31801e-bb21-426b-f7aa-2b52727de646@quicinc.com>
 <82115165-6089-4214-b47b-2c2c0dfb8c66@linaro.org>
 <1935cb82-648c-f079-8852-d461dc9f8609@quicinc.com>
 <20231214061742.GG2938@thinkpad>
 <66f82e2c-0c42-4ead-93f5-2136ad478df2@linaro.org>
 <7768258d-4748-84f7-0da2-43988138e5cc@quicinc.com>
 <20240123161231.GG19029@thinkpad>
 <d3d07e07-5f47-496c-9417-34d502242b40@linaro.org>
 <20240124083919.GC4906@thinkpad>
 <7980834a-6bdf-4d6c-9f76-71b156e143d3@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7980834a-6bdf-4d6c-9f76-71b156e143d3@linaro.org>

On Wed, Jan 24, 2024 at 09:45:05AM +0100, Krzysztof Kozlowski wrote:
> On 24/01/2024 09:39, Manivannan Sadhasivam wrote:
> > On Wed, Jan 24, 2024 at 09:02:16AM +0100, Krzysztof Kozlowski wrote:
> >> On 23/01/2024 17:12, Manivannan Sadhasivam wrote:
> >>> On Thu, Dec 14, 2023 at 07:18:25AM -0800, Nikunj Kela wrote:
> >>>>
> >>>> On 12/13/2023 11:49 PM, Krzysztof Kozlowski wrote:
> >>>>> On 14/12/2023 07:17, Manivannan Sadhasivam wrote:
> >>>>>> On Tue, Dec 12, 2023 at 11:06:42AM -0800, Nikunj Kela wrote:
> >>>>>>> + Linaro team
> >>>>>>>
> >>>>>>> On 12/12/2023 11:01 AM, Krzysztof Kozlowski wrote:
> >>>>>>>> On 12/12/2023 18:45, Nikunj Kela wrote:
> >>>>>>>>> We are abstracting some resources(ex. clocks) under new firmware on an
> >>>>>>>>> existing platform therefore need to make changes in certain drivers to
> >>>>>>>>> work with that firmware. We need to make a distinction between two
> >>>>>>>>> different variants of the FW. In one case, some resources will be
> >>>>>>>>> abstracted while in other case, they won't be abstracted. My query is -
> >>>>>>>>> "should we define a new compatible string for the variant with
> >>>>>>>>> abstracted resources(in FW) or we should add a new DT property keeping
> >>>>>>>>> the compatible same?"
> >>>>>>>> Hi,
> >>>>>>>>
> >>>>>>>> Usually change in the interface or behavior warrants new compatible.
> >>>>>>>> Property would be suitable if the same device, e.g. same SoC component
> >>>>>>>> with same FW, was configured differently on different boards.
> >>>>>>>>
> >>>>>> Here, the hardware is going to be the same, but the resources (clocks,
> >>>>>> regulators, etc...) will be controlled by the firmware instead of OS.
> >>>>> Yeah, that's the problem with generic questions, instead of specific...
> >>>>> "Talk is cheap."
> >>>>>
> >>>>> OK, so the hardware is exactly the same? Does FW bring any
> >>>>> incompatibilities in the interface or is it just about the clocks? I
> >>>>> guess I should not have included "with same FW" in my last statement.
> >>>>> It's true, but way too narrow. Therefore let me rephrase it:
> >>>>
> >>>> HW is exactly the same. Let me give more insight on the setup. We have been
> >>>> using the HW in virtual environment but now the ownership of certain
> >>>> resources (e.g. clock controller etc.) is handed over to a different VM(non
> >>>> Linux VM). Earlier the ownership of the resources was local to the same
> >>>> VM(Linux VM) via passthrough mode so it could directly access them however
> >>>> now Linux VM talks to non-Linux VM for its operations for resources that it
> >>>> doesn't own anymore via some interface(shared memory/doorbell).  So shall we
> >>>> use property like 'qcom, controlled-remotely' or do we need a new compatible
> >>>> for such setup?
> >>>>
> >>>
> >>> Krzysztof, just a ping on this thread.
> >>>
> >>> To summarise, the hardware is exactly same. We can consider the case of UFS. The
> >>> UFS controller is exactly same in this proposed setup but the resources of the
> >>> UFS controller are taken care by the VM. So instead of enabling the resources
> >>> one by one, Linux kernel will just ask the VM to do so using an SCMI command.
> >>>
> >>> Due to this difference, we need to make the changes in the UFS controller
> >>> driver. So we want to know if we can use a different compatible for the UFS
> >>> controller altogether in DT (this will allow Linux kernel to have a separate
> >>> driver and will simplify things) or just use a property like
> >>> "remotely-controlled" to let the driver detect this setup and take action
> >>> accordingly.
> >>
> >> What devices do we talk about? Are they released? For which other
> >> devices you want to use it?
> > 
> > If you are referring to "peripherals" as "devices", then this new interface is
> > going to be applicable to most of the peripherals in the SoC like PCIe, UFS, USB
> > etc...
> > 
> 
> And what about SoCs and final products?
> 

Sorry, I don't understand what you mean. This interface is still under
development and going to be available in future SoCs. At that time, we need
changes to the drivers to adapt to this interface.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

