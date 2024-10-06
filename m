Return-Path: <devicetree+bounces-108200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 838B7992036
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 20:02:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DD57DB220E6
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 18:02:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D912189F32;
	Sun,  6 Oct 2024 18:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nqblB2C/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04E6189917
	for <devicetree@vger.kernel.org>; Sun,  6 Oct 2024 18:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728237714; cv=none; b=ZkGBH0HfLapeOcIB7cbJxv0y4MdB7vNGLB7mmh/K2HjiLJzkkGIZu1uvoyXQ5ieEj9TA0IhkbGzVXbXRdkVmM5KpdU2V8svEowHIrsfd+lP36URl+U5J8m1VhdwVz5G7VPrVHa8DlCLG7DSI+rrCyBXBhoIvEVFD9EmCkhTwiQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728237714; c=relaxed/simple;
	bh=h/eHBMo75q4g8Vy5Dhgk5ZSSFphKBV3uac7pVYR9Tpg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t3Wzg8Irrs6Y6+IZdY0Ge2E/s0E224+onz/XbiqIRsa5c9j42YeB71ew96FLk1Q9sh0OdZSKUlptj0kF+Epb6z3B2hbhO71qFiDAbXi7edQXKHMnkv3zViQDIqDfsTailIhoYU5zJmVnOEdZmXlEK4roqpM17bdRdNDenD/moqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nqblB2C/; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-71def715ebdso1244175b3a.2
        for <devicetree@vger.kernel.org>; Sun, 06 Oct 2024 11:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728237712; x=1728842512; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SaMUBLoBBR07C/bYoUpjG4R9HZWfImadGC0U2YnHoLI=;
        b=nqblB2C/WZNS+I6IVKef1///tVEvG2r4YhbFp6j7fM3tHP7wxRku5up/WGks7Qy8EA
         IyF+QDTB5Fuec8l5Ofu/0fbhxXjcHECVpLZYO7R8v7OEZ99s7RZSmKclUaEHYS9RSb+E
         tZwywiJacFikcd3Gk4iIcgiiwSxjnDdlDUzvyurm/bhqtOisnVno6WHFyxePJYwLzTIw
         IPIO2x7KQ2bRwwdFVxQdLQwwVp28/iXcouZxFhPtCA0ShlEYwopH/7uFBDjN7PCx0QFS
         YAQkxnDKZWzWTQvnQu1wJ22ZFMGZ7N9/5ISVRe9hW+QgKV8A5SN2buReTUGXXQM1igqE
         ihkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728237712; x=1728842512;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SaMUBLoBBR07C/bYoUpjG4R9HZWfImadGC0U2YnHoLI=;
        b=PJJMzhPfojecSVA0E/QXYaZ3HR8PUOz9/5hvfLuMpCEyAYPEISxDn9lKTdXWCXtp3S
         1PtBH+jINBEgrqMxKOFI6zLRNHmwWG6Czjd9Y9xlN57kwVinIAc1Y3IeZJTR/4tcy0AM
         qWg/KVqJ57MK0i2TM1WlmREU5TQljBYL97C4RK8QbaLxgdsOfxZF9WHfsDi7SWX9HoLM
         gvwKefli92w264zltwpwfrOkN7xizmnO8KkSbW7i/eEeC9tbrXICqrmbvedtxsY+WPu0
         BOC18crqQ8/p0m2iEREyqvRpD5kG2NgAJnQ7rQEr9QaZdrEtLWQCENTC5kLLS3t/Q32A
         SAXg==
X-Forwarded-Encrypted: i=1; AJvYcCWDllWT8AmBMCL6/jO6qmKkWFtVXCGmYlCRjW8Xk4nSz6zC/SteaBM+gygKns0Z7OZbvfZsKFsZ2G4K@vger.kernel.org
X-Gm-Message-State: AOJu0YylbgfwU6oGV81sJv4Qn1FkrCYlnGLQQQvDEalWtX22MINbnb7R
	QTMCAWNbrsduZGIjNnIhBKikzzQS1YUWh54I7lwAkvRJ9iVC0a6xKSygVUjHeQ==
X-Google-Smtp-Source: AGHT+IFyQRwLChkdAtgok+XKIQIoLYCmRv24p2cIvqhwFQFSIZbUzdcjHt6G40jahaoV8Hwts212Rg==
X-Received: by 2002:a05:6a20:438c:b0:1d6:b63c:53c4 with SMTP id adf61e73a8af0-1d6dfa1e5efmr14308957637.2.1728237711884;
        Sun, 06 Oct 2024 11:01:51 -0700 (PDT)
