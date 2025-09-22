Return-Path: <devicetree+bounces-219988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0076BB906EB
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 13:37:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CDC28189A675
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 11:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48256303A1A;
	Mon, 22 Sep 2025 11:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EQ7BKWwU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCF430504A
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 11:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758541010; cv=none; b=UidC4KAjRM7i771KZTrGFALn8JPG1iiuvcssDOLYy4pdz0JJqAlQ+ELv5BMLdoeFUc9g406guljPgeKDUM3o0g3cQnR6YUPzOCzsU/WAIe/TPykdrAneM0uz1fRut7/BsLHlKtDeOuW64eL89+kwrQxi0jOHFaoURrkCdeNgZUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758541010; c=relaxed/simple;
	bh=4RDEXWIJRxsJNLyBGMGssIQ4Y0yIdH9PwLW2hS74sLI=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UTxt/jUQ+VVZ3UlSzhup7/AGzM+G0hBoDF33dR4jRVhYthVHgKFouthkLBaDm/mZ7Hu+2fPLUioAfGvEU4lqISlJRbGIOTDA5Vs3SouEciyLmieaPjNX4K8xE0v/XF5x7iw8c1HVqCdXKU1i8V72wPpjea9YjZvDxgV57aI1fbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EQ7BKWwU; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-46b303f7469so12097955e9.1
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 04:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758541007; x=1759145807; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=oAYqFXyWYf/ovOGnjUFnZWmVgk9QvSIoobQEOgia090=;
        b=EQ7BKWwU7ecPdlbRnwpEp2DWp8/5QWRG3GSy6IL54BN0oERYJugQ/d+lVXNAEwYeTk
         mC45aahKZhGWb2QYUxsW6Xxf19dSM0RQF06Odi6J1mQBfhfwKxloEZRJMZmZTLrzk7DW
         YfSoTvcpO+cjt00z1ZxMxvAh1WdC2HWhZQxm/8A9Q5cDSzezGLs1d04J9xvPQg0weN2q
         RADg8TXDvOM/L3qiI9Pgfzj1Jtn7V4zyeLD1guRGvvCWv2Q19kkc0n/yZ2kCqdc+2sDI
         19sPEKHtXLlXFkIXapGiewdkhwFi8URX1ayK5rmz2fIN/QbDIqMn9PaBSrnilaHGePf1
         11EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758541007; x=1759145807;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oAYqFXyWYf/ovOGnjUFnZWmVgk9QvSIoobQEOgia090=;
        b=m+tvezP7HxK9ed3GTIU+WmwKxEWAbh6jAZpuLCta5h3VAPOMY8ihsGoTlA4PXjx/YB
         NOJhxRB+kTxoiE/Ym/EUGoVufmShDaTXRsaG1fjp56262m/DcFiGUSgJv0uy16WXSuH3
         p/YnZx3nBuDXFTNufKu5vmqQdAwCJRA3xhal8VypYqXrWHTHfqCKnrI+s5oHMPX0sFCG
         cQETTwc8ChkdbeJTebva/jJeiVhd3bsx0yONhHZKPNo2NH4l23nRoRjmrvJebaOMzfeo
         8Zat6o30LscJHeF65pYsjkta/93ZWoAcS9YVqIBJne+K8rib0vWa4pUzo409ODWjL3eG
         cyrg==
X-Forwarded-Encrypted: i=1; AJvYcCUDEiimLh51p7ZLoenNEmM0VoZmm0W/3/5g6iRDCf5LmXupYoTAAD/NROIKtiHMge7ViieJ+sz5UMky@vger.kernel.org
X-Gm-Message-State: AOJu0YwQJcJaNB2C+wphpURU4sEW7CIJOTHbAjdh96dyILMCZcJawsRK
	Xm6fnBSfMzKuIqYECGTmBzMMte+oO0eR+Gbo/0qC5y/xqSIhparTRDdG05NWDQ==
