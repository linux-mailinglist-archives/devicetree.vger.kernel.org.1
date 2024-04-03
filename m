Return-Path: <devicetree+bounces-55860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1B0896A74
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 11:25:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3F4161C22358
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 09:25:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A40F873165;
	Wed,  3 Apr 2024 09:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PmGaad4O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B487316F
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 09:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712136327; cv=none; b=A0iEagV3f9wj4cCQNXtBaLV1tKhej0IqMUlmDeUmCvMh/hZL99EWCw3U48Wm5rEPi75TFHrY6pi8eyT15TYMUnhEgzRbdU59uEXv2uujMXfpdKZT/ofJLIp0AzUllVKgZ0dCCCo96Ei59aDGxIvIm565ohg1NcCyrjAbdsEgBgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712136327; c=relaxed/simple;
	bh=YoRIxI0T1TTf4Vz0hXZqLHz1tclkG7IgkBBUpuKeMJs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m1B6zotPQ/7B6xatzWcwb+QfufwJN+g6/CrnjmcclD/lTuzBnosfV0uHm1Knd4iqrjcj0li773Ho56UwwikupawtGC/vShxhYGHO51l0U+ho6THX8ZScQEQdqHIcMpK8kvTRmhIPQMr9nkq+VpgTpHKgdnFx6rzSPoIM3VP5LW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PmGaad4O; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-22e997d8daaso124813fac.3
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 02:25:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712136325; x=1712741125; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rpFhM8SqXyBu94hYk7CEfVvlLlSK54Yy6BQDmzkvVHs=;
        b=PmGaad4O/qLxrQUVdlnwvIv5nprJf9RTaWejIBUwbMYjq8egLzXSPRMc2hqd81Aq+b
         ItqABBYVCRdsVFbyd2kSbyCfpvigmiZT6fYhfOfXL6Cy0qaEuzeFWZoPa+d338MGPL3v
         zipZCfTXSPCp9lhNxGoIVE+CkVzvpmajN5y/3FmdwYPxQbZ4W0BRg7ZEZ6YvH7SLOt1j
         7pnm5IIm0i+bctWigTfowDkhSD4YPjEcwPQ8tqXttHIWpHbYItKHR1P09Qv74XILxMIS
         Sn97flgeci5/To1yPPn6IBLNpx/KLaFbiJccN57AwVaAay8NLmlnS1vokZLKQidoR97H
         G2tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712136325; x=1712741125;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rpFhM8SqXyBu94hYk7CEfVvlLlSK54Yy6BQDmzkvVHs=;
        b=OQzn26HFdlbl5v/jbfe8Dj+ob2E09I7coppX2WVhBnYKkodFWApH4UxHeCtT/Pqpd+
         m93CIi6dLLrBjZMspCS7n3k03Nuwcm/oRQdxGuN9kCjKz6x/8W4kgxwENV9u9BENeXEW
         tebLFELV2j00LUf2CdIX1ryixlkCIuxTlVEjYvI+Uhkz9pumFHTUbOmXALtQ9XD4Z/XA
         5rrLQjyts6eb+ic98ogtMX5BrSpALQIquoPlpfP533H+ERjtq8ROJ030O2NwDB9gEH0O
         i/FTPb9iqAf/seLTDsjsGkEgJsV0MdzS2FGUQPyBc2MY3fNR6dUQc8XkpKKGbSbUnSm0
         kfEA==
X-Forwarded-Encrypted: i=1; AJvYcCUkOQKO33gLb8ANH51/fcNNRglMqBY+4+ybgxdaAR3fZmU5k6yrHVovPg3UngEpU8AIoA7fCjkbgS3Noc+rkuutO72UfKavEvWDFw==
X-Gm-Message-State: AOJu0YxfuKOa7ESugIALdfKpEKJegb/tbenLvSL+bAHjqMjkLWzInZFz
	Cu/hAJ9NyqW11VRPG9RfjU99hSWDJzv5RgHXom7GsHrbUmsxNIUmWOPpJSuDLg==
X-Google-Smtp-Source: AGHT+IFACkuRVnBA2XXRimm7ghfL1FGbrX9cbZUJ2UEvfTWLcQUIWAhUSwegdo/x91KpBnylAMFTpQ==
X-Received: by 2002:a05:6870:e6c8:b0:22a:4c6a:39ea with SMTP id s8-20020a056870e6c800b0022a4c6a39eamr2423701oak.14.1712136324914;
        Wed, 03 Apr 2024 02:25:24 -0700 (PDT)
Received: from thinkpad ([103.28.246.48])
        by smtp.gmail.com with ESMTPSA id k8-20020aa78208000000b006eaad01817esm11345067pfi.105.2024.04.03.02.25.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 02:25:24 -0700 (PDT)
Date: Wed, 3 Apr 2024 14:55:17 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v2 00/18] Improve PCI memory mapping API
Message-ID: <20240403092517.GH25309@thinkpad>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240403075034.GF25309@thinkpad>
 <2cdc7045-e277-4d1f-ad7c-66e4ac819a41@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2cdc7045-e277-4d1f-ad7c-66e4ac819a41@kernel.org>

On Wed, Apr 03, 2024 at 04:58:42PM +0900, Damien Le Moal wrote:
> On 4/3/24 16:50, Manivannan Sadhasivam wrote:
> > On Sat, Mar 30, 2024 at 01:19:10PM +0900, Damien Le Moal wrote:
> >> This series introduces the new functions pci_epc_map_align(),
> >> pci_epc_mem_map() and pci_epc_mem_unmap() to improve handling of the
> >> PCI address mapping alignment constraints of endpoint controllers in a
> >> controller independent manner.
> >>
> >> The issue fixed is that the fixed alignment defined by the "align" field
> >> of struct pci_epc_features assumes that the alignment of the endpoint
> >> memory used to map a RC PCI address range is independent of the PCI
> >> address being mapped. But that is not the case for the rk3399 SoC
> >> controller: in endpoint mode, this controller uses the lower bits of the
> >> local endpoint memory address as the lower bits for the PCI addresses
> >> for data transfers. That is, when mapping local memory, one must take
> >> into account the number of bits of the RC PCI address that change from
> >> the start address of the mapping.
> >>
> >> To fix this, the new endpoint controller method .map_align is introduced
> >> and called from pci_epc_map_align(). This method is optional and for
> >> controllers that do not define it, the mapping information returned
> >> is based of the fixed alignment constraint as defined by the align
> >> feature.
> >>
> >> The functions pci_epc_mem_map() is a helper function which obtains
> >> mapping information, allocates endpoint controller memory according to
> >> the mapping size obtained and maps the memory. pci_epc_mem_map() unmaps
> >> and frees the endpoint memory.
> >>
> >> This series is organized as follows:
> >>  - Patch 1 tidy up the epc core code
> >>  - Patch 2 and 3 introduce the new map_align endpoint controller method
> >>    and related epc functions.
> >>  - Patch 4 to 6 modify the test endpoint driver to use these new
> >>    functions and improve the code of this driver.
> > 
> > While posting the next version, please split the endpoint patches into a
> > separate series. It helps in code review and can be applied separately.
> 
> Which patches ? They are all endpoint related:
>  (1) Core code
>  (2) test function driver

Till patch 6, that's why I inlined my reply at the 3rd point.

>  (3) rockchip rk3399 controller
> 
> (2) and (3) depend on the patches in (1), so splitting the series is a big
> possible only if (1) is applied first, so that is a source of delays and breaks
> the context of the patches...
> 

If you split patches 1-6 and post the rest of the Rockchip patches as a follow
up, it perfectly makes sense.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

