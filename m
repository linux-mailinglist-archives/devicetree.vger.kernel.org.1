Return-Path: <devicetree+bounces-148783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE520A3D628
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 11:10:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA17A1771A8
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 10:10:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A2B81F03E2;
	Thu, 20 Feb 2025 10:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TbnxBlwP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F301EF080
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 10:09:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740046186; cv=none; b=tUIKzy/hRicfakB4aoIC+621FzZMEt7jj9mtneX8Qg4Y9L3XLKjdFKIqZ/upVlbqF/+35CVH+3FcG5t5l5Z6CnYUISnzW+sP+pIofeJ/SQArLJ+3xSTyuCFEIz+i2iCER4BhjWy4gxJcLQj8rJp2qqR1cU7EFXfzCVdjZhV/kH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740046186; c=relaxed/simple;
	bh=Zoo9uQ8Drs94E3LT5wK9nBC48YVNSJ75dwbnTzaoVHw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KvCL5FmbSFbd/6yLKcEp/LxzgC8lmo9ugMYyxGTWNKDxWBJ1wuIyRqjy4gGQIuNYRZHasRvqJwM8Qc0E1oKC6t0tmqnUJT8OXyWBjF2bXabeSNKrVLWOPFdqB1u2UNCn8ba4uVQUXKgJVtT2r9Q1DC29oXIsK9Zc6iEl6Puejxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TbnxBlwP; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43996e95114so4383115e9.3
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 02:09:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740046181; x=1740650981; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VKAFazs0bK/4Q6jQNje2L8Expu/NOgNPeCn90wFFS4o=;
        b=TbnxBlwPjjyp5w4jK7dHSTOLWZ2jty0K7BW6YS3sGDpseukWSP+NfndN8IXkZbspVn
         y/2hRbyjkA7okR7Npwye0REGht+j8z4kKPj++qi+dFBcIwmBfBx11ZwI93N+aq7BWRY7
         4MUHHO+fzvDRFoIqRGAsRaY4GmlMbuvHA/Yx8dxKTVQ744Y/oGu+NlhUmvY9jQOHx6GU
         XWw5cnlAmw1B2bOx1iRckt9Zla4faaKXtB9VzVCZISstygkJR3MziNB2CaSZT8DsLrQD
         DwYHFgSgJVm0l/J9lVq4/1wtcJS50Kie/9SNSysy8thpkUl4RigzHFMAVxMnz6xfuVx5
         AK+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740046181; x=1740650981;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VKAFazs0bK/4Q6jQNje2L8Expu/NOgNPeCn90wFFS4o=;
        b=WMnY0OYJQBoluuDJX5U2r1XluBxIzsb+1mpVT4BLbY2GkPdAB3R7g3UciP23Dzr9Wi
         oiYVfC6LsTjNe5iKnR7rTV/8yWpMgc9Xq6fvXZQOoU5f7lkA5JZSiKTxP/KWPTDtoLLN
         v1c01tLO+z6PO88XRvTIr54tVvPZK3yONvL5tsmrEgp3GQmkhuf/uZHZSgd3xWkjDBP4
         mIWmFjbwaZG0JvZ8bTA6vnetGDc9x6SoORQMI4mlRM/fu6uNi7xX4vkUbvyYZ1tfL1HG
         bVFTxTsxhM0SpgQyH3J9CXJIWkoPS1hrB+hA/5WguwuELFfF4dIY19IpMPybQ4T51xie
         qamA==
X-Forwarded-Encrypted: i=1; AJvYcCVAPZAWoCMb5vTUEnap4HbJ1loVkUnSoywdHAfL1frKDdT9K3v3b4IgOgkrESQ+wErGpqLE7F9B+0PP@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9sHtRLqcJipsRqc4trFahxuaz/ZV3WnJdwLe4tyH/aHnjykvR
	yPgFj9FSa8uCDLtxEAyKlS+AmFlxVt031iD5EzUUb26VPKKAJFFrrCis1MVJcc8=
