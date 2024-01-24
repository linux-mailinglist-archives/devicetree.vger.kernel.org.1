Return-Path: <devicetree+bounces-34534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AA583A22C
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 07:41:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D28851C220C8
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 06:41:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D97FFBEC;
	Wed, 24 Jan 2024 06:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S7qLZwo9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2379F9DE
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 06:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706078511; cv=none; b=Pgl/I7A1GnhrXe4AVL67wghG+7f7xO4Its/sBCMjmM0xfZVqeXbxakz4pcyIQyZkZF9o03IySI5j7Cic9hl1nLNXUfA/Fq5AEq4D7WjkE7zmXXBDbvmDf6eAK3IuTRRBU6A9Jc1OxIspHelJzwM62ULhAc+IR1cqDi2sze17TPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706078511; c=relaxed/simple;
	bh=gdjigPYxfGVv/qeBZHfdru5JoUiV9JRMZh9hMOWPR+4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pwpAk2OugPS/vAXJGBzAUGZhQfGwhB65RcpG4hHm0dUfiCx5yZAA8CRsfEK6dZaJ4URBwYqGPyhtVVRjjkBddUTJVS8HVh0UQ+Fi6G9E0wHSCNl6NQb6JLzMq+Xr/yOMr8dKvshwbxZYIWuRZCjnewL8QPE3eV/JmggBCTGU5hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S7qLZwo9; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-337d99f9cdfso4499624f8f.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 22:41:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706078508; x=1706683308; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gXfAVeTUyj0V0Cx9OOrCXcp0NweVNGV81kqhQ909vpE=;
        b=S7qLZwo9mTNtyx3nHpXDP2tZaUd2uF0Y99gcUnoROA0bjvCvj+rHX250CBY9cuPHf3
         kwE08Jt+3HNTPaXki9jdeNgenFN0HzDQrJS7L+m1Iv2U7XtLx3Fni6NfyAUXLwmk6bQ1
         NOYCUBzdY/vPk+KGlSgAlWcqkB95C4bBgwtJ8tCXSaZn8BNkaafcJYx/wHJJr6DdpRHU
         qAlpMIqCC4faYD1wVYbDupKKkGE+RXpTQgAAQOq9+pPVEreD0op+JLppfqS+gLObclYQ
         Hgk3VzrdCllnj8Yu3joQNnWItbEc/m7hlRXKtwSMs5RAgUr4nhwVPJtMImxucMbfSIq9
         EwqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706078508; x=1706683308;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gXfAVeTUyj0V0Cx9OOrCXcp0NweVNGV81kqhQ909vpE=;
        b=dZYr8SuNvid4NTYe/S0sul7G47kln5h9Ee16YfrRqMeORsgaptZ7/c8YBfv6M025N2
         VbDE5rc5Ec565DS9zAhhiu7vgpxRsBCy9ppDLPMNS1Js2XuTezU3+KTIQ7x0W9tu1P1c
         OTpjHoRlWO55Sb7Lfzv+yuE2VDE+bsmKFqs2bF14abfZT+hwxoxiIXqcE6wO29r9B2VE
         WFsSNYW4DSJ7l138NeIBttmvVbJInIguWNno7McCV50Z6gqogWVorYteHyzWXDOhFTWg
         OogoPMinRlIlf9dWBCptPjrn5zS15jVJv64ZKrgCsR8OFFRzHtBx30/kqKDFZCzpOQEZ
         LT5A==
X-Gm-Message-State: AOJu0YxEeLHOa8EtiwW+IfYsx/pGPYq6pQJbV1Mqv/haXsrzOuINJeqh
	ppOx33OzqrzK3c9TI980N77DJSSbHHKOAy/6Zg56os5xAePl5mZXJDSYi9RcRTI=
X-Google-Smtp-Source: AGHT+IFy2B3hDcPHpEyupu73Pa43sNWQ6wvHbVMuCgEFRM805mJWYSD88TcNZr89mL9xv0dV6sQyvw==
X-Received: by 2002:a5d:5042:0:b0:337:c29a:409a with SMTP id h2-20020a5d5042000000b00337c29a409amr206144wrt.119.1706078508198;
        Tue, 23 Jan 2024 22:41:48 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id bw12-20020a0560001f8c00b00337cef427f8sm15589455wrb.70.2024.01.23.22.41.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 22:41:47 -0800 (PST)
Message-ID: <256fa483-928a-4f43-8c15-d111b6aa6b21@linaro.org>
Date: Wed, 24 Jan 2024 07:41:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: clock: gcc-msm8953: add reset for MDSS
 subsystem
Content-Language: en-US
To: Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Vladimir Lypak <vladimir.lypak@gmail.com>
References: <20240123-msm8953-mdss-reset-v1-0-bb8c6d3ce897@z3ntu.xyz>
 <20240123-msm8953-mdss-reset-v1-1-bb8c6d3ce897@z3ntu.xyz>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240123-msm8953-mdss-reset-v1-1-bb8c6d3ce897@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23/01/2024 22:03, Luca Weiss wrote:
> From: Vladimir Lypak <vladimir.lypak@gmail.com>
> 
> Add a new define for the GCC_MDSS_BCR found on MSM8953.
> 
> Signed-off-by: Vladimir Lypak <vladimir.lypak@gmail.com>
> [luca: expand commit message]
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


