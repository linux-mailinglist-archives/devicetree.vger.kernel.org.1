Return-Path: <devicetree+bounces-121392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A0CB99C6A4B
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 09:05:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F97128102D
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 08:05:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8EE4189BB3;
	Wed, 13 Nov 2024 08:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V4Id+QWF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09202189B97
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 08:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731485151; cv=none; b=I5vlAMiCGe8tkeWGTu7cwxouygd7PzN79UjV5ahKFdXjfbHz8QukF06cVUZEjkhB1Qzzetjr8C5gILx4+vgveaBBgQu+tkdj+rzbjrxY+55UeAk128LFCsvifQET+pRHT4OyqqR76CLkt8S1b/fdhN9BYDydMDiI/SiHEGgxbK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731485151; c=relaxed/simple;
	bh=iOCvd4apf2fOf50P5zWtor8GI7BamKiw4nxqd7xVMso=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UHEuMIDDPd9qnFjcj0DcE/eNlEhCxhXBj1wwOjdQVPdQvEi9eWaowf8D7E6DXy29HCD8TKautmm9l1v0yHT8vftPBk+/AfrfPsGBz7e7MFpuaQ8SCjWUXYpgLqXzxzgwW4An0VnPyBmoN+LQFCIzvmAf3sUeVL+gk6oF/GDpzs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V4Id+QWF; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-71e467c3996so5390861b3a.2
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 00:05:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731485149; x=1732089949; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hlw6kUSyPp5tLgtfsZkFNg3PR6lL49gz78ER/JqTsTQ=;
        b=V4Id+QWFBGPnvrtRAz3F14zckWtNPf4mzPlv5iKLz7zdVcZRD2RP08/7ELMGli76S7
         u3mC5R0RMrGszWDt5VdvCdaJGmCMIFGdDXJrUf7JcIXf/uqZMJWQUUAZ0i6stGxsdJFE
         jfvxJOLZg231lUf043YdPKp42MH9dfhU8Wq3CHC4QUli7ALsV8VkFI1IGPrv/lyfWDi2
         6GDT6CCZYAy+m0OEYcZLM/Vx/71Nv6uRoGgCcodmuAYUUx6p+4rEJHMfnVbgtmGZkbKm
         ks8pzUS2D9++YfJ1+KlLgGW8tKukHi986C+DUHZxKkbuPNgG0dZS26z7FaepXnNrMA2k
         j5kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731485149; x=1732089949;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hlw6kUSyPp5tLgtfsZkFNg3PR6lL49gz78ER/JqTsTQ=;
        b=hXMCO4dZgEMe5l1TNP+X7CeFsYuuruzMn5TIcuVaocQQwXzpb9oh/wkarInBpUxQ1s
         5HSPsbPnP8+JNZ7GLalD/1zMe7+aS0LLOWc6GDipxnQJd0Q/vRk6SJU+buoUF/InbUMb
         ZdW2eUJLK/aHSkCVL7EawAa6OiKgR/DuuHmUji4v95xOZ4tYgyRsJnfxj5QTRTuw+Uh/
         MR70EmDc15SCtgaJoUzbEUxKkEYLK+M1gV0iStTI+CwKURRYTTF6HOPOvk3mPF8tHNvL
         TVbe30odlqfaJYAD2K8ny6+Q+Qq3fQIiLNnl03c8d+5X2Ts7vTqfApBlwoxM+BFwVNeL
         1WTQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7Zqvz312ls7An9fH8kORqV6y0zSc/7mb4C3ruUA4yUUtY3/zED5Yt2UNELxefVrZjnS5Mqo6KsyT2@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/f+F4JamKwrbWYblMuc92z3Q45rt5tbZ+sIK5Ja/4HsiZMueC
	T8HurV6VNxIfX2mYF4Yec1La5j8n0zll/Nwo5JAqsn8lVJqyqeTBqH7M6hQmvCH9RyDP5Au5fXA
	=
X-Google-Smtp-Source: AGHT+IEjDnxKhbCCSCBWYLn3McpIR9HgecocJsUDjXO9Dqd9HW2AhapmTEwblwCMv1Z5Ny/KnEVQ9w==
X-Received: by 2002:a05:6a20:6a20:b0:1d9:3957:8a14 with SMTP id adf61e73a8af0-1dc228b0182mr24476009637.1.1731485149130;
        Wed, 13 Nov 2024 00:05:49 -0800 (PST)
Received: from thinkpad ([117.213.103.244])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7f7127f3b01sm960520a12.84.2024.11.13.00.05.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 00:05:48 -0800 (PST)
Date: Wed, 13 Nov 2024 13:35:40 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Konrad Dybcio <konradybcio@gmail.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 0/3] Allow specifying an S2RAM sleep on
 pre-SYSTEM_SUSPEND PSCI impls
Message-ID: <20241113080540.mtm7nu7nqrfz27yj@thinkpad>
References: <20241028-topic-cpu_suspend_s2ram-v1-0-9fdd9a04b75c@oss.qualcomm.com>
 <20241112180118.pcn7sf6r3mswwwxf@thinkpad>
 <ce1d2196-cf09-4d27-8b41-372948a59e89@gmail.com>
 <20241112184301.6mlwpfzzowut36pn@thinkpad>
 <eeec6eea-edb4-414e-9c11-88054e3624e4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <eeec6eea-edb4-414e-9c11-88054e3624e4@gmail.com>

