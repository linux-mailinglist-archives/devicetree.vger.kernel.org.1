Return-Path: <devicetree+bounces-111509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B9699F125
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 17:27:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB998285D9B
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 15:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AA931B3948;
	Tue, 15 Oct 2024 15:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j5URkdFV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 748A21D5152
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 15:27:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729006065; cv=none; b=XlIHxk100k1vkWJwyJCkxz75myR+9B5BBBWaxEEYg2mNCJHjwD8CZLsLovmAzKk8KjU6xiNAb5k62a8D5pOmymnS1k47K0QPXHyKlw5Ti0Kb5cuD53jYRmlzpZZM85OBCVYLGdrzm8TBCW7nT6OHq+I10hTIpkYRNPL0delBB1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729006065; c=relaxed/simple;
	bh=Feqqncn2IN52Qoz0B6yLM+y6Vf9wKbCXtULN0GgA7tI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T+9mlxnTBWI6ZYS1LuZt3a/Y7PbLqzKwtsvHw7j1UPqeUDM8HDbxtx8nuwZBSDUmbaNJV8lw9OvxUDmTbr4o5RqFEVDZuyfbSofIh0xmZ/KJhODRlqxI5viTWMINFEjDyvBEmK/Kc02CVN4OWHCJgak61nNMdEpmtskUg/HZArs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j5URkdFV; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-20cdb889222so23295405ad.3
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 08:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729006063; x=1729610863; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=y/3AIdRnyF9FoYxqgK1LtWE3WrO5XA+CGa4gsRj7e8U=;
        b=j5URkdFVSiPqnRZusqK40H/3eMJK3Rgu4jGorFl//0+OOhELh+YfJ8feyVP00qyESu
         e335WMbxJwydZYyzUtJ1bb4x/rMuA8zTEf7ux+L9g8squNGjcwyqicN4+gOVIqq9OYxF
         0SzTw/B7vr9CIQNtB+8sd0WokN+1Zb8o5gMvrog/2iemd/FOEOzjXdg9y/ugxEnNVKIz
         LeDAV0RPCjR6JatWRzcu5DXKWanbrHHqTUN+2iWNDLw9hcadw2p3N58Y+yJ5MOcdE2DM
         6gDlSbSrAm9GZs5ULELEcwv4wJz9Du7bPbHZ/zX2IDS2m93md5zMt2gCcRvnxf5ash/R
         77AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729006063; x=1729610863;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y/3AIdRnyF9FoYxqgK1LtWE3WrO5XA+CGa4gsRj7e8U=;
        b=dpreMKGY8czdfKR+jl+7YqtEZ+KejXsiS4t9CnmvePNNSBlvptySaSduY003tfqQ/0
         Nwj362O++qm9eDXDWLi9KUlacM5jniV5XlU8qFMzBg8SgL0l+pgrDXT4yyn1A//0Yy7I
         1gAUq8eY79adrDrJaYP4Vtn7FBzNIGopFEaWK+Hz+kKD6vaSscSaKIc4PbCWWXOUR7Xq
         lnzF1aF1s/DFHMd8cxfI2Um8o2a5MjqX2Iga4FvG0CIeDh+l2w7b6+HK7J+En2mW5squ
         R76JDolJzIb2PA1PQxkufRAfRDX7XhwqStaiAS3rW6gXIECXphLuxIpFZxVfBqbbv8Vt
         vOsg==
X-Forwarded-Encrypted: i=1; AJvYcCUYi/n34EpH2SVpTFT4WG6n3FaD6BznEmFky+CIghu+vrD6C7BH4FNpjywZqHfPUOL9E5JPQ2eLJ2oq@vger.kernel.org
X-Gm-Message-State: AOJu0YzOk221qcHD0Q+Nc+tc7UBTfDfr17LQzoI3aGkZ7Mc6XpZyZfg/
	laDxvCmyPb2MM78cgXK1IwrULNKCCJDN6A2xPI3uypuyO7WA5QioR68479gROg==
X-Google-Smtp-Source: AGHT+IGaEq1U/LhWEmLCx0Qxb6lSKdqlbfFIsWcAzs0HcQYzq9C+VPEl4SeXJ4lMCGRKCEivLz18UA==
X-Received: by 2002:a17:902:ce92:b0:20c:98f8:e0f5 with SMTP id d9443c01a7336-20ca169e8cbmr189074555ad.43.1729006062660;
        Tue, 15 Oct 2024 08:27:42 -0700 (PDT)
Received: from thinkpad ([220.158.156.88])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20d1803767csm13234575ad.147.2024.10.15.08.27.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 08:27:42 -0700 (PDT)
Date: Tue, 15 Oct 2024 20:57:36 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Sibi Sankar <quic_sibis@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>, konradybcio@kernel.org,
	krzk+dt@kernel.org, robh+dt@kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, conor+dt@kernel.org,
	abel.vesa@linaro.org, srinivas.kandagatla@linaro.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Add X1E001DE Snapdragon Devkit for
 Windows
