Return-Path: <devicetree+bounces-75508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5DB90787D
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 18:42:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D6C00282A38
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 16:42:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC44E149DFA;
	Thu, 13 Jun 2024 16:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z3Pr1YCE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA09212F386
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 16:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718296937; cv=none; b=O+oG9DRgoHJWk5sfBcwf7TrIWbGYPr7Cmd6J1WABYMYa6gcdaid8dq6XO1kxujGhVPTclXbUuw2KAAyBMMmdku8UHwVM3g2G0ewI0mjvdKdbxe4KZSVn2pKAcm3v+t2QpFsiqm+5y0ztvsHCMxkfAosA3kQX8peYFgNnz8UNe68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718296937; c=relaxed/simple;
	bh=d4Zivpa+Kr91lXBluwGJv6NkuP5Fp/Zrezb2fbHpfBU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tIUn2D2MYqP7v4F3D6Y8UjKf8YSrnWA47G/La/3gqGZ2bnbHdHCMa4gnBWBvhMubMqQ8ht6Of8IfuzOGoDsdz9oLlSbopDBHD6ON5oAUML6xVwcq7yb6NfPrUNitSZ+JRQ43e4D1srFg0lqU8A45Oxnpo0lpE+XQskQSeqqSluc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=z3Pr1YCE; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52bc29c79fdso1791549e87.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 09:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718296933; x=1718901733; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KxumJDVbsP4QVPvesFB523q6d4QgJEn6x6IfBmiyMhg=;
        b=z3Pr1YCEhkXBwJrTn7gf9IZ2MzkV5tT+9bpEIjRhcz1ALhzp6dnKrXQvys9HQRX+Hl
         GN3V9Ozdz7xvT/o1XqnMwsYJK/yXGuJlZTlsByCjAdfbhwlrV75cVKzEMcs8H/nz8cG5
         H+ttvmSW0AP7FB7IQ/1CQ/6cwTl/Ury2zsOi4+KE9hzEVbjjYHW4B1C8q0/vCUj0hdfw
         WurKyAElCEWu6s+RiUUMWJWGft4ILwiH+GmQl9yo1SDszcYXEdScQTGuLKNBUy9RkgBg
         d/kU+CLg0KmNIe3Ny0Va5CYo0jKqCcdgrYGpw2VABqZ7mQStiJX9YTCL+1iQ5tgy/3ia
         OvWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718296933; x=1718901733;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KxumJDVbsP4QVPvesFB523q6d4QgJEn6x6IfBmiyMhg=;
        b=khId/WIaMjzLOi+4Zl6YBwHxDW/XtzrsnCgGouBNMN1m6bOM3zladEyaGTHS6Tn4ww
         AXipjjh1i3iN5D0rXGY4Pnhuv6itj0x4/IRNV0FnxpJ7fljhrOKq8oK2RpqaMDBa8+23
         LSwM0P5yN2VFcByJPCXEBgO8kHiYRfT2pmADiANs9/3SZdGqf7Qj5E7FlrS1ME7DbTPh
         4DOUfDglcimmLLAU195gwJK9GOSQiG/UQEQ5NtYeZl3KvWAxJZO8qxRvSwcLtr9gnwe4
         kTK2oWIFvV3RfTwYHJKS9IDaVOJGXJvhIZfcz8Xg9OKReyXK8uOvwqDToDlC+8I3ALKI
         bGUg==
X-Forwarded-Encrypted: i=1; AJvYcCUIwVy8xRk520yBYDi/OdnsB+G1SEWU8bA5Ym1KUpQMe7jFLjzu0k4dXetAUl3wDjFLCWLfRwBCoI2HTMR3Y4JS3AF3eK9Y+yGv1A==
X-Gm-Message-State: AOJu0YwS9gkEj1TV8mXaNf1CzXFzcgaud9bS4qpnIu1ZY4tGZQfzYI1S
	44CMs/6396CuxfT9R4eZM1mBCTmTpcXORcI8lO6aEW11mkkzswk2DsaBkAwfNLw=
X-Google-Smtp-Source: AGHT+IGSM9D0UjKqMRrpwUBDckCv+L+W8oy5sZf9E5Weqo0lZ3R41sisP7y2M9mjYoz1A9XbBfJtww==
X-Received: by 2002:ac2:57c3:0:b0:52b:bfa7:66a1 with SMTP id 2adb3069b0e04-52ca6e56ed4mr226505e87.5.1718296933016;
        Thu, 13 Jun 2024 09:42:13 -0700 (PDT)
Received: from ?IPV6:2a00:f41:900a:a4b1:9ab2:4d92:821a:bb76? ([2a00:f41:900a:a4b1:9ab2:4d92:821a:bb76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca282564dsm282363e87.9.2024.06.13.09.42.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jun 2024 09:42:12 -0700 (PDT)
Message-ID: <1cfd671b-a4d1-4edb-a2f6-b91b6edd7b22@linaro.org>
Date: Thu, 13 Jun 2024 18:42:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/8] arm64: dts: qcom: Update sleep_clk frequency to 32000
 on SA8775P
To: Taniya Das <quic_tdas@quicinc.com>, Bjorn Andersson
 <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_jkona@quicinc.com, quic_imrashai@quicinc.com
References: <20240612-sa8775p-mm-clock-controllers-v1-0-db295a846ee7@quicinc.com>
 <20240612-sa8775p-mm-clock-controllers-v1-8-db295a846ee7@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240612-sa8775p-mm-clock-controllers-v1-8-db295a846ee7@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/12/24 12:47, Taniya Das wrote:
> The HW supported sleep_clk frequency on SA8775P is 32000, hence
> update the sleep_clk frequency with the correct value on SA8775P.
> 
> Fixes: 603f96d4c9d0 ("arm64: dts: qcom: add initial support for qcom sa8775p-ride")
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

