Return-Path: <devicetree+bounces-30896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D63538296A3
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 10:53:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1104C1C2443B
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 09:53:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2E923EA9B;
	Wed, 10 Jan 2024 09:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sNynY4WJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC8E3FB03
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 09:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-40e461c1f5cso34974765e9.3
        for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 01:53:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704880395; x=1705485195; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BnWbdAfXzZIvlNsnm8tH4L/RI9Vt+Ov46EHTtMLUpfY=;
        b=sNynY4WJydceXv1fwcbGRLnfEgkxWK34RVcE8/EFtb/2XWb3mYDqlV7RH7MYZ5UFxS
         paWVhv6LPQlos4w63L2UwuTFWp1LtYbeRz8HN43Vt85JKi+23AFJdA645DWXKoN12J3g
         +L/kNm+lMJGSBM5m/vAb900AxzY/tYZPNUJDE3z8tapQzrBJC/4QxqcZdj4isdkLwydx
         AJ9xSsBmDnmBJCNgNuYCo2+tNlHjuMNgtEr+UE4+nvrY8TdQtrvb/wgfmDZvIFjYNLFa
         6WJ9EgejkC0uNdJoeDgOvUbEicZlBqitDDTdFW9X+D9knipCwDcG08wRyTqauLzmZV0S
         G0oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704880395; x=1705485195;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BnWbdAfXzZIvlNsnm8tH4L/RI9Vt+Ov46EHTtMLUpfY=;
        b=BimzAYF3YELcnvkbjdezmV4pTtMJvYlIECSSPgtArYIg21RNK5hsSG3/VlqEIu7kXY
         9rD3Y6JnxEdhB0sl4e00mYHhpw0VUvHznKa4lT8MGzpc2EXF/iXntcWc2lJsEjMCZWQA
         74nQWZTeSEk6FRmzhjG5Kl6eT9csznzsxK9BevbJ+NS46YxTDNTif8j7s1pTLdddbfZz
         9YSTdISYGtODXdIwhQT3SJWsWu3105by0fKmpFgYLGUhmGN9JbmYK/XeUr3P48ppt0ZV
         KVzwbbqQO4OOp1wzooZF6Nef1YexnkzlTTagGroZtPuGKYxLlrs62MlkBV5J1ABIxlr8
         cBRA==
X-Gm-Message-State: AOJu0Yyfl7HFxE6n7IHaZx94ovFmkh+4AUCv5SzedwyQD5BZQpmckrAq
	rsWs5DSpqzx0mi3t/IJLyLlwtJVKfyVM+A==
X-Google-Smtp-Source: AGHT+IFw+zrqWrbS71WR19PxT4+B0U1pi4zi6o0jydECwixmG7Z0prxZcNjLUs8C94WtLKaHVCuCfg==
X-Received: by 2002:a7b:c34e:0:b0:40e:44a9:c2be with SMTP id l14-20020a7bc34e000000b0040e44a9c2bemr255830wmj.201.1704880395304;
        Wed, 10 Jan 2024 01:53:15 -0800 (PST)
Received: from [192.168.100.86] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id n15-20020a05600c3b8f00b0040d5a5c523csm1584034wms.1.2024.01.10.01.53.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jan 2024 01:53:14 -0800 (PST)
Message-ID: <a64238e3-effb-46d9-aa9f-9271f137322b@linaro.org>
Date: Wed, 10 Jan 2024 09:53:14 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] dt-bindings: media: camss: Add qcom,sc8280xp-camss
 binding
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20240109-linux-next-24-01-02-sc8280xp-camss-core-dtsi-v3-0-b8e3a74a6e6a@linaro.org>
 <20240109-linux-next-24-01-02-sc8280xp-camss-core-dtsi-v3-2-b8e3a74a6e6a@linaro.org>
 <20240109180211.GA2841248-robh@kernel.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240109180211.GA2841248-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/01/2024 18:02, Rob Herring wrote:
> This is where you mention dependencies. Didn't I say this already?

Maybe but I didn't parse it.

I will add.

---
bod