Message-ID: <20241015152736.exon6q77jathhp55@thinkpad>
References: <20240911073337.90577-1-quic_sibis@quicinc.com>
 <20240911073337.90577-3-quic_sibis@quicinc.com>
 <pt4wtycddqhcvw2iblaojmzsdggmlafft4vu6lg5j2vstbhbqj@acenyi5k3yeq>
 <eqy4yicgeqlgaytgzybnitvbrdr7jmjjk5k2swmadad6scwk77@ubaf7a2kgmdm>
 <1BBC34CC-92D9-4F6E-8DFA-1F2DA36D545A@linaro.org>
 <20241001085105.iglzp3art5ysli2d@thinkpad>
 <b1d982c1-f800-97eb-1be3-e77e04a8e81d@quicinc.com>
 <20241006180146.m6xvpwbvkiy7obpx@thinkpad>
 <20241015135114.kbiyvymng4e6dmvb@thinkpad>
 <CAA8EJpombwmYimszNoQ51m+cfcNs9x+TQ39+-6kXXp+Ziq=d7Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAA8EJpombwmYimszNoQ51m+cfcNs9x+TQ39+-6kXXp+Ziq=d7Q@mail.gmail.com>

On Tue, Oct 15, 2024 at 04:57:45PM +0300, Dmitry Baryshkov wrote:
> On Tue, 15 Oct 2024 at 16:51, Manivannan Sadhasivam
> <manivannan.sadhasivam@linaro.org> wrote:
> >
> > On Sun, Oct 06, 2024 at 11:31:52PM +0530, Manivannan Sadhasivam wrote:
> > > On Sun, Oct 06, 2024 at 12:33:21AM +0530, Sibi Sankar wrote:
> > > >
> > > >
> > > > On 10/1/24 14:21, Manivannan Sadhasivam wrote:
> > > > > On Tue, Oct 01, 2024 at 09:56:30AM +0300, Dmitry Baryshkov wrote:
> > > > > > On October 1, 2024 5:42:35 AM GMT+03:00, Bjorn Andersson <andersson@kernel.org> wrote:
> > > > > > > On Wed, Sep 11, 2024 at 10:55:05AM GMT, Dmitry Baryshkov wrote:
> > > > > > > > On Wed, Sep 11, 2024 at 01:03:37PM GMT, Sibi Sankar wrote:
> > > > > > > [..]
> > > > > > > > > diff --git a/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts b/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
> > > > > > > [..]
> > > > > > > > > +
> > > > > > > > > +&pcie5 {
> > > > > > > > > + perst-gpios = <&tlmm 149 GPIO_ACTIVE_LOW>;
> > > > > > > > > + wake-gpios = <&tlmm 151 GPIO_ACTIVE_LOW>;
> > > > > > > > > +
> > > > > > > > > + vddpe-3v3-supply = <&vreg_wwan>;
> > > > > > > >
> > > > > > > > Please use pwrseq instead.
> > > > > > > >
> > > > > > >
> > > > > > > What benefit is there to wrap a single 3.3V regulator in pwrseq driver?
> > > > > >
> > > > > > First of all, is it really just a 3.3V? Second, is it actually powering up the host controller (as expressed in the device tree? Is it a power supply to the slot (in this case, I think, it should be expressed differently)? Or is it a power supply to the card itself?
> > > > > >
> > > > >
> > > > > Yeah, we should get into the details here. We were not paying attention till
> > > > > now, but with the advent of pwrseq, we should describe the power supply properly
> > > > > in DT.
> > > > >
> > > > > Here I believe the supply is to the PCIe Mini Card connector where a modem is
> > > > > connected. In that case, 3.3v supply should be connected to 3.3Vaux of the
> > > > > connector and we should have a generic pwrseq driver for the mini cards.
> > > > >
> > > >
> > > > Hey Mani, Dmitry,
> > > >
> > > > The schematics are identical to that of the X1E CRD with
> > > > the exception of the pcie daughter card having the rtl8125g
> > > > on it. Yes, the 3.3V supply is connected to the card as well.
> > > >
> > >
> > > Is this connected to the 3.3vaux of the card? Please specify the actual rail
> > > name as the 'PCI Express Mini Card Electromechanical Specification' specifies
> > > only 3.3Vaux and 1.5v supplies.
> > >
> > > > Doesn't this mean all other x1e boards out there needs to be
> > > > updated with pwrseq as well? Anway will get that addressed in
> > > > v3.
> > > >
> > >
> > > pwrseq is the kernel driver abstraction, nothing to do with DT. But for making
> > > use of pwrseq, the supplies need to be described in the proper place. In this
> > > case most likely under a separate node of PCIe bridge. Then you'd need a
> > > separate pwrseq driver in kernel to parse the supply and take care of it.
> > >
> > > I'm currently writing a pwrseq driver for standard slots (x8 for X1E) and should
> > > be able to post it early next week. So you or someone could use it as a
> > > reference to add a new driver for m-pcie cards.
> > >
> > > If no one picks it up, I may just do it.
> > >
> >
> > Hi,
> >
> > The slot driver is taking more time than anticipated due to the pwrctl rework.
> > So please go ahead with the current binding and we would switch to pwrseq
> > later once the driver is available.
> 
> I assume this applies only to the case of the actual 3.3V being used
> to power up the PCIe slot? Or to all existing pending items using
> vddpe-3v3-supply?
> 

What do you mean by 'pending items using vddpe-3v3-supply'? I was referring to
the slot supplies only.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

