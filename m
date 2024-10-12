Return-Path: <devicetree+bounces-110632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 132F099B4E9
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 14:43:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 91BFFB22459
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 12:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5123176AA5;
	Sat, 12 Oct 2024 12:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ju3ooua8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64252178370
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 12:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728737021; cv=none; b=d86MA5L+5zYTOFpgOOQRMcZi5QaSGoFjplMVwOdAvAOiz/BI3THopKf8GDhuQv988fEsGemqxyQrqAWZ4HE6LGKo0QuFxHoPrLhzaUtGAiBIS3OQDOHSQaELGDVolpUDejIHuI7IGxBQjoHJpsR/pAAp8fw4PZyRnMzXpDsjIpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728737021; c=relaxed/simple;
	bh=es/QDSH6gtqwI9WYHWPuuyFtbw4W22RmNGY6UTveNds=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u8JgGATxgx0HygSd+qD/7b5aI59H49Dq4uICAbiBTnLTbX3iOgkLW4E1AwlYQNZcJY8d8Pq09rqWutFuUInp1aivnNlud9vbLzqMUXgIgGz1p9Xbd+i3B9Dc3KSIO+3+vKIA9p/4BmNCenAxklIZ4Y/k/hAjzFOKq+VIYP/0qQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ju3ooua8; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-71e483c83dbso1066629b3a.3
        for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 05:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728737020; x=1729341820; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3gnFz7tseuF56igh+0oKa/uNHY8qwCdbzKzI1HJPT6k=;
        b=Ju3ooua8pjwklh7kMNCXda/6NOr7oBVYfE4Hla0Uo0pSR7JfkP8Z247S7J92+18R+z
         IjEP6clJPlkFystIGy2x9ji5XG/KuCkVbQfPLmY5woue0IX/iv17paWPxlIInH1VZ3Az
         CqACw0ZyNG028lZcqy1NArysTuBJOHWPiJvuwOwODXYedFrBJ4fjDkqdWJApgWrM8BGX
         MCyaQD1nWDHX9LWQi+BtDu4pi87qS+FfZVhHyIkom2t0mhRJeuvHGLpV5iFMtWdMRxmo
         LxUfbm90FE9r46mfWyVDRacKDiwrp7IBv9mPYpieItE2LMOiyQaEOIJCnhe1xHmNcu5T
         w/sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728737020; x=1729341820;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3gnFz7tseuF56igh+0oKa/uNHY8qwCdbzKzI1HJPT6k=;
        b=ApvAm8DOL9CcDThptvFAMbVS0mMlYHPKBIv1H4lzfaaRxfj1vNAY2bvsiaP5zQbX43
         4UPGVQHd892aSzDyAAA3n0Cut+aNhey5udXKzaBM0KXAF2HABrWnPqC+UQmUOtI9ETgR
         HiBVd3rvs1aC9qHU2hnc9pVfVC/xc+0YspDe/ioyW+Rp1hrtk/4xS35odx/an501+8gd
         nRJpIbG41niXghHCfq5SG6f2A7QPx+DsuaaIMFGHXoWtKnilfXcRnOGeAQ8vt1vGi8y4
         OPYTlp9Y0j5Ze5ir+lqcr6yfbrD9QqfIf9xygv6Kv+gTmwI1blXkc9vSMCpE77Pv/O50
         g2AQ==
X-Forwarded-Encrypted: i=1; AJvYcCWW1TSzB4vxHEqe1wxxghfosUWfqfVgPX8++xtxGjihXRwjQhqCSXWSryErtjtLsaEABSD2H/nAP1KV@vger.kernel.org
X-Gm-Message-State: AOJu0YwA1S5uBJJUXd1eyZMXBJV3vXjmqSr0YUx8GG9MGU5VRRnghEkp
	nCL9b3pwfJLQ0XdGOTWRoQPt/ByXnZ1CO1yImFObDUqBUK+OuJnRyMwEX27Wlw==
X-Google-Smtp-Source: AGHT+IHLgJ+J4/xYmAuVt6xf/48DhnrDOA6kF300Q35rWhaYIUQJ8Mj05bGdegc05yUcWl1WTe6foA==
X-Received: by 2002:a05:6a00:10c5:b0:71e:4bfb:a1f9 with SMTP id d2e1a72fcca58-71e4bfba31bmr4826246b3a.22.1728737019808;
        Sat, 12 Oct 2024 05:43:39 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e2aaba36bsm4075600b3a.167.2024.10.12.05.43.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 05:43:39 -0700 (PDT)
Date: Sat, 12 Oct 2024 18:13:34 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	quic_vbadigan@quicinc.com, quic_ramkri@quicinc.com,
	quic_nitegupt@quicinc.com, quic_skananth@quicinc.com,
	quic_parass@quicinc.com
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Add PCIe nodes
Message-ID: <20241012124334.4gsspgtuud4uudop@thinkpad>
References: <3ad77846-b4a8-80ee-e9e1-d5cbf4add6d8@quicinc.com>
 <CAA8EJprRF0tVFZK9c=MT8bSRcBdRvcugBaeEzpX5-wfRyNgc3Q@mail.gmail.com>
 <c8be2bbf-a51c-a38f-6e6f-a88801f953d5@quicinc.com>
 <20240209075716.GA12035@thinkpad>
 <CAA8EJppfzc_dM9c9mHPVWheVxi-1gJxCmaWPvreELijEQDDSyA@mail.gmail.com>
 <20241001101622.ys36slymgjbaz26q@thinkpad>
 <8459161B-87B8-481F-AE71-3D5156B1CA56@linaro.org>
 <20241001141948.g74rn6777ywvtcmx@thinkpad>
 <CFF89D4D-8131-47C2-95B8-A0E130A16E46@linaro.org>
 <9c24ba5d-431a-c45e-ce1c-3541eac7d017@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9c24ba5d-431a-c45e-ce1c-3541eac7d017@quicinc.com>

On Fri, Oct 11, 2024 at 05:24:29PM +0530, Krishna Chaitanya Chundru wrote:

[...]

> > > The logic here is that the fixed endpoints in the switch will get an unique SID
> > > and the devices getting attached to slots will share the same SID of the bus
> > > (this is the usual case with all Qcom SoCs).
> > > 
> > > But I guess we would need 'iommu-map-mask' as well. Hope this addresses your
> > > concern.
> > 
> > Yes, thank you!
> > 
> Hi dimitry & mani,
> 
> This particular board variant doesn't expose any open slots to connect
> a different endpoints like another switch(which might have BDF unknown
> to us) so static table should be fine for this board variant.
> 
> I tries to add iommu-map-mask property, the issue with that property is
> that the driver is applying the mask to the bdf before searching for the
> entry in the table. If I use a mask value which satisfies all the
> entries in the table ( mask as 0x718) and if a new bdf is enumerated
> lets say 0x600 due to mask 0x718 its value is again 0x600 only.
> 
> Can we skip iommu-map-mask property and use only static table for this
> board as we know this board doesn't expose any open slots.
> 

Hmm, I was not aware that it doesn't have open slots. Fine with me then.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

