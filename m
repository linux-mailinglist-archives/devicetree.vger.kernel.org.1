Return-Path: <devicetree+bounces-79294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C7A9148FC
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 13:42:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B0DE1C21CB8
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 11:42:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1201F13B2A5;
	Mon, 24 Jun 2024 11:42:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j1M/szUJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0228A139D03
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 11:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719229320; cv=none; b=o8NDwoBrPaBYt1RY01hp8TOjgkyCXPuSC+LcJtAajxE17rsYdMF/hkUfbWmAWbJPjxsc28/sejitNDVEuIqjNFAZOoATX+ueSpAmL8B0lCG1dc4Xw+TQWO0q0IvrGf+KKfFcCZxokfYeMiHaVnXH1NkCaptzTtFtGyVUDA0JuO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719229320; c=relaxed/simple;
	bh=C028/nFsGE40ydlmB9BxdAJi/8hIWgLolYvN+o5rEZ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b4E1q0oOBB6PLr1NFMqYNMRGa6ewPGVXDAE2CQ+xvSmyjdo0U9LnvSf3eYjAEfCyiwf1OTj24lO50yrRpoGNfWtgbRqL2Bt93H+1iJeRqfmoXozo3LVXmu6s92+gGCx0/gog3R1EiUxbkXxeFOXD2DYyNj7QlJnlrMtwxm6ESpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j1M/szUJ; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-35f090093d8so2909253f8f.0
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 04:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719229315; x=1719834115; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T+jjro0681AEOFwhkhNhmaTtx8v0fmEZR11zlZ878gA=;
        b=j1M/szUJ04JfmiXtzdUpbWOEGaymaHvffYUh0YgExeQe/9M5BcubEpewCPEuRVnJHy
         d4NKbBIZFZgxkllY1Ie/chYOeZ5I/9G1YhKZ65eInOnAlx+EI77AuDYC5EqV8Ux+TnlB
         /xyT5hHkn9nYwirYWVGZJQwikhxHQWkSBp0xaumLPdJjyxmfhHUnsecK6bEk+705gCcv
         d0gvnxECWQ8fwtRCjWnjwzFLL17ItksMD3VG8pLpDtJBv5+Pitd/M4/jqwgaAW8nClJb
         HAP9cNzgz8EROKUXAdwVpR6aKWusBVrH2qG/nK8ywxuDV2ZNTil55BWgf8Mah2lWHxVv
         +nyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719229315; x=1719834115;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T+jjro0681AEOFwhkhNhmaTtx8v0fmEZR11zlZ878gA=;
        b=jsjyig/ECchldWIKA/TCizQ5CEc25uLHOm8/ZLxDFQuKtWnf5uJyAfovJf46GuPTSM
         tytV1LMJtquqvFf7HbpRMpnb/xN42iKnP/FuLq8cV96y3GUClMtk87yLqUU7a73gF/T2
         qj5kdo3Zat35urAwQEJeeYF8/1YWcjXKBLKQjSNs2Q6smTefwlZy1nZNqnVwfdNm34vD
         coFPemBFbOgVj8OjIVHRSFyhE3HD0d84Te/LHC5l9vf+AuS7Jf3P1iHBuQQdoVh4lGT9
         Lm55dDx2SS5c+Nsc93gKJmFp5Th3biM6XWJabLdm+hXq3NCjzFey23Ql2EzybAG2XuKI
         ueNA==
X-Forwarded-Encrypted: i=1; AJvYcCUfW6mj59sEHcaIJw0P7a+Q6J1iZB4bPyP8Hbs5CzGZb7qnzsDxDxgHGuvduX9G1ci/feFFsBrv/HIGkiyV7ahHHcHFBT87Tr/uoA==
X-Gm-Message-State: AOJu0Yzp8unWKBgKY4NWZ0sx/uUxPDTfvUxvunvRw7WeDTvFbKXC4SOl
	BsihTrNb4FK5xMO3QAvQm/Sb+jbpgZ0jChrwESxs7agrqLRWXFEbCN0gnhc2GnY=
X-Google-Smtp-Source: AGHT+IHoGgWxVHYl9o9oDPZVH7R7MNNhC1mYVS4z9J3EY4whsBbRpKDAVx2h9mKJ84IvNeAFF6eWqA==
X-Received: by 2002:a05:6000:1545:b0:366:e8cf:ef6d with SMTP id ffacd0b85a97d-366e8cff117mr4375611f8f.55.1719229315261;
        Mon, 24 Jun 2024 04:41:55 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3663a8c7c6esm9839416f8f.103.2024.06.24.04.41.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jun 2024 04:41:54 -0700 (PDT)
Message-ID: <55bee27a-e4c8-4e4f-ac62-a581f46662ef@linaro.org>
Date: Mon, 24 Jun 2024 12:41:53 +0100
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
 <ea57a3a1-1037-4d59-a384-50c98e1f9387@linaro.org>
 <mzcofsmnqkxgxarcbxh2gqtdusyzpxr4edjcpurerurzape7da@4dky45iy5iph>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <mzcofsmnqkxgxarcbxh2gqtdusyzpxr4edjcpurerurzape7da@4dky45iy5iph>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 24/06/2024 12:22, Dmitry Baryshkov wrote:
> On Mon, Jun 24, 2024 at 12:11:08PM GMT, Srinivas Kandagatla wrote:
>>
>>
>> On 24/06/2024 12:08, Dmitry Baryshkov wrote:
>>> On Mon, Jun 24, 2024 at 11:55:29AM GMT, Srinivas Kandagatla wrote:
>>>> Soundwire resets are missing in the existing dts, add resets for all the 4
>>>> instances of Soundwire controllers (WSA, WSA2, RX, TX).
>>>>
>>>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>>
>>> Could you please point out the driver changes?
>> If you mean, soundwire controller driver, it already has the reset support.
> 
> No, I was looking for audiocc drivers.

drivers/clk/qcom/lpasscc-sc8280xp.c needs no changes, other then the 
dt-bindings changes that i will fix in v2.

--srini
> 

