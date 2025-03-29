Return-Path: <devicetree+bounces-161740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A64A7547D
	for <lists+devicetree@lfdr.de>; Sat, 29 Mar 2025 07:26:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF28718924DD
	for <lists+devicetree@lfdr.de>; Sat, 29 Mar 2025 06:26:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE00817A2EC;
	Sat, 29 Mar 2025 06:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y3k/0jev"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF8215442A
	for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 06:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743229567; cv=none; b=W8+GXMF3Epjaj4yRDdxhsMs9wmSndTxFTkvl71+Av4Syonoykf/X0HUoPx558bb2TP5ZtUb+/mRMICUFNOtl8muuiRAwKT5Frx99xcXeqR0hfJ6Hshaa/G+VNd9Xf0qR+YXu6ISNNA5gLafuIFhbP3DRcJglnFCtLZI9JZNHHcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743229567; c=relaxed/simple;
	bh=P9s1i7/CqBtWsXLXaqfrQ0tc/n6VCQbknYZtV9RVoAg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QUFaP5TWLs5idkOio7zz3CiA0k6gf6I/1ML7bQiwgvnu/ROXeXaTsyGw2ijJlHle3nbsPDt93L5MZBQPuYC9079Xphsv5iOXlquqf1s0YLicHI1+L66+gsffeZmFywyDA56kBu/5bwbjk+uINsk9tH0Lacdl+IsWYI9CF2o3/1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Y3k/0jev; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-303a66af07eso4124170a91.2
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 23:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743229563; x=1743834363; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mRSN5koB7TeiHhVAdgjJ6QAs7uTTVv87bTB+zeS8BK4=;
        b=Y3k/0jevyJ748poNsWZQNnuPm9J2q/io+o1+gPFw12Zc/+LH+J/dKXVK8H1ucwnuV4
         NspLcilwDmaMbID7e6Ys1x5KRDm5v7qXLKiVpfAjyiDvCZqVO/5QCbIbkbvltdy4eMfv
         6OYU9Lk9URBtzfh1yfqmvvxD9qkZHAdAtedW2R10Gi9qBX506ey0orNi24z8QrHSVgEE
         mU7tSqkF25twwaZfxl6jJRlZ1leQnCcVIQgTLnidfU4oku6KkF9NiyyPF7eC4rFYDb+1
         lI0OmzmHmtSkSbzA3/3ECs03VajFraDB1iIsjnxhP/GNnFw+FDyQtOVT5vh4V0rikUYD
         Vr0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743229563; x=1743834363;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mRSN5koB7TeiHhVAdgjJ6QAs7uTTVv87bTB+zeS8BK4=;
        b=KMdvL0zWI4Nxj/ZNvguTwDTNrovGshjyY8zn/rBzEZnt50gHZb1DsI4lebs9MOWdtp
         vKkGaRs2/wmu4V9tEUPnr3PwVjH3+BPIjfsWoEVnp2QvXzcOI7LC69PrjSJE4mQnbANE
         CY0pfsPRnURLjwmdKaXbh9//N9iV3Tyb68uD2aSMe70MDVwN/ySUeljgy6Hj3uMj4p19
         X25ARATkbHJkKPeCsArVK4egWK1PZKV2CNU7m5er/DUn1HYCHqsUIGynPryII6TvSDeX
         W+M/NmTocl/JavZJvrZBVFG4L86FSxFggbsVM+av/sdKnk/hiordwYpbDS0mQEhfWc8g
         H5aw==
X-Forwarded-Encrypted: i=1; AJvYcCXtPFKzexI2N4SP4cVloruhzX2Q2GHgniwOjVP+7Fysyk2B2TfQ7aJ0RSUlqa2Rg2tjFXRESe83DTmH@vger.kernel.org
X-Gm-Message-State: AOJu0YwctUXvU7ppJ+b7I5YZYGkbr7oU4zx6zA9gY5g0tFj7dlp5Eav+
	qeQtKzA+T/WbVuVS4FbhEwGl3OS6knMwlJX3NId1IFuxf/Z44nGVJdOY9kPb/A==
