Return-Path: <devicetree+bounces-238941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 5210EC600FE
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 08:02:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 25BF435BFD8
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 07:02:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A76571B4223;
	Sat, 15 Nov 2025 07:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ld5LbLfM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BB8E573
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 07:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763190154; cv=none; b=bcoBjJy6Puz7fnXfW/kXx7FKbneo/APIVsL0sHz1s42cmSLYyVpIyTK5kf4PPWL7ZyV8CO1XS8BTz8+S958Iee5zBh11I8A/8OVV9chq0Sk5PpdpXmMD5XAaWBAQh/7ulfJf6elHhCwSZ+4zLySf8EvzhL+CM3Nk/zBlwyViXpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763190154; c=relaxed/simple;
	bh=CPOZU5yfJpLLmtAWcddD3nJTrxdEdSCHQdtSXv0g/+Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jCzhVuUvMUJ23vqKNsCuCrcYM7xLF+9943mtyOy5069ue7mCj+SPA5pN7YjD6H08pk1mifUmKDwaefm71L1MwOEd3ygxxi/89/0ixkMAhs2BwssiU/YYulM6A8nlBro04EbVWsR6fDaspVWLpDiK3iKam5qMeIxVjQc6HJhzJSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ld5LbLfM; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7b8d99ad095so2204234b3a.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 23:02:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763190152; x=1763794952; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IOYSOoZ7kZHsHMrtVsrNZvrMCn7UoqoHGgR3M03FgNs=;
        b=ld5LbLfMN1eHpTdf5/8dApJG8Uvd9328R0yHiWvW96d4DXK2USeY0SJo9CGwKjjwZL
         cwLIrQrUzclorm14fQW8qz4TO7/XkRZyCa/J62eRnCDpACwnt7WPNJW2fHG0+9bwaPm7
         W9dgyijUhHL0bY8oAddRvijTGDH9gjvVNLJWAlMj8jjtIVCIUKgPuZcUskhgJEYMRlkf
         +VVqYPQh3qyywn2tBPoUc7B16ITiZxSpoAIqW9mW/LxoAJmaIeYrKSPCDf561tXL6gyy
         WhX3CP/eKehza3D279B7JqoN2BCTRVi4AI7Dytt3r+19xrxpYNNzZ9HMgDZovql3Kf8C
         mSig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763190152; x=1763794952;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IOYSOoZ7kZHsHMrtVsrNZvrMCn7UoqoHGgR3M03FgNs=;
        b=flbT7LNe03Sx4ypP2bNIHrwfDiQ7V7h/rSXewnVc2kfoh15MFdXmEk6nartxamxmuT
         HvIm8Kr0IKK2cCrVTr2Pl3IpUwWARv1j6u511PoPPFmxUCI/rdakfuNGp1udO/J1Mc8d
         oPf6UiWKW98+w+ECf+iU1bBCyQA95vCr+rzuZb0fpCzY+n1hBaVCg50Iv9o0YdqVqFLF
         1sxrivJ6e9l1qgZY8up3BC71qgrAlRBxo5aM805FA4sAuR0O5B/fWBuQk7I31oDZdVb/
         SBJDAtMj34THP60IJzmoIgTZnz3/B6NOjy2FVWZBiR5+bk93SN6gKzXG3Tgrl6aCCc5h
         Lx5A==
X-Forwarded-Encrypted: i=1; AJvYcCX0nB++NIDiM1T1RxH5dYSmYS00E/iyw4qaStz8x9lzRI0gzSgHa8bMWRDo06SC4xq987w8k/iOY257@vger.kernel.org
X-Gm-Message-State: AOJu0Yyyyq1uS5vBnsGZ3FAIRirHYxX9iYJ2tUQcOIp5paq+KYlQKXxW
	M5RK5UxvlcKxYlr6FQcuyw6QDyDtvuzwbFrTK3QPQVoyYU740z0AIFBC
X-Gm-Gg: ASbGncso3e4n0dST5Qx2+LQBiY8w7Tbe2sN5zIA94me41ahDUAOi5tPofGmPt4PMcw2
	mTxqc/a5dY7FdmnBnKJnnPq44XLPFaNYQpBI8LN5bXInAVCEMenEqj1bHJEblc2l7YQPFSyp7Js
	clCqKfEAjZbCM/dghd/zgZvsN7cYosugJMVRfPSmDe8EfS8SUZ0Mk90WX1/HB9swxz1pfFo89Os
	IF3O69xHZkOhhwMm3oQCT1q0/SCLZ4axHGE791uFwgupmOUR277yC3zlpp7kVtBqzG/QTc2WG9J
	14e2gZDkgwY2+nd41kO3aB+zqoJqTWnSw1X5TFOeGdZbIKeFtW8zyL/2iUAg92rlZ/JtCWOeQIu
	Elmkv1Dbt53OPpysWqoBkakOfHhWSafcBg8Wa8mJki0GVpGKFgMMi8vhQG9S75tGXH57/98Shg9
	VZ0/cdv9xD
