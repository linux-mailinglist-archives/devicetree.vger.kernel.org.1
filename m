Return-Path: <devicetree+bounces-146732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D709A35F1C
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 14:30:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B4573AE46D
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 13:23:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A5A1264A74;
	Fri, 14 Feb 2025 13:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e2IAxK2y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4819A2641F0
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 13:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739539377; cv=none; b=TSf/VMhKIW28TdRdd3vhvSWMJuqwm1mI3uw0WymWuLCEowbDUOxHSUXjHPObCQMRCbGcO4JvtyTprMSmYbjVzi0KZprgFn5K1Md0AfMZK5b25qBhzpt0mEzStWkCKAndzwLxKtryB7JuZDw7oHqDzv0ddPGHYzWq2GcmLBoiAfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739539377; c=relaxed/simple;
	bh=pWZjOIvAdjT6JfA3vcCeZG20HLsqwLE8w4nVMAYXnl0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YYnHMnlj4WOqc11I3TnsWxdlUdOn73VbCr+8CDkccHTACJt4Iur05/CyyHD33FR0X+XqpGH5NH+/JCtqppZyfXwVQQmJDtTH5EHq48lCvXo4dSDaG/WRvFjzokYrLabnWDDnQlds5HXvoaM/bUpE+TYrT81rgOQvtwaN2K1YVjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e2IAxK2y; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-220c2a87378so28873805ad.1
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 05:22:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739539374; x=1740144174; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S9I+jjcPbUp0BbQYQVtg0pUppikDLXkHzO0OowWPexo=;
        b=e2IAxK2yaF2CN1op+zXJgA4yg6c9ldAN9Vo6Ufy0jSptzmscRlNXkO9+MHFZyckEdF
         0IXMWEs0VsdWpyWAk1F3F0WPJcrrQ/mqdKP92EppCRkarZ7yKd7VtptgGWcG02fSMcY6
         /MhZJlNTJMamRc5wA6uLLdJ5PNkIZnzFOvj67SMbzHa5lOmnyxp/ipxXq8TrLUh8h8wf
         VDi1tTSSZQ0eNAyHNpQDtQule5GN5/Ki/rB39J1n/yFNn87VTZIuPCzE+bwTyP5G0Dbs
         6buLXVpXfBdIxx7KaIWLtV/SBioDRAxlBoBCcGu63dL0YkaGbzOlFxkY1itlW5WwkK43
         NpLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739539374; x=1740144174;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S9I+jjcPbUp0BbQYQVtg0pUppikDLXkHzO0OowWPexo=;
        b=Hmk23v9Ses6h44T4Kf7J93q71cRF3RUiSbBi1CAT7G6AUOpqVZ6VaSfNoL9HIxB3Ai
         c8zYP5nZubkswRefnFlqHYWONWLs/oqwc3PA0QO0xe998O8xlPhWrx8wXNFKScCko2lq
         7jaYTODz9yWpSPgSgkdU5SXnbQe99CL5VjETd2dgOgT88zxmW4cTB9HaKDTsfTex2Zpv
         EVgpyrn0euzdfSBDISFyAxZrCCLVzr+c+Hg/bwaeiBdrCxo8Pl1rtdc1dA3ELeXdOeZw
         +5OHk3JszyotbI7OXjqW4awMtpTcDTe5/yxSsZrOp2xfCuH9LTJRn4UDFLd7RzMyu0EI
         a+xQ==
X-Forwarded-Encrypted: i=1; AJvYcCXum9Tu2UUgEDCeoqqKXwzlAzu6IlCjcA1+BzSfqvjkZEMVzlIdJbiYmKDNB3fd2bVdS01rLPQh9sbc@vger.kernel.org
X-Gm-Message-State: AOJu0YypcBHELAZScM3fOT+eAKRwqT3qOpFEI1VA2Fw7OH+MUOfPeaVH
	fITKJfMlqsztsouqFYxBxNP/gEP8oEHLjA8XUR4reUnguF1/tqTtG3HoIGOUEA==
X-Gm-Gg: ASbGncurQxqwEGnVa5QsMPJ2m8gMDGPhK1DTYsDpV9Mkx9IDX0+77IAE1v4v6By4vOs
	p2xtdLzNRV7m0Y2g6iXRnU3uNaigzvHM8EXnOc7+x6qRcGLbJPLWQSHfv1pDrVKi9Wymma0tx/V
	9DYdcR7B+17uyXiAtJSeViSt/5ESMJVtKPVb4H7WnSeKn8zRf93iFofPl9maEcexxgRqgAnYgtJ
	DKr18qOOxypl0Qx3Z+OxjM3UO4skAn+80U1WehPTf8VptIow1EaWbL6vyg5U33LhZwNbxLC//2V
	majWFG+bj0Uw8xUil3KyEL/341kyq38=
X-Google-Smtp-Source: AGHT+IFjWeTr8NsPM9DoEj6yyWP+W7LUbBHpeCWXKCgYoJEQixcGBYlU/CED0PUuiTC1uWtJJjfaNQ==
X-Received: by 2002:a17:902:d543:b0:216:501e:e314 with SMTP id d9443c01a7336-220bbafa000mr181903825ad.20.1739539374586;
        Fri, 14 Feb 2025 05:22:54 -0800 (PST)
Received: from thinkpad ([2409:40f4:304f:ad8a:250c:8408:d2ac:10db])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d556d7bbsm28739255ad.182.2025.02.14.05.22.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2025 05:22:54 -0800 (PST)
Date: Fri, 14 Feb 2025 18:52:46 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	quic_mrana@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v6 1/4] arm64: dts: qcom: x1e80100: Add PCIe lane
 equalization preset properties
Message-ID: <20250214132246.o5oimrm5ojrcbf4z@thinkpad>
References: <20250210-preset_v6-v6-0-cbd837d0028d@oss.qualcomm.com>
 <20250210-preset_v6-v6-1-cbd837d0028d@oss.qualcomm.com>
 <20250214084427.5ciy5ks6oypr3dvg@thinkpad>
 <be824a70-380e-84d0-8ada-f849b9453ac0@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <be824a70-380e-84d0-8ada-f849b9453ac0@quicinc.com>

On Fri, Feb 14, 2025 at 02:18:48PM +0530, Krishna Chaitanya Chundru wrote:
> 
> 
> On 2/14/2025 2:14 PM, Manivannan Sadhasivam wrote:
> > On Mon, Feb 10, 2025 at 01:00:00PM +0530, Krishna Chaitanya Chundru wrote:
> > > Add PCIe lane equalization preset properties for 8 GT/s and 16 GT/s data
> > > rates used in lane equalization procedure.
> > > 
> > > Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> > > ---
> > > This patch depends on the this dt binding pull request which got recently
> > > merged: https://github.com/devicetree-org/dt-schema/pull/146
> > > ---
> > > ---
> > >   arch/arm64/boot/dts/qcom/x1e80100.dtsi | 13 +++++++++++++
> > >   1 file changed, 13 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > > index 4936fa5b98ff..1b815d4eed5c 100644
> > > --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > > @@ -3209,6 +3209,11 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> > >   			phys = <&pcie3_phy>;
> > >   			phy-names = "pciephy";
> > > +			eq-presets-8gts = /bits/ 16 <0x5555 0x5555 0x5555 0x5555>,
> > > +					  /bits/ 16 <0x5555 0x5555 0x5555 0x5555>;
> > 
> > Why 2 16bit arrays?
> > 
> Just to keep line length below 100, if I use single line it is crossing
> 100 lines.
> 

You *should* keep it as a single array even if it crosses 100 column width.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

