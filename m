Return-Path: <devicetree+bounces-122919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C31739D2C33
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 18:13:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 88B3EB29ADD
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 17:04:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C5921D042D;
	Tue, 19 Nov 2024 17:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DNU2Z6tp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF6013AA35
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 17:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732035869; cv=none; b=Jzd7LWf0timVoQlZroWh+n9ihKZ+wAkbug2Ksq8xmmeZSlnFjJXjZwq5rfQPZuOtBt+Km1bLjY9oB80tkTw0gkYtTxfhhAHnaZ0lXs06X/j0d7BPTa9FfPve3PRE4jaAQvaZMVlvNjbqTcEKF0l7g7tdgupO79zCLN0DGpFdy3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732035869; c=relaxed/simple;
	bh=JLSO53zWiRurLZgkEVkHh6GEFG2ijbePpRs42IOEJIA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HxnBC7sYngrjpcUTIJf0Wz7URWX1LZUiCEYAjBeVz/zqdcWF0W+6RcBTUf4ZN9nIn2sybQCBLxj52E5JpxPjijxp3BaAC5Zck7F3kP4rnpBAV4TVh2GmYkloZkxmQlOzrbMk6DRxfWHEFSD5PFQG3FhcQMYrSmVFYiwhzrmTD6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DNU2Z6tp; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-7f3da2c2cb5so860669a12.2
        for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 09:04:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732035867; x=1732640667; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=M7G/ON1XPIM+nLaKFx55E9lPI7ZbdMAymv55tloDTzs=;
        b=DNU2Z6tph4gXZ6GeQs3i5WDgwQe5UABY77XB+UlSjyZ+p8pXxKIa/EBXcARqsd+lm6
         jMVef+Z7XnssZnE3n/GFgESV11awty+2Xe4NGUrVLkEjrfmJYR0SnA9AmJVtFaCwQFmg
         vi0afBbqkButXEXz5Wx3CCD29xE3pi+OT5iW7ceVS1+WoSgWeeNAKfgH4BUM94zIJQ0Y
         ErMotzHI395L8a6ZaogXuzlFBjlg8nMSIZPEZjKljd+96B6BnJroBIsBqvSRsLFOHJ6e
         A4eFBjR0KVj3C9brQKRl2ppHK0WYksUqm+AIUXA9zWmplQKpAX+aNLSAxOhGYyzR+eam
         ylyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732035867; x=1732640667;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M7G/ON1XPIM+nLaKFx55E9lPI7ZbdMAymv55tloDTzs=;
        b=LYtfMKnonsY2nbIaaK8TgJeG5USVehbfgJhAtFDFKRGXvA6THZyP6VqpkxqC1WNECU
         P2VCA80mbmwGRG07f8AgSgLxb7p6gHGZ+ZMcSAyQlKCg+7Sb+hAIyZxQ7zVYILBn79sx
         fx+BGRvoD2PWFLTjGorOAGKXHlsnHlluX/a6NOSipeEoM642212LHT8VX4OX5RQMp8M4
         e+oE/P7i7A0AJCu4meVf6ZaPPlEMhqrgqXXCK6k71Z4Gz9wI2vZvBlm/x3WgIhsEpoz8
         O17a8LJOdM9WxbvCIOi9BG5SbXXGyKHmHNaz1JablU7SapxFtkGfFh+grReLMwS8dhLQ
         FHfA==
X-Forwarded-Encrypted: i=1; AJvYcCWRP1b8wyX+5TKDmY/sd5elVl+pd4THY8M1dfMu0CyuWGQZdOCjNzJZnH3O7m2rwfceYHs1iX5z1laR@vger.kernel.org
X-Gm-Message-State: AOJu0YwOa+i8QtEvtz7MF6/Dtgr5KyImulCtpLnJ9kVL9nuLEvch9xg4
	yMtIHQ4/WDbHjJEnQuqpfKHtJR9W19TLXnWtfspelH+PKkcldqDICX1ChrTrtXcpVLM9Z0u0z3Y
	=
X-Google-Smtp-Source: AGHT+IHKqW9avdg6R0UhtuehadqqtqXGT50NzKijPuK4my4mXXocf1FJrKvkRfDHMzoWI6jjr0c1pA==
X-Received: by 2002:a05:6a20:7491:b0:1db:f89a:c6fe with SMTP id adf61e73a8af0-1dc90bde9e5mr25294921637.32.1732035867078;
        Tue, 19 Nov 2024 09:04:27 -0800 (PST)
Received: from thinkpad ([36.255.17.169])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7f8c1dada40sm7961710a12.61.2024.11.19.09.04.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Nov 2024 09:04:26 -0800 (PST)
Date: Tue, 19 Nov 2024 22:34:21 +0530
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
Message-ID: <20241119170421.xxku2gkp3wea2xvf@thinkpad>
References: <20241105213217.442809-1-robh@kernel.org>
 <20241115072604.yre2d7yiclt5d3w5@thinkpad>
 <CAL_JsqLkVUSgL-r1YvdSOTQGeN0r4Co=NRxvX1WL6q6yt0zN6g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_JsqLkVUSgL-r1YvdSOTQGeN0r4Co=NRxvX1WL6q6yt0zN6g@mail.gmail.com>

On Fri, Nov 15, 2024 at 08:07:07AM -0600, Rob Herring wrote:
> On Fri, Nov 15, 2024 at 1:26 AM Manivannan Sadhasivam
> <manivannan.sadhasivam@linaro.org> wrote:
> >
> > On Tue, Nov 05, 2024 at 03:32:16PM -0600, Rob Herring (Arm) wrote:
> > > "#interrupt-cells" is not valid without a corresponding "interrupt-map"
> > > or "interrupt-controller" property. As the example has neither, drop
> > > "#interrupt-cells". This fixes a dtc interrupt_provider warning.
> > >
> >
> > But the DWC controllers have an in-built MSI controller. Shouldn't we add
> > 'interrrupt-controller' property then?
> 
> Why? Is that needed for the MSI controller to function? I don't think so.
> 

No. I was asking from bindings perspective.

> Now we do have "interrupt-controller" present for a number of MSI
> providers. I suspect that's there to get OF_DECLARE to work, but I
> doubt we really need MSI controllers initialized early.
> 

Again no, for this case. I was under the assumption that all interrupt
providers should have the 'interrupt-controller' property in their nodes.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

