Return-Path: <devicetree+bounces-72194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F638FB1A8
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 14:00:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F35D4283CCD
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 12:00:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2795E145FE4;
	Tue,  4 Jun 2024 12:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yp4j63PX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CEC0145B3F
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 12:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717502423; cv=none; b=es10wvsrid9Sud4K1l/5W3/a66wNnzWbj30T8tpHTwaJSAVB+yzV5nQXr7Cj1RlemS1TMhS7BuRu+RlFyFfcTqz4/peRRVsaKEkvVobrytKGdXmB4YaneYBqCQmLdcWSkW7QdYCQK7Nn7s5jSH2WzldRgM6N4yc2SLyuAqdUd60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717502423; c=relaxed/simple;
	bh=ITmDK/o3vZUBIPrdr54txC310yi36/Wx7TXNE/zjdpY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=isWsYBlUHMCWFCn1D1MxaIUGTcfO6SitvmkzjWCOFcYviqVHejfeTVKmhVx6pIirqzw0uClc3jVJBJGm9PNxey6topB2AcvD5mK2QBhBvyVK3iKMyWXNcQpzsK9Eq1UsJuUchGehjIWo1L/zUmj+tp9kn+Y6PZ3KLXaTPa797o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Yp4j63PX; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-579fa270e53so6130792a12.3
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 05:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717502420; x=1718107220; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gxZZBV6os56KANAv7SzQ35RGN2CB4F4JHMvmXBGcdT4=;
        b=Yp4j63PX7bB/5Dfjtq0yJcztgKyDPyPByZJJF4b0ka/nbRCUcLtfnN68YnJfpRze8E
         ljU68VfXs7cXI8uA/dzq182y7OXQzAboxiexFBc8O2b9imQ9kowcrrKZPOpOA4W99JrH
         vP0BF4mJsIbROm7yZ/kdHBpnHiswixeuuVQav8d5qQlMxuhI1G7T9twDEhxu5c1dYN/O
         dQh3foAStCa6rqLq2guN/a8ACmRW9udrHqCWD5OufshRRFl3XxtnFNLh14lFAjqs6UuA
         MQlVRX3GmqdbdLzffrCzmgsWmzhq4UXSNFIcG/Z4BHRanfBj0LagbXzyH2OSdGd6zYz6
         Q22Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717502420; x=1718107220;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gxZZBV6os56KANAv7SzQ35RGN2CB4F4JHMvmXBGcdT4=;
        b=IDPFQzyUlDsJWANKY0/e2XJcy5aIZ5GctrDHiqRtq++l6ztFGpCzf5nxs3V0wxwL0w
         M6N926jZpiFHkXeh3w4y6nitTWvaylcPn6iqkO6hs54rP17qBegr6qk0laV6z8RfxWYg
         ngR+1pZFymHzJFOcXzjXevpj/sthz9fqsHALxvlfziEhN6H3pEHUbVunNtwm3uPjaVqv
         aHVVr7GeSWVnViVc7mZDrzFyrx2+tLKSsvm5wuKlJkEHHcB0RKmFPnqjTgBFLwC7W/iT
         x/8j05hq4Oac2kFtyXq8juAMLl0+iXzf6MPFxeeUyb+BQD4xjCAH7zak4B4+iFqT3nC2
         OY9A==
X-Forwarded-Encrypted: i=1; AJvYcCXqmC+bmo6bPuZUZTV+iCEKbJC2ezu+dehX1hhU0nMqpUcveQE6ozw1QQ+mmgrHC7nHuNvCLHwyAa4/jRETwvrGh5T5VKQyNQx3Hg==
X-Gm-Message-State: AOJu0YwKMhPa9FL80HPE6OvRNYeiaBfIHy9AYf0SkYCKyQiJTYgR9wlv
	Ah8l7ZKpY9aculdXV2xpI1an/zuOxRrecm0AWr0oCpZeoPx6+ZvP1MrnPzSIk0c=
X-Google-Smtp-Source: AGHT+IG7QzWP6TC0xP0LnvsUQdt79OEW+vUjnsDphskiqmixjCLQXCnOn9Q5pGxgijhnHA5ckYPChQ==
X-Received: by 2002:a17:906:a046:b0:a59:d2ac:3856 with SMTP id a640c23a62f3a-a682022f87cmr857478366b.22.1717502419771;
        Tue, 04 Jun 2024 05:00:19 -0700 (PDT)
Received: from ?IPV6:2a00:f41:909a:a11e:a035:2af2:8d85:1f72? ([2a00:f41:909a:a11e:a035:2af2:8d85:1f72])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a68b71450c1sm471790866b.152.2024.06.04.05.00.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jun 2024 05:00:19 -0700 (PDT)
Message-ID: <d93fe55e-7c65-48cb-bdaf-5e15bc22be30@linaro.org>
Date: Tue, 4 Jun 2024 14:00:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100: Make the PCIe 6a PHY
 support 4 lanes mode
To: Johan Hovold <johan@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Rajendra Nayak <quic_rjendra@quicinc.com>,
 Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240531-x1e80100-dts-fixes-pcie6a-v1-0-1573ebcae1e8@linaro.org>
 <20240531-x1e80100-dts-fixes-pcie6a-v1-2-1573ebcae1e8@linaro.org>
 <Zl28nvnpGFRsYpGh@hovoldconsulting.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <Zl28nvnpGFRsYpGh@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/3/24 14:52, Johan Hovold wrote:

[...]

> 
> As I just mentioned in my reply on the PHY patch, this does not seem to
> work on the CRD were the link still come up as 2-lane (also with the
> clocks fixed):
> 
> 	qcom-pcie 1bf8000.pci: PCIe Gen.4 x2 link up
> 
> So something appears to be wrong here or in the PHY changes.

Is the device on the other end x4-capable? Or does it not matter in
this log line?

Konrad

