Return-Path: <devicetree+bounces-59983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBFD8A7D84
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 09:57:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0D0EF1F224F6
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 07:57:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FCD46F06F;
	Wed, 17 Apr 2024 07:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hg32gfzy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252256F061
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 07:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713340626; cv=none; b=IvaHJmI/WZA0IxOEzS+P84Vf15WSBBQfc8OhH3Hoz0wnN86MnJ7LQ2edK+LupQjinRvZbYtmzvRc/YBXr2QIvVFYB6drUSuAQ+4468flU2EqAqodvBBLzFNBZ4igPYrg3mbIu1u/C1e5pQnL9+DgI8mAe1+tPLepZ3tQuTHW2Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713340626; c=relaxed/simple;
	bh=g0N0u9gOAf2wFG4BUbQc7PqWearIDSNnGlyMV7BlUPM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oOmVkAHmeRzBCYdEqAI0lEQkrGrOvDohvF4hROzR79lRdD7beCsVrkZd7kB799HnGnMcfvAYTGjOdUhvmHqptPNEdnFU6ZaCvxJje8rsnvkISuNU9BLY3c8kX8TB+VzCZqL6Pjr+Fu/u2QDishIrbfOeQGJ0hK4uQvrpM+DA+5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hg32gfzy; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1e2c725e234so4286755ad.1
        for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 00:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713340624; x=1713945424; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=evO2aNxdV+lvu+Wvrf+ju2Hc2q46w9zOfTh+m4DkhcA=;
        b=hg32gfzye+pWS0YIXJsuIVmUN3xFLP8bEpzZKxw2xJAMyEYG2RFfulK34Mp+PlXM+x
         w4yQ78zfrmIEpdILRpBqvzifbm8IUwpxoDwHA7IYa5ShqU2wy2lOj/8gTUV1gwDYzEbk
         7xfGFqhYL1yTSuQ/rcHY59hos0nYmfXqscgPyIZEfPiYUU01hnFuLy14oRwDadV/HCTU
         79/gZaUDi9+vj6EaMLDD48M1AmuqSPni96K7AeOII8Eg6aVPlGPKe4BhqrvaMLylEZYn
         tAmXIxhi4v+S3yshUbnrjLuvD7LdU/cGTvIDum9wLgcMlXyeRRTqPr/tUU1yE4wgfWcJ
         DicA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713340624; x=1713945424;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=evO2aNxdV+lvu+Wvrf+ju2Hc2q46w9zOfTh+m4DkhcA=;
        b=OScTCN+NXyJ1kGupTIz1/d1tCINSankZzbe+nthR3Gpkg9nDRLTBTmQuVXkOWI7rgR
         VXF0B8iUdZuagvaK9Bk7+kU1G9N17+qAdi3eudYpTdy9+1CJJ8/DQrnZL5E2+Ppsv8L7
         ep3fzQl6YbtUahI1S1QPBrxNUaXKAzrMvh01+QMhWTgqtPgTJ+iG3opRtdEkGcFE75yk
         bQOd9r8tZFyiKlOH7iTBsBSBA07PKBbgc+IaohUEWmybyLykMlP27oyibVg+c9+oPbmk
         UB62cb8xOhxFSKt9pZdBj0mRoo2w2S2imsgGqWna7tDcWfDm4h80ASjy05WN7yO/WKbk
         yUaw==
X-Forwarded-Encrypted: i=1; AJvYcCVOpWQMxi/r2EvAkofDcpXNNaB0v21S0ccycQdWW+csHYHjbW2MvULPL12qhivJVPD5+5L0kXaitfM2c3CbNnP0OkZKQ8chKJzZ9A==
X-Gm-Message-State: AOJu0YzGkfzqFTOweIb1T+kPHvRDYuo6l4pt61cZBdgZFHshbHiyDc/h
	kMXzCKlZsUFPlo3MYGlmQauoIEVgQda7nyOpyfoTnLzHSKCHwGtAyZa8sgHzuA==
X-Google-Smtp-Source: AGHT+IFFyHYh8M4+fWRehgScxIXg5jrLdxMhBkxlQ8ODhN7gxnsoZgBvAuBI3hdPZdtAy8cFvr4wdA==
X-Received: by 2002:a17:903:120c:b0:1e0:c0b9:589e with SMTP id l12-20020a170903120c00b001e0c0b9589emr7827576plh.25.1713340624053;
        Wed, 17 Apr 2024 00:57:04 -0700 (PDT)
Received: from thinkpad ([120.60.54.9])
        by smtp.gmail.com with ESMTPSA id u9-20020a1709026e0900b001e4753f7715sm9622249plk.12.2024.04.17.00.56.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Apr 2024 00:57:03 -0700 (PDT)
Date: Wed, 17 Apr 2024 13:26:55 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Frank Li <Frank.Li@nxp.com>, Bjorn Helgaas <bhelgaas@google.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, imx@lists.linux.dev,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v6 4/5] PCI: Add PCIE_MSG_CODE_PME_TURN_OFF message macro
Message-ID: <20240417075655.GF3894@thinkpad>
References: <20240415-pme_msg-v6-4-56dad968ad3a@nxp.com>
 <20240416170242.GA164032@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240416170242.GA164032@bhelgaas>

On Tue, Apr 16, 2024 at 12:02:42PM -0500, Bjorn Helgaas wrote:
> On Mon, Apr 15, 2024 at 03:33:28PM -0400, Frank Li wrote:
> > Add PCIE_MSG_CODE_PME_TURN_OFF macros to enable a PCIe host driver to send
> > PME_Turn_Off messages.
> > 
> > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> > ---
> >  drivers/pci/pci.h | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
> > index 19b4227a8a7e8..1f6d54a5a7cfc 100644
> > --- a/drivers/pci/pci.h
> > +++ b/drivers/pci/pci.h
> > @@ -30,6 +30,8 @@
> >  #define PCIE_MSG_TYPE_R_LOCAL	4
> >  #define PCIE_MSG_TYPE_R_GATHER	5
> >  
> > +#define PCIE_MSG_CODE_PME_TURN_OFF	0x19
> 
> This is defined in PCIe r6.0, sec 2.2.8.2, so move this below the INTx
> #defines so they're all in the order of the spec sections and add the

I think it was me who suggested moving this up to keep it sorted in ascending
order :/

- Mani

> spec citation to follow the same style as the surrounding #defines,
> i.e.,
> 
>   /* Power Management Messages; PCIe r6.0, sec 2.2.8.2 */
>   #define PCIE_MSG_CODE_PME_TURN_OFF   0x19
> 
> While you're at it, tweak the [1/5] comments to be:
> 
>   /* Message Routing (r[2:0]); PCIe r6.0, sec 2.2.8 */
>   /* INTx Mechanism Messages; PCIe r6.0, sec 2.2.8.1 */
> 
> since the "Message Routing See: PCIe ..." comments are run together
> and need some punctuation between the text and the citation.
> 
> With these,
> 
> Acked-by: Bjorn Helgaas <bhelgaas@google.com>
> 
> >  /* INTx Mechanism Messages See: PCIe r6.0, sec 2.2.8.1 */
> >  #define PCIE_MSG_CODE_ASSERT_INTA	0x20
> >  #define PCIE_MSG_CODE_ASSERT_INTB	0x21
> > 
> > -- 
> > 2.34.1
> > 

-- 
மணிவண்ணன் சதாசிவம்

