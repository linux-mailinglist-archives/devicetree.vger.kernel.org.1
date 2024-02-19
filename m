Return-Path: <devicetree+bounces-43356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A64185A0FD
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 11:28:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9E0F283612
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 10:28:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCFA325635;
	Mon, 19 Feb 2024 10:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tr+cDZEA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5518D2C19D
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 10:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708338519; cv=none; b=OdO2opXRReCswcUznUjQ/+yEgmqMCZ364XZFYZADzeqydWPKSR2A28KaQCbXzJANe/RrEhptVv2NdzjjiLqVEdB0BQ/V1MteHASRDNOSb7mix/a1uXhtz1M6ZC2Naze7N2XN/s1CcH+FrYPhuFqjlNfOhEygq2rFaUbGCqeZggw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708338519; c=relaxed/simple;
	bh=XJKGIOWh6TfmBXpxOXAK6XrApZ1idLrRq5SCoYlkEWE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DP9hUdSG3Bsme2FFDtY361p6Uvhfzfvte6qkHZti6N5o8Xiydj2dTA97rm6cl+xTJGvB+S/ZVTQiR4uZ9jz7+SRagAetGkSHOAMufeUdMa0cXfi2M+GtatXG7gDab51lzhG8J+ufVWIRJ3kXTTSzpTPgQ7PXHjmVs1dJ0JhP8Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tr+cDZEA; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-59fca9dc69eso763834eaf.1
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 02:28:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708338517; x=1708943317; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JnmZ+t+uAS5BZCpGcPGtYpaiyhTix1/Al+d1pqweSt0=;
        b=tr+cDZEA7QpJNP2hC3y6fo2tVybNtOL31qt5vAjbXMU9XDP+//MEkY6O8BNmMPdBIv
         YgCbUc7MSQlPlWMPhptanKgy+C6qg0EbNCC/Y/ipA99nTkE4YBPZKNf52UE+7qOniaUj
         782L5V0IwytQptRYA/n7MtWi4mdNP4PDp7SxaKSFJ+dIlKDEcJSuzZIhU25H/f5ZfzNd
         dXppJVtTmxP1tXn3rBEEvDM5+TMcPhWaMix5sQ5bv6KrM3J/YkSBo6fs4EULxOThewmH
         MMNBJ8r/FC2nm5hJ3OEY44T24o7Lxmj116sZuHPin8BBEUCqeTLOxrzPcQX/qzD+i1et
         a/+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708338517; x=1708943317;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JnmZ+t+uAS5BZCpGcPGtYpaiyhTix1/Al+d1pqweSt0=;
        b=hEkc5xvLFN0dKFW4qLx/ICiB16l85j/F1m+aRe4rVvLjAxgvkaHwTyXWWmBGWiZ2UM
         PdohHR75M+n8xz3Vhy9hz94zvTzwLzpitqplQoYgFAD2072zjj1Zr2PMTrW4sqijxSG4
         skMo/0m8WRLLGSOjQhOgMcR0Gq5C4zKEkUMsMiUyMmH+Aiy6ekm8MSK1Pa5WV44R/SvY
         fFhq40JnnlLY8jfnn/ZX8BcVHL3u1eXstXDtkFqcxP1OmPjVzKH4jU/0rxF4nXQp4Ygz
         830d/QdHOvgkDIAH5230FVYKWwwmnb9JOgGWmIqum2poG4A97OqcUUm/K5uZkU6091fZ
         Fa/g==
X-Forwarded-Encrypted: i=1; AJvYcCXc0zToxohroEUEDd4DYrqTbOMBEhLMQRIMY+q6H4RDmSF79knyyQGLEIDEFwUKq/7mNk1d1U9xcLHBGIUYrMJ0XM+gV41tCTQJmQ==
X-Gm-Message-State: AOJu0YyoZ+KTJaumZx2Um/8irtaqaAwdokYSDiSPPkaGO8/+zz5o1CWF
	ShVvf3OyJezEARmqqQsGAknIzlG52D6t6iTcXTI7nD3JUHpumvt6WkgPyG4fyog=
X-Google-Smtp-Source: AGHT+IHrghrtOCzN3SBUX/RSI7ci2jafiK+zgQHl9otRnnbGtszwG3kAb3rV9eqhnnxOyvTqBspPoQ==
X-Received: by 2002:a05:6358:750c:b0:178:94bc:731e with SMTP id k12-20020a056358750c00b0017894bc731emr17026938rwg.8.1708338517352;
        Mon, 19 Feb 2024 02:28:37 -0800 (PST)
Received: from localhost ([122.172.83.95])
        by smtp.gmail.com with ESMTPSA id l15-20020a62be0f000000b006e13ce6f4dcsm4433719pff.87.2024.02.19.02.28.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 02:28:36 -0800 (PST)
Date: Mon, 19 Feb 2024 15:58:34 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Krishna chaitanya chundru <quic_krichai@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Georgi Djakov <djakov@kernel.org>, linux-arm-msm@vger.kernel.org,
	vireshk@kernel.org, quic_vbadigan@quicinc.com,
	quic_skananth@quicinc.com, quic_nitegupt@quicinc.com,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 5/6] arm64: dts: qcom: sm8450: Add opp table support
 to PCIe
Message-ID: <20240219102834.x22ggazkmzppsdxc@vireshk-i7>
References: <20240130061111.eeo2fzaltpbh35sj@vireshk-i7>
 <20240130071449.GG32821@thinkpad>
 <20240130083619.lqbj47fl7aa5j3k5@vireshk-i7>
 <20240130094804.GD83288@thinkpad>
 <20240130095508.zgufudflizrpxqhy@vireshk-i7>
 <20240130131625.GA2554@thinkpad>
 <20240131052335.6nqpmccgr64voque@vireshk-i7>
 <610d5d7c-ec8d-42f1-81a2-1376b8a1a43f@linaro.org>
 <20240202073334.mkabgezwxn3qe7iy@vireshk-i7>
 <8a7b63a8-0583-43cf-9876-8a964c8b77ee@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8a7b63a8-0583-43cf-9876-8a964c8b77ee@linaro.org>

On 09-02-24, 22:14, Konrad Dybcio wrote:
> On 2.02.2024 08:33, Viresh Kumar wrote:
> > On 01-02-24, 15:45, Konrad Dybcio wrote:
> >> I'm lukewarm on this.
> >>
> >> A *lot* of hardware has more complex requirements than "x MBps at y MHz",
> >> especially when performance counters come into the picture for dynamic
> >> bw management.
> >>
> >> OPP tables can't really handle this properly.
> > 
> > There was a similar concern for voltages earlier on and we added the capability
> > of adjusting the voltage for OPPs in the OPP core. Maybe something similar can
> > be done here ?
> > 
> I really don't think it's fitting.. At any moment the device may require any
> bandwidth value between 0 and MAX_BW_PER_LINK_GEN * LINK_WIDTH..

Okay, I leave it up to you guys to decide on how you want to do it. I still
believe getting the information via DT is the right thing, but maybe I still
don't understand the problem fully.

Thanks.

-- 
viresh

