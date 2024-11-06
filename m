Return-Path: <devicetree+bounces-119598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D68E9BF3FD
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 18:09:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D856E1F225D7
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 17:09:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D78C206516;
	Wed,  6 Nov 2024 17:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N/DgUSiY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4D620605D
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 17:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730912942; cv=none; b=btI5lVpuj2M6nVvEJsZxxqoZk6bMu7tg3hwRuMnJc56NXf71JaSr70e6k2w3J+TmMKauG7yd5eJWyP2LWObUM0Bu+rY8lfDaP8QSVB0gscj8sqA4mNl+dW8AZsAmfI/AoSE9kB7SOiTnYGRy6ALjD1Zy1I6szrl5SELX/NZyvMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730912942; c=relaxed/simple;
	bh=lUtU6exFV/0t2K0nFD83dUTyPPvOKmzMlR2+lgOJ6QA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jF9dKoI9kxDnrYYmRH8E/zLv+rMLLkC67yBiSHfs35IZIlIpwUnpCmEThxJJhqUmyMW9WFdxW0IviR4t34qnECg1utk2uY5ZeXir+DhJDgnsImPJ3Pq5sHOc4s85xsJftvFJ6ACTydzswavvFODSvywxeewcusDNbsadfxwNOxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N/DgUSiY; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5c9634c9160so7893904a12.2
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 09:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730912939; x=1731517739; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=J6eDnsApgHXXX2eNqrPT459Y8vwvHutnUiY5z69lIwY=;
        b=N/DgUSiYMBtMsnL5i8eVB2h80AVSJN8YVrvFJ6hlbM7bTXRyFZ6mRy34idwiM6e38r
         qGyaYmyVk7AXZcP5/MSztof2avfE8zMptzoyw1c7pWk1Su10jnFHvo0gwDln3plN6HnS
         T8leGnJGsU0DuZ+xszb0tprfC3ms0FLrJ02fdjPK0ybj4kC81B4yJT5+bvzENa3dfAMi
         eO4SzIA+1iZTDtkbT1c891hZgxJI9i7qNB13dJuFv6qVfeqBPD3MdTCce/b4KTkpNlyp
         cnCoHAL9x6YFYuj5oySeRQvpdC9bmkqfrY2iyTUWODRBAy5p5A8XtlZ5FhTxMKa+zQmy
         4sIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730912939; x=1731517739;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J6eDnsApgHXXX2eNqrPT459Y8vwvHutnUiY5z69lIwY=;
        b=jsroCT4/wZqgkiro4ACv6h9f0TgOQ0IrJzsoZnK9+k+NaYAD9ccL4X5hL8PaVDsl4+
         a4kHNSu8QqwdTDk2wqu5/P/Su0WUrhc+cmeNfpFeqgl4JVJBhIZcG0THFar61OP0q1Qx
         xIskkDtFM21EMswHkyw9uprQlQXm/X8kJvmWueECjGU+cjRWvyjZ6estHe+kGuAuWB7r
         WaLse7Q5c+kTsx4FMuYlbhmKGmQKpZJDt/uMDxUWbiVF5vEC/lLbFvZzM4W7pnJ2vv32
         Mz2CbxPZ2TV0FVIfyVmkfHGIzfOyNHZxdfOFpLIt7BwjLNY8qppoGiTU7chMwgvDm8Sg
         cqNw==
X-Forwarded-Encrypted: i=1; AJvYcCXmDXadZkDEX5IzeXtgMhy8Js1rMZiHS/8C1fj5IYGgQaal5IFvbE2tCRy2jKsqjLsm+tYavsBwHdS7@vger.kernel.org
X-Gm-Message-State: AOJu0YxPaxAUETWB3HaDxxh7QYwB/X3fVvaJfhOlJOL5gaRnrXkVwpqR
	GwBCJuoDzv5V+34OMppIPBD/p3WREy2p/jnuxOTp4UVSIGDJYbgmA/kHsu8bGA==
X-Google-Smtp-Source: AGHT+IFuDYP4MNuKTvCz+cqkpbEel3mPAHGXPas8WurjLlxHRsA6YcT5W5N/fyHtAoT/QJOJ2VQgxw==
X-Received: by 2002:a17:906:7305:b0:a9e:c267:2040 with SMTP id a640c23a62f3a-a9ec2672423mr402543566b.51.1730912938575;
        Wed, 06 Nov 2024 09:08:58 -0800 (PST)
Received: from thinkpad ([89.101.134.25])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9eb16a2ec7sm311191266b.22.2024.11.06.09.08.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 09:08:57 -0800 (PST)
Date: Wed, 6 Nov 2024 17:08:56 +0000
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Sricharan R <quic_srichara@quicinc.com>, bhelgaas@google.com,
	lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
	konrad.dybcio@linaro.org, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V7 4/4] PCI: qcom: Add support for IPQ9574
Message-ID: <20241106170856.7iv2sjmjwyhnurps@thinkpad>
References: <20241106145615.25tc7n4zcdkp47jr@thinkpad>
 <20241106165312.GA1528877@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241106165312.GA1528877@bhelgaas>

On Wed, Nov 06, 2024 at 10:53:12AM -0600, Bjorn Helgaas wrote:
> On Wed, Nov 06, 2024 at 02:56:15PM +0000, Manivannan Sadhasivam wrote:
> > On Tue, Nov 05, 2024 at 07:40:24PM -0600, Bjorn Helgaas wrote:
> > > On Thu, Aug 01, 2024 at 11:18:03AM +0530, Sricharan R wrote:
> > > > From: devi priya <quic_devipriy@quicinc.com>
> > > > 
> > > > The IPQ9574 platform has four Gen3 PCIe controllers:
> > > > two single-lane and two dual-lane based on SNPS core 5.70a.
> > > > 
> > > > QCOM IP rev is 1.27.0 and Synopsys IP rev is 5.80a.
> > > > Reuse all the members of 'ops_2_9_0'.
> > > 
> > > Wow, this is confusing.
> > > 
> > > "Based on SNPS core 5.70a", but "Synopsys IP rev is 5.80a."
> > > Are those supposed to match?  Or is it 5.70a of one thing but 5.80a of
> > > a different thing?
> > 
> > Hmm, I'm not sure why 5.70a is mentioned here. It seems irrelevant
> > (even if it is the base).
> > 
> > > And where does ops_2_9_0 come in?  The code comment says:
> > > 
> > >   /* Qcom IP rev.: 2.9.0  Synopsys IP rev.: 5.00a */
> > >   static const struct qcom_pcie_ops ops_2_9_0 = {
> > > 
> > > which doesn't match 1.27.0 or 5.70a or 5.80a.  In fact there's nothing
> > > in the file that matches 1.*27.*0
> > > 
> > > Honestly, I don't really care if you have all the versions here in the
> > > commit log.  But if the versions *are* here, can we make them make
> > > sense?
> > 
> > We name the 'ops' structure based on Qcom IP revision. And we reuse
> > it across the SoCs which are compatible. That's why ops_2_9_0 is
> > used for this SoC which has Qcom IP rev 1.27.0.
> 
> Got it.  So a family of compatible Qcom IP starts with 2.9.0 and newer
> members are 1.27.0 etc.  With no hint in the source about what the
> members of the family are.  Perfect sEnSe.
> 

You can get that information by mapping the ops structure with compatibles. I
feel less incentive in documenting the SoC names deriving the same IP.

And the reason why 2.9.0 ops is used by 1.27 is because, we ended up adding
support for 2.9.0 IP first and the lower version followed later.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

