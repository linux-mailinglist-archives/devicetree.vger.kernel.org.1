Return-Path: <devicetree+bounces-182498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BA6ACC923
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 16:29:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D5083A7EDD
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 14:29:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C451523956A;
	Tue,  3 Jun 2025 14:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qhS66DSC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD22323816C
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 14:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748960970; cv=none; b=PE5hqax6grLGFn2BOu+UQNKc5RIjYjVaunaTAFR0t4WxDF652IqUm+HPhs/gvS99Rf6uK4AZC2Ei8sv4mfW3TrgzAZyOSbcHeOMEyHfzC2H9Xwyp5r6CXtP6a7EUPlrdbwMZ5z9Qykrxe6BhRILnjQeTYFG3uKqShlZMJCtPJtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748960970; c=relaxed/simple;
	bh=w3qJbbLFKIlr8IPpz61OWbLhA8Ojb0Iq6R/Q/kcUNfE=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=dP4eyR/n+nEflbmwAWUOnfaAWNMy/H2Xa20iV16EsV6wTLnNiaI8lWSETetIRzmpTPqFSdMmkxUu/GcaM/h69edSzE7itpexhpH19fKHQ5ehINUnnyc9M/BjsFvauCYGifNgiq2R52wxVKwNOHaeOqJpvLLc1HJbs7WA49Z9vUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qhS66DSC; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43cfe63c592so66289765e9.2
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 07:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748960967; x=1749565767; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=w3qJbbLFKIlr8IPpz61OWbLhA8Ojb0Iq6R/Q/kcUNfE=;
        b=qhS66DSCblxDHQ/+6QqutjtGeROiPt1Qf1X5jnY1DME/xSClLc33q6/h5Le1W62QKz
         8cRcdBI4fwk/r8I1t1pk9SXPXXUUdtPvHtJ3ehvmfiG0PGfcidXORezs9oK2zlgHSjFO
         jOquDR2LLAleUGz9JBJOQ6H8jcA7QzoEox5OZmZk1nd8+qkTGgRbYp52/mfVztfwYc+7
         meesWt5V2ymyalyk0604nRSa/8otRweAF5kfGhzPAYu+ZZ/RnXT45MgGaowK1xgeVROT
         VsS/CQqDOiVte2PEUfLCyr4SpZYA214l9jNyQfb+6LArGXhLL5OSh9c/Wb72AI0vVvgh
         6dQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748960967; x=1749565767;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w3qJbbLFKIlr8IPpz61OWbLhA8Ojb0Iq6R/Q/kcUNfE=;
        b=p7ZdnKJUzT2druNb63WvtUcKBnCnf1Oso9khS6aCw+zLNAzeA6vlv6hvsONJ0KulIp
         h02TumzKZxnko0B9cb7VyQvLJ6ELHfxSlETQO26YO19QttiX0x3DBdKv3rgHHDNeu8np
         UiHdWAwgENKXw1MpEj8VxHFGuhV+OYOFb5EYTyo29HwPtXglHWUdzSobdSOLXSpzmzKD
         TiYPkANv654wZjj68I3jMZD/xuGfgaJazKVN2jfxI3UwUiB/dDlOa0DLlBzlkVmiaBzU
         QjNSrCpoEvPhdLgUtyxHFfDpxkw2ecpsQZvdpXKIv6Rzf7ETio33XFFsHU7XXdO4DTSk
         ZYWg==
X-Forwarded-Encrypted: i=1; AJvYcCVN7MfU0+cOukeeGx6FvgQ12jBgXFS/uZ3+o4+fMnc5971f6vnVF3JYu2z+g1PS1x4UgRstdBn89Pzy@vger.kernel.org
X-Gm-Message-State: AOJu0YyejZa7a+9H5UXk2SoUYO1LDWOOievfzYwbdZVsT0ew6VnTkKDd
	moRLdxZNlQZm+3tufdzziMkwhjTzbrxxEABoPG0HYuvHHENh2YS/1+m8XGlGpc5K10g=
X-Gm-Gg: ASbGnctB2Ju/T1R6EwtP0qOFXuB6VGKcsz++lXo7Cy5wYzyyQnGQD/bepQyChUUcLWr
	6TZEbASFN8rqmP0P7Jr5KiOoHeGchZUMzGcR2FxJfEaRyWaQ1G7irYIsRETxwQJrFny+JA1U84j
	wObYIpWEWqKpETBOuFt70Uh4KCilLqob6PHD3PtfCVWegxi6uyg+5G4GXOZibCBZ6U/RLeO+Z57
	8XA7cGjMMneMwrchM1UTZCC91e8oVkVyUrEfnDYyeGy10zTbIkSbZxXLeBlr2xvoo16w0wurAsi
	SlpiW5oThIYol6J8LOVUL4R3ZEbBrdHueRHI+7SacUaR3J0tkLSDnL7RrxMFi7uN/WpEMcEM/bf
	ZA+eiVkCThArupsAc
X-Google-Smtp-Source: AGHT+IGBJA6javCrcGvDz9kgjIx0gKy0MSn3MwVpuFlPN9NEjpfetf/hiQAdNxpchZl7GR3GtryIaA==
X-Received: by 2002:a05:600c:3b9f:b0:43c:fe85:e4ba with SMTP id 5b1f17b1804b1-4511edc208amr131076915e9.15.1748960967166;
        Tue, 03 Jun 2025 07:29:27 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450d7fb8990sm168262475e9.32.2025.06.03.07.29.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jun 2025 07:29:26 -0700 (PDT)
Message-ID: <afe41159-00e4-45d1-857f-0a68f6fc6c8e@linaro.org>
Date: Tue, 3 Jun 2025 15:29:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 5/8] serial: qcom-geni: move resource control logic to
 separate functions
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: Praveen Talari <quic_ptalari@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 devicetree@vger.kernel.org
Cc: psodagud@quicinc.com, djaggi@quicinc.com, quic_msavaliy@quicinc.com,
 quic_vtanuku@quicinc.com, quic_arandive@quicinc.com,
 quic_mnaresh@quicinc.com, quic_shazhuss@quicinc.com
References: <20250506180232.1299-1-quic_ptalari@quicinc.com>
 <vTOsjvsB7oSpu2Oe8i1ufoz5C2Hy3EtfDnfBsLag2p-s63J0BLdqbLn44Hds17WR12JGfo7sd52k7uHaXlTTeQ==@protonmail.internalid>
 <20250506180232.1299-6-quic_ptalari@quicinc.com>
 <f912588b-fb54-4257-a4d8-db58e93b8378@linaro.org>
Content-Language: en-US
In-Reply-To: <f912588b-fb54-4257-a4d8-db58e93b8378@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/06/2025 15:28, Bryan O'Donoghue wrote:
>> 2.17.1
>>
>>
> Assuming you address my points.

[sic]

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

