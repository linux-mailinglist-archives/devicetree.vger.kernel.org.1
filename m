Return-Path: <devicetree+bounces-40405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5C885060F
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 20:11:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1737C1C23DBA
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 19:11:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F4915F554;
	Sat, 10 Feb 2024 19:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Md2XEQjR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7A55F48A
	for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 19:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707592294; cv=none; b=a117E8Ceyk9glOB5IosxfUK+FPqpCxQyLqDGLl+lIKfU8KY+qhidJFdUZLfUaD115vZigL6TyzfkyNWK3iEvrd3+9/ITXAi7z6GGvRrmxYa32ZD9wBaViNlBP+xa7WENdtRioXp28KfcKoNz6CQqkCXrf9emw8z90Tz6bdVvCYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707592294; c=relaxed/simple;
	bh=x1GVwGorkcxO3IafmVnsCPl7EfeQZAKgg116i67uWXI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Sr/DZ6ABcIj/PUJQSxkrosbMiUlGCWx26kKN8fJ+ED5wLjek2UBDvTKlu/cbfFdfrdT2DxGW6H5fDYqVVBPPZf+4OX+Hp3sLCOQztaKkMP6E3NjU7QfUuWKJmK6MZbQt2o+sHZ0NLgwBaqS5IQi0ovSASL3PFwqFg/mZQ3nsE70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Md2XEQjR; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a2f79e79f0cso296670766b.2
        for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 11:11:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707592290; x=1708197090; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LEw2EnFXzQVU2p0mkCDlT1t0pyChlA/M+u/ewTeLVg8=;
        b=Md2XEQjRapgSam1RkndwtnhBIv3IzIxZbgnC0YMxB+jcEEFtTgf5TE0OMNTSI2JuJo
         racZVqE0L8xlygRZp24y7jq//YWoPoBPRaYJ+f5z5IxexF80XGsw221ofW335/mn03gU
         cXuzf4/pFgkZ+0MpKmW4Srtm/0VJgk6HEG+TQQEK+nthppjoEsczu+0xpoOvV7fea6I7
         VE795PiSP6a2tO/v+Cz9OvDcLlM8LEycyvnJW/phATcQhSIweORRYivp7ZiR/XCTTUnt
         NbkcRLzWO/pTRYo4WS7eHXUasK9bjnUsAukIMYE5BPa9z+9FRl+vcYAzThqt62a9Gqk2
         tOgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707592290; x=1708197090;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LEw2EnFXzQVU2p0mkCDlT1t0pyChlA/M+u/ewTeLVg8=;
        b=SHTwk9K6lyPjR/saAHdZzH3vOGgTPYvOnX2VwvBBmXRnbS1uwR/UK3BoerWCkP64T1
         0NtmRySzaNl+SvzQVzYzqRpQt1ILa0AUVABt3WU2yBpg9x1zqLN5kOfq0aB2MO/JNh0Q
         Ena8jGtkJd3FdKNsGuaGz2mTITHvYlFz6yekKNxfmhDQQ/j4xiogDPOFZlWcgfv5zlwn
         fzwUu37GxuAWCDOiQ2wOJYLjiUlS9B53gvj5F32t4fFvc7//Cdv/nexVenIqNiWT+XR5
         105P5vxefD/SxgUOQbXQsz7dIQBJCAgTty6/3smDQV+a//c+5vzV8Ue7b/ZyFmBGDuLP
         if4w==
X-Forwarded-Encrypted: i=1; AJvYcCWfkg228hHr/tiKDpT3RaW1ewcX6EBl6z0stpGqqEAPz/38ggcKsHpBjgOaC/GzE+BG/5PZ8DdGcnJRTx21yHoSqlY+NRMDGDJb0w==
X-Gm-Message-State: AOJu0YxwqsCzrrGaYLr2nIj9BiUHOjvhMJ3ZGiRAaRbkDNR5BVpEskuE
	XyDLI7V8MmddYmUEoTyETJv6uqA2o7+CnFWmyGh/GI0UKGcnYm8OQ+gDxH8KxpzzLFaaUZJqgC4
	OZiE=
X-Google-Smtp-Source: AGHT+IFQ1p9zAgzQOUSwl5Ea/XO5538HhUhx2MIaN+c3CTo0bUpLvWYiCGb3EOZeubpmv7KdMb4Lpw==
X-Received: by 2002:a17:906:552:b0:a38:a174:1316 with SMTP id k18-20020a170906055200b00a38a1741316mr1910684eja.72.1707592289981;
        Sat, 10 Feb 2024 11:11:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWiJrRAZbBqUDXJFWpkO0i+fsugtySrXkHVf/nkA66ymTNKN+pAUOFFjIqOwqSQrW4Oo/XrD4oJrk57DYMRjQC+gnbAQEvqZjIIveR9HzZw0qPE8I3EPPVIa2TT+7Di84fhT15I3NWIyknWFqblVVNW213nWW9x4j/KrKlhmx4QHbsMa+cYuiSnJB5MzR49nEC89AC1sIdBOROAko1SAoyG8tJdKkbW3njeLWpbPKKlAGYVsO0oesYed7a16kvV7/FPvplr8xO9Y+ud97ZONsUCfPNRnRcjpcfYiUi4QiDiKennm/kYxlyVZrPue9azFrCtZyn9pa9OsDe+oiu6TUf2nplRKErDDzCFzIKTUWCQJ6vl0vYg95nNyX3Sqb42puIfs6Kw6V6VQPFbf/wd11a54EwCpMGlM6dLQvxx
Received: from [192.168.1.116] (abyl12.neoplus.adsl.tpnet.pl. [83.9.31.12])
        by smtp.gmail.com with ESMTPSA id sf5-20020a1709078a8500b00a3bf0ab3f2bsm1789963ejc.21.2024.02.10.11.11.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Feb 2024 11:11:29 -0800 (PST)
Message-ID: <9e1d7e08-ed17-4876-91df-f05529184e58@linaro.org>
Date: Sat, 10 Feb 2024 20:11:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] ARM: dts: qcom: msm8226: Sort and clean up nodes
To: Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, =?UTF-8?Q?Matti_Lehtim=C3=A4ki?=
 <matti.lehtimaki@gmail.com>
References: <20240210-msm8226-cpu-v2-0-5d9cb4c35204@z3ntu.xyz>
 <20240210-msm8226-cpu-v2-2-5d9cb4c35204@z3ntu.xyz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240210-msm8226-cpu-v2-2-5d9cb4c35204@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 2/10/24 17:28, Luca Weiss wrote:
> From: Matti Lehtimäki <matti.lehtimaki@gmail.com>
> 
> Quite a few nodes haven't been sorted correctly by reg, so let's do this
> now so that future nodes can be added at the correct place.
> 
> Also at the same time, move the status property last.
> 
> No functional change intended.
> 
> Signed-off-by: Matti Lehtimäki <matti.lehtimaki@gmail.com>
> [luca: add more text to commit message]
> Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---

Due to the nature of this change, it's hard to thoroughly review,
but nothing screams nuclear breakage, so:

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

