Return-Path: <devicetree+bounces-101952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 09281974DA6
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 10:57:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3BD491C2098B
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 08:57:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB5E218593F;
	Wed, 11 Sep 2024 08:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qxJ7sSCP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1D3183CC8
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 08:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726044933; cv=none; b=YQlw3EYt9eZK9lVDmdd77ewhp3wta24Lb3QM86jeweDwYeCmhWivE0W6yWSR5ua5Va6t1R0ZSU/fi9yvA05FBNL6ubmq6k01n3r2ZIt3+4/vBDejDJyrFrUTPm/VO17ukq2vshAnqZkZOC+K+Ib8CqIUA2x9LkAto7zUjDey1d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726044933; c=relaxed/simple;
	bh=80etI6IOGYnYy3S48QUWp5RLlOnW9UqPR0o2rxDl47Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YR0fn9AgxiilAXkNMGL9AY24sav/hmdZUrwUYgRxTckwlkHXWpute/ZMYrEyP1a1e9ac00dhxOC4dqqLLtvXmFh7YWQPNbK5RO2RXmNWy2wTrF9+Rue+JHGprzMaE64qTNh0/M1a66036E++gWWKjy4UsN2ye9mIZeurxCG3+OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qxJ7sSCP; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5365928acd0so6165838e87.2
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 01:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726044928; x=1726649728; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=M7g/Bl6lBC/cRuXNn+LW0zFsoslcjYTly3MsBdR/C+U=;
        b=qxJ7sSCP0/f7fFvRhmhaUp561iNFVQTKSbg8IPzT/ufsAjdbgSCulgL+tQjh8X1wDX
         j6YPJlwfzfnoXWWo9GpABAdrB2h3/W4lTVmjeqo7OpauahB8X/UbgMn+vz+b2RBsq7nB
         OjNEOMyCb0w9xrIiOsaj8zwuHxWNc51dFqyShaUgF0WUEemfYS8ZKQf+uCUZCdAA3/cr
         j1YiKAVplwHwpJpOfDhVkgvgwrmG4lTJWtuvS9IIzhhGbrSe4frB521FYuibwZQP4Jmh
         FRtRiGYDISWHeXhjUSGmopJIQnxHxjkIylbwlC1G2g+KlI+orDf1Uf2V2Eg4YwcwO55n
         qIYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726044928; x=1726649728;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M7g/Bl6lBC/cRuXNn+LW0zFsoslcjYTly3MsBdR/C+U=;
        b=SYN8uUor44kbbQxhc0x38CveiAuj23PfOomg822pFowMOoTC8imY1GjMWXxXdDMa2g
         Q3yPMUVP7eWfJWhxPH8S9C1W0rp0GTJnm3QxfsscJZ7R5SR80ihkSTfm5Emb8tgtJWNb
         0Q/vNgiBihSkSYATGc8M0xm9oFx+MZWYo83WeNZWwG87qKC5hOkNmr3GjmhDULL2UUln
         2U1O40m0h7fWbz+A2aFhkBxVrSQhjHyNrO7ivXHwX4x22ouYVbcE05EbtezoOOkGcxrR
         exlmTzSAklpm7wgR7xwaKlkBL3rxkyeiagl/GAfYQmXEkHI08DnXDaIiHFt93NUMIewg
         wMQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWgSugWhIwnbRAQoUEBNKShzQ0NrNMUzMuRIO3T8yR7L03LSwS5NBUMz8SINc3s/VILs5/rmIQNMlF2@vger.kernel.org
X-Gm-Message-State: AOJu0YzGDyeMPhkRlRgtoWsn5gbzCRjX/BJyGg1Wo9ryUcK25sxo9CNt
	qCi0JNdgBRkavVN94h3lbTS/mvSej4MX7TAT1k9banoU6vlpB0GT6l8NCsaz3mU=
X-Google-Smtp-Source: AGHT+IH+Dzjozd3OlATo0a9sgQDCf790CbejQFcEZWABh2pvl4N1FguMPA5NKsNPpodVdT4PlWx09A==
X-Received: by 2002:a05:6512:6cf:b0:52c:850b:cfc6 with SMTP id 2adb3069b0e04-536587f5c84mr11715382e87.38.1726044926949;
        Wed, 11 Sep 2024 01:55:26 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5365f905a06sm1490865e87.241.2024.09.11.01.55.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 01:55:26 -0700 (PDT)
