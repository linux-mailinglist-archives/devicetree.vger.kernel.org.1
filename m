Return-Path: <devicetree+bounces-72321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7E18FB58E
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 16:37:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9DEDD1C244CF
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 14:37:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 363B41411FA;
	Tue,  4 Jun 2024 14:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q2wCQYGk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B411422B4
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 14:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717511730; cv=none; b=A7p7vSUGizUJIdCrLSOQAdn2V/AXWBqOefmHpplauYP9eBY6gr2aQVhqLaM+gcD8gGUmMJymmRbL1CeAvWlqXflQKm+Frv3JESWZydH5cO/82qE/h6vUcGeLlWsh2fzbXv7Rq5teDM2L8LuGrQZ5L9z+Qtzfd+F5P1XpjF6Q0to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717511730; c=relaxed/simple;
	bh=zhxB4xrQrAVXAbhbxwOvlF0wqi6yLfLTVSPn49ick8I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S0kYoSDNeHsOYSTk6xV3hf7WNw79LzBYofc7hyP3mU/Ya2VvzBxkXFsrVdAlCcUC26q8peONQSRiDiIMp5rbiRriz1q4CZnTWXgJITcRw6Oq+bUbwBNFfZq8MUj5baoP0+694wgqBPkbrc4D9dNBEZSFtMaBwvDiMkAwWX5eHEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q2wCQYGk; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-57a1fe639a5so1450486a12.1
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 07:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717511726; x=1718116526; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=N6L/xkpcOUMcu4g4EPcPs71CcWtZgSi+vh4CgjuHBVk=;
        b=Q2wCQYGkQiMijzeV/AeMjDgLFPqcx0T16CcNTvjIVCIHWDt4KEmZDuyM5LibMet2bk
         H0IC5GbOt7qs+X2Yj1X/dzOgkWcvBfBNLEZCTXEyMW1/qd5w2TUPkN5M12RLe9sFKuBj
         nINL2ABtDtOREP8RyTZu7yZrQrT1NzhQCT8G/h726MYw3wzt3o8oVIPC9ymnkdO1SSMl
         DP0aczsABg2rpKlhFjnXFpQthr+dZSySxA6PfL3oMjtuDxy18K2MDs7qDcu3/2NXJtBR
         RmVlb9pB8ABPMqe3eY8nuLY4fcVYOIK9GmXA8PPiXl74bT77oYc04s/UAqyBb+/mtZDL
         H5DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717511726; x=1718116526;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N6L/xkpcOUMcu4g4EPcPs71CcWtZgSi+vh4CgjuHBVk=;
        b=Svjse5MsAAyTpw7yo+CCtLMwz0IrYI8I2/txpwYKiDVrbc9CqH6OEwRU9F8hizFuW4
         E6Sz/NAEauFa0GcM7kBrInOhiq1HUFeL0ZJlP1AHnSKO4G0hW5YptRoBg0kAcaLHlKVI
         /N0v1FagPE3Byep8yZNNUzBP2vTYv5O85YEhCSl/DOPWUOwF6zSJNPT7QLIFa9W7iXsU
         rLtrU8Swle1+6UAR0Fd5OLQ5psZJDIAej1jcwB0PxjosHcZVaZXt4z5ZTHTuUXvNX8sj
         Bl4CVpHtj6XBolUBVvVwIfHmtQPfBA8JycTRpKSg7B+D6TfsTK2gXbluSGTI/bRD/96H
         EHbw==
X-Forwarded-Encrypted: i=1; AJvYcCUzF+jN2TmUJodCCA4RuwuawHPJ/A5SUAuiYrm2kTNZWR96Sk8zwgFZ2t9/x2WMv/Lokg9M/R9brKV+F9laswaKqEIdIl+QZ3RQgg==
X-Gm-Message-State: AOJu0YwPLyHdCzgim4ed0NsuvFbV0GLhWCszcinTabxCcgiy0M7AJNC3
	QevKh/nvf1oFA9/KMyXuOGVUaf9no6PXxQa1wsBODFjzr4hUe9sVRHng3ELQi5c=
X-Google-Smtp-Source: AGHT+IFy5kHjV2Tu8d+ModGRTOANXINp1lHBsrB5h6ijDdg1iRS8Q7e0+jIlU0n4WFHZ499S/Q3cjw==
X-Received: by 2002:a17:906:1e89:b0:a66:7f1a:61e0 with SMTP id a640c23a62f3a-a6821f4e6cbmr873463166b.62.1717511726349;
        Tue, 04 Jun 2024 07:35:26 -0700 (PDT)
