Return-Path: <devicetree+bounces-134812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 770AD9FEB6E
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 23:34:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B395A3A103A
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 22:34:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91C8419D089;
	Mon, 30 Dec 2024 22:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JQ6my9fM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7FE719ABB6
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 22:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735598078; cv=none; b=LctTTt/Euu037SOxhgpkWYUYFJD2n2I6ASIPu3Uya+7zwOyWs/uRfUO7iijzqu2upz5MbDfqI8j5U7Yqe0xCF9OueRXEXJxRzDW9usVKKe1CLEZDo0hmMEB8yatcpA4laUO0WbQ9ljEvqTWsCMZAPM/uWEgPTYSZpgkkGU8UvWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735598078; c=relaxed/simple;
	bh=LOO1Rh2481JcNYNndqVuMRmZHFmkQrOk9y9yQ01ttTE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kpRHRvb07Uf7cr/iVqIvmMUAqb8lC+KTArFPMGEzbJ/UPvsoCE8WeB6MDrwXxRtsCb/RGjS9CMqad8C3o0GzfpNN6mYIKfZoLhyHB85vuwG0P5aVPVzOucSbb8y3fZKNHxdD2WqeqTS++QG7Ar9DuxRtdzgKbd3uM/mfvibQXmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JQ6my9fM; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4361fe642ddso101453335e9.2
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 14:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735598075; x=1736202875; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qf+6YUKEAK6RmW0Zawgag6y0Zk8iAO/X5OAFkTK3r3s=;
        b=JQ6my9fMV6X2iAKiGGq1e9qXhQMIRbn11BzoUst1O7bkFQvjYJbMjtGCtCFCVnFwCT
         l/m8PyjDh50YbMickMpckrFpWf97vnZ8gPwzOPp0mT8mD/Dq0T6O4c7apfVqv7L2qyaz
         bXmhWTXLwfnTDz8Prvo+ykF6yFbly3hW+zVROtgiBoUMjIFTlh1Bi7bJBluqcig8Vpio
         9zOksAh01c2OGD0VAtP3mjnmA3Q9Q6Vn/VK8KUUvctsbTF2HpKdUKyBAFdiiAFDxOoEC
         aLnQZHA9GhXvLr+y2p3y8aMSL/uU/X5nzLCLWwK1WcKNSi+swPEY87p9OTfpGOvKJ8pb
         Axwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735598075; x=1736202875;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qf+6YUKEAK6RmW0Zawgag6y0Zk8iAO/X5OAFkTK3r3s=;
        b=QBdQLIU4tFhFOozokLbnTbALsz9rZ6ynrHCst0SZ40CEOvdkeEoie+9xe8cRwjM60Z
         oq5olz3qKuyLXpPOQe/08T1ON7ZUgIC4NxWkmJlKO+qaWNNWP1mpsmZyZHDzITAp1vxV
         Lo0yaniIbwIBGlvlPsLTY99PtT57wT5femyZ/qNRZz8UnsmZv+bV1iBGafAyKkZGdvUw
         0sbSaGsRXsaWWb0CqO0es/n/KQnffJnW7AC79JzN+wpERBMpiI1yGDq5pNOoiaIWyKuN
         W2EVLxsaH/JQ5uOx+NF55VBtqeGthvTC9n0y5TcWd0eXO7Dal0lSNkr2qqgPUUVQEX0L
         Ssaw==
X-Forwarded-Encrypted: i=1; AJvYcCXx8GrFyCIgt5zVRTG462sPekBZpDIQpTAjSyx5pp0tBZK95V/d9hfzG4bOAdK28LSm7eJFN7CwsGiV@vger.kernel.org
X-Gm-Message-State: AOJu0YyY0uSBrZSO9c5+ZuIuzpE2giT0CsF53IIHSYuNCJh9Fjj8W2/C
	oFraocr64lLvuCUmd20Nh6gRtSRedndxXI0UuE83U+fr2v/p7COQP8J80KuYcZo=
X-Gm-Gg: ASbGncvpPnUTgnEJvIeA8vfIuOl4Tg+9owa+kKX9p39/+wAksSTPx0SXs7At64a18nf
	n80IsvYY3eny0sIfDvq7vfj4WcCY6Tusp5jmuMr2bKDnNKaUmAJnBW5+vQ+PNOLrkKHZPdKbcBa
	pUldzigUX1tlt/2WAbxj+pB4ifYD4jc4CZk55NKqHO4/rex0nG0kQKb5A/m0jZs8chg4Y/7wPhz
	kqJGC1XkZ7UngxImMLoYNRvazclJOmfXv3uI2+3aBWoin1oZSqXEQ5ryqjIq8on3GI6tA==
X-Google-Smtp-Source: AGHT+IEkGNe23vunsFVznIzhni6Rd6kVfbzGRe+omgR6DEZtQKbekPwmqGHbmW4xitobE7MNowwCkQ==
X-Received: by 2002:a05:600c:3b23:b0:436:4708:9fb6 with SMTP id 5b1f17b1804b1-43668b5e02dmr275300155e9.20.1735598075131;
        Mon, 30 Dec 2024 14:34:35 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43665cd9c29sm349733625e9.14.2024.12.30.14.34.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 14:34:34 -0800 (PST)
Message-ID: <c9d97c40-d3bf-486f-b348-91ffedeece5a@linaro.org>
Date: Mon, 30 Dec 2024 22:34:33 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] arm64: dts: qcom: x1e80100: Add CAMCC block
 definition
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Jagadeesh Kona <quic_jkona@quicinc.com>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-clk@vger.kernel.org
References: <20241227-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v2-0-06fdd5a7d5bb@linaro.org>
 <20241227-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v2-4-06fdd5a7d5bb@linaro.org>
 <aaead9e5-a978-4b3b-8635-bd8be647ae35@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <aaead9e5-a978-4b3b-8635-bd8be647ae35@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 30/12/2024 19:45, Vladimir Zapolskiy wrote:
>> +            status = "disabled";
> 
> Please do not disable the clock controller, it was discussed in the 
> past, that
> all clock controllers should be enabled by default.

Looks true but, news to me.

Do you have a link to the discussion?

---
bod

