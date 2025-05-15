Return-Path: <devicetree+bounces-177519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B574FAB7DFC
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 08:29:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C90AB3AEF69
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 06:28:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64B5F295531;
	Thu, 15 May 2025 06:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="djxWEGz8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C3931CFBC
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 06:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747290539; cv=none; b=j9YfPY/s6XvV0cDMRcP7rNjRnNU5Q1GOyA+g18R8s0hF5ukEoKqjlP7GoiNQyvCARTaMsWYWWL04MLmM4bkA8vFR/dKszLCkZx8ZdwANec9BWkSl4YSjJyGje5Wk0BLvieGquvRn0Z3Hrz05Dwj8XgXSryc96bjRObT8ZJVrRu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747290539; c=relaxed/simple;
	bh=00AV94dG2ZcGMrm+oEM6uxQ3vNHzQbtkKeRhT356qXc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rm5uBDgs2ciQg9fUVq54fog7i0wr4Pgs6FKq96+z7Wga5xflz3PJQoTm2ykhfqidwhxwatYTRZTdr/xbS5yUcGDCFQBWYUi6g9P25AC7ZD/kNdin8UiRgXywo3d6rcgWYAeaNsr3EixhL8DrC+J3uUgMMFJa+j6i8rZA2a9noDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=djxWEGz8; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43cf680d351so9895765e9.0
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 23:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747290536; x=1747895336; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ltzFKNmbLblqGQ8qkM/SiBLYExEz5st/fzGa1uhJzPM=;
        b=djxWEGz8EOHzllt9drcA4a2TkEtmrQnBzk/C9HJ0xrzdOdjyysxoiG4hv/ZA2BkQei
         A8J+QtR4pQPHBBH/7cpjcpoq6Ih6nNrZcxeGXThBilvG5VBKu6dZ+2L6hcQwBaGYTHy+
         YzholSNzE0kG6mgOvaJgUox3KyEWn+e4xqW8/NiE33TdTS6qnYnkfGkdCtTu0zxj40Gf
         ZnytTbEq02cAGz/pZ5CXtXfwU1xa9YZIhCXcc+Iicu5bnVN6psoTQtREwiX1KTw7sJTq
         4+/0i49vuF2r0J2MkVIePzY7TLnT0VpyzXhYk4U1AcScNEEi3H9M8Oarr7Uf5MW9RfE8
         4xzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747290536; x=1747895336;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ltzFKNmbLblqGQ8qkM/SiBLYExEz5st/fzGa1uhJzPM=;
        b=CZ1sse0V+266IcVZnfui+sdcVQFnfDswBXKCyDWnrlHOmpQG9vZP5lVqrY9wekf5M0
         lsxjQObl43tKVLRfW/OMslLSx7Wn+So1Pv3ae8J1K/nE0gNd6TsBHz0ztCPGOU1AQ9z9
         hIyqNA5/0k5SOX6pR3jIx64enno+KwizrQyse8OchNbHXxlY/B1MbUP13KPp649QB92t
         pSQS7PPKFhstGDaNv405DMP5DgtkR3d+E9jxrz+WYZpdLoAJQRDsmJYOz8yHsh446cwe
         jFFtom70QNiO5t0iIy4MobFzmM62neFelsAaX2DqWEJHmkw9Ma1WF11b8AQqBMAZJxNZ
         xY6A==
X-Forwarded-Encrypted: i=1; AJvYcCVnuJKsWYe88KAkpc+p7zX3FHv9KKd4yoUkGS9GbsUvedRMrEkpA71269kMuxHBnKfT1HhHdlxnp/m0@vger.kernel.org
X-Gm-Message-State: AOJu0YzhypEjZ2zsC29vKnnhcpn7J+MBysYSaBnqw0c6SstpfsWfaSFD
	C+zt3HbYnHfBEi6OP/T0MSgiWHUx57+Yd7K2X7rrWI573Q4IqxI/Zq7Kes9R6cQ=
X-Gm-Gg: ASbGnctl5FFLtUOmumLSl04Pbm0a1lP9vSduHilfpZxqyJvGmSsXU3PjoKjuHt3h6TU
	0RA2vyCwgCcSSXB6wVDSrwjhWUaPD3tKHT4eIRdGrub/NF/9QNRt7Jd5Slr506XsyCvJ0jX6bin
	XParzve14vzb1NjETjufJW8NUAuyqtSU1kKqV4HAhsYYhjV0N3G03b+bhgpSYJFfnwucUWf7uKb
	Rfd5LZzzIe6p1a6G9QBhQ3IM/kJ+sv7+r3HiG+60cMkEEmHLQGZZvZj98EyKM69dk/t6CBWqD0x
	iX8bHAhpM2Q5anmsGpP187HfsdB3MTV1UbhGaU2kiF3DV2lR98KZlZ40Q2qWidGfW93jHe/chdb
	LjBTetLYdXAdZ
X-Google-Smtp-Source: AGHT+IHPjN36nPIAFheoxSJeMD7QVqgCVlEcC9j4OaPSYI+l7JvLUZZ3UyCX1An8LX7/LhBBB/f7Gg==
X-Received: by 2002:a05:600c:6814:b0:439:4b23:9e8e with SMTP id 5b1f17b1804b1-442f84c7cafmr20169815e9.3.1747290535806;
        Wed, 14 May 2025 23:28:55 -0700 (PDT)
Received: from [10.61.1.70] (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f3951b62sm58204595e9.22.2025.05.14.23.28.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 May 2025 23:28:55 -0700 (PDT)
Message-ID: <e6f8bf0b-4a17-494d-96c8-7384f9426ff7@linaro.org>
Date: Thu, 15 May 2025 07:28:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 05/18] clk: qcom: common: Handle runtime power
 management in qcom_cc_really_probe
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Dmitry Baryshkov <lumag@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250515-videocc-pll-multi-pd-voting-v4-0-571c63297d01@quicinc.com>
 <20250515-videocc-pll-multi-pd-voting-v4-5-571c63297d01@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250515-videocc-pll-multi-pd-voting-v4-5-571c63297d01@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/05/2025 20:08, Jagadeesh Kona wrote:
> Add support for runtime power management in qcom_cc_really_probe() to
> commonize it across all the clock controllers. The runtime power management
> is not required for all clock controllers, hence handle the rpm based on
> use_rpm flag in clock controller descriptor.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

