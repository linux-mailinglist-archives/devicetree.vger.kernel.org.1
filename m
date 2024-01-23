Return-Path: <devicetree+bounces-34277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB03E839469
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 17:13:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 99C78B26329
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 16:13:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9988664D6;
	Tue, 23 Jan 2024 16:12:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v5EK+YAD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FAA5F54F
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 16:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706026360; cv=none; b=P1Z/kRhUppZMfwQzZCl7/lfOzEsWUMbJ1CL0xcPJ6s15LOx7qverbzfoK7DZxIDI1WMLKxN/WSHWvZs1zkp8RouVPT9lJKJ5DonkS2dE0HcYjiUtj0XgXylFJpgSGPUHL1wy/LZgYeW6nO3J8sXp1blCXhNn1RDkKQ5k/ldvskk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706026360; c=relaxed/simple;
	bh=RjS4Y3I/jOaStl8ri3KxR/NBX50JC304+6jRdPAH8VM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VFMlfGRW522UevyDi1XJi1FeJ5Bn9iiPIXqQdT/UQnouu88BMCr2wUegaKER2UsVUTOIaAzGCQcw8cD+wXyYjVQYT95rAbsePLzk1GgbjAOYgafQ60luEQSg1iXg/QwuGLUbSp0tfhRgrTxyONrUr3ZWyT7JWHdGArgFqW4V/Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v5EK+YAD; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-5ce10b5ee01so3126747a12.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 08:12:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706026358; x=1706631158; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=V2cOLz7Ome+EIHt1p/dO+IIl+6Of87lusE2b2kV7fH0=;
        b=v5EK+YADl/IFCOU294fPc223XG/NfQ/aIrjs/R2sdzme8ZRiLyaC2TLEgK/T3U1iK5
         oF/5PrKMeY/SZS10aN16DU4iuBKRfyjbG+hOBwHoVkJUTtiIljQSlluH/cKjSpK0PHgy
         cG3j8nOwpL50EBbx7rSaTtHpar7xAiL15+d/9De/uGwH7HoqpMwu0hRxcfGgqJDaCzzR
         ThzPJH17WmJJiua4FQurh00RRqnMJ7cMOqlJ6zLtLCInytDC6RTr1Izf2CzYl//dt4zY
         gSA8nPBsPmrAAc0it1SpQ5vlGnry4sB3WWKXi1O4dfcoR9d7GzqTEVyc2fv9JbCSL7ST
         uqug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706026358; x=1706631158;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V2cOLz7Ome+EIHt1p/dO+IIl+6Of87lusE2b2kV7fH0=;
        b=nxiNYPljhnu4bWS8dAvj/jOVYQDCkim2BLLDPBkRQecBqvXoY89oAW8eqUmjffoO12
         9xiLcPqhfByhvbJkl4A80sdCoDXlt4PzsUNpiaZmQgp3uAeO2WTSMkXF6fH/t+4EIGGL
         4y+Va0Pbh3TAH+rfMl3ekpaJAPT0BpqDnxRq+Qq2M4c2bEXBPqjsSpL0xooYIBmMJg4t
         Wz7Rkj6FpsLOhXyPZy+y/zx1ItyWYjj5ophhspOf1p0sgWDfp22qOC5kvA3ergYP2BXH
         CJxXswY7npEIxhGNbP+oE4LdqLhTLxu9z1QPdcD/xDgVhhzCL6F46xqII1mxkwX7jiRJ
         O9LQ==
X-Gm-Message-State: AOJu0Ywc6bxoDD63ttqSMn0/pej3MWO57cT0HqYEUGY5MuqBvZbmETE8
	API5ZWhwBypwvPVsQtCKddxJNXq/HIiCIzjXaicykkJdoBeSSx6ZgoNc5/6kZw==
X-Google-Smtp-Source: AGHT+IHNngW7wiBYCnWv/Qy7cqPkVOMMz3b4jaTHRNbiFbdCsjmNpnLHJJRiqyXAz/+GL6YQFx6NLQ==
X-Received: by 2002:a05:6a20:6f91:b0:19a:80b4:5acd with SMTP id gv17-20020a056a206f9100b0019a80b45acdmr7255113pzb.53.1706026358228;
        Tue, 23 Jan 2024 08:12:38 -0800 (PST)
