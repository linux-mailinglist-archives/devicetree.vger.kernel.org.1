Return-Path: <devicetree+bounces-62481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 578158B1441
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 22:13:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 88C0F1C210FD
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 20:13:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 062CC13E3E4;
	Wed, 24 Apr 2024 20:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tEVGIFXW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691CE1BC46
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 20:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713989612; cv=none; b=kLMIBCYKUx+UpUBHRyBCSZQ+rikBVk0pZACvYGa7Ja+r64mVWvfHZPUtm8Iw/mEmeuRDV7XDLiWkHvFTLoan8xnXxsNqQQOe8LwnHQzLCXwnh+mD660Y0Fg5znpUz1/ufzIYxDrWo1QzPXA5AkaN6RvwE9hsawZYxcQH3bEgRHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713989612; c=relaxed/simple;
	bh=sNqyq6y7H3czTBGecgPDxHefPtcbiiQFYk5mcfLGh6s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tNTujK+MJPDUE4+Z7z8RKaL8i9PMO7yzv55ScOyiDWoorZY0yzMV9HTBVyojB1emYBNjUMCwyYDh4KNytFwoTY58eSuEWEWsk9cMttWXTINdIh2sWIdn8Z5BG+j+NbAlg6LB+w55btvPqABmRzIF1McrPWeahIRXa9vKRJnogd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tEVGIFXW; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2d9fe2b37acso2845331fa.2
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 13:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713989608; x=1714594408; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U1VIKcgsAHqC2f+MP6K6SFFkgVq/PwMZ7TgiEnmGAfw=;
        b=tEVGIFXW4rpeeM6utr9fkF2W38s66a2dEIh0SHs+iJZSvYVggkLJRxpKh2GysqOGEE
         Xz6BM859boB7giMq5RmzMl4XIzkaGijOFu4TyiiEQvpctXnMIf0i36q5mZjdvIfZBBA/
         Xl4qeXhh5NSocA/oeOOLNRbAJY8B+bMajicI4p9HlC3uClnd/PQv1PYQTmeHzL0Ioz0H
         NlGF5f7C8r9NcuH+XdPeLFN81JMQAIcMhoQd+zNSJulSgUyIKRCdyc4tFpUKs5O2zv4Q
         fr02Skqt6q7JoLw1cD39930hJzO3Yq3e2+Y1dOleyQkJGgkrEB/KgXn/Y8WcchxcCg3l
         9jug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713989608; x=1714594408;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U1VIKcgsAHqC2f+MP6K6SFFkgVq/PwMZ7TgiEnmGAfw=;
        b=UGpNFpDnA+a4CgAu+Dsp+Zs+zBQHvKHI00fEewWZrbqttFNSjI60jSt6hlJNJRwh9y
         AMfRhTGdnaYLKLzlQO03lamQCM2rrf0kvFyn8D/eIFLUJ9L7NDDLyI1L2U71ZcvAaKaA
         eb/WQ+U9BinnaF1HGeAG/oebD4cRP6ifq+iI7SQIRmDUxj7klTnGP3gzQY3m4dr88eOe
         7uvaZuhL1ClWUTqdPRYoTVwyV0/mftFPbX/vvmX4O7TjFUAXj1N3Ikr1fkW7XFJrdxSh
         wsmxwIMxuGk7UqIajgeEB0a9GsvBxW6WpHUd6HlTDs8u3nIRy0pI7HnSlOyLWYXI52rZ
         ZB4A==
X-Forwarded-Encrypted: i=1; AJvYcCXKGp7d5lmEKhGE0ZwKsr1OU0jUnss3WDqiXRBpfk4zNcpzy7YBa3RtQQllsw9SX09sXbJKpskia8rhRMZooN0EclDcXGjW7FPOvg==
X-Gm-Message-State: AOJu0YytU4mFPfIAPAQ05ZugWZUr2uwxdr3uISKLxeQnDGNvg03CVN+L
	K2F+ycpEESlZ0z14x4MvXs+jezgsUtZI64Xkuz9qECqQBPOKaOYaBuX/8wiNSTw=
X-Google-Smtp-Source: AGHT+IF0z5d2SuEtnxThz/DS8L2JAH1ZbLC/6QxjxTDIakRRLrQTokCWhknjfh/nR/NbFXdJxFtKDA==
X-Received: by 2002:a05:651c:a07:b0:2d8:8b7:76e3 with SMTP id k7-20020a05651c0a0700b002d808b776e3mr2590960ljq.11.1713989608620;
        Wed, 24 Apr 2024 13:13:28 -0700 (PDT)
Received: from [172.30.204.223] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id z21-20020a2e8415000000b002db98d0f2c8sm2061822ljg.85.2024.04.24.13.13.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Apr 2024 13:13:28 -0700 (PDT)
Message-ID: <e74692c4-e027-4800-b80c-449fb3ef9bdb@linaro.org>
Date: Wed, 24 Apr 2024 22:13:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 2/2] soc: qcom: smsm: Support using mailbox interface
To: Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240424-smsm-mbox-v1-0-555f3f442841@z3ntu.xyz>
 <20240424-smsm-mbox-v1-2-555f3f442841@z3ntu.xyz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240424-smsm-mbox-v1-2-555f3f442841@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/24/24 19:21, Luca Weiss wrote:
> Add support for using the mbox interface instead of manually writing to
> the syscon. With this change the driver will attempt to get the mailbox
> first, and if that fails it will fall back to the existing way of using
> qcom,ipc-* properties and converting to syscon.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---

Looks good!

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