X-Google-Smtp-Source: AGHT+IF6Rm2Drf+1xlFmZRzPIXc1lSKc1tNyqq8bFT5+2d7X7z6WfhOem4D1nutU3J7fGxCS13ODNw==
X-Received: by 2002:a05:7022:b90c:b0:11a:4ffb:984f with SMTP id a92af1059eb24-11b411f05dcmr1444305c88.11.1763190151853;
        Fri, 14 Nov 2025 23:02:31 -0800 (PST)
Received: from geday ([2804:7f2:800b:a008::dead:c001])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b80fd6790sm4677580c88.10.2025.11.14.23.02.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 23:02:31 -0800 (PST)
Date: Sat, 15 Nov 2025 04:02:24 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci <linux-pci@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	krzk+dt <krzk+dt@kernel.org>, conor+dt <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	linux-rockchip <linux-rockchip@lists.infradead.org>,
	Simon Glass <sjg@chromium.org>,
	Philipp Tomsich <philipp.tomsich@vrull.eu>,
	Kever Yang <kever.yang@rock-chips.com>,
	Tom Rini <trini@konsulko.com>, u-boot@lists.denx.de,
	=?utf-8?B?5byg54Oo?= <ye.zhang@rock-chips.com>
Subject: Re: [PATCH] arm64: dts: rockchip: align bindings to PCIe spec
Message-ID: <aRglgNL5eumu4XbS@geday>
References: <aQ1c7ZDycxiOIy8Y@geday>
 <d9e257bd-806c-48b4-bb22-f1342e9fc15a@rock-chips.com>
 <aRLEbfsmXnGwyigS@geday>
 <AGsAmwCFJj0ZQ4vKzrqC84rs.3.1762847224180.Hmail.ye.zhang@rock-chips.com>
 <aRQ_R90S8T82th45@geday>
 <aRUvr0UggTYkkCZ_@geday>
 <aRazCssWVdAOmy7D@geday>
 <e8524bf8-a90c-423f-8a58-9ef05a3db1dd@rock-chips.com>
 <aReSPbRxCgdNRI9y@geday>
 <ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com>

On Sat, Nov 15, 2025 at 10:21:28AM +0800, Shawn Lin wrote:
> 
> 在 2025/11/15 星期六 4:34, Geraldo Nascimento 写道:
> >> Another thing I noticed is about one commit:
> >> 114b06ee108c ("PCI: rockchip: Set Target Link Speed to 5.0 GT/s before
> >> retraining")
> >>
> >> It said: "Rockchip controllers can support up to 5.0 GT/s link speed."
> >> But we issued an errata long time ago to announced it doesn't, you could
> >> also check the PCIe part of RK3399 datasheet:
> >> https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datasheet_V2.1-20200323.pdf
> > 
> > OK, I'm partly responsible for that as author of the commit in question.
> > 
> > First off let me say I do not intend to send any patches setting
> > max-link-speed to TWO for this platform.
> > 
> > I understand you issued an erratum, but are you absolutely sure about
> > that erratum? Because my testing shows otherwise:
> 
> Sure.
> 
> The reason is that Gen2 is merely functional, but this does not mean it 
> is 100% production-ready. It has some inherent issues that cannot be 
> resolved, which may lead to failures beyond imagination. Even if the 
> probability of occurrence is as low as 1 in 100,000. I cannot share 
> further details. Therefore, the official documentation should be your 
> primary reference, rather than relying solely on simple evaluations.

Hi Shawn,

indeed, the situation is not favorable and we should strive to make
amends. I'm sorry I based the commit on outdated information, I was
none the wiser.

What I propose is to add a comment to driver core saying that path
to 5.0 GT/s shouldn't be taken and users are strongly discouraged to
mess with the maximum link speed in DT.

We deal with corner case of helios64 in another patch and make sure
there are no DTs engaging 5.0 GT/s.

This should close the loop-hole.

Regards,
Geraldo Nascimento