Received: from thinkpad ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id n47-20020a056a000d6f00b006dbc82c79cfsm7090408pfv.130.2024.01.23.08.12.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 08:12:37 -0800 (PST)
Date: Tue, 23 Jan 2024 21:42:31 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
	srinivas.kandagatla@linaro.org, vincent.guittot@linaro.org,
	ulf.hansson@linaro.org
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <20240123161231.GG19029@thinkpad>
References: <be31801e-bb21-426b-f7aa-2b52727de646@quicinc.com>
 <82115165-6089-4214-b47b-2c2c0dfb8c66@linaro.org>
 <1935cb82-648c-f079-8852-d461dc9f8609@quicinc.com>
 <20231214061742.GG2938@thinkpad>
 <66f82e2c-0c42-4ead-93f5-2136ad478df2@linaro.org>
 <7768258d-4748-84f7-0da2-43988138e5cc@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7768258d-4748-84f7-0da2-43988138e5cc@quicinc.com>

On Thu, Dec 14, 2023 at 07:18:25AM -0800, Nikunj Kela wrote:
> 
> On 12/13/2023 11:49 PM, Krzysztof Kozlowski wrote:
> > On 14/12/2023 07:17, Manivannan Sadhasivam wrote:
> > > On Tue, Dec 12, 2023 at 11:06:42AM -0800, Nikunj Kela wrote:
> > > > + Linaro team
> > > > 
> > > > On 12/12/2023 11:01 AM, Krzysztof Kozlowski wrote:
> > > > > On 12/12/2023 18:45, Nikunj Kela wrote:
> > > > > > We are abstracting some resources(ex. clocks) under new firmware on an
> > > > > > existing platform therefore need to make changes in certain drivers to
> > > > > > work with that firmware. We need to make a distinction between two
> > > > > > different variants of the FW. In one case, some resources will be
> > > > > > abstracted while in other case, they won't be abstracted. My query is -
> > > > > > "should we define a new compatible string for the variant with
> > > > > > abstracted resources(in FW) or we should add a new DT property keeping
> > > > > > the compatible same?"
> > > > > Hi,
> > > > > 
> > > > > Usually change in the interface or behavior warrants new compatible.
> > > > > Property would be suitable if the same device, e.g. same SoC component
> > > > > with same FW, was configured differently on different boards.
> > > > > 
> > > Here, the hardware is going to be the same, but the resources (clocks,
> > > regulators, etc...) will be controlled by the firmware instead of OS.
> > Yeah, that's the problem with generic questions, instead of specific...
> > "Talk is cheap."
> > 
> > OK, so the hardware is exactly the same? Does FW bring any
> > incompatibilities in the interface or is it just about the clocks? I
> > guess I should not have included "with same FW" in my last statement.
> > It's true, but way too narrow. Therefore let me rephrase it:
> 
> HW is exactly the same. Let me give more insight on the setup. We have been
> using the HW in virtual environment but now the ownership of certain
> resources (e.g. clock controller etc.) is handed over to a different VM(non
> Linux VM). Earlier the ownership of the resources was local to the same
> VM(Linux VM) via passthrough mode so it could directly access them however
> now Linux VM talks to non-Linux VM for its operations for resources that it
> doesn't own anymore via some interface(shared memory/doorbell).  So shall we
> use property like 'qcom, controlled-remotely' or do we need a new compatible
> for such setup?
> 

Krzysztof, just a ping on this thread.

To summarise, the hardware is exactly same. We can consider the case of UFS. The
UFS controller is exactly same in this proposed setup but the resources of the
UFS controller are taken care by the VM. So instead of enabling the resources
one by one, Linux kernel will just ask the VM to do so using an SCMI command.

Due to this difference, we need to make the changes in the UFS controller
driver. So we want to know if we can use a different compatible for the UFS
controller altogether in DT (this will allow Linux kernel to have a separate
driver and will simplify things) or just use a property like
"remotely-controlled" to let the driver detect this setup and take action
accordingly.

- Mani

> > "Property would be suitable if the same device, e.g. same SoC component
> > with same interface towards OS, was configured differently on different
> > boards."
> > 
> > > Should we still use a different compatible? For the similar usecase, we already
> > > have properties like 'qcom,controlled-remotely' to let the OS know that it
> > > should not configure the hardware and just consume it.
> > Yeah, also similar qcom,gsi-loader.
> > 
> > Best regards,
> > Krzysztof
> > 

-- 
மணிவண்ணன் சதாசிவம்

