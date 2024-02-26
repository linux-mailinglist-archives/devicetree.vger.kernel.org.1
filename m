Return-Path: <devicetree+bounces-45824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0BE866EB0
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 10:36:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A2E3286F35
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 09:36:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 402C767C70;
	Mon, 26 Feb 2024 08:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vk/0DZ9B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E3567A1D
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 08:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708937814; cv=none; b=os7j5aGAfmMYbYSJH0pLY06we1zpkbWyNQuGLWJaVBrkhw3wOCbqCavTmv2/rJGVRjOS+NTa95sdqueu5cG3y+sQ93szN4pmwqCPPJGmq61jckdecZacwcTVAgLE2WRZRxlqnKg5DYcEB+cklF0SPYKIKOvisssaKx1/9r5Gluc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708937814; c=relaxed/simple;
	bh=LN+qPcFmDcu8IGCs5a6trgV3EIDuYGnMQGBohvS+FxM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EpENW9spl1wVacq/e9WYsVD1JdOJ2/kZrE/MLG20TVagL9Pap7jGIosICtiqF5IoYPHvFIyLHO7XzEsR7fpSrU4jfwt9mLwXZ1hF+baTMZEV2QID2SgURpaladwQAHwPj2PIeJYZxzjfdX08QifEz7SG+hFHnwL1hew1/ZKIoec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Vk/0DZ9B; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-565b434f90aso1611388a12.3
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 00:56:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708937809; x=1709542609; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3khZOK1k8xJ43USdXCWJa1jhsNdTmaSRYzIR0jZ3oFA=;
        b=Vk/0DZ9B+6wwQWXn+qDzQOZDAJoW51GQWbY2PAc0c7FeIlId7SzIq6nFHOKUKEFgsu
         cbjSNvU6J43KKt/PAZ4c7JO/bRB2PX4vntn4XI1e+TWv5rZTcvJyP/DkgmQfbulknbHm
         H1qi8Gf1xpIsVPNhXuctCiSpnDxN5U7aBsOnUE2L6QBP2R6gvgauVEu0y8xFW/KXe3kJ
         QkOTqF58e2F19OBqdLczXnivK7xnoNrNji7l2guRfx5KFT6rfaUfwUy/WXI+svamXiHF
         3uWAc8zPwaclDtOyTRvs/Huxzon1MsoJFvtYIA37o4D+l9fE1vttS9ncl/piz0eig3y7
         yJGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708937809; x=1709542609;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3khZOK1k8xJ43USdXCWJa1jhsNdTmaSRYzIR0jZ3oFA=;
        b=DWmUup/esK41dbcVWHQwJSGXR/8BRzs1ggDKV4FhkZ+cFQjnh9Gd9hWpOGlRWuzeAr
         s4pVM5R1iMJIdiR7xEPa6cPaA6ikSDBzWNQhGYUGnWOh2FjemouygftzH0QD81GoMbpF
         qcL1nE46CLKlFJEqAqIc2AqUTMo0wol0FYIqcBXQiud/tKQkuDVgyxwCNxc1IHSwZpjS
         VygfgwZgvvWiPgY15BamyV2Ei8l2HwYi1BJtPKidwlUMaNFS4HTY5fA8pxSu08Zt7rTY
         WukryW3ouVrmF/nVHpLR2jLcUsWFuD7WNlz+l5J71Q81hcpByB+Q+EfU35owS7Mrpwpk
         oQiQ==
X-Gm-Message-State: AOJu0YxcaGhvgEUQ2Q2wxw7QMfrXk6hTk2o4IhF/CtAiZfWBFer9NOFb
	VObLULJd3EFzxd5CPTQEpkYqg/BvPZNorPJFm+GORujrTbOhlknv62geHXKZKVE=
X-Google-Smtp-Source: AGHT+IEB7n/DtpXIlQZ/KE0+xVBsXmNcIx0LVIxwGPVh5pojcFDyS2YUwYhqzVFyO60FdlNjEkMSBQ==
X-Received: by 2002:a17:906:fcc1:b0:a41:682:c3b9 with SMTP id qx1-20020a170906fcc100b00a410682c3b9mr3706508ejb.65.1708937809603;
        Mon, 26 Feb 2024 00:56:49 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id ty6-20020a170907c70600b00a4354b9893csm645588ejc.74.2024.02.26.00.56.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Feb 2024 00:56:49 -0800 (PST)
Message-ID: <ae2909e5-7b49-4dee-b950-32008c63a648@linaro.org>
Date: Mon, 26 Feb 2024 09:56:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] dt-bindings: usb: typec-tcpci: add tcpci fallback
 binding
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, gregkh@linuxfoundation.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux@roeck-us.net, heikki.krogerus@linux.intel.com, jun.li@nxp.com
Cc: devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de
References: <20240222210903.208901-1-m.felsch@pengutronix.de>
 <20240222210903.208901-2-m.felsch@pengutronix.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240222210903.208901-2-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22/02/2024 22:09, Marco Felsch wrote:
> The NXP PTN5110 [1] is an TCPCI [2] compatible chip, so add the fallback
> binding.
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