Date: Wed, 11 Sep 2024 11:55:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Suraj Jaiswal <jsuraj@qti.qualcomm.com>
Cc: Andrew Halaney <ahalaney@redhat.com>, 
	"Suraj Jaiswal (QUIC)" <quic_jsuraj@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	"bhupesh.sharma@linaro.org" <bhupesh.sharma@linaro.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Jose Abreu <joabreu@synopsys.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
	"linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-stm32@st-md-mailman.stormreply.com" <linux-stm32@st-md-mailman.stormreply.com>, Prasad Sodagudi <psodagud@quicinc.com>, 
	Rob Herring <robh@kernel.org>, kernel <kernel@quicinc.com>
Subject: Re: [PATCH net] net: stmmac: Stop using a single dma_map() for
 multiple descriptors
Message-ID: <spwi3an6viosg4p3bnufpqah4uevzbncka6s6rvlqm3rhsszhz@fi2he6vsviyl>
References: <20240902095436.3756093-1-quic_jsuraj@quicinc.com>
 <yy2prsz3tjqwjwxgsrumt3qt2d62gdvjwqsti3favtfmf7m5qs@eychxx5qz25f>
 <CYYPR02MB9788D9D0D2424B4F8361A736E79A2@CYYPR02MB9788.namprd02.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CYYPR02MB9788D9D0D2424B4F8361A736E79A2@CYYPR02MB9788.namprd02.prod.outlook.com>

On Tue, Sep 10, 2024 at 03:43:23PM GMT, Suraj Jaiswal wrote:
> 
> 
> -----Original Message-----
> From: Andrew Halaney <ahalaney@redhat.com> 
> Sent: Wednesday, September 4, 2024 3:47 AM
> To: Suraj Jaiswal (QUIC) <quic_jsuraj@quicinc.com>
> Cc: Vinod Koul <vkoul@kernel.org>; bhupesh.sharma@linaro.org; Andy Gross <agross@kernel.org>; Bjorn Andersson <andersson@kernel.org>; Konrad Dybcio <konrad.dybcio@linaro.org>; David S. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Rob Herring <robh+dt@kernel.org>; Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>; Conor Dooley <conor+dt@kernel.org>; Alexandre Torgue <alexandre.torgue@foss.st.com>; Jose Abreu <joabreu@synopsys.com>; Maxime Coquelin <mcoquelin.stm32@gmail.com>; netdev@vger.kernel.org; linux-arm-msm@vger.kernel.org; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-stm32@st-md-mailman.stormreply.com; Prasad Sodagudi <psodagud@quicinc.com>; Rob Herring <robh@kernel.org>; kernel <kernel@quicinc.com>
> Subject: Re: [PATCH net] net: stmmac: Stop using a single dma_map() for multiple descriptors
> 
> WARNING: This email originated from outside of Qualcomm. Please be wary of any links or attachments, and do not enable macros.
> 
> On Mon, Sep 02, 2024 at 03:24:36PM GMT, Suraj Jaiswal wrote:
> > Currently same page address is shared
> > between multiple buffer addresses and causing smmu fault for other 
> > descriptor if address hold by one descriptor got cleaned.
> > Allocate separate buffer address for each descriptor for TSO path so 
> > that if one descriptor cleared it should not clean other descriptor 
> > address.
> 
> I think maybe you mean something like:
> 
>     Currently in the TSO case a page is mapped with dma_map_single(), and then
>     the resulting dma address is referenced (and offset) by multiple
>     descriptors until the whole region is programmed into the descriptors.
> 
>     This makes it possible for stmmac_tx_clean() to dma_unmap() the first of the
>     already processed descriptors, while the rest are still being processed
>     by the DMA engine. This leads to an iommu fault due to the DMA engine using
>     unmapped memory as seen below:
> 
>     <insert splat>
> 
>     You can reproduce this easily by <reproduction steps>.
> 
>     To fix this, let's map each descriptor's memory reference individually.
>     This way there's no risk of unmapping a region that's still being
>     referenced by the DMA engine in a later descriptor.
> 
> That's a bit nitpicky wording wise, but your first sentence is hard for me to follow (buffer addresses seems to mean descriptor?). I think showing a splat and mentioning how to reproduce is always a bonus as well.

Please fix your email client. It is impossible to understand where is
your answer and where comes the quoted text by Andrew. Use text emails,
text quotation (single '>') and no Outlook splat at the top of the email
("Original Message" with all the emails, etc).

-- 
With best wishes
Dmitry

