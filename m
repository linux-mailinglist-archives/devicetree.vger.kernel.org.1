Return-Path: <devicetree+bounces-78010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E8284910AC4
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 17:55:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 92E1C1F2165E
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 15:55:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4493D1B012B;
	Thu, 20 Jun 2024 15:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s12qsjrg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8978A1AC434
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 15:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718898921; cv=none; b=JUx9iqJuFaE8b6WRkbFTWFpuURRJF7LH/Q5p64rQE2o1boIXWL2hPZP1JQtbAGSfzwuaegUaP+/4xvqpHvyQI0Cy8+25QTi3TncOxZKkeEvW1Jk4BCtvWDjm6QL4w3qx5Tcpa+5xMk//CH/Hr979OfPI+yOg8XmW9mH+jQZxKQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718898921; c=relaxed/simple;
	bh=Q4JBCnhSJq4oqfZIw7dzs3bChMGSgFx7uu84eklMR7U=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=mwPHIZS2liFWjoQTHFlMwAk+oV3rGIIE/AxDlluMgIm/Efab1PsCWYY8DhscfG34DGmTVDHFzp+Pr27jBTCzz9NGH9erCWc/4GWqivdPfOlyj4HqQovFAElzk9YFyhYH3hlukfsgYtkdOMLcThZIebmU5dGudEf6pleOFYfHXOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s12qsjrg; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a63359aaaa6so151076366b.2
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 08:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718898918; x=1719503718; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Q4JBCnhSJq4oqfZIw7dzs3bChMGSgFx7uu84eklMR7U=;
        b=s12qsjrgolFYEp42rffnCVAzXO0UZaQ+veKzonJwyK8mp8wMcd072Bc8g6090b6FVD
         YHK174y4FCBz2SLHVheUHg2U22U1ra8QLwVwnML5014ys3+VXypOhyeD3LKiHoKDt59E
         wZpzl37vueXU0B8K1zVgQDOaxVBortLRdBjNF4x8truP7jzsihWegrq1RrpaEP/SikPf
         cdr2EwLKZMNmoeW85Yi9M0vT5gzjuD/PHFuj1+8SOAbt3T3WCV77PGasY3HbMQ1CbTX5
         32OqT+1Q0HOfr1zqeShghHvbLm8P9cAJAa+sMZ1x7V/DoSlSPeDdmmfnwonjLWl1JPof
         CHOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718898918; x=1719503718;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q4JBCnhSJq4oqfZIw7dzs3bChMGSgFx7uu84eklMR7U=;
        b=sWfDddhRcI0dihvinpEkNL48uMLUiQlDvQePFO0vytqTjpAWrvfISWJW6i//bP6nF/
         HU5pG9PuuNd0X33Z9MKsoH0ZTnbpPsjQRa+8qtTuyvhFAHtJMhQy8ZCMKy5/meOivF0i
         pC0OzSm3YJ2sn3Q1BNf9Lf6Tjk5fT7B96cQJnExziWtFPZzl8MGvLvRqCl6JXQIjYFAN
         pKWKlfBwBN+/uvHhf4nf1T3bZIsKWOvEnaMdeHJgBQTKy9AgvksosRD+DkMIPhYyqgPJ
         1fnmMcwpOUY/VUbontJblQV12cT9bGn9vL5gw02NGyvNXXvUyjU8IByZqzWWCaa7EVRA
         x4Jg==
X-Forwarded-Encrypted: i=1; AJvYcCX/w6XNV81QM5xXYZaveA1m1+QdLXsk6HkggxotZagIoUHKRrtU51dVTFeyu20ObL7Ao9HQQjJGM1vwaBBOjAQBb77TM3MzZviqFw==
X-Gm-Message-State: AOJu0Yye5B5PEc5WCPqFAqp9G/ehkoVdqDYq6k85worLd5iNhGKAGvQX
	xKaxMzMYvBmmuytrG9gOuuLD3zX6rSzyxeik1mQhw7wAMymMfK0JegKpL/5IDkE=
X-Google-Smtp-Source: AGHT+IFYBlhlHfbiK0XROGgqygoHfOv7JX4uyejkwsNd3c+EAa8G3GJAtqdIkY1sIMVpfzVV0sIZTg==
X-Received: by 2002:a17:907:d30e:b0:a6f:ad2c:af7 with SMTP id a640c23a62f3a-a6fad2c0b2emr322816866b.2.1718898917692;
        Thu, 20 Jun 2024 08:55:17 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9090:3594:a722:64b5:78a3:68f3? ([2a00:f41:9090:3594:a722:64b5:78a3:68f3])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56fa6756sm781569266b.217.2024.06.20.08.55.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jun 2024 08:55:17 -0700 (PDT)
Message-ID: <d525c5dc-f4b4-42ca-93e4-d45068d896b6@linaro.org>
Date: Thu, 20 Jun 2024 17:55:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/7] Enable CPR for IPQ9574
To: Varadarajan Narayanan <quic_varada@quicinc.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org,
 angelogioacchino.delregno@collabora.com, andersson@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, ulf.hansson@linaro.org,
 quic_sibis@quicinc.com, quic_rjendra@quicinc.com, luca@z3ntu.xyz,
 abel.vesa@linaro.org, quic_rohiagar@quicinc.com, danila@jiaxyga.com,
 otto.pflueger@abscue.de, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-pm@vger.kernel.org
References: <20240620081427.2860066-1-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240620081427.2860066-1-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/20/24 10:14, Varadarajan Narayanan wrote:
> This series tries to enable CPR on IPQ9574, that implements
> CPRv4. Since [1] is older, faced few minor issues. Those are
> addressed in [2].

Thanks Varadarajan, should things go well I'll resend CPR3 next
week and then review this.

Konrad