X-Gm-Gg: ASbGnct7pO6FMaVNdm9wOR16cywoj2xL+Sqg54rnRtqIczlUsazmHkvH0/6vBB8aNH/
	JYNyy+G4GWyOPIB2lRgvVV5YZYTb5t8OXwX0Go4CHVqQcAaV+sQT2rdD5U5UWvksyoAUIig0HKx
	10si/2BHzEupWng8nzjC5L5T2SOiyoEFK2MXwD/7Ecj6VBd2RdXvvw+DFSxl7TIIOMeub7VVlp3
	0qm/8pNYvmTt2eMZ1q6XEMhSvV3f/pmY3rnxPCpAr5Wrc5RWVDyxspAOBC1BbUhkR+b4fMrdAcJ
	x1ae5/T6TyIW5EQxth9mQAAgfq4=
X-Google-Smtp-Source: AGHT+IERc6hIPqaeWn2CPZBGtZZAAoxkqyWFInBWc9QDvWlSHwq2D21AKF4IMfL83X3LHVGKdeB0Yw==
X-Received: by 2002:a5d:59a2:0:b0:38d:d9bd:18a6 with SMTP id ffacd0b85a97d-38f33f437fdmr19446268f8f.42.1740046181176;
        Thu, 20 Feb 2025 02:09:41 -0800 (PST)
Received: from linaro.org ([2a02:2454:ff21:ef30:b30c:3d94:4d4a:a6eb])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258b4123sm20741585f8f.17.2025.02.20.02.09.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 02:09:40 -0800 (PST)
Date: Thu, 20 Feb 2025 11:09:38 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Yuvaraj Ranganathan <quic_yrangana@quicinc.com>,
	Anusha Rao <quic_anusha@quicinc.com>,
	Md Sadre Alam <quic_mdalam@quicinc.com>,
	linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Luca Weiss <luca.weiss@fairphone.com>
Subject: Re: [PATCH 7/8] dt-bindings: dma: qcom: bam-dma: Add missing
 required properties
Message-ID: <Z7b_YgzGJUT_un5z@linaro.org>
References: <20250212-bam-dma-fixes-v1-0-f560889e65d8@linaro.org>
 <20250212-bam-dma-fixes-v1-7-f560889e65d8@linaro.org>
 <22ce4c8d-1f3b-42c9-b588-b7d74812f7b0@oss.qualcomm.com>
 <Z6231bBqNhA2M4Ap@linaro.org>
 <d674d626-e6a3-4683-8f45-81b09200849f@oss.qualcomm.com>
 <Z64OKcj9Ns1NkUea@linaro.org>
 <20250219222739.GA3078392-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250219222739.GA3078392-robh@kernel.org>

