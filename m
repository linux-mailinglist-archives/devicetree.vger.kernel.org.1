Return-Path: <devicetree+bounces-48287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AE68714CA
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 05:35:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7ABD41F2190B
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 04:35:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F3CB3D396;
	Tue,  5 Mar 2024 04:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QbzjnGw+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62347182C3
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 04:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709613309; cv=none; b=cilsuaBt4Xxy/ke2Dg2wXuXvXb/45SPhGkgOqZYnEI1YfNkJa8vnGbiNsbJZvn6XHxy9AKyjmGdffFJZZzCv+wwEqp+QCqJMyhFX6+hCQxCsapO0qSs71BoR1oG88fjDyrAQkVr+oqCdQyDq7dR1KLfrvwZgTIIJ1nA5y5cPks0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709613309; c=relaxed/simple;
	bh=SyVpWR0YqhOvs/OxGe0jMoDi7DFJpkAA1b348TIrzyU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UdodJAyUI5uxa6wy75gzJ8OG/79oqEesE7KKExSz9+0XcqvH0zZP5mji8tlNLFNWDazSRmbY6kZLMO3optRN9cH2M4yR0lnBRcHtJibAsU0bttUe3hCc4wnfx/XIg5LH+V4SEWt3FJVsOQcBFhZ2LQlDkOVra2kwv/Uq4ndkQfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QbzjnGw+; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3c20cd7ab33so237661b6e.1
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 20:35:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709613306; x=1710218106; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4vjRQzniHRafe2ZwDDGF6wB4iwR2l8xzXGYmTAavCjw=;
        b=QbzjnGw+2IQNNqEDwdgZ6gcn47fHe1I1vHUf5l5XfrZqMvpuCmN/AnuTBkMkU+5Ki5
         fYgQVg1KbAIZSSi7JNg6o5HA9GFKr+NvbHRgKJTdk7Ks7YzJ2/aAVFJ/oIPoXfrqdydM
         esWpS8KxZjvTCmFOMaJnCPyjOzihVr2840Gz0LNgjGRMzSw+BjDFL0fTjd/WsBIkV14A
         9l3RK21AfRg5Mw3IITMqmApMoSBIG+D3AXYMZ1vC4XqmgLQkStjVM3XIBfiYsLEFclV/
         Rmpr4wi2C4X2sd3kPjzms/2dykqlnwdIWiuYDhPICoyTaT1F4KpzyrpuIPU5UHnt5Tyc
         7FFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709613306; x=1710218106;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4vjRQzniHRafe2ZwDDGF6wB4iwR2l8xzXGYmTAavCjw=;
        b=HgJcFdv5SGuhbOz0yZHbWLTnVQ2Gly1QY9BYScP8MX+mcYSNBSbTAZC29/sXO5/VqD
         r5Htpn+DFkBW2emrhj6DN8KMOP9EnRHWpwfgNMU4o4kC/l7gnKnWH9QACUv/5/vQkjtU
         V6Z//xfesJFb+SZpFVyM9ibrBV9d3XMe6jMTYp74/TibYctm63yQZzeQID0DVdLCt4YU
         neCxirVi+DDd4XNNFoH0g1fKBBJdhpKzm2IBOIeWaK+2+G51hnrtWE2L6/7vFJsaf/MZ
         sLDoeiAuw9rZUqUKrgOrUErm/HI3B03+J/d6BWx3BwPYsA6X4uGTsa4H/2tnR8LFK2wL
         OHeQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+altgcPPytUluH5zoos1BVxGWOroaDB4HQE+tadxBHGkf+0OIMeQUZuWpfR2YiF6Pvdajd6SyAnpHobfE/mkvbu2r46Ef5DnWkQ==
X-Gm-Message-State: AOJu0Yyij/TI06b7U5blGhvDZWqKmSuvFvYkzg43mofwPQrmgyqpkjM/
	fZb+3Ll0SpieZBPO1k7/3UCKhGMkXZn71ET9750hKW5C/3d07YLxs6pHtVZlD7w=
X-Google-Smtp-Source: AGHT+IH1YAIyReoRbQYzHs76JwvjyUSpZA7Q97zMfBJJnoNqb6U2Bvgox8NitSny3i+OrmCHQknUpg==
X-Received: by 2002:a05:6808:f8e:b0:3c1:ef91:c8e6 with SMTP id o14-20020a0568080f8e00b003c1ef91c8e6mr890197oiw.11.1709613306564;
        Mon, 04 Mar 2024 20:35:06 -0800 (PST)
Received: from localhost ([122.172.85.206])
        by smtp.gmail.com with ESMTPSA id ei30-20020a056a0080de00b006e5359e621csm8029647pfb.182.2024.03.04.20.35.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Mar 2024 20:35:06 -0800 (PST)
Date: Tue, 5 Mar 2024 10:05:03 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Ilia Lin <ilia.lin@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH 3/3] cpufreq: qcom-nvmem: add support for IPQ5321
Message-ID: <20240305043503.tgy5ahl243or7lm5@vireshk-i7>
References: <20240228-ipq5321-sku-support-v1-0-14e4d4715f4b@quicinc.com>
 <20240228-ipq5321-sku-support-v1-3-14e4d4715f4b@quicinc.com>
 <20240304071222.cx3s37mphddk23bv@vireshk-i7>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240304071222.cx3s37mphddk23bv@vireshk-i7>

On 04-03-24, 12:42, Viresh Kumar wrote:
> On 28-02-24, 20:21, Kathiravan Thirumoorthy wrote:
> > Like all other SoCs in IPQ5332 family, cpufreq for IPQ5321 is also
> > determined by the eFuse, with the maximum limit of 1.1GHz. Add support
> > for the same.
> > 
> > Signed-off-by: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
> > ---
> >  drivers/cpufreq/qcom-cpufreq-nvmem.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/cpufreq/qcom-cpufreq-nvmem.c b/drivers/cpufreq/qcom-cpufreq-nvmem.c
> > index ea05d9d67490..0a46b5d49d32 100644
> > --- a/drivers/cpufreq/qcom-cpufreq-nvmem.c
> > +++ b/drivers/cpufreq/qcom-cpufreq-nvmem.c
> > @@ -191,6 +191,7 @@ static int qcom_cpufreq_kryo_name_version(struct device *cpu_dev,
> >  	case QCOM_ID_IPQ5312:
> >  	case QCOM_ID_IPQ5302:
> >  	case QCOM_ID_IPQ5300:
> > +	case QCOM_ID_IPQ5321:
> >  	case QCOM_ID_IPQ9514:
> >  	case QCOM_ID_IPQ9550:
> >  	case QCOM_ID_IPQ9554:
> 
> Applied. Thanks.

Dropped since the previous commit it required too. Can we get the
necessary acks for me to pick those ?

-- 
viresh

