Return-Path: <devicetree+bounces-250415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E55CE8FEE
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 09:18:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 90060301277B
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 08:18:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57DA52FD660;
	Tue, 30 Dec 2025 08:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SOEVy1vL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F8A52FE048
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 08:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767082735; cv=none; b=gCcXz+TP7K99at+4YbKHNNZRZFrPbzHy4VMM4U6YLlRmt5y9922ORf2pB5KdvWPtPWK+2OPpul+7MjPvWHvxfp1sOZss9Ai5Zzi4oMM6QA7KGacMgEFzlMzQV6vZLrxo2woNDZAwlIpUv1kbi6DT5hzZ/JZZjQ67fjrAIPhzJjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767082735; c=relaxed/simple;
	bh=v8mrrc7yE3c9qhRU8zkJsHzZgCi7JoLcbMtMMJl130k=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=d4WA6irXTvzkLAWIjZYVEvqdTq2aGrXV+0HGL/+v2xyCmujLoy49r9niDXoI0KPmt4XqA/tkLVR4qe8YqRFoZ1PwJaWaCDCpG6bqwnpTqyhkoLQM+LGTw75hDp4M/DzVs2Dx9ELUTMjz3nHlOnPOjwzHmM1zTCAzvPtzmnjX6mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SOEVy1vL; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-59425885f65so279542e87.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 00:18:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767082731; x=1767687531; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7oWwnUl9perZUOAgUEtwYqm9KF/RzvwLKJJUUYt/2Ds=;
        b=SOEVy1vLLBxm6ZYZgPypequOc7n5SwXe6MWg1Q3K0M86YBoqMAatFMItHhbBKOkZ+0
         roq81tazImBeB1TeuPOoEQeCo4yP+CGtwLVwnwyi1alpTXGypDQfCE8hjeSYMFc/+6lC
         7aTs6c0UdlgtgZTY4c0AFIpKBOLpsVDWrC83vPBXQn0l3aM2Ghdoe4jFsc7U36xEKT9Y
         H5zYtcdyp0628cPjyJFAIZs6iAuoinPX3eDVfBvDIluUzoFpp8f6yFhzc3cOZ+5iz1bb
         SfxXAL06OsFDdzbwXQy/LjVvng141vhKPKcCtH9nMXhP/sBsJoshHZsqdEjhWSHUXSMy
         4+wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767082731; x=1767687531;
        h=content-transfer-encoding:in-reply-to:from:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7oWwnUl9perZUOAgUEtwYqm9KF/RzvwLKJJUUYt/2Ds=;
        b=RJPMpTfcJERFyluyJ3hC0oJW7ZrGBdTETrQTMkNqVb5gQqHx7ontDNajz3Mq1JyqBh
         caAAW3N5AHvPO9J8Ww9DWYIOi655EzK2yghNkw9Mq/I/mRv8pusSeJonl89t8hcaomwT
         cvPet3AQMWAgxqchZ/DaC3vwQ3U8xNOmoR2ifiZQ5lr0dtfEsRfeXyz87j44xjI9Dxvb
         d4ILgKYsKA+WIFFuTkDQ8WNQGzLDr7r0n9RELHUm5yLpBa7UUcOQMHo7SHwCvhvO5Iis
         AbBDtTm75SObmDmwPo1URczfFO461facvsEmmSFJZAtF0eU2JCMZI/AYBQngafu5anu9
         EEQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAn7cR1vnB5PxpF+PlHoScVAc0AS6t0JbJH8FhxEseNUWzoeOi4gyYFCyX5XM6fczrDMS41+9fW6ov@vger.kernel.org
X-Gm-Message-State: AOJu0YxfgLPpvGt70RYDiX118N9XChOn5u4XMsfEXiJEceGVJNoBr7RE
	8i9+7bOBezfaVjeF95f4nuGdMZtanMFs+BYge41r7jEpy+u4+w5GnC00ble1l3RmadI=
X-Gm-Gg: AY/fxX7mlQrgFnDb8NrzYz6T+Qke9gzvAiEdbW2l81iY213XIXn0RRYdPVe2BDqJXpt
	n9Jy8KaugcnHIp1YXmAerilb7RGETpLz9mX1lBd6rr8TeqWK0ipx70Xtnqi6kVdCaS2IiRdppmO
	RfZ8gYXk7NT6Dk7RrKozd30BRe8mx4Y3YaIsxiqp2U5VTxlNrpFm8wRwYm6+hJzdXoJovX+u9Sr
	NSA4dFULt6/+hhoXpfBcB6X/Go9G7K/JQ17o8Yb2B3xmGVqWs9+7cdHTbw5tJni2itHbkzH//Or
	gbMUjR6mHtWis+P7ryb4UsBNO/FQaqXs0FewniX3hs9v98oK7ZLevP3G1WDkoUo5TcPaQEU9zk6
	t6oYRtH4AzayN20dIK40PanRcDtFbrN/9Iciq8M2RQXc0ZFY5Vjn74o+SfAeCNHhKTLyMDM+oGr
	e7xgDZhUQibD8wWgs3ydHfUvNidF0lJQgdpu2Zp6R0yHlLGdmatoWGl0wmooRr1ndSjA==
X-Google-Smtp-Source: AGHT+IGBKgEgA0DSoo96ohfu3tX0jdZSs0KRDNzH/uH1fTPEKyh004Q1HykeBKi833RCmFUzF1oqIg==
X-Received: by 2002:a05:6512:1321:b0:581:8db3:d5fe with SMTP id 2adb3069b0e04-59a17d70667mr6479215e87.2.1767082729178;
        Tue, 30 Dec 2025 00:18:49 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18618a35sm10421379e87.66.2025.12.30.00.18.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 00:18:48 -0800 (PST)
Message-ID: <1fa74da9-bd3e-43c6-afbc-8cfcbb93af93@linaro.org>
Date: Tue, 30 Dec 2025 10:18:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 0/3] media: qcom: camss: support for empty endpoint
 nodes
To: Richard Acayan <mailingradian@gmail.com>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20251230022759.9449-1-mailingradian@gmail.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20251230022759.9449-1-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/30/25 04:27, Richard Acayan wrote:
> This series adds support for empty endpoint nodes. It is currently RFC
> because it continues an ongoing discussion on how to selectively connect
> some CAMSS ports to cameras and leave others disconnected.
> 
> The SDM670 patches are for a full example. If agreed on, this should
> expand to SoCs that have CAMSS.
> 
> Example SoC dtsi:
> 
> 	camss: isp@00000000 {
> 		...
> 
> 		status = "disabled";
> 
> 		ports {
> 			#address-cells = <1>;
> 			#size-cells = <0>;
> 
> 			port@0 {
> 				reg = <0>;
> 
> 				camss_endpoint0: endpoint {
> 				};
> 			};

I do not see this device tree node layout as a valid one. A 'port' provides
an interface description (an option), and an 'endpoint' declares a connection
over a port (the accepted option).

 From dtschema/schemas/graph.yaml:

     Each port node contains an 'endpoint' subnode for each remote device port
     connected to this port.

This is violated in the example given by you above, when a remote device along
with its ports is just missing, thus there is no connection. A forced alternative
reading may (or will) break the legacy, so in this particular case you shall
start from making a change to the shared graph.yaml documentation, since it's
all not about CAMSS or even linux-media specifics.

-- 
Best wishes,
Vladimir

