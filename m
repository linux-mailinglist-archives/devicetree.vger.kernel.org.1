Return-Path: <devicetree+bounces-158337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB24A65D11
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 19:44:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F27C63B4674
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 18:44:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D6BE1DDC0B;
	Mon, 17 Mar 2025 18:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m3gWHrZV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1CA51C5F3F
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 18:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742237077; cv=none; b=Qfug/SVTqfJdpXLHlkyvAQkicvQ88uAZOPBPBhQf2ZShx74s/qdp4YLxEXfU0uaufBnv6/wO4xFAk35WA9zyQRkf4z/pe/Zs2Lx8P0+K3pIU0kN5Jp4v0gAWJ6HklwR067RZjiCK1eWUefkKnyCJY1ruHMOFy0Fu91WKoTsTeEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742237077; c=relaxed/simple;
	bh=9iOXAs2PFt3YwJampbSJRtPXBI4s7pqVxzc8QTfv/EU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DcWymOla93Ko/jJscaLME4TiSBpTeDaczodRnOTkqO8hie0DV3blxBpQgLC8OSm7dGwrYIEUxDu7Lre2HNcF8unga4sD44t37rjc32f7WYVHub1o70I75VD7uvTqM1e+W6UXs85Hp0GnDjozAC6hkKeBH0VW2Jwe0PVbtXOdjs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m3gWHrZV; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-22359001f1aso42111615ad.3
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 11:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742237075; x=1742841875; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oR3+sjzXfF1kJu70R/WOS6OhxjSB2FVGl0MhcctQyD8=;
        b=m3gWHrZVN+5WRiJmJyXiBIUVN0+g6de0QDYfaFmZZQiXDeHdr+PH4ee/RNF+UfzqRo
         rN/jhhO61+/pOt5JyzcrECGkWsoWwGbeuVB3WZeE1pREW3HeSSJI27dZSOM1a4qh0Z6g
         Xg53snEUJGQ/WaGfm8tZkb8UnXDblgNGg2pzT6mzhZosK2cU/1NOsEjqc/I5fd9qoWKB
         3W0hBWu8VVj8WAeid9ff4WuerDCdSbDRfpe3H0uyFQtvHdkToqNKkjhEzCHUK6pF568S
         hFDlAddtbrKr2YNXzUQl6vnzlWWz+d/FDnZoS506XD3kPuE98JKXbPJRjssg+EJQbSfH
         EuNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742237075; x=1742841875;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oR3+sjzXfF1kJu70R/WOS6OhxjSB2FVGl0MhcctQyD8=;
        b=KY3KBOCtrN8jZdGb7wQIYGHXpvDldsZPMoC6G4BuwwhFlEUzSabRApPdsjc4e0b1Je
         cbezNv+tzFRvGAD4ARn4iD6rU+4jWsB2ErfWPXdjjIgScvkAdGbLLDAfXD23p4NfwW5h
         4VJaSWSkmiuikm1nEWiveZnzayCCyHkcCLuQCNy/2p6/bq+wJ2py839Imw3UI3STcfuV
         n2N4YrmTYfUSXDucpkxiYkbOrnMvB6ZoikvwIRW0PdDo0zF1GiziFgH3wHy2UBix3+P7
         RjJDC+JdvhWNyiqolZE8fVz55EudprApb4z08lQoqDUOg22y+vDOLwQ088ey9PNX0Xjh
         WNBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVdTBjnU0Q6WHLeoOwx3aeZsDp44IpnBfaY0pJH5fPDR0/NLmzltzef6eIjj8HzGsKvSljTxs9iZLbS@vger.kernel.org
X-Gm-Message-State: AOJu0YxZF5O6bv0sIu+2RRBi6pb4vzjvhFQ3Pprsv6QP6mVEqR0Cvwmo
	mIIpt9wO3h6YCZVrXfOxw2fxKFCsaEGoY72/s8vxy9vJ9gcj9up6/beIKI52zw==
X-Gm-Gg: ASbGncsXUhAqEMbfZLBPJgnJeX9u26mZKYyQYgh0HbFNBsr40dF0qXw9dg7dssnY+eN
	RDqwke8FAN53V2YQQUt7KRjuZZgOfu37qO39UZ2ylV7eJ7tOfqIK1Z3O4TrOcfpZYungim4ydi4
	b8ZGVHYkqvYhgzSzGLVTdZUeOmUlibAGOiItgEJGfKpihTrEbSpq0dNX2AxJ1Pqh/BsyPA2vJdB
	V24zrQv/NsHVSn/4ZXQEdt5Mqiyc519kos2TN8c7Sc2sxIz6q5+CLBW9CVxBOMTWm3Eh/UYIL+N
	R8E/sBOYimBYGoP0mdAiZQIBse9ic7yzzMy2wgnVgIYrJBU+mCV1wXZ04X12f48m9w==
X-Google-Smtp-Source: AGHT+IGISBTwHnOEY2bEJPR+BTe1q1qlpEiRYXNfbcGJ9ZaqciEpkdDRztt/9NPlZLzrMm9yu+GByw==
X-Received: by 2002:a17:902:e5c7:b0:215:94eb:adb6 with SMTP id d9443c01a7336-2262c5edffemr7634215ad.40.1742237074779;
        Mon, 17 Mar 2025 11:44:34 -0700 (PDT)
Received: from thinkpad ([120.60.130.16])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c68884fcsm79360525ad.16.2025.03.17.11.44.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 11:44:34 -0700 (PDT)
Date: Tue, 18 Mar 2025 00:14:27 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Frank Li <Frank.Li@nxp.com>, Tony Lindgren <tony@atomide.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH RFC NOT TESTED 0/2] PCI: dra7xx: Try to clean up
 dra7xx_pcie_cpu_addr_fixup()
Message-ID: <20250317184427.7wkcr7jwu53r5jog@thinkpad>
References: <20250313060521.kjue4la47xd7g4te@thinkpad>
 <20250317173008.GA933389@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250317173008.GA933389@bhelgaas>

On Mon, Mar 17, 2025 at 12:30:08PM -0500, Bjorn Helgaas wrote:
> On Thu, Mar 13, 2025 at 11:35:21AM +0530, Manivannan Sadhasivam wrote:
> > On Wed, Mar 05, 2025 at 11:20:21AM -0500, Frank Li wrote:
> > > This patches basic on
> > > https://lore.kernel.org/imx/20250128-pci_fixup_addr-v9-0-3c4bb506f665@nxp.com/
> > > 
> > > I have not hardware to test.
> > > 
> > > Look for driver owner, who help test this and start move forward to remove
> > > cpu_addr_fixup() work.
> > 
> > If you remove cpu_addr_fixup() callback, it will break backwards
> > compatibility with old DTs.
> 
> Do you have any pointers to DTs that will be broken?  Or to commits
> where they were fixed?
> 

Any patch that fixes issues in DT and then makes the required changes in the
driver without accounting for the old DTs will break backwards compatibility.

> > You should fix the existing DTs and continue carrying the callback
> > for a while.
> 
> Any insight into where these existing DTs are used and how long
> they're likely to live?
> 

There is no fixed rule in this afaik. Just like we continue to support old
hardwares, we need to continue supporting old DTs for some time. The best we can
do is provide some warning so that users can update their DTBs. Then we can get
rid of the old DT support in the driver after some time.

That's why I asked Frank to add the warning previously.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

