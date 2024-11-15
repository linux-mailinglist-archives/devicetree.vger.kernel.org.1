Return-Path: <devicetree+bounces-122124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8AE9CDDBF
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 12:51:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 863BC1F22F3B
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 11:51:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09B111B6D17;
	Fri, 15 Nov 2024 11:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vMzID8m6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C4119CD08
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 11:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731671474; cv=none; b=VubeuF2b4HNERlmuRO09UU+z3sfn8nfooVQkr+fMel9mTrFgtzV6bhRGeGxheNLTRXKhYbLRMmEZrNNFsLVsfyJYvTDy/JzTHLDfAWpEU+NUjvtBMRc2t4fGpSInV/3Pl3JsbGSMqcu6b6EgH5Znhm0x4TbNwBKuqCR/gEtJKVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731671474; c=relaxed/simple;
	bh=sZdR9W40s3IqCSaLvH1Sa+P9DP69302jesYf4sRn+2g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OPqc6J4guOArNqmIjsXqCFZt+FlPi1SYtJwSonBhEBuyr9rozpsu7BXrWQDJfJWY7/Er2GwK3ZOJIjHgCd1GgmB1hLFaSfsu0vIUWYCcOSj2l01/bcPYdubzKwhIyIE2pBGHdEXbjR0Y+x3/Q+tvoBDeEijy7hs9lA2n40Zopt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vMzID8m6; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-7f450f7f11dso1195074a12.2
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 03:51:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731671473; x=1732276273; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0qz4zjxYN8EsB1sVFFLtbfHvdqNPBMDPqRlMkCvciKQ=;
        b=vMzID8m6K3DMLchGm5z3M2nR5eVE8wC23baG//7YndEYtxnDR+Zh7u8NGd4uw5yNEF
         vjxZDAZWxpCjbro5IEog6XXVzpQ1S+f1LlCyyhBlB1iG4XkQqMUjUp82BK2mjbHU6u0f
         7+9FUPwlhuj+TQabd/D17p73qCHrSacflcYMpd/uSexbFL+WDcUvwZBfUlxXwKG+uYHf
         Ocd/2jyjGUIPmZRFl6smiLW4yeEK3VdFEKLzcdElxKV1IhdsX7MlUcvk2atcPXnWHC8y
         Xv1UaHOuQ9VT9vYSkv0kgm5xBQo6Bp+olbwLGtvyX6blL6Qfh3El0WKoFquEpFHgNcz/
         vumw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731671473; x=1732276273;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0qz4zjxYN8EsB1sVFFLtbfHvdqNPBMDPqRlMkCvciKQ=;
        b=F0KSLAXM8WEiKkJIYyMnlrRNYYz6iWYikqHRjQ6jMcUNYCO4ZiJ8VbL6ZwRZHE4dal
         VK48pvQ+vq4GxTu59Om37bpQfFokakMFfhNh7GNZAdE6iWo3bDhc2PH9bme+n2mVzlcg
         Zcoq+hrkGKvidDVAORvWEtJFtPfsuzTB3vi0etHXTpxMp4wtTDvQRMedSUFGLfcygJjs
         FjOYDzvXPg/gcPascsGn5L1msDnMEQyAjnGzy4HzAnhICvXc49sRsnfCCiRfn4CbLvgo
         HSQky5iy5yUUNaXjUsKy4yHeeMCXr9gbPZ4RNI/q1+4MLj8qNGSFKqhn3Qu9Vr9WcywD
         wx+A==
X-Forwarded-Encrypted: i=1; AJvYcCUQeqcSmsSBBQ85Ksv+IwLaOR3WPXUa77gSx+rkEJr4wTKFVlltQEEy/zHZ4u/CgVSRXgU68m/KJExN@vger.kernel.org
X-Gm-Message-State: AOJu0Yyo0oX+YfJCbaxEeyAVHR4CTL7DCBYF3qClBj0SzohGeTcWC6W2
	BASSGJAn3NBlGME5iXvlQLfRCPEqJ3Y3OfzQXhXeTbEejyAeQK1OsK3zTt707g==
X-Google-Smtp-Source: AGHT+IHpT8ZeMKed/s/RPDlK9VLqV5kI+HNUu4iV8muOdZoUPUkSFT36NhvQLuLYGoL5BZzy2K3vgw==
X-Received: by 2002:a05:6a20:3946:b0:1d9:1045:3ed5 with SMTP id adf61e73a8af0-1dc90b23572mr2838926637.11.1731671472789;
        Fri, 15 Nov 2024 03:51:12 -0800 (PST)
Received: from thinkpad ([117.193.208.47])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-724770eea1asm1200047b3a.28.2024.11.15.03.51.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 03:51:12 -0800 (PST)
Date: Fri, 15 Nov 2024 17:21:04 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Krishna chaitanya chundru <quic_krichai@quicinc.com>,
	andersson@kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	cros-qcom-dts-watchers@chromium.org,
	Jingoo Han <jingoohan1@gmail.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>, quic_vbadigan@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/6] PCI: Add new start_link() & stop_link function ops
Message-ID: <20241115115104.hsa4udzkhhavahgi@thinkpad>
References: <20241112-qps615_pwr-v3-3-29a1e98aa2b0@quicinc.com>
 <20241112234149.GA1868239@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241112234149.GA1868239@bhelgaas>

On Tue, Nov 12, 2024 at 05:41:49PM -0600, Bjorn Helgaas wrote:
> On Tue, Nov 12, 2024 at 08:31:35PM +0530, Krishna chaitanya chundru wrote:
> > Certain devices like QPS615 which uses PCI pwrctl framework
> > needs to configure the device before PCI link is up.
> > 
> > If the controller driver already enables link training as part of
> > its probe, after the device is powered on, controller and device
> > participates in the link training and link can come up immediately
> > and maynot have time to configure the device.
> > 
> > So we need to stop the link training by using stop_link() and enable
> > them back after device is configured by using start_link().
> 
> s/maynot/may not/
> 
> I think I'm missing the point here.  My assumption is this:
> 

First controller driver probes, enables link training and scans the bus. When
the PCI bridge is found, its child DT nodes will be scanned and pwrctl devices
will be created if needed.

>   - device starts as powered off
>   - pwrctl turns on the power
>   - link trains automatically
>   - qcom driver claims device

QPS615 driver will claim this device not controller driver.

>   - qcom needs to configure things that need to happen before link
>     train
> 

QPS615 driver needs to configure the switch before link training. So at this
point, it stops the link training, configures the switch and starts it again.

Patch description could be improved.

- Mani

> but that can't be quite right because you wouldn't be able to fix it
> by changing the qcom driver because it's not in the picture until the
> link is already trained.
> 
> So maybe you can add a little more context here?
> 
> > Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> > ---
> >  include/linux/pci.h | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/include/linux/pci.h b/include/linux/pci.h
> > index 573b4c4c2be6..fe6a9b4b22ee 100644
> > --- a/include/linux/pci.h
> > +++ b/include/linux/pci.h
> > @@ -806,6 +806,8 @@ struct pci_ops {
> >  	void __iomem *(*map_bus)(struct pci_bus *bus, unsigned int devfn, int where);
> >  	int (*read)(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 *val);
> >  	int (*write)(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 val);
> > +	int (*start_link)(struct pci_bus *bus);
> > +	void (*stop_link)(struct pci_bus *bus);
> >  };
> >  
> >  /*
> > 
> > -- 
> > 2.34.1
> > 

-- 
மணிவண்ணன் சதாசிவம்

