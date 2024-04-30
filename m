Return-Path: <devicetree+bounces-63900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE938B6E83
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 11:36:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7AD9DB23DCB
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 09:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 257D9129E62;
	Tue, 30 Apr 2024 09:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o06Ii+CE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735B11292F3
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 09:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714469756; cv=none; b=OvN6nQMMtEu7eWmoCfFeIcF6iYX9pN3UuyiEJDGgFZKM5Nj/RPjAXWCc7XTD03gEAZp2vDcgMrzDIU/vNlMGsY12MITI/tnyDxsEjDgWGIjY699q33dFzChWblBCA+DjPyPcrBDjLLuO98l6TOQ++tTT46Gh4P0W7wCksHxyRUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714469756; c=relaxed/simple;
	bh=8PmFHibtiheDakcFOeAVMKCG5ekxoLcxc7oTv8LL+l0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E+9RHjrri7y/BWdqg+HAKEyWXa9dXYFy0nls9TDHEnIQ8e410O6VpyTKnhCWcEFXzfsUDHuEoYEUEtEEPYtSs0WUkUFqenAGggCu4t9HLK92lM079KTlzuWsC9c+9HKNj2X3ZMznqLLM6X36jje+/krsi9cQ+aJgPe5nUncbv7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o06Ii+CE; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a58e787130fso485920066b.0
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 02:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714469753; x=1715074553; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=l6OP6UMIGuPuXOxnGZWdqmp2g6zw3irzbWHGu1N7wL4=;
        b=o06Ii+CEyNFxextaUxMOuY+ay2smsWM/+l8p4gFhHs77po+Q47+ItkHtNWgqhPnNuM
         mGz2SyoqKlPkJy7CH/uplxjaV9e11y0c3niwu4b8hkgDuCHOILtx9MFp5gdjEVIrXoIX
         9MvOdDMD9Lh4XOkzKFhIwvATllqyuHbpSH6mefvEMHNrGEgvQ7AzI/ii1tbBJEWeeqwz
         0H1N5vhM/ZyYnRRpHfyQIZlrjO5WtMM5us2uI+/G8MCWhYgsCi/MtSvnMlwLlAK+5pgE
         yy4DJkpMvhMb1ibWs9x5OCVJr2Tlti3jgU1Xq4Xfb9mptD4C/ftIHSsIGSmHSOws2Nav
         Vs2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714469753; x=1715074553;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l6OP6UMIGuPuXOxnGZWdqmp2g6zw3irzbWHGu1N7wL4=;
        b=hd41C64FG3GdFCkFSrGXDRdDJ6h8EOeo+4NNqzpALg+mDAXgMBR/3tvfGRlnYQoKoa
         UYgiaHWoXEB/wZZaYfw1pqeePwDilHGqI4KMZcZq5d0rgyJYI0x//MWAWvjaErmMzDFT
         Qpzjxj1bEQyZTMXm78sNt2r0e/oajoZkdDl/tvjCbniuBFuaCnqDQ6uwf2hDc4YJdgF7
         vfPFc2+NlYAP8tgi/lO1TnN547dcE6Y5vr3SC6+O11RMQWDSLYCZo1j8kLprMgdbQm+j
         zb2ZuKhXHbTgSgg48xojqXuSddHzKa34NOXW3VP+2Sln7uWKnwnUrdJHKn2vjf1vXvg7
         2RJw==
X-Forwarded-Encrypted: i=1; AJvYcCUSAgme8h86URSiK28PCFnl0D4sKyXNcFypWZpFKw291plBYzD9gEYTn3EvO8nF7HSjHm3YOQg4Iu8vzlxYTn7Tb30ocko1ngFehA==
X-Gm-Message-State: AOJu0YxsukRVv5rDj2NrTYrcKU1zQIjmlGvcHzbTvP0s+DqpD1Zdf7xU
	rurgAUEmvx81uEdezGYW888T097rwx0PkKVSRAH1Ct5JGSRUZlYLH33VIuRiESbqom8Ke3aRqMW
	oQRw=
X-Google-Smtp-Source: AGHT+IEqojO6tti17H0JE6GijhKGEWxSzZ62hzDm9mSS5WnWWZeFIDjDsr9AbocbO7OxXdjHNV+5Kw==
X-Received: by 2002:a17:907:846:b0:a58:eaae:dde2 with SMTP id ww6-20020a170907084600b00a58eaaedde2mr2500841ejb.21.1714469752649;
        Tue, 30 Apr 2024 02:35:52 -0700 (PDT)
Received: from [192.168.114.15] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id r6-20020a170906704600b00a58e0d1d5bfsm4122419ejj.221.2024.04.30.02.35.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Apr 2024 02:35:52 -0700 (PDT)
Message-ID: <8cc6cef9-37d3-43cb-8670-7b6be9b6c9de@linaro.org>
Date: Tue, 30 Apr 2024 11:35:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/12] arm64: dts: qcom: sm8450: move PHY's
 orientation-switch to SoC dtsi
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240429-usb-link-dtsi-v1-0-87c341b55cdf@linaro.org>
 <20240429-usb-link-dtsi-v1-7-87c341b55cdf@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240429-usb-link-dtsi-v1-7-87c341b55cdf@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29.04.2024 2:43 PM, Dmitry Baryshkov wrote:
> The orientation-switch of the USB+DP QMP PHY is not a property of the
> board, it is a design property of the QMP PHY itself. Move the property
> from board DTS to SoC DTSI.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

