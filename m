Return-Path: <devicetree+bounces-79273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AD37B91482D
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 13:11:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 327ADB24BD2
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 11:11:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 011E01386D8;
	Mon, 24 Jun 2024 11:11:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XUPrU3CI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DEB137910
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 11:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719227472; cv=none; b=O9TrZh+PLrLU+n7ptVM/iPg4ezELBG0mV673IEWUpXjnq78rHx52NrgI0mzmWZc7cAvk8fogefpj3Woa38moWCfnJN/uuBP6Q0D53inud4nrPKDP8Wf+rdr/rStNn1UDbKKuC3dF4d/00pR0e8ZDBcAOvqIDyh8eCsvK8DIUAV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719227472; c=relaxed/simple;
	bh=cjWfRPoUM+kGidtez1iF9cnu5CNL0MfmfOCuAcIaZPU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A2P0/ZY0QtzK1/fNYkOW/4+GzjDfjJkjIhv1vOYaDdmTvhfxLjeoiUe3RQl1X3xilCf+bnGzumXJLQtvrB6nXTKiBv3WqnY9sZ6YNnd2ICHCh8AViTvFI1fTqBofjhwa1+0cWP134PTCAG+XoovXsHZiOLtzQziqd5AbC0kH14Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XUPrU3CI; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-36279cf6414so3274547f8f.3
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 04:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719227469; x=1719832269; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MDL7t+SO6FpEVHJOT7hEdo87VnVcjGt67Fs7ZWvppOs=;
        b=XUPrU3CIqb4Vo0x3ZTK8cacf+YCn2uHqwidjDYT3aEhZiRcJB1JuLX/i2qjgT3A4AO
         sAinGIaIV1uxq3u/Q63a5w1QXG8YmUpRDCsexwf+QNO0hP9PAJYcOO/GaKwDWT7I9dcM
         Uk8pWxXLs6IbRW67VLsCCmipl9iwBL5TBuaISgi8p69dz8xF29WRap9vbSVhvTLCNFuH
         XSUYmhhSGQQk/bPSXNQhyPetaPx75BRboE4FD2YJTYZ4OcSM7Cf0ppdNzaikMIaMQ2Eq
         0azAroUYWfzCMauiQKQq0l3YLMm0s3hUYozAGmr3LKz2RKRxf/L4Nq9t6KegqZTIvysx
         w3cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719227469; x=1719832269;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MDL7t+SO6FpEVHJOT7hEdo87VnVcjGt67Fs7ZWvppOs=;
        b=kmjSr2Q/BqahGyAWLct3Tmns7UCdw5EXgmaztI5DqUd4hCofsrmacW14YXEMBtnMyq
         b05Vh/VE1UgBWLFn6Bi1LwRkeCbujcPEHzmELpkMT/8AqSJTWgM2Y/OrIgurfOt0jaGv
         0MLJingQpSOl3fuyl4ssOBP9TNmJVYqyTn9lCHFt6Y220qALMjXX29/BIDmjxMvDd0fZ
         7wGWfZeYxi3Ef8Q/txjOddLU+oAeAuEWm+7VhAmmOTzxnwRjBHGfwyUV4QsuYxdEBFau
         30UhcRqjb2sGlLVNTT7E3Mgy4vXHH1MtSrdgx1vSlkZ9zYBKCVArDNTnslaDZcl93rZJ
         gdng==
X-Forwarded-Encrypted: i=1; AJvYcCXS6is9dWVPyH71R+VjB7CXwe6QWEkOkAdXriqIyTHbfzd4bez2xjBy6CzpWNQJZP55KFvpCewi+Edm+G9Pi0PZOfukpO32oUvtTg==
X-Gm-Message-State: AOJu0Yy2trz5GK5SvuruqyrNfhgg0xDbJHCqXZZmO9ef0iW/n/S9xcq3
	7yfguiu4mfZca0bn5vu/Rvg+zkXG7uRw1sGjYLaIpxQ8V9OyHR3WeKD1Hqg5/qI=
X-Google-Smtp-Source: AGHT+IHsNIFkIn5zWDurXmz+KezncSE1I8CJ5v3+mRHtknDSg8CUWGb3vMtBZIEehl7QbIPVPs+sIg==
X-Received: by 2002:a5d:5f8f:0:b0:366:f41f:8cc7 with SMTP id ffacd0b85a97d-366f41f8d56mr1539592f8f.46.1719227469493;
        Mon, 24 Jun 2024 04:11:09 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3663a2f66bbsm9770082f8f.78.2024.06.24.04.11.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jun 2024 04:11:09 -0700 (PDT)
Message-ID: <ea57a3a1-1037-4d59-a384-50c98e1f9387@linaro.org>
Date: Mon, 24 Jun 2024 12:11:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] arm64: dts: qcom: x1e80100: Add soundwire controller
 resets
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240624-x1e-swr-reset-v1-0-da326d0733d4@linaro.org>
 <p6ooqgfwld7stzevozs7huztputc7vpc7652wx6rvg4cly5mj5@fwrzeu6alhgq>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <p6ooqgfwld7stzevozs7huztputc7vpc7652wx6rvg4cly5mj5@fwrzeu6alhgq>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 24/06/2024 12:08, Dmitry Baryshkov wrote:
> On Mon, Jun 24, 2024 at 11:55:29AM GMT, Srinivas Kandagatla wrote:
>> Soundwire resets are missing in the existing dts, add resets for all the 4
>> instances of Soundwire controllers (WSA, WSA2, RX, TX).
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> 
> Could you please point out the driver changes?
If you mean, soundwire controller driver, it already has the reset support.


--srini


> 

