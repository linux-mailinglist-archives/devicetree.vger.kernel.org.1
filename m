Return-Path: <devicetree+bounces-112801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5239A38B4
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 10:38:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BFE631C23D09
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 08:38:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 013C318EFEB;
	Fri, 18 Oct 2024 08:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VS6B8UE2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1C6186E3F
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 08:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729240720; cv=none; b=FURuLWmtabTGI9nEuXMbitSvFb03gmj5V8pPGf7LF3LuthkxgMXUYUGGvksj7XvX6hcz51Zqx1NItGMsIuOdAj+azDDoFniABADmnasBgpD7JOeXxO9vWPhZpmqbAdwHY5VpI0JXM/jCIhQGJYfRSzch6uJ8zQpisiNeHQf1u7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729240720; c=relaxed/simple;
	bh=wB6rJgDXWyQmAI2cPIO2Bs8AyLymaUBqEb0titk5ToI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ldJ13FlC65j+Zj3QsngALTCOP3TGVT8lGkI/NmYgG0rboZ53mlpQoD0ebG5mm4OWs1Q/Xwh0DuQ7Fxj+LELwXFQQMROxANDq8kvts9YOIiZzz8UFzm4iHF+4SMQ9ykYyjMmO8wfIQXDJP/3J5yr2EdmkRIV7zU06im8D4CTRqpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VS6B8UE2; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539983beb19so2095571e87.3
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 01:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729240717; x=1729845517; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9UrD9uUISUicyV77FCZtIHadfgQC6lKYurkwJjq1HNE=;
        b=VS6B8UE2yJQB/j770cxZNF3J9A0Rijdbo55TMaEzF9kjxOzRL2fJB5dkyjv41n63v8
         yehFP+wA3UWXqKbqQBeg2n5i2HN9fOPSNmF5qia3CH7EOdotkgs92v15zctn9vV1RicM
         dDK/H5V3ZQk1bWeTLZnw9ji6FFaGglcx1kzF+pEinf/HDeItXGmZeiMQUEsAE2EzCjpA
         gUOp6+09GrkAUUaWr9P7w68WYWz0fVvXfSunMTDQJXquI4juCpWZTN8uZo5kblSd5pli
         Q7swVZpItnfTv+uJiKBGyIUDSrtwpRZKJcG1VYsIAzEp/yI42KJFCu9/EogprbTfbhC5
         usLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729240717; x=1729845517;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9UrD9uUISUicyV77FCZtIHadfgQC6lKYurkwJjq1HNE=;
        b=oRR3gPuYLTpCxxzudSrrrgOZdUigqzL75qz1Nw0s7kBfTgoZtYji2H2zsF77P04Q7T
         a5cEzL3OgquyZYhItIdCvHxT+WRBcx2OGMb3qY3kKUBZewoATEjh1WkIDFqrsr9UFNwh
         nV5TYeNgrJa7UEyAo3yVUHm2Q05s0LEceEThzWasMyTanKqIH+fSRgCbIG4Y4JXRqy2u
         Ob/RJy8/CE+HoDlXSAPzSKL5JyZwQMjAyQafEv5uuPo/XyUWOvyQ1Cgmt0zqlG5UL0ML
         M7wqXVfZ4WCyP9FrG6Fpb7HFv9SVqn7CkE6XobuARUV5o5YjfVDgH8pix/qQblEIe/rF
         p/Pg==
X-Forwarded-Encrypted: i=1; AJvYcCVP34PtZh4CNCyR2QPAtikPW3YFCUy0mesGaTc4x4BhGmZRyXDv7uyxtZP4A3qWRDthc33KxGhcu8hA@vger.kernel.org
X-Gm-Message-State: AOJu0YySLvx4IEQrbPxtNSNGyqrkOCSR9NcsdEt9BsrlH+zeGpf7TG6h
	NNxLf9A5K3je3QoiGVq3J89/xmfNL2Sl0UA130o76vS211c6BC5uPudUdl5n2dk=
X-Google-Smtp-Source: AGHT+IGmgQ9MMDeNrBBU/z3b8S19gtWOFXt5jhyrSbyAR1fhQxWW9GPqe1/RawVBBM8MqhrGoQEi4A==
X-Received: by 2002:a05:6512:12d6:b0:53a:aea:a9e1 with SMTP id 2adb3069b0e04-53a154f9c46mr819940e87.54.1729240717149;
        Fri, 18 Oct 2024 01:38:37 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a151f0c7csm158587e87.173.2024.10.18.01.38.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 01:38:36 -0700 (PDT)
Date: Fri, 18 Oct 2024 11:38:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl : qcom: document SAR2130P TLMM
Message-ID: <ecdp4bkbpkdprzfvrve4jlpirc63ruejr5cfm5tkqkq736p7wh@ibqjbq22nvve>
References: <20241017-sar2130p-tlmm-v1-0-8d8f0bd6f19a@linaro.org>
 <20241017-sar2130p-tlmm-v1-1-8d8f0bd6f19a@linaro.org>
 <u2yel7ych7esqlr732x6x424rxcolb22k6fgw5t6yyuurgneyf@5hnqyc3iqdvv>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <u2yel7ych7esqlr732x6x424rxcolb22k6fgw5t6yyuurgneyf@5hnqyc3iqdvv>

On Fri, Oct 18, 2024 at 08:49:09AM +0200, Krzysztof Kozlowski wrote:
> On Thu, Oct 17, 2024 at 07:15:45PM +0300, Dmitry Baryshkov wrote:
> > Add bindings for the pin controller (TLMM) present on the
> > Qualcomm SAR2130P platform.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  .../bindings/pinctrl/qcom,sar2130p-tlmm.yaml       | 138 +++++++++++++++++++++
> >  1 file changed, 138 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sar2130p-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sar2130p-tlmm.yaml
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..a8daa96936599e459c801b6685a42659271604ee
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pinctrl/qcom,sar2130p-tlmm.yaml
> > @@ -0,0 +1,138 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/pinctrl/qcom,sar2130p-tlmm.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Qualcomm Technologies, Inc. SAR2130P TLMM block
> > +
> > +maintainers:
> > +  - Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > +
> > +description:
> > +  Top Level Mode Multiplexer pin controller in Qualcomm SAR2130P SoC.
> > +
> > +allOf:
> > +  - $ref: /schemas/pinctrl/qcom,tlmm-common.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: qcom,sar2130p-tlmm
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  gpio-reserved-ranges:
> > +    minItems: 1
> > +    maxItems: 105
> > +
> > +  gpio-line-names:
> > +    maxItems: 156
> 
> Don't you have 210 GPIOs? At least reserved-ranges and pins pattern
> suggest it.

No. I will fix the pins pattern.

> 
> Best regards,
> Krzysztof
> 

-- 
With best wishes
Dmitry