On Wed, Feb 19, 2025 at 04:27:39PM -0600, Rob Herring wrote:
> On Thu, Feb 13, 2025 at 04:22:17PM +0100, Stephan Gerhold wrote:
> > On Thu, Feb 13, 2025 at 03:00:00PM +0100, Konrad Dybcio wrote:
> > > On 13.02.2025 10:13 AM, Stephan Gerhold wrote:
> > > > On Wed, Feb 12, 2025 at 10:01:59PM +0100, Konrad Dybcio wrote:
> > > >> On 12.02.2025 6:03 PM, Stephan Gerhold wrote:
> > > >>> num-channels and qcom,num-ees are required when there are no clocks
> > > >>> specified in the device tree, because we have no reliable way to read them
> > > >>> from the hardware registers if we cannot ensure the BAM hardware is up when
> > > >>> the device is being probed.
> > > >>>
> > > >>> This has often been forgotten when adding new SoC device trees, so make
> > > >>> this clear by describing this requirement in the schema.
> > > >>>
> > > >>> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> > > >>> ---
> > > >>>  Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml | 4 ++++
> > > >>>  1 file changed, 4 insertions(+)
> > > >>>
> > > >>> diff --git a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
> > > >>> index 3ad0d9b1fbc5e4f83dd316d1ad79773c288748ba..5f7e7763615578717651014cfd52745ea2132115 100644
> > > >>> --- a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
> > > >>> +++ b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
> > > >>> @@ -90,8 +90,12 @@ required:
> > > >>>  anyOf:
> > > >>>    - required:
> > > >>>        - qcom,powered-remotely
> > > >>> +      - num-channels
> > > >>> +      - qcom,num-ees
> > > >>>    - required:
> > > >>>        - qcom,controlled-remotely
> > > >>> +      - num-channels
> > > >>> +      - qcom,num-ees
> > > >>
> > > >> I think I'd rather see these deprecated and add the clock everywhere..
> > > >> Do we know which one we need to add on newer platforms? Or maybe it's
> > > >> been transformed into an icc path?
> > > > 
> > > > This isn't feasible, there are too many different setups. Also often the
> > > > BAM power management is tightly integrated into the consumer interface.
> > > > To give a short excerpt (I'm sure there are even more obscure uses):
> > > > 
> > > >  - BLSP BAM (UART, I2C, SPI on older SoCs):
> > > >     1. Enable GCC_BLSP_AHB_CLK
> > > >     -> This is what the bam_dma driver supports currently.
> > > > 
> > > >  - Crypto BAM: Either
> > > >     OR 1. Vote for single RPM clock
> > > >     OR 1. Enable 3 separate clocks (CE, CE_AHB, CE_AXI)
> > > >     OR 1. Vote dummy bandwidth for interconnect
> > > > 
> > > >  - BAM DMUX (WWAN on older SoCs):
> > > >     1. Start modem firmware
> > > >     2. Wait for BAM DMUX service to be up
> > > >     3. Vote for power up via the BAM-DMUX-specific SMEM state
> > > >     4. Hope the firmware agrees and brings up the BAM
> > > > 
> > > >  - SLIMbus BAM (audio on some SoCs):
> > > >     1. Start ADSP firmware
> > > >     2. Wait for QMI SLIMBUS service to be up via QRTR
> > > >     3. Vote for power up via SLIMbus-specific QMI messages
> > > >     4. Hope the firmware agrees and brings up the BAM
> > > > 
> > > > Especially for the last two, we can't implement support for those
> > > > consumer-specific interfaces in the BAM driver. Implementing support for
> > > > the 3 variants of the Crypto BAM would be possible, but it's honestly
> > > > the least interesting use case of all these. It's not really clear why
> > > > we are bothing with the crypto engine on newer SoCs at all, see e.g. [1].
> > > > 
> > > > [1]: https://lore.kernel.org/linux-arm-msm/20250118080604.GA721573@sol.localdomain/
> > > > 
> > > >> Reading back things from this piece of HW only to add it to DT to avoid
> > > >> reading it later is a really messy solution.
> > > > 
> > > > In retrospect, it could have been cleaner to avoid describing the BAM as
> > > > device node independent of the consumer. We wouldn't have this problem
> > > > if the BAM driver would only probe when the consumer is already ready.
> > > > 
> > > > But I think specifying num-channels in the device tree is the cleanest
> > > > way out of this mess. I have a second patch series ready that drops
> > > > qcom,num-ees and validates the num-channels once it's safe reading from
> > > > the BAM registers. That way, you just need one boot test to ensure the
> > > > device tree description is really correct.
> > > 
> > > Thanks for the detailed explanation!
> > > 
> > > Do you think it could maybe make sense to expose a clock/power-domain
> > > from the modem/adsp rproc and feed it to the DMUX / SLIM instances when
> > > an appropriate ping arrives? This way we'd also defer probing the drivers
> > > until the device is actually accessible.
> > > 
> > 
> > Maybe, but that would result in a cyclic dependency between the DMA
> > provider and consumer. E.g.
> > 
> > 	bam_dmux_dma: dma-controller@ {
> > 		#dma-cells = <1>;
> > 		power-domains = <&bam_dmux>;
> > 	};
> > 
> > 	remoteproc@ {
> > 		/* ... */
> > 
> > 		bam_dmux: bam-dmux {
> > 			dmas = <&bam_dmux_dma 4>, <&bam_dmux_dma 5>;
> > 			dma-names = "tx", "rx";
> > 		};
> > 	};
> > 
> > fw_devlink will likely get confused by that.
> 
> Why? We have a property to break cycles: post-init-providers
> 
> That doesn't work here?
> 

Thanks, I was not aware of that property. This looks quite useful for
fixing up some of the other cyclic dependencies we have!

Nevertheless, for this specific case, I still think we should not make
such large breaking changes at this point. As I pointed out further
below in my quoted email, this is a legacy hardware block that will
likely not get any major new users in the future. We're essentially
discussing to rework several bindings and drivers just to drop a single
straightforward "num-channels = <N>" property. A property that we will
need to keep support for anyway, to support users with older DTBs. This
effort (and risk) is really better spent elsewhere.

Thanks,
Stephan