Received: from thinkpad ([220.158.156.57])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71df0d6642dsm3014782b3a.168.2024.10.06.11.01.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 11:01:51 -0700 (PDT)
Date: Sun, 6 Oct 2024 23:31:46 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Sibi Sankar <quic_sibis@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>, konradybcio@kernel.org,
	krzk+dt@kernel.org, robh+dt@kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, conor+dt@kernel.org,
	abel.vesa@linaro.org, srinivas.kandagatla@linaro.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Add X1E001DE Snapdragon Devkit for
 Windows
Message-ID: <20241006180146.m6xvpwbvkiy7obpx@thinkpad>
References: <20240911073337.90577-1-quic_sibis@quicinc.com>
 <20240911073337.90577-3-quic_sibis@quicinc.com>
 <pt4wtycddqhcvw2iblaojmzsdggmlafft4vu6lg5j2vstbhbqj@acenyi5k3yeq>
 <eqy4yicgeqlgaytgzybnitvbrdr7jmjjk5k2swmadad6scwk77@ubaf7a2kgmdm>
 <1BBC34CC-92D9-4F6E-8DFA-1F2DA36D545A@linaro.org>
 <20241001085105.iglzp3art5ysli2d@thinkpad>
 <b1d982c1-f800-97eb-1be3-e77e04a8e81d@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b1d982c1-f800-97eb-1be3-e77e04a8e81d@quicinc.com>

On Sun, Oct 06, 2024 at 12:33:21AM +0530, Sibi Sankar wrote:
> 
> 
> On 10/1/24 14:21, Manivannan Sadhasivam wrote:
> > On Tue, Oct 01, 2024 at 09:56:30AM +0300, Dmitry Baryshkov wrote:
> > > On October 1, 2024 5:42:35 AM GMT+03:00, Bjorn Andersson <andersson@kernel.org> wrote:
> > > > On Wed, Sep 11, 2024 at 10:55:05AM GMT, Dmitry Baryshkov wrote:
> > > > > On Wed, Sep 11, 2024 at 01:03:37PM GMT, Sibi Sankar wrote:
> > > > [..]
> > > > > > diff --git a/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts b/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
> > > > [..]
> > > > > > +
> > > > > > +&pcie5 {
> > > > > > +	perst-gpios = <&tlmm 149 GPIO_ACTIVE_LOW>;
> > > > > > +	wake-gpios = <&tlmm 151 GPIO_ACTIVE_LOW>;
> > > > > > +
> > > > > > +	vddpe-3v3-supply = <&vreg_wwan>;
> > > > > 
> > > > > Please use pwrseq instead.
> > > > > 
> > > > 
> > > > What benefit is there to wrap a single 3.3V regulator in pwrseq driver?
> > > 
> > > First of all, is it really just a 3.3V? Second, is it actually powering up the host controller (as expressed in the device tree? Is it a power supply to the slot (in this case, I think, it should be expressed differently)? Or is it a power supply to the card itself?
> > > 
> > 
> > Yeah, we should get into the details here. We were not paying attention till
> > now, but with the advent of pwrseq, we should describe the power supply properly
> > in DT.
> > 
> > Here I believe the supply is to the PCIe Mini Card connector where a modem is
> > connected. In that case, 3.3v supply should be connected to 3.3Vaux of the
> > connector and we should have a generic pwrseq driver for the mini cards.
> > 
> 
> Hey Mani, Dmitry,
> 
> The schematics are identical to that of the X1E CRD with
> the exception of the pcie daughter card having the rtl8125g
> on it. Yes, the 3.3V supply is connected to the card as well.
> 

Is this connected to the 3.3vaux of the card? Please specify the actual rail
name as the 'PCI Express Mini Card Electromechanical Specification' specifies
only 3.3Vaux and 1.5v supplies.

> Doesn't this mean all other x1e boards out there needs to be
> updated with pwrseq as well? Anway will get that addressed in
> v3.
> 

pwrseq is the kernel driver abstraction, nothing to do with DT. But for making
use of pwrseq, the supplies need to be described in the proper place. In this
case most likely under a separate node of PCIe bridge. Then you'd need a
separate pwrseq driver in kernel to parse the supply and take care of it.

I'm currently writing a pwrseq driver for standard slots (x8 for X1E) and should
be able to post it early next week. So you or someone could use it as a
reference to add a new driver for m-pcie cards.

If no one picks it up, I may just do it.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

