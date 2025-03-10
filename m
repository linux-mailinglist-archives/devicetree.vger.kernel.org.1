Return-Path: <devicetree+bounces-156130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4ABA5957C
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 14:01:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7C162164209
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 13:01:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 188E32206A3;
	Mon, 10 Mar 2025 13:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="thVZ7y/t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF811ADC7F
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 13:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741611676; cv=none; b=Mpjg0TJznsDvyYu46jDrGjodrQVyuuLVqd4/IC+uaZOJxThEYTLg/xPBuO/sef/+hSIpoH0Un7PJHWms2UhEMm0+BsrOs6ffoD12UHaNnsfjJPIccvfxDiQzakzMGguBnSdZfyq7keX6Mie2pfunrAWEERfGB/fBkfOrp5LmFFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741611676; c=relaxed/simple;
	bh=3lN5+BfPNzt/PRcWXR7VK1qyPNf8ZL6R30Usr1SN7bw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZzffN+hitxt3OHWax6wMX9mrKBr1T5jk6PG4o14ZX30ExuvAvDZkmOyWHT02vFo/w4FxWXiKcKYaSEqyZlC8fNeQ6bjr6bu4psNBj1cW4WhmaRxzvjoPhbzh0t0p35IXmv2JS3Ib0SpXECGNs+8WWl9KtI2J1STagNbIsLkYBqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=thVZ7y/t; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-38f54938d1bso188358f8f.2
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 06:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741611672; x=1742216472; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=HlsuE7t53NZzZ0wDGhZZr2oEBno/EImMG482gZFTymg=;
        b=thVZ7y/tS4d0Q1tU0NOIOL1bH3fXf4cZTnE41HPZtgEheyG4xTh12CVcoSqVx2OzpB
         krtNAu3p5fUdfDMh04GA/rOc9/bHm8tPFW+6gZfFEdK3RkxbJpNYZjbOc1QBhOeN6xfq
         bEgQkOICBttHY1w2lbqBt1SiPQHRISiphETlmlgoowWctY8aOtIY30gPV15c2x+hp4Se
         T3GZPeYQx/WDWgMu1XMaj3oeLDdRZp3wleQOEcRW6Juyghp88jpN5tbcrnOcqnJJXOv6
         XcfCkyfbk8IUkGpIKXIRHbjfUT3ZkO7K2V8OqQHO+okFiuWH+vkKDpCOZuqWIK9LEHzz
         bzCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741611672; x=1742216472;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HlsuE7t53NZzZ0wDGhZZr2oEBno/EImMG482gZFTymg=;
        b=izzwdRj5Bi41huDOPmsgG4EPB5A2v6QvJdlRELiwU8j/isDMePrjBDbiXnnxvMDcxF
         qcy6KSGdzJUXzKCHT6tCoW/rbRCZVPg2QfOAyGyvXtOFEo92A2K+stgF4Sp7zsg0ZUs4
         aVuY4HrL4W0em5sOxf5RwAFq0qN2/hgYm2xjkDsolZZArkLhxXbssEzxwq6MKW4wn01x
         qGx7QY6S4ahBrox9nGmhEaH4geOKOyP8cL/15p39Zr6fLXfq/Q2H+yWJzsSmiw7FuLPc
         gzlZMLwZggou6vwsXTaucfG6pUdg3FIhc/hSLP7VxhiPrPa9cXwJVnlmaazsCaP0BAek
         9u+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXaazqnY8L15kOCwi4aNeCUS+ZCIBus43FxrfUxYaA8aKwkrCjn3wZk87LYXH2tLGSGCoSijWdUbMt0@vger.kernel.org
X-Gm-Message-State: AOJu0YzApS3SVz5TD40aTpJt2YFm3iVsY8R1gtbTHQwpYRwpzwh3tNsU
	M36S69EPIE0hHrZ7RQ5FrzQv7b8kfJpErUZ3HIpmwnR9rNaBZ9oI/C/rsYLWPyQ=
X-Gm-Gg: ASbGncvyMpsELrKPA8Zxy8N5saLj+o6adaeBjaQJT/NomsZ5a6Pdyud0soYsEwAeeX0
	tPVyXAL4AydydO76qNmbGSXIfjgCbvsL28WtzOCwlkrSfsY7jA3pYMbYh2oGMpXovOQNSlKXgnO
	OQP1PstZ0HwJ9LLpYBxLX0y9GaYgyL2Iu1D20J7znrwPdDtr0iJ0HlG850ScQP7O9Q4YvcpSPYU
	2m7DZIMO91CjirPdGacOTiegFGjin5FOpg9TP4ME3uQOEQmOE/Nm6C07F7j6ckIGbLt8MZw4anJ
	ltuixGKyYqmQGgeRCertz+6BcYSSbU/tJ0othD7MHsF5xzo12jf+fgxeHMwIcxuG
X-Google-Smtp-Source: AGHT+IGThF/oE6er57BVGHZ3xBExtCTka7vK/Zsnc3bChjxloDZ87FlC6wAo7pcYka4DjJ5O1GSEag==
X-Received: by 2002:a05:6000:4021:b0:38a:8784:9137 with SMTP id ffacd0b85a97d-3913bba2527mr2202801f8f.9.1741611672414;
        Mon, 10 Mar 2025 06:01:12 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912bfdfe61sm15104114f8f.38.2025.03.10.06.01.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Mar 2025 06:01:11 -0700 (PDT)
Message-ID: <2e04370d-2950-4703-9056-916c4a6c06c8@linaro.org>
Date: Mon, 10 Mar 2025 14:01:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: PCI: fsl,layerscape-pcie-ep: Drop
 deprecated windows
To: Rob Herring <robh@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250307081327.35153-1-krzysztof.kozlowski@linaro.org>
 <20250310125304.GA3881079-robh@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20250310125304.GA3881079-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/03/2025 13:53, Rob Herring wrote:
> On Fri, Mar 07, 2025 at 09:13:26AM +0100, Krzysztof Kozlowski wrote:
>> The example DTS uses 'num-ib-windows' and 'num-ob-windows' properties
>> but these are not defined in the binding.  Binding also does not
>> reference snps,dw-pcie-common.yaml, probably because it is quite
>> different even though the device is based on Synopsys controller.
>>
>> The properties are actually deprecated, so simply drop them from the
>> example.
> 
> How are we not getting warnings for them? That would be the bigger 
> issue. "status" shouldn't matter.
If I drop the status, then I see warnings, so the status seems to matter.

Best regards,
Krzysztof