X-Gm-Gg: ASbGncvzQMDY3FvSZ+RpD9jfE8Y0GLGyG+GsmT1nljfQz0QHKq/ZABBCSI46y3i0cPA
	jL4oFA6oInSL310psbr97xYYQxgVcjV9BEynlgxtw6QobJBOwbHyAKxBn7sRyOFVPrnbdM+s1AH
	fCyvCcOY0W/4yfTjgvlm/PDjWwSEIDzP84RcrKa+Nc3aO4WNpvcyw8Z+gRPUvRqm76JB55nEHGF
	P1q6S8WfPeksf6skTfdp84n0ENlHo7PyXBfBKLE5s/fVj35cLUiy3QFBMT8ZLspy6FJpvK3i7AF
	Gsol4LYyiB7H1gVkaKjR08tgD3Mc31gYA8LXLTjs4Un3TcOftXDqewc=
X-Google-Smtp-Source: AGHT+IEa9ousfM+eWpglC7OecikLrwKiKNU9qfU/hQ7NO9ig3EhJu5QjZNwDismYqLU0vTtOytj2zA==
X-Received: by 2002:a17:90b:3a4b:b0:2ee:f076:20fb with SMTP id 98e67ed59e1d1-305320ae1edmr3407754a91.17.1743229563125;
        Fri, 28 Mar 2025 23:26:03 -0700 (PDT)
Received: from thinkpad ([120.60.65.227])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30516d3cdf9sm2976509a91.7.2025.03.28.23.25.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 23:26:02 -0700 (PDT)
Date: Sat, 29 Mar 2025 11:55:55 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
	cros-qcom-dts-watchers@chromium.org, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	quic_vbadigan@quicinc.com, quic_mrana@quicinc.com, quic_vpernami@quicinc.com, 
	mmareddy@quicinc.com
Subject: Re: [PATCH v5 1/7] arm64: dts: qcom: sc7280: Increase config size to
 256MB for ECAM feature
Message-ID: <kjys3yjmbg4jvy47zcq57e6mnbz3hjvj4hqv5ntn36sglib7fy@nzxzlgqvi74z>
References: <20250309-ecam_v4-v5-0-8eff4b59790d@oss.qualcomm.com>
 <20250309-ecam_v4-v5-1-8eff4b59790d@oss.qualcomm.com>
 <3332fe69-dddb-439d-884f-2b97845c14e1@oss.qualcomm.com>
 <0cc247a4-d857-4fb1-8f87-0d52d641eced@oss.qualcomm.com>
 <h6bnt7ti3yy3welkzqwia7kieunspfqtxf6k46t4j4d5tathls@hra2gbpzazep>
 <090572fa-7c4c-798d-26e9-39570215b2b7@oss.qualcomm.com>
 <f44tte5b3hlm7ir6lyp65fnl6ylq4og5wrvllwr47xdvnhqscg@t3tsy3c6jypw>
 <71a60727-0dc8-4117-82a5-f9ecae1ce967@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <71a60727-0dc8-4117-82a5-f9ecae1ce967@oss.qualcomm.com>

