Return-Path: <devicetree+bounces-66820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 833E98C4CF4
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 09:28:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C4739283906
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 07:28:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3A763770D;
	Tue, 14 May 2024 07:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VFnuYnPi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140FD376E7
	for <devicetree@vger.kernel.org>; Tue, 14 May 2024 07:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715671507; cv=none; b=Qz+wXAmSYIyINczAy00KR//KtovB6PSPkzdrMqs/mErB3eypbtsTiK+VgJSljHER7Vn3bDwf1cESeTFeAIGAb2BxLT9oCIxagxZPLssoXsCznTle57gUUp5ns5FbBt6lkW8bF3BoLfbn7cTcZGz+4wYkgwFsnIrFNSnnlfQTCnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715671507; c=relaxed/simple;
	bh=MrsK/SOAFyvJ5rW6noiqY2i2AWXHF7hXaxT2Iuly1Kw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QbOkW4z+/Fdz+HqajQecD5VEY0N3K2HtOy3729/pD1Fd/9byfYacLn4TLMOwKY/bqzm3iPlc3Srs8fDVXEkfupbXkSp8xuQRyvYAv4IyUx74Ygx4L7HDUBu/+xw7xXpwx29eMvrD01UvN9oaYcNE6Pka6MPg6WPcx5KfpbgRfFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VFnuYnPi; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a59b49162aeso1304524366b.3
        for <devicetree@vger.kernel.org>; Tue, 14 May 2024 00:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715671504; x=1716276304; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JB+Z0CRSJcLUU9yXDS+6zp2SY8ySyHlLC8dbiqLhtlQ=;
        b=VFnuYnPijUKB5OvXDY4k+InVPo5hmPze9ahmz5tkhJUqO7fsoeww5VCnnSCFttYCwU
         zcRnuUzTc0WaHbUp03SF28XAAbAaMvDY77hYTr8pVB2nCUfgwtZmN3hb7S0uNp0FrE4R
         ogOw1rNBSlcUrt6HzNMJEkq1qwAANH0bZMLBpyPvJKg6NdkctCoNbx5ieROcTDHE9ZOK
         OYbZ8tvx8YLKE/mHQ6yz4+kg/ch95kQuL7LmmsSZcuUg5VemintQU+s42IkTSIAbcZvV
         CwBdjJrFz1/eroLQ78WGb3KhYpTLgy7vpJXolTI140gMdYwsmZKxccYLggzpmEgE/Kww
         oKNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715671504; x=1716276304;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JB+Z0CRSJcLUU9yXDS+6zp2SY8ySyHlLC8dbiqLhtlQ=;
        b=Yl/T+BuGtjAT5KxW6qF7K43SAHDRNldZPJfv7hKL0NpGKQ/fDYhKuA5uDI2mnm9Pch
         VaUmbgevFfYMQGysFPeqAGI3HEledh4EVzj2Qb2/QcpfxYzkCMRShHZYfQJyoNElXDNh
         xu/UtQZVmobmIAgWa58LDdR1R6CQylaDaamjeGXC5TE1shIG+FctulpuGj53Hkm+cPpB
         oh3bMDWCaLKgKOb+0oEI9ZONk7Fqs1RDoloI9JT07uQX1BilqnS+PqPDFdgqB1A5WwrG
         yL1omhVV+op3C1NeQbuosI/rvjx40FYxrMkDhpXQj8BX99Gw9UzA+hb86JrrYJhjajga
         sW9g==
X-Forwarded-Encrypted: i=1; AJvYcCWi90EeHWuAgpj0P5NUyLz9MxQ/x8tFnTdjkVOfYNu0gW1ks2xQr3hqOyRvBZtFYvLXRIW8zYyBHlBrhbWhvk6aXodXo6kwBb4t8Q==
X-Gm-Message-State: AOJu0YwGTW2Ah1koB6Pu+SN96CMu3/HwdCTaKZUx1FW8+eBubiW6W//8
	J7HMis0AYzdN6hxutWP9HByVsE75qWRSW4UnYGJ5MyFYasKifNDlGs6QLN8sFQ==
X-Google-Smtp-Source: AGHT+IEQTQ5t33iG1QpTljAk13ZjKCJq2arLVGhz/pfUDhGt2rL8ANrYeLV7xamqA3YFh7dM+6YrzA==
X-Received: by 2002:a17:906:ee86:b0:a59:aae5:5840 with SMTP id a640c23a62f3a-a5a2d6759e5mr1063776566b.75.1715671504270;
        Tue, 14 May 2024 00:25:04 -0700 (PDT)
Received: from thinkpad ([149.14.240.163])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a1781d2ecsm703097166b.16.2024.05.14.00.25.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 May 2024 00:25:03 -0700 (PDT)
Date: Tue, 14 May 2024 09:25:02 +0200
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: devi priya <quic_devipriy@quicinc.com>, bhelgaas@google.com,
	lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
	konrad.dybcio@linaro.org, mturquette@baylibre.com, sboyd@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH V5 3/6] dt-bindings: PCI: qcom: Document the IPQ9574 PCIe
 controller.
Message-ID: <20240514072502.GA2463@thinkpad>
References: <20240512082858.1806694-1-quic_devipriy@quicinc.com>
 <20240512082858.1806694-4-quic_devipriy@quicinc.com>
 <b3199f40-0983-4185-bd0c-2e2d45d690ad@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b3199f40-0983-4185-bd0c-2e2d45d690ad@kernel.org>

On Mon, May 13, 2024 at 08:48:19AM +0200, Krzysztof Kozlowski wrote:
> On 12/05/2024 10:28, devi priya wrote:
> 
> >  
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,pcie-ipq9574
> > +    then:
> > +      properties:
> > +        clocks:
> > +          minItems: 6
> > +          maxItems: 6
> > +        clock-names:
> > +          items:
> > +            - const: ahb  # AHB clock
> > +            - const: aux  # Auxiliary clock
> > +            - const: axi_m # AXI Master clock
> > +            - const: axi_s # AXI Slave clock
> > +            - const: axi_bridge # AXI bridge clock
> > +            - const: rchng
> 
> That's introducing one more order of clocks... Please keep it
> consistent. The only existing case with ahb has it at after axi_m and
> others. Why making things everytime differently?
> 
> I also to propose to finally drop the obvious comments, like "AHB
> clock". It cannot be anything else. AXI Master / slave are descriptive,
> so should stay.
> 

+1 to drop the names.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

