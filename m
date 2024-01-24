Return-Path: <devicetree+bounces-34588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FDC83A44A
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 09:39:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 217001F27E86
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 08:39:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD04A1775B;
	Wed, 24 Jan 2024 08:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wgL2JaKO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B65C17BA4
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 08:39:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706085569; cv=none; b=q+bBDN8reMF62VKMqyploP4bR7NWSiWwtek4lXR4IslyPZIh+ZsfAM30mJ8Fc6CuAcmfEFtJd1ZR+I81LT9OZz4qnM39DJJxYKpm8Z3xvXQAusCpz9uihoSwpKd7DeOxd6X7yZMCMCeHxr1U26+l70Iw6xfOWhZ0bRkA4dLDVJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706085569; c=relaxed/simple;
	bh=CIB6+GPa0GCYWij/AWNderizltoCThnC/6vfqQni4js=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cqmsMpWl8ceVIfSD5LPxJz9/EUXmg+vBA7xWzQG7So7LzckkjqIbFinXO1rOBByP10PuF+Ns1JyfojTeNR9djkP7PDFtoR7C8lxZh4X4gkH+D1VTT6KuNo/ixHLHyVValorj/qtpuE/iS2bjXfdADp3u1TIGciaLDPH9xwxQWYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wgL2JaKO; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1d7881b1843so1202615ad.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 00:39:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706085567; x=1706690367; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2q1ZPZiIAe8BF0cYeIZCl5XPcn9hhQ0mvUIAjpCb5x8=;
        b=wgL2JaKOcWj8HKPrUVMvxqEYS7uIfVoe7nrEWjsQC1DUA9RrXKB1ICRCB17nNxjV+0
         xrRDLsQE7+Ttz2Pl6VkCEl7XHg//QS+JI0yi9l+k/YKB3XTpQ00qOaaSF/aT1ydF5pPE
         N3xp78uUl19oUghNJle4P6d64MW5SNoZ2AmK1B94nuGZX9T46ZrZ2hzF4fT58/oNAEXC
         E6xnCPTo1VHr997eMMLNpXnZTOoFKrJLS4q4GPF0/mUhOh5v64HpnsA3i5jthP3psRJ/
         NW97SL2ypH1vsv0aYNBUWRscfk/jPUYk1s0KfzMburv21mcBSCxcifyw3HLXjlaKli+4
         E0RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706085567; x=1706690367;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2q1ZPZiIAe8BF0cYeIZCl5XPcn9hhQ0mvUIAjpCb5x8=;
        b=EzjjTCBAyh1avmdJOZJV12ksc1DcOkRsImCaPaCmLD5pRtJK/R+ZUsMl4YIWgkhw1g
         aAsYIHuv/jI8QJVWVnAdNzmho4xXIeBNWtXAo61e1fJv/S3JWNopcTs8WuEgFwn/iu5X
         FsFKQ3k11wzHy0FEydwUuChCWxmwUsN5/3laauHebFviI9iuReFbvh855W0nFSZyHyRT
         u9vMDQeD0NLxD2UvPtujHMYHEAAawPJ1lLrpQ/2PNsNV2ebYYrDnk4/ZRVfepxRrgAor
         YunaBEkISnQV+ahQaVYfZLSyp+EgEhzZyYb3BlpjZD85S/v6yuCr2UKwNO8dA0Q5uqB+
         ef4A==
X-Gm-Message-State: AOJu0YzUuFKa/W9hP5F/Uv+4dgRY915y8ZP9Ecsxd8AQh4Mgh8nvTPxS
	isVCBMO0u8XZCNPIFhLCxapAJf0FtCx911wedlD04MrdFXtGHdhDPbs6IRvRug==
X-Google-Smtp-Source: AGHT+IFA8Tq3qnUQUA9/FvFr6zvN4e5RbZkx1CuhIqIBGPuKtSXGEzdCM78k4PaF1OjAcrSvM4aAMw==
X-Received: by 2002:a17:902:ecc2:b0:1d5:a279:242b with SMTP id a2-20020a170902ecc200b001d5a279242bmr642306plh.28.1706085567442;
        Wed, 24 Jan 2024 00:39:27 -0800 (PST)