On Fri, Mar 28, 2025 at 09:44:20PM +0100, Konrad Dybcio wrote:
> On 3/28/25 4:29 PM, Manivannan Sadhasivam wrote:
> > On Fri, Mar 28, 2025 at 06:24:23PM +0530, Krishna Chaitanya Chundru wrote:
> >>
> >>
> >> On 3/28/2025 5:14 PM, Manivannan Sadhasivam wrote:
> >>> On Wed, Mar 26, 2025 at 06:56:02PM +0100, Konrad Dybcio wrote:
> >>>> On 3/11/25 12:13 PM, Konrad Dybcio wrote:
> >>>>> On 3/9/25 6:45 AM, Krishna Chaitanya Chundru wrote:
> >>>>>> PCIe ECAM(Enhanced Configuration Access Mechanism) feature requires
> >>>>>> maximum of 256MB configuration space.
> >>>>>>
> >>>>>> To enable this feature increase configuration space size to 256MB. If
> >>>>>> the config space is increased, the BAR space needs to be truncated as
> >>>>>> it resides in the same location. To avoid the bar space truncation move
> >>>>>> config space, DBI, ELBI, iATU to upper PCIe region and use lower PCIe
> >>>>>> iregion entirely for BAR region.
> >>>>>>
> >>>>>> This depends on the commit: '10ba0854c5e6 ("PCI: qcom: Disable mirroring
> >>>>>> of DBI and iATU register space in BAR region")'
> >>>>>>
> >>>>>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> >>>>>> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> >>>>>> ---
> >>>>>
> >>>>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>>>
> >>>> I took a second look - why are dbi and config regions overlapping?
> >>>>
> >>>
> >>> Not just DBI, ELBI too.
> >>>
> >>>> I would imagine the latter to be at a certain offset
> >>>>
> >>>
> >>> The problem is that for ECAM, we need config space region to be big enough to
> >>> cover all 256 buses. For that reason Krishna overlapped the config region and
> >>> DBI/ELBI. Initially I also questioned this and somehow convinced that there is
> >>> no other way (no other memory). But looking at the internal documentation now,
> >>> I realized that atleast 512MiB of PCIe space is available for each controller
> >>> instance.
> >>>
> >> DBI is the config space of the root port0,  ecam expects all the config
> >> space is continuous i.e 256MB and this 256MB config space is ioremaped
> >> in ecam driver[1]. This 256 MB should contain the dbi memory too and
> >> elbi always with dbi region we can't move it other locations. We are
> >> keeping overlap region because once ecam driver io remaped all 256MB
> >> including dbi and elbi memory dwc memory can't ioremap the dbi and elbi
> >> region again. That is the reason for having this overlap region.
> >>> So I just quickly tried this series on SA8775p and by moving the config space
> >>> after the iATU region, I was able to have ECAM working without overlapping
> >>> addresses in DT. Here is the change I did:
> >>>
> >> I am sure ecam is not enabled with this below change
> > 
> > ECAM is indeed enabled. But...
> > 
> >> because ecam block
> >> have the address alignment requirement that address should be aligned to
> >> the base address of the range is aligned to a 2(n+20)-byte memory address
> >> boundary from pcie spec 6.0.1, sec 7.2.2 (PCI Express Enhanced
> >> Configuration Access Mechanism (ECAM)), with out that address alignment
> >> ecam will not work since ecam driver gets bus number function number
> >> by shifting the address internally.
> >>
> > 
> > You are right, but the ECAM driver doesn't have a check for the config space
> > address alignment, so it didn't catch it (I will add the check now). But with
> > the unaligned address, endpoint is not getting enumerated (though bridge is
> > enumerated as it lives under root port, so I got misleaded).
> > 
> >> If this is not acceptable we have mimic the ecam driver in dwc driver
> >> which is also not recommended.
> >>
> > 
> > You can still move the config space in the upper region to satisfy alignment.
> > Like,
> > 
> > +                     <0x4 0x00000000 0x0 0xf20>,
> > +                     <0x4 0x00000f20 0x0 0xa8>,
> > +                     <0x4 0x10000000 0x0 0x4000>,
> > +                     <0x4 0x20000000 0x0 0x10000000>,
> > 
> > With this change, ECAM works fine and I can enumerate endpoint on the host. I
> > believe this requires more PCIe space on the SoC. Not sure if SC7280 could
> > support it or not. But IMO, we should enable ECAM for SoCs that satisfy this
> > requirement. This will avoid overlapping and also simplify the code (w.r.t
> > DBI/ELBI).
> 
> FWIW it seems like most recent SoCs have a <32b space, a _LOWER space which ACPI
> describes as QWordMemory, and another _UPPER space that is way way above them.
> 
> Not sure about the prefetchability and other nuances of the last region though.
> 

Perfetchability only matters for MEM/IO space, not for config space. AFAIK,
recent SoCs seem to be supporting PCIe memory in GiB, so moving the 256MiB of
config space above iATU with 2^28 byte alignment seems plausible.

Otherwise, it becomes a mess to avoid remapping DBI/ELBI registers in the
driver.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

