Return-Path: <devicetree+bounces-122928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6556C9D2CB2
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 18:32:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B27B281162
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 17:32:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F9F91D2211;
	Tue, 19 Nov 2024 17:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VItAAjeJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A101D1F78
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 17:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732037520; cv=none; b=qyXWdpB1+8kF9DuI/Iw4WVRhB81hDlcMuXOgKxALLyBSpW2FIhkU3B466bQzvKHbZyiR4JpkE5BXNTeXgkN/tPB5NGMX3Pc+A2dWjxTeU3NCWh5fqD/TZ08gazHabUmfbAFsRkJimhuFFTskNXcNrBe9bwhYoe0kzkIQejVauNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732037520; c=relaxed/simple;
	bh=QfIxrMOmazyFs/e+D25EnawDdnj+7EAS0FJHIdrqxlc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hfEwt+stV9Oj0b2PRCiWQLSrX4TPB4CuNy+xdHLCpSdG5kpyg5pDEQ9MaXJTpNyNMC9wYwcUOduVtY9A3K6O2wz0+AOOamjlF52y3ID2FK7i4r8hQyyGvgpq3E6y1oX/GKhNybfoL/6fI57AWbq65yiJ2oL5chj1OT++ZtRhPog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VItAAjeJ; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-720b2d8bb8dso891315b3a.1
        for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 09:31:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732037518; x=1732642318; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KwTcGxplz7y8Tpkhc5KcBHDxS8clk2MXzuGTPOahnFE=;
        b=VItAAjeJRxBG8CMrl8NHvA2ucONWmCmEP7xzAEqG7y3EosYGULtKaBvZjl6FuzjT9T
         UvomVb9cEBoMweOLTkh8bVghJ7UkN3kYW/3fpTq6LDmUNVqS05RFhNLhdM2GytQEsapv
         YaWXZWvyQUXoZIDrz3YqdDeNOIJIEgo/Ri0jN2escjbcmcZogJQnnRn+Qyhg0VxDXFEJ
         jMO7H3v7LzdVH8wWQ7X92dhTy75Yc3N3pZXZSYHviqbThlLLySmKbYFV80C1qzmLSbHM
         sfHMk/SKJhgNGv9NCIqAjP+1bpYnUgPibXgjqLh6l/3AslBx2m2m6WzUIGnYvpjimEcs
         5zwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732037518; x=1732642318;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KwTcGxplz7y8Tpkhc5KcBHDxS8clk2MXzuGTPOahnFE=;
        b=dIEv0iHyOUBn7dH6oQTDDtvLjis/xWBP0lVwqaxvRB7MaJTQKiQMTqomsAzCkdzuQB
         4bfeVeZvRqvUurYEjkkYfMMZ125/XQWBlwxDkWzEjDvA8vNWDYA95rQy76UFKRB+/jml
         nvMjU6IztwOeii3wI6iSzNFF62om7spfJxhqmC0WRoHUIp3FXDRGej8mHCFRcvwhPJN6
         6d7vzJ3Myg96+/9M1RgZ/iShWmGArLNcxnJtI8wvEyR+TNend7PjJ/iWVP3sx6RVcNhP
         TnCvd49DqYprP4mQe+hgsv+ApTrpERHDBDKp3HLoalwXB8P364vCuQyyB/L828gon0bk
         UMyA==
X-Forwarded-Encrypted: i=1; AJvYcCXpRqSlRWvoKQy2juqn+Q4cHnZAM9uYep2Z4l6XgQB4Rb+4RBYTQODRfyJGR9SIiOQt2MPdjjoLwk3Z@vger.kernel.org
X-Gm-Message-State: AOJu0YzgYgcPydSsoH9q63TXVd9uzen6aY/LmQrZeOxasKfJ2y9ZVoPD
	ABk8OlpJKguSJMxxleARKbN5Ib/iTKGBY1U/0CIgtQdM+GGopUCv76qs61u8AQ==
X-Google-Smtp-Source: AGHT+IGK7H8+fgj9UeDSfqMQyume2qlnugSzSPb3TB4cEjQyLFhBIAnXJg3Zidimom709I1j9QJrGQ==
X-Received: by 2002:a05:6a00:189e:b0:71e:4c20:75fc with SMTP id d2e1a72fcca58-72476ba91camr22859258b3a.10.1732037517751;
        Tue, 19 Nov 2024 09:31:57 -0800 (PST)
Received: from thinkpad ([36.255.17.169])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-724771e140bsm8368297b3a.137.2024.11.19.09.31.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Nov 2024 09:31:57 -0800 (PST)
Date: Tue, 19 Nov 2024 23:01:52 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: PCI: snps,dw-pcie: Drop "#interrupt-cells"
 from example
Message-ID: <20241119173152.32l2dozjc2xfreso@thinkpad>
References: <20241105213217.442809-1-robh@kernel.org>
 <20241115072604.yre2d7yiclt5d3w5@thinkpad>
 <CAL_JsqLkVUSgL-r1YvdSOTQGeN0r4Co=NRxvX1WL6q6yt0zN6g@mail.gmail.com>
 <20241119170421.xxku2gkp3wea2xvf@thinkpad>
 <CAL_JsqJY43z5exVft4vYvbrMSoVFFD4E7KVJ+isC1mdQ5H3=CA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_JsqJY43z5exVft4vYvbrMSoVFFD4E7KVJ+isC1mdQ5H3=CA@mail.gmail.com>

On Tue, Nov 19, 2024 at 11:26:57AM -0600, Rob Herring wrote:
> On Tue, Nov 19, 2024 at 11:04 AM Manivannan Sadhasivam
> <manivannan.sadhasivam@linaro.org> wrote:
> >
> > On Fri, Nov 15, 2024 at 08:07:07AM -0600, Rob Herring wrote:
> > > On Fri, Nov 15, 2024 at 1:26 AM Manivannan Sadhasivam
> > > <manivannan.sadhasivam@linaro.org> wrote:
> > > >
> > > > On Tue, Nov 05, 2024 at 03:32:16PM -0600, Rob Herring (Arm) wrote:
> > > > > "#interrupt-cells" is not valid without a corresponding "interrupt-map"
> > > > > or "interrupt-controller" property. As the example has neither, drop
> > > > > "#interrupt-cells". This fixes a dtc interrupt_provider warning.
> > > > >
> > > >
> > > > But the DWC controllers have an in-built MSI controller. Shouldn't we add
> > > > 'interrrupt-controller' property then?
> > >
> > > Why? Is that needed for the MSI controller to function? I don't think so.
> > >
> >
> > No. I was asking from bindings perspective.
> >
> > > Now we do have "interrupt-controller" present for a number of MSI
> > > providers. I suspect that's there to get OF_DECLARE to work, but I
> > > doubt we really need MSI controllers initialized early.
> > >
> >
> > Again no, for this case. I was under the assumption that all interrupt
> > providers should have the 'interrupt-controller' property in their nodes.
> 
> Yes. What interrupts is the DW controller providing? Only the PCI
> legacy interrupts which are optional. An msi-controller and an
> interrupt-controller are 2 distinct providers. An MSI provider is not
> an interrupt provider, but an interrupt consumer. Some bindings define
> both, but I think many of those cases are probably wrong.
> 

Ok, thanks for clarifying.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