X-Gm-Gg: ASbGncsfIUjPdOU4GQDRVEd19QiDLiGFeRMfxKBbldQFRBDqsvEUNnVW5NuDj/k9hr+
	nCFw8et8b1cGgjHiIi4na8OhfaN2B0nGvbsGvyIzfDQTnhLCpTlmulX8EVAu2KPX/oedTER+sd3
	a6FJX2mC9zR748QUDugZ25frwJDGKzvfheKe7plNCazd3EQfwy1jBV5cX6Et1aGXnkoALerbOWg
	xOio/1PDdorRN5hZimIfizeOS39TD3xtKsAiZjuDPWA8+BtYRtt3A/oMxXG4OmJbd7NRvzAPi3c
	j4QIQRh27GEsJKz0sRpTzAKjT5UdOQoft6ZRh/uB15Y8akjcxgssc3zk4US3ZHDTYsn1W4Rh6TR
	lV0+dSeCjIl6TNmhs7NeuC1kUOcffoji3VoJTBvkUlu38e3SDn8f5JwH4WDFngVwI56NCag==
X-Google-Smtp-Source: AGHT+IFxQTXNVAZvfC1AemnurHgjd7bW6AIxc0GLyxTk076fV2qzgcWwb7RLdq+XPS4PWKkuqKxXTg==
X-Received: by 2002:a05:600c:a48:b0:45d:d19c:32fc with SMTP id 5b1f17b1804b1-467e78caa13mr132278155e9.10.1758541006439;
        Mon, 22 Sep 2025 04:36:46 -0700 (PDT)
Received: from Ansuel-XPS. (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45f326133a8sm132690315e9.6.2025.09.22.04.36.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 04:36:45 -0700 (PDT)
Message-ID: <68d134ce.050a0220.375eef.da87@mx.google.com>
X-Google-Original-Message-ID: <aNE0yMvIzvPc3W_O@Ansuel-XPS.>
Date: Mon, 22 Sep 2025 13:36:40 +0200
From: Christian Marangi <ansuelsmth@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	linux-pci@vger.kernel.org, linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, upstream@airoha.com
Subject: Re: [PATCH 1/2] dt-bindings: PCI: mediatek-gen3: Add support for
 Airoha AN7583
References: <20250920092612.21464-1-ansuelsmth@gmail.com>
 <40efb310-e63b-47ea-b62b-cc3d614c47b4@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <40efb310-e63b-47ea-b62b-cc3d614c47b4@collabora.com>

On Mon, Sep 22, 2025 at 01:34:06PM +0200, AngeloGioacchino Del Regno wrote:
> Il 20/09/25 11:25, Christian Marangi ha scritto:
> > Introduce Airoha AN7583 SoC compatible in mediatek-gen3 PCIe controller
> > binding.
> > 
> > This differ from the Airoha EN7581 SoC by the fact that only one Gen3
> > PCIe controller is present on the SoC.
> > 
> > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> > ---
> >   .../bindings/pci/mediatek-pcie-gen3.yaml      | 21 +++++++++++++++++++
> >   1 file changed, 21 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml b/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
> > index 0278845701ce..3f556d1327a6 100644
> > --- a/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
> > +++ b/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
> > @@ -59,6 +59,7 @@ properties:
> >         - const: mediatek,mt8192-pcie
> >         - const: mediatek,mt8196-pcie
> 
> "an" comes before "en", please move it here.
> 
> Also, for consistency with all of the other compatibles, this should be just
> "airoha,an7583-pcie": please rename it.
>

Thanks for the review. The "gen3" wasn't added randomly. On AN7583 they
put both gen2 and gen3 PCIe. One line is gen3, the other gen2. So either
we differenciate for gen2 or we add the gen3 tag.

I decided to add it here to follow the naming pattern with
mediatek-pcie-gen3.

If you have better idea on this, I'm all open.

> >         - const: airoha,en7581-pcie
> > +      - const: airoha,an7583-pcie-gen3
> 
> 
> 
> >     reg:
> >       maxItems: 1
> > @@ -298,6 +299,26 @@ allOf:
> >               - const: phy-lane1
> >               - const: phy-lane2
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          const: airoha,an7583-pcie-gen3
> 
> same for this if block, please put it before en7583.
> 
> Everything else looks good.
> 
> Cheers,
> Angelo
> 
> > +    then:
> > +      properties:
> > +        clocks:
> > +          maxItems: 1
> > +
> > +        clock-names:
> > +          items:
> > +            - const: sys-ck
> > +
> > +        resets:
> > +          minItems: 1
> > +
> > +        reset-names:
> > +          items:
> > +            - const: phy-lane0
> > +
> >   unevaluatedProperties: false
> >   examples:
> 
> 
> 

-- 
	Ansuel

