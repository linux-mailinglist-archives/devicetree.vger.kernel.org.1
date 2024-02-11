Return-Path: <devicetree+bounces-40503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 768B7850A0D
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 16:40:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 740161C20E4E
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 15:40:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEAD044C9E;
	Sun, 11 Feb 2024 15:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fMi9hPO9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B24F5B67B
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 15:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707666027; cv=none; b=ReRWi/DusIfoyIhcZnVF0ANWOUUoQ/M6Gc5OVu+v8uC/Wyv9FtplV3wC8z3afoRjjML7fcsHEBxMJ2twPus3M/T4qlNLlr57OcPv4q0rNwyG0OihrljfUo95MLb5tKoos8c3sZjhICklhzU9Y31r0Npnl9NDb52x2cn4w61EVVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707666027; c=relaxed/simple;
	bh=Hc9v4u7yTW8JsSZ99J2ZDRFE+upmV6PCfwAXPY/as/g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bMIHd/1uthGgKY2njYSvsbmxksE5pxfj/Tmad8crfwDSP0mONJBeX6NViEwYLWzJsmEQkyAj3IkVEPUbigYEtJ+Sq3zijWG5BzHjVSy5vvEv3Qow/ljpVw5ZpiS15IWqAb8iO6okUyLlH9cXEsSWaUqhnAFqzM0gFH+a2ZSJ7FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fMi9hPO9; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-33934567777so1600246f8f.1
        for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 07:40:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707666024; x=1708270824; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SVMew82xjwtf8k7+keXQc74rmr1ViKC0ozZEYJBxp7Y=;
        b=fMi9hPO92jPSbkZ9ui3twypsRtYA3QCkJKnT6++azajBDdmTqkbaRkNbxmp63at6uD
         RQGX1AXSXPGUGE2UdGygQx5iyru+h6pnUMQijSgyXoNC63vIUTDCysmw6facvvNgiYKW
         kZvxner7U175Qi4AT39bIlwNog1v7QT1AvQOrXWojtoYqgYgG1VPtNQMPHyT8T2i0qUa
         rAxmfKD8A3akQkbLrOvC/J3i8FLGmlq6atq2Lp+3QB7vs0X6d2VB/+zOAFVTypjq+g5x
         TXhUzEWSiaA296IkWcSZ67ZnIkXw8zEMcO13qLIDl/oeJhonB0OrJXkPkwlV0PlVreux
         a2Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707666024; x=1708270824;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SVMew82xjwtf8k7+keXQc74rmr1ViKC0ozZEYJBxp7Y=;
        b=wcompk4OpXpt2Wp4RzdvMA2TMlQ5OwzKlf9HQEsm9/BfIDPYXeqbWQ6JMerYwMqR5f
         AYMQNMPM6iSUnzibOTeFDJpmIt6q6vK1iV41KnMvleAYcuOu1Mwedh77hC+VfK6pMpEG
         Rhqhr6MJ2PCJqo5VUb6dKso4VeAQBZndW+wmXjMYrS+9M/uhUCiKTmbc/VQHvwI1Rsvf
         BvqEzKxEzCDIrdmaMyIBKkhl0H28BUpo9qyfDxK6Kwv5zt149z5DDGtDxcx8QwcVrr1d
         8VxX5oC/DgKSg3jfUxabsG6NiA+PllS0kqE8iNtcMbbYfWqEi90/A8t6XvmYWk9M+Sdk
         WOgA==
X-Forwarded-Encrypted: i=1; AJvYcCUJdzkQmGuvxDWxAyWGtYz/lAkoinhkGH6V4TfA1XC+pICURXU1N7SfhtFwBNPyyH9cxvSuFGM6wD2Qh0+xp+dL3WRL5QNhL+BTbw==
X-Gm-Message-State: AOJu0Yx+OJoxnsnRYGJX3N/NGIK+tOWuzPDAMGaGsnO92NCzpNg8MA+M
	hILG/Hi65SiwjQePnD2KW0rd1kZgXF0r9ZOJhEZ3uozu0MUa+bj73q0UaQIrZuI=
X-Google-Smtp-Source: AGHT+IE7cGSNkeRSRwvwSCCrTJU9J282tJla6a4fbIRSaC0WQ1E4dlqgzx4CI8BUziOjmGHvNnhJyQ==
X-Received: by 2002:a5d:6486:0:b0:33b:2300:9cdc with SMTP id o6-20020a5d6486000000b0033b23009cdcmr4887054wri.46.1707666024531;
        Sun, 11 Feb 2024 07:40:24 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXb4IEphRUiAkPg6ucJR6ptA44EPq3L6qDXC4hgjAqX/Hy7oNo/AxozPoT182mYxhVjpk8p5fCKSpvbokimI9rSQnIQSvj8bxo2JybXVZK+MtHRtQPhQ2AfGxL7dRF6fvarfBFjSQ8wqLe2JuGXtmQ16miKyckw3KlnVccg3mZ7uVpaun/VMt0TXNrGQwO/5ezVHj1UXSA9IUJgBQxtfmyP+IHSZIcN6d1zV/iIoCihaA2UlfwPO0LrIzmZ1E27pgS5BkP4jdh3h7uJdfBirJspYPYQXTyxNWYTE/ApjSh3H/C2qUD2f7T4L0/bNsnsEBNYycirC+zN5C8kPd3m/ZekpZaz6HiBORMSAbWtAomuec8KnmSKf0WF2eM6oiz98tGp0uMgOeFvAWuEg3V7/ITbALupm4IbuVx8INery+0dvgapC4zfFg3Hvc6vs3fr7vOPx+ZGSWakajErDxTQjgBuO10mDwXT05gp0btzOkD9QhJcvdUy/aESGmK+TOTuYehdjmXlJCRa
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id n12-20020a05600c500c00b004109a5ccd7fsm3885151wmr.47.2024.02.11.07.40.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Feb 2024 07:40:24 -0800 (PST)
Message-ID: <5d1d4bd7-a431-457d-b7f8-141bb609284b@linaro.org>
Date: Sun, 11 Feb 2024 16:40:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] fpga: xilinx-core: rename "prog_b" and "init-b"
 gpios
Content-Language: en-US
To: Charles Perry <charles.perry@savoirfairelinux.com>, mdf@kernel.org
Cc: avandiver@markem-imaje.com, bcody@markem-imaje.com,
 Wu Hao <hao.wu@intel.com>, Xu Yilun <yilun.xu@intel.com>,
 Tom Rix <trix@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Michal Simek <michal.simek@amd.com>,
 kishore Manne <nava.kishore.manne@amd.com>, linux-fpga@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240207180142.79625-1-charles.perry@savoirfairelinux.com>
 <20240207180142.79625-4-charles.perry@savoirfairelinux.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240207180142.79625-4-charles.perry@savoirfairelinux.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 07/02/2024 19:01, Charles Perry wrote:
> New bindings use "prog" and "init". The legacy name is used as a
> fallback.
> 
> Signed-off-by: Charles Perry <charles.perry@savoirfairelinux.com>
> ---
>  drivers/fpga/xilinx-core.c | 28 ++++++++++++++++++++++++++--
>  1 file changed, 26 insertions(+), 2 deletions(-)
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