On Tue, Nov 12, 2024 at 08:04:34PM +0100, Konrad Dybcio wrote:
> 
> 
> On 11/12/24 19:43, Manivannan Sadhasivam wrote:
> > On Tue, Nov 12, 2024 at 07:32:36PM +0100, Konrad Dybcio wrote:
> > > 
> > > 
> > > On 11/12/24 19:01, Manivannan Sadhasivam wrote:
> > > > On Mon, Oct 28, 2024 at 03:22:56PM +0100, Konrad Dybcio wrote:
> > > > > Certain firmwares expose exactly what PSCI_SYSTEM_SUSPEND does through
> > > > > CPU_SUSPEND instead. Inform Linux about that.
> > > > > Please see the commit messages for a more detailed explanation.
> > > > > 
> > > > 
> > > > It is still not PSCI_SYSTEM_SUSPEND though...
> > > 
> > > It *literally* does the same thing on devices where it's exposed.
> > > 
> > 
> > But still...
> 
> Still-what? We can't replace the signed firmware on (unironically) tens
> of millions of devices in the wild and this is how it exposes that sleep
> state. This is how arm platforms did it before the PSCI spec was
> updated and SYSTEM_SUSPEND is *still optional today*.
> 

I never asked you to replace the firmware in first place, so don't quote the
fact I never said. I see this approach as a way of abusing/faking PSCI system
suspend.

Moreover, I heard from Bjorn that Qcom doesn't want to put the PCIe devices into
D3Cold during system suspend for future platforms (based on their
experimentation). So if drivers rely on this static information, then even Qcom
cannot achieve what they want.

> 
> > > > > This is effectively a more educated follow-up to [1].
> > > > > 
> > > > > The ultimate goal is to stop making Linux think that certain states
> > > > > only concern cores/clusters, and consequently setting
> > > > > pm_set_suspend/resume_via_firmware(), so that client drivers (such as
> > > > > NVMe, see related discussion over at [2]) can make informed decisions
> > > > > about assuming the power state of the device they govern.
> > > > > 
> > > > > If this series gets green light, I'll push a follow-up one that wires
> > > > > up said sleep state on Qualcomm SoCs across the board.
> > > > > 
> > > > 
> > > > Sorry. I don't think PSCI is the right place for this. Qcom SoCs have a common
> > > > firmware across all segments (mostly),
> > > 
> > > This ^
> > > 
> > > > so there is no S2R involved and only S2Idle.
> > > 
> > > is not at all related to this ^, the "so" makes no sense.
> > > 
> > > (also you're wrong, this *is* S2RAM)
> > > 
> > 
> > What? Qcom SoCs supporting S2R? I'm unheard of.
> 
> Maybe you're thinking of hibernation, which is not widely (if at all)
> supported.
> 

Not hibernation. The Qcom platforms I've aware of all support only S2Idle. I
don't work for Qcom, so I may be missing some insider information.

> 
> > > > If you use PSCI to implement suspend_via_firmware(), then all the SoCs
> > > > making use of the PSCI implementation will have the same behavior. I don't think
> > > > we would want that.
> > > 
> > > This is an issue with the NVMe framework that is totally unrelated to this
> > > change, see below. Also, the code only sets that on targets where such state
> > > exists and is described.
> > > 
> > 
> > Well, you are doing it just because you want the NVMe device to learn about the
> > platform requirement.
> 
> And I can't see why you're having a problem with this. It's exactly how it
> works on x86 too. Modern Standby also shuts down storage on Windows,
> regardless of the CPU architecture.

It is not just my problem. I'm expressing the concern that NVMe folks have and
already expressed over the similar solutions I proposed. And I cannot just
overrule them.

> > > > For instance, if a Qcom SoC is used in an android tablet with the same firmware,
> > > > then this would allow the NVMe device to be turned off during system suspend all
> > > > the time when user presses the lock button. And this will cause NVMe device to
> > > > wear out faster. The said approach will work fine for non-android usecases
> > > > though.
> > > 
> > > The NVMe framework doesn't make a distinction between "phone screen off" and
> > > "laptop lid closed & thrown in a bag" on *any* platform. The usecase you're
> > > describing is not supported as of today since nobody *actually* has NVMe on a
> > > phone that also happens to run upstream Linux.
> > > I'm not going to solve imaginary problems.
> > > 
> > 
> > Not just phone, NVMe device could be running on an android tablet.
> 
> 'Could' very much makes it imaginary. There are no supported devices that
> fall into this category.
> 

Agree that there are no products in the market (yet). But having NMVe on
handheld devices is not something I would quote as 'imaginary'.

> > I'm not
> > talking about an imaginary problem, but a real problem that is in a forseeable
> > future
> 
> Keyword: future. This issue has been on hold for years because of 'issues'
> that are pinky promised to happen eventually, without anyone suggesting any
> actually acceptable solutions. This just undermines progress.
> 

Not true. There are solutions suggested, but then it always takes time to reach
consensus. One of the approach that I'm about to propose is to have a userspace
knob that specifies whether the device can be powered down or not (leaving the
default behavior to put them in low power state). Because, the decision to put
the devices into power down or low power state sounds more like an userspace
policy. It was discussed at LPC 2023.

> > (that is also the reason why NVMe developers doesn't want to put the
> > device into power down mode always during system suspend).
> 
> This is the current behavior on any new x86 laptop, and has been for a
> couple of years.
> 
> > And with this change, you are just going to make the NVMe lifetime miserable on
> > those platforms.
> 
> Fearmongering and hearsay. See above.
> 

I can only wish you best of luck with this approach!

- Mani

-- 
மணிவண்ணன் சதாசிவம்