Received: from linaro.org ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a690a32cba4sm306241966b.158.2024.06.04.07.35.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 07:35:25 -0700 (PDT)
Date: Tue, 4 Jun 2024 17:35:24 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100: Make the PCIe 6a PHY
 support 4 lanes mode
Message-ID: <Zl8mLGziGzFhqbZC@linaro.org>
References: <20240531-x1e80100-dts-fixes-pcie6a-v1-0-1573ebcae1e8@linaro.org>
 <20240531-x1e80100-dts-fixes-pcie6a-v1-2-1573ebcae1e8@linaro.org>
 <Zl28nvnpGFRsYpGh@hovoldconsulting.com>
 <d93fe55e-7c65-48cb-bdaf-5e15bc22be30@linaro.org>
 <Zl8GoRoY9lXRtg2R@hovoldconsulting.com>
 <402aa998-8b3c-4c3c-8dcb-f128b6ddac46@linaro.org>
 <Zl8MUpfy/2Khw+wD@linaro.org>
 <dd1be285-d94b-448e-85d3-d5dce27f9ac0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dd1be285-d94b-448e-85d3-d5dce27f9ac0@linaro.org>

On 24-06-04 14:55:31, Konrad Dybcio wrote:
> 
> 
> On 6/4/24 14:45, Abel Vesa wrote:
> > On 24-06-04 14:38:40, Konrad Dybcio wrote:
> > > 
> > > 
> > > On 6/4/24 14:20, Johan Hovold wrote:
> > > > On Tue, Jun 04, 2024 at 02:00:10PM +0200, Konrad Dybcio wrote:
> > > > > On 6/3/24 14:52, Johan Hovold wrote:
> > > > 
> > > > > > As I just mentioned in my reply on the PHY patch, this does not seem to
> > > > > > work on the CRD were the link still come up as 2-lane (also with the
> > > > > > clocks fixed):
> > > > > > 
> > > > > > 	qcom-pcie 1bf8000.pci: PCIe Gen.4 x2 link up
> > > > > > 
> > > > > > So something appears to be wrong here or in the PHY changes.
> > > > > 
> > > > > Is the device on the other end x4-capable? Or does it not matter in
> > > > > this log line?
> > > > 
> > > > Yes, of course. It's the CRD as I wrote above, and you can tell from
> > > > other log entries:
> > > > 
> > > > 	pci 0007:01:00.0: 31.506 Gb/s available PCIe bandwidth, limited by 16.0 GT/s PCIe x2 link at 0007:00:00.0 (capable of 63.012 Gb/s with 16.0 GT/s PCIe x4 link)
> > > > 
> > > > lspci and what Windows reports.
> > > Ok, good. I was scared of double-sourcing of parts that are not identical
> > > in spec..
> > > 
> > 
> > On my CRD, there is a KBG50ZNS256G.
> > 
> > > [1] suggests this wasn't ever achieved.. which makes the cover letter of
> > > this series a bit misleading..
> > 
> > True ...
> > 
> > > 
> > > What does the TCSR check return? If 0, can you hardcode it to 1 and see if
> > > the link comes up at x4?
> > 
> > TCSR check returns 1. But that is not enough. The PCIe controller needs to
> > handles some stuff about margining. See the following patchset.
> > 
> > https://lore.kernel.org/linux-pci/20240501163610.8900-3-quic_schintav@quicinc.com/
> > 
> > But even with this, I'm not able to get 4-lanes mode to work (yet).
> > So it must be something else in the controller driver that is needed.
> 
> The margining settings AFAIU shouldn't be necessary for just getting the
> link, but to ensure there aren't many errors while transacting..

Part of the margining settings is related number of lanes.

> 
> > 
> > IIRC, this is the first Qualcomm platform that would support Gen4 with
> > 4-lanes upstream. Maybe I'm wrong.
> 
> Seems so
> 
> Another idea I had, maybe the PCIE_PORT_LINK_CONTROL &
> PCIE_LINK_WIDTH_SPEED_CONTROL registers differ on qcom gen4 controllers..
> 
> Can you check the documentation and see if the defines in
> drivers/pci/controller/dwc/pcie-designware.h still hold true?

Yep. No issue there.

> 
> Konrad

