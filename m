Return-Path: <devicetree+bounces-40132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7251D84F643
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 14:57:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D0B7CB2563C
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 13:57:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4B694D5AA;
	Fri,  9 Feb 2024 13:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CASDjK63"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8CB2E821
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 13:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707487022; cv=none; b=kn0Te40jHVEW/vCghT/9Ww/K+ozMVtKTYxJ4/N8x0duyhOSSDs+JAtqvM4J52kLAhHK+fXdmx30vk5BxFBjZl2CF+YLlYvw1+qzgKftjIO6uKcvC6tchgOFvplPgI3uxqJUn5xBEiFXNbLZ95H9hc1+RcqIw1ege+oGH5dIkmdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707487022; c=relaxed/simple;
	bh=z//pvBUqkHmpGmPuuH/kfHX3N6YFwziHPsYCpVYzl3w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AUwLPcG9K8c2KYE6wMnNPP3CP+A+p/9No4p1nWnplG5YOTS8rC3YDLhehYIFrCFtWn5f72p0ggIuKtwVTrJQ9jTK6fWi8V7dgDVG5p6QQj17HtNcRxe8dgVsVge9h/xXp3BNMyxkhf2w3DDW+Ek/NrzEB9JftQ0vCqHxrorK/kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CASDjK63; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4107d76dfa8so1947685e9.0
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 05:57:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707487019; x=1708091819; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wzAUr8FZtB/gqQ92jmcp3rLgsmu5bcmcfB5ZKvPCTAo=;
        b=CASDjK63gSugYxkyXrq3Rn719zQWps2hSdkGj31ZFiXul12AeQ2SRIsEfl42yhVO6B
         mHbu90LrfCnJt66pVYWoaklAuwRIVU/WLjNftpR9RldxNJPWDK68nqmBfvMRYxrYcF8X
         U492hL7H1CWbB3h0FhLaNxIos13JAFlSfkR8qEaeQoz93HmFwUqIKydwg6MKvMoHVOu3
         yJcBNxs+pczk4ctpJQCRQOu1k8CzV7vjt6xoxLcdQbd+wUkdr5CTTrt/x6X4KreU/a2e
         sJvGqWs9Tpur6p63mI+dhKX8bT8M3OJvrVkAECDlFNMvGVW9kkb11mQBTVS2gOW1S3H/
         ErdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707487019; x=1708091819;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wzAUr8FZtB/gqQ92jmcp3rLgsmu5bcmcfB5ZKvPCTAo=;
        b=WgeZzGMtjjX2WKp9w5E8tiv1u0d3XJ0n7+yQBTOHx3zXU2yb1iFb4go29Swb1AMFKm
         0Yk9F392I+oNdtFMRcwA0rXn1kLzJ68cw+OzGx4K3ujy502YZMalmaYHD36xEa0xEpIF
         0WHm1opP8rN7iKIJFlsgxTaL5P4nCTMiF3U2hErGyyyzkq2YIqgvl7XkgX5FiOE7Zw9i
         hPaDwzUE0Oo1pELMnb5Sbz33HBXqvOIUqzRFV0EYsCF1Io5Xhn9T2B+67GtFl/2eJ8G1
         9KMXxvmut9mgMwY9fEWJUKuqGtzK9spKxROBa6ZES88UJ/4tBvnwKv9RPor9VpEqYamW
         3POA==
X-Gm-Message-State: AOJu0YyHzwPERJ7uvK4RWJN53bYhFIlc/HWMUfC7alX9FnxMbnzKwJEu
	POiC37D6E8a0+fla1osjqxj4EQ752tTzXDVbxRLltXBearjhmfN7BOOmOy9XUbs=
