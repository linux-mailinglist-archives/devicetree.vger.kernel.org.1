Return-Path: <devicetree+bounces-79356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E1284914F79
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 16:02:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6691BB20E2B
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 14:02:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2EB6142621;
	Mon, 24 Jun 2024 14:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zm6B3DvT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A0F13C90C
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 14:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719237743; cv=none; b=XIiyOY8yGVW4rDuC2erW8tlElXsW+fjWS7RYy6k1k2dXefZEXmZO3VobMEgPmA+YOF1DYErTY6r1UMEvYbtEhoJ6sPjqQxBYenZTRT5VDZdPMjj68utiXX6JmRoq4gYJMz6HT//sHsayffnbe22DpZYc+R3srfQUHT7EoP7qMAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719237743; c=relaxed/simple;
	bh=AM1CVy2u7oBZg3LZSOUlvoSnipYQvGJHEJnrE5Vt0Y8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VLnx+sOgE9WXKABMp33gzL5l6oaxhyXBuWXwPwarNVJaT+zH3vkxtiCFS0aFHtNpfjL42UbfLOuO9fpQeuFsEfiGu2WBrXukUVakOa5D+VfMLaO/yrI0HvO4reSL/TKRlzVAYrvsGCl6eNfiHxVz2WwKIT3ZG8LUQ169fdOEJgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zm6B3DvT; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-57d0eca877cso5093581a12.2
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 07:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719237740; x=1719842540; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZGiCYhVDIuHQY8nLb7I5dZxX04zWqpJLvrAyBZeObqs=;
        b=zm6B3DvTLuu1LN2NZLHXMExdRUJjhTq4zEyBl+3ddWod92E6uUBE2pEpyfn3nagS4t
         1YE9lD51xh1MVD/ZX5cK61SQ++VAwj2/S93vUF3DGBczip6ebGOLiWjKc7Mc3TKWfFv6
         FCQ2UF1R3IwDS4N5OETD6i89Tn748lWbGADTCCdPTiKj63D7x91Sng7HFqtsWI7OP3Ki
         nMim2zLzt6eSkM7aY7WJr9D6OJPrLVjpx3NnQM5t5OP5Cw9yiBpipSypAVMA5LhFXThz
         jG15LlSWrzPhdJePzE3rHSbGMirRLTL0yaCDzfL55h0j8OQq5tk25aDK9c3+pRpVTT7v
         9htQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719237740; x=1719842540;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZGiCYhVDIuHQY8nLb7I5dZxX04zWqpJLvrAyBZeObqs=;
        b=jQPyPIcPCZIo54fgvcszr2KBJrYR6zR9e9u+q2M+pydHqvwSBb315Os39iwqsArMHR
         8O8tFCYecRRLxp30JT3mARdw5HtQnZDxC/zcO57CdXSe6CY9yKZ0CdSMNE+kJftnegKr
         nVpI2yuAY0oOjiEp/h8RKzpvXi6ETkyc6lGzfiUfVjFi+A6rZXz25wlLuYaIO8FVfuCm
         3gdE/NDOiVU+kNXBxnqkUZdhkgXOp94yTZrhY4euAv19KWeu9wNUezxCh97vho1U2LSE
         xTl2/uIsYY4ysuVLeQon7yqXya18vyQBeoN9qKHbrSX1uUZGFYOZFMdATxilnhn9iF/J
         6tvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUvw/4flPSZ/txqg0eWShNs4UuoNKmkjAWh1Pa+Oskx97z4kjw81zTW88w51rtnhc2IBiDnKeNtCo0h5hyj75gQxhyfx9FKR0sYkA==
X-Gm-Message-State: AOJu0YyC/+fUHNpMemm7b7v3x4JXMIHCjMhhkqnDA7i+G8gSG2b9vEqc
	r1/5LKXX/wycCYLAUOlRRLyFOh3IYSX0QGUY5VD2vdc7M+6RtHZakX+3Sc/4He8=
X-Google-Smtp-Source: AGHT+IF1FcxvB/vQ3U+UXkATvxTmtFEqMS6hASlVmeKEFS9T2PngpjRUDM21FdvvI/EDu+PSVB/YYA==
X-Received: by 2002:a17:907:a08d:b0:a72:6346:65ec with SMTP id a640c23a62f3a-a726347852fmr57111366b.67.1719237740109;
        Mon, 24 Jun 2024 07:02:20 -0700 (PDT)
Received: from ?IPV6:2a00:f41:c03:9198:7df:6a16:3e8e:ed7b? ([2a00:f41:c03:9198:7df:6a16:3e8e:ed7b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7169b12999sm266286466b.95.2024.06.24.07.02.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jun 2024 07:02:19 -0700 (PDT)
Message-ID: <cb32274e-31a9-4777-859c-54e90889cc98@linaro.org>
Date: Mon, 24 Jun 2024 16:02:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: x1e80100: add soundwire
 controller resets
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240624-x1e-swr-reset-v2-0-8bc677fcfa64@linaro.org>
 <20240624-x1e-swr-reset-v2-3-8bc677fcfa64@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240624-x1e-swr-reset-v2-3-8bc677fcfa64@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/24/24 15:32, Srinivas Kandagatla wrote:
> Soundwire controllers (WSA, WSA2, RX, TX) require reset lines to enable
> switching clock control from hardware to software.
> 
> Add them along with the reset control providers.
> 
> Without this reset we might hit fifo under/over run when we try to write to
> soundwire device registers.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