Received: from thinkpad ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id d19-20020a170903209300b001d787672afcsm514389plc.258.2024.01.24.00.39.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 00:39:26 -0800 (PST)
Date: Wed, 24 Jan 2024 14:09:19 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Nikunj Kela <quic_nkela@quicinc.com>, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
	srinivas.kandagatla@linaro.org, vincent.guittot@linaro.org,
	ulf.hansson@linaro.org
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <20240124083919.GC4906@thinkpad>
References: <be31801e-bb21-426b-f7aa-2b52727de646@quicinc.com>
 <82115165-6089-4214-b47b-2c2c0dfb8c66@linaro.org>
 <1935cb82-648c-f079-8852-d461dc9f8609@quicinc.com>
 <20231214061742.GG2938@thinkpad>
 <66f82e2c-0c42-4ead-93f5-2136ad478df2@linaro.org>
 <7768258d-4748-84f7-0da2-43988138e5cc@quicinc.com>
 <20240123161231.GG19029@thinkpad>
 <d3d07e07-5f47-496c-9417-34d502242b40@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d3d07e07-5f47-496c-9417-34d502242b40@linaro.org>

On Wed, Jan 24, 2024 at 09:02:16AM +0100, Krzysztof Kozlowski wrote:
> On 23/01/2024 17:12, Manivannan Sadhasivam wrote:
> > On Thu, Dec 14, 2023 at 07:18:25AM -0800, Nikunj Kela wrote:
> >>
> >> On 12/13/2023 11:49 PM, Krzysztof Kozlowski wrote:
> >>> On 14/12/2023 07:17, Manivannan Sadhasivam wrote:
> >>>> On Tue, Dec 12, 2023 at 11:06:42AM -0800, Nikunj Kela wrote:
> >>>>> + Linaro team
> >>>>>
> >>>>> On 12/12/2023 11:01 AM, Krzysztof Kozlowski wrote:
> >>>>>> On 12/12/2023 18:45, Nikunj Kela wrote:
> >>>>>>> We are abstracting some resources(ex. clocks) under new firmware on an
> >>>>>>> existing platform therefore need to make changes in certain drivers to
> >>>>>>> work with that firmware. We need to make a distinction between two
> >>>>>>> different variants of the FW. In one case, some resources will be
> >>>>>>> abstracted while in other case, they won't be abstracted. My query is -
> >>>>>>> "should we define a new compatible string for the variant with
> >>>>>>> abstracted resources(in FW) or we should add a new DT property keeping
> >>>>>>> the compatible same?"
> >>>>>> Hi,
> >>>>>>
> >>>>>> Usually change in the interface or behavior warrants new compatible.
> >>>>>> Property would be suitable if the same device, e.g. same SoC component
> >>>>>> with same FW, was configured differently on different boards.
> >>>>>>
> >>>> Here, the hardware is going to be the same, but the resources (clocks,
> >>>> regulators, etc...) will be controlled by the firmware instead of OS.
> >>> Yeah, that's the problem with generic questions, instead of specific...
> >>> "Talk is cheap."
> >>>
> >>> OK, so the hardware is exactly the same? Does FW bring any
> >>> incompatibilities in the interface or is it just about the clocks? I
> >>> guess I should not have included "with same FW" in my last statement.
> >>> It's true, but way too narrow. Therefore let me rephrase it:
> >>
> >> HW is exactly the same. Let me give more insight on the setup. We have been
> >> using the HW in virtual environment but now the ownership of certain
> >> resources (e.g. clock controller etc.) is handed over to a different VM(non
> >> Linux VM). Earlier the ownership of the resources was local to the same
> >> VM(Linux VM) via passthrough mode so it could directly access them however
> >> now Linux VM talks to non-Linux VM for its operations for resources that it
> >> doesn't own anymore via some interface(shared memory/doorbell).  So shall we
> >> use property like 'qcom, controlled-remotely' or do we need a new compatible
> >> for such setup?
> >>
> > 
> > Krzysztof, just a ping on this thread.
> > 
> > To summarise, the hardware is exactly same. We can consider the case of UFS. The
> > UFS controller is exactly same in this proposed setup but the resources of the
> > UFS controller are taken care by the VM. So instead of enabling the resources
> > one by one, Linux kernel will just ask the VM to do so using an SCMI command.
> > 
> > Due to this difference, we need to make the changes in the UFS controller
> > driver. So we want to know if we can use a different compatible for the UFS
> > controller altogether in DT (this will allow Linux kernel to have a separate
> > driver and will simplify things) or just use a property like
> > "remotely-controlled" to let the driver detect this setup and take action
> > accordingly.
> 
> What devices do we talk about? Are they released? For which other
> devices you want to use it?

If you are referring to "peripherals" as "devices", then this new interface is
going to be applicable to most of the peripherals in the SoC like PCIe, UFS, USB
etc...

- Mani

-- 
மணிவண்ணன் சதாசிவம்