X-Google-Smtp-Source: AGHT+IEQLdyh2jCb+lCGrI2nNjyBAeHm6ekGsfjlzmDpZwXFB+7GiDDq9gKjNYS8MsJewo5AjV1XJQ==
X-Received: by 2002:a05:600c:3d0b:b0:40e:fb4c:801d with SMTP id bh11-20020a05600c3d0b00b0040efb4c801dmr1298142wmb.13.1707487019031;
        Fri, 09 Feb 2024 05:56:59 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWqzdyXPQpxuboeQxrzdVEqFAjU+CVslIikEPsUW2QQfQZXYGuwwroNabViw65p+INrxFkbWKR4aLNysYn8znZWXwpiPcZJhXQaN7r82SfEfo0susUG3IoLcRzoDavxVp48t9pbrchLcyp33CQYXUs72wdhHr6E919JKxuFxf1Y5GK+pwuXg5WbNj+IM1MrLEd2nVo0n7pCdhrO+SqUMyx6AzjDFNQM/b7uW3hYlqPMkzTB075tJxSxm77z3ZY3iYGOV1dcWPqynNKaNnhNOdfL4YFhPpAJ108SgjTkKFagnCnQ1w8PWv4Pnwp1v3EcFDUKZBFN1hZmVQKRM9DgUagyNtMW7qrW+ygkR+Fa0gTeLqBL5ojuKKu7GtZm9jqg9DwD1amfLWFicbQMRLh1kcjQwzxWoadTmlA68oxQ18XQJZZ2p1tdOCKfzXZ+uZy+sP4EKQ83pcq/DGViab3cFG4/5t/C5Nk/WlxfIZIa1y9+PuqYrCc9nOd61vfneEXo/GgCL7V0TFxFHwmeZIX3pvUt3gek9gg26DCKiG0qiNIx6+CkFP4q5OyWQbppcum6/EBm7VKwrlOu5ojo2Jx6AwyQ1aqHZNHycjcKaGD4Fvww7jINzjl5/nc=
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id m6-20020a05600c3b0600b0040e9d507424sm789392wms.5.2024.02.09.05.56.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Feb 2024 05:56:58 -0800 (PST)
Message-ID: <c2b08463-cb13-4e9b-8797-8ebcf1047f66@linaro.org>
Date: Fri, 9 Feb 2024 13:56:56 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/12] spi: dt-bindings: introduce the ``fifo-depth``
 property
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: broonie@kernel.org, robh@kernel.org, andi.shyti@kernel.org,
 semen.protsenko@linaro.org, krzysztof.kozlowski@linaro.org,
 alim.akhtar@samsung.com, linux-spi@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, andre.draszik@linaro.org,
 peter.griffin@linaro.org, kernel-team@android.com, willmcvicker@google.com,
 conor+dt@kernel.org, devicetree@vger.kernel.org, arnd@arndb.de
References: <20240208135045.3728927-1-tudor.ambarus@linaro.org>
 <20240208135045.3728927-2-tudor.ambarus@linaro.org>
 <20240208-grating-legwarmer-0a04cfb04d61@spud>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20240208-grating-legwarmer-0a04cfb04d61@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


+ Geert

On 2/8/24 18:24, Conor Dooley wrote:
> On Thu, Feb 08, 2024 at 01:50:34PM +0000, Tudor Ambarus wrote:
>> There are instances of the same IP that are configured by the integrator
>> with different FIFO depths. Introduce the fifo-depth property to allow
>> such nodes to specify their FIFO depth.
>>
>> We haven't seen SPI IPs with different FIFO depths for RX and TX, thus
>> introduce a single property.
> 
> Some citation attached to this would be nice. "We haven't seen" offers
> no detail as to what IPs that allow this sort of configuration of FIFO
> size that you have actually checked.
> 
> I went and checked our IP that we use in FPGA fabric, which has a
> configurable fifo depth. It only has a single knob for both RX and TX
> FIFOs. The Xilinx xps spi core also has configurable FIFOs, but again RX
> and TX sizes are tied there. At least that's a sample size of three.
> 
> One of our guys is working on support for the IP I just mentioned and
> would be defining a vendor property for this, so
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> 

Thanks, Conor. I had in mind that SPI has a shift register and it's
improbable to have different FIFO depths for RX and TX. At least I don't
see how it would work, I guess it will use the minimum depth between the
two?

I grepped by "fifo" in the spi bindings and I now see that renesas is
using dedicated properties for RX and TX, but I think that there too the
FIFOs have the same depths. Looking into drivers/spi/spi-sh-msiof.c I
see that the of_device_id.data contains 64 bytes FIFOs for RX and TX,
regardless of the compatible.

Geert, any idea if the FIFO depths can differ for RX and TX in
spi-sh-msiof.c?

Anyway, even if there are such imbalanced architectures, I guess we can
consider them when/if they appear? (add rx/tx-fifo-depth dt properties)

Cheers,
ta


----
$ git grep fifo Documentation/devicetree/bindings/spi/
Documentation/devicetree/bindings/spi/atmel,at91rm9200-spi.yaml:
atmel,fifo-size:
Documentation/devicetree/bindings/spi/atmel,at91rm9200-spi.yaml:
atmel,fifo-size = <32>;
Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml:
cdns,fifo-depth:
Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml:
cdns,fifo-depth:
Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml:  cdns,fifo-depth:
Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml:  cdns,fifo-width:
Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml:  - cdns,fifo-depth
Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml:  - cdns,fifo-width
Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml:
cdns,fifo-depth = <128>;
Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml:
cdns,fifo-width = <4>;
Documentation/devicetree/bindings/spi/renesas,sh-msiof.yaml:
renesas,tx-fifo-size:
Documentation/devicetree/bindings/spi/renesas,sh-msiof.yaml:
Override the default TX fifo size.  Unit is words.  Ignored if 0.
Documentation/devicetree/bindings/spi/renesas,sh-msiof.yaml:
renesas,rx-fifo-size:
Documentation/devicetree/bindings/spi/renesas,sh-msiof.yaml:
Override the default RX fifo size.  Unit is words.  Ignored if 0.
Documentation/devicetree/bindings/spi/spi-sifive.yaml:  sifive,fifo-depth:
Documentation/devicetree/bindings/spi/spi-sifive.yaml:
sifive,fifo-depth = <8>;

