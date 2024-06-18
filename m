Return-Path: <devicetree+bounces-77020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7437990D32C
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 15:59:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2927E1F2125B
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 13:59:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D49D0161306;
	Tue, 18 Jun 2024 13:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P2B63vUY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B351607B2
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 13:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718717765; cv=none; b=NAh0IDKXYxY2JDaCHgYYFylWLsnvidbdba5MovbkvqOKsqbwttd8THoyJBDRpJ5MS3tDtqriZlAFapY0RAHLpl3HYLiHPmJsIBAgFtu+s269qpz/sHYquoijJvjXOg4bSHSLDINoZrkc6I/U61EoWqYio2aFqnzJ0bDTCtwk62k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718717765; c=relaxed/simple;
	bh=gE5K1CMg0FDplJQ5qb/JC8BlAQdTg4qg1zpQnY6aNRI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B1Emhg4v/Na02Jfh41yiVzs5qvmrvsT2T6PilCvdr93lMj89xuhtHvGg9zWUL4NF6tPgfCZ+PTq5qED0AUC/WLdRtkyoOMntXSqY7RLkp5w3DQvzmDPXhNLAORqYb5AFCg/x31zKWLLdrqHKeVdsiuE7pWvpb6z/zChhxdWdgmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P2B63vUY; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52c84a21b8cso4980152e87.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 06:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718717762; x=1719322562; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G9s5hs5ZuL2Zn53VjZAMHLo13K1X8TUCRyypHJObaGA=;
        b=P2B63vUYfZ59vNDRxC9yU2S2ZKWYTl0FUTUIm9Ezh2a96cIal8cz2avtHwjaYIgrh3
         3+ATRLAnurGStP3+ayiwh86DJ6ObcSu1+TE6Pz+DZQasdo15onMzshoiGX5rmgpgKUWl
         wT1wJK0aGumJSae89Uf/+61nOcKWIoc/eKHyK2xbgiPwlWPDfXmUzIQwimuCMYQYv/pw
         bvSa/23o5i9Q8VI/BDcrFvokoJ+knOWqB9rNPbJ4/+/niji7HGc+FUDs2POZliqZ4ZMd
         W3otcU4d0lhvyJucusKwQ7vN7Bqp1xcsZIaCfZsmc1knLmDLZ4pDcFR/K2muYE9U55MD
         GbNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718717762; x=1719322562;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G9s5hs5ZuL2Zn53VjZAMHLo13K1X8TUCRyypHJObaGA=;
        b=oTCHUxuMwMuhjXQsL7TcLM8CZcZVRGk9DATY06GzV+j30Dvb3IToWUsDIPOGzaabmL
         wCIaHnat+ZSj326WYrThVEC94CvLKkcDhn6YN8pXiJ5oZzWquDKRw/p4BPsDJ82TjkTg
         aNPZwosvsakxv3l6Sa1nv8z8nEftu3iRQy69Nrynu3tCYEfTzgRa/ef7PrSV/025cGVg
         k+5+BDQARVMeICSmly4AKbDlhmQLqxMp8NWEn26jXIYffJkNUl0ZDqZ2rEI0Dg2P7ylW
         hb2j9k24x7MKNO12dmwphQzHNTpt164mVzBMxxDOj/mwigRtjy0gm/946wE4t/bt0zom
         vfDg==
X-Forwarded-Encrypted: i=1; AJvYcCWyKU7uNKWC9wb2nfEgjW9CwKYYbG18+sTTxWA/6K5cSDgDA8BhLj7CT0hfNMzYsT9WlBlpedRpkKTbdk5Gh231UL6H5TSmlZ9t5g==
X-Gm-Message-State: AOJu0YxBaWfQhKA1uFaSafesp2T+NNkDj8E6ARpgau/LXoCM+AGw8pq6
	I6/FiuAbEOriOIDxI0+gyDugTRD5/LGDh9HvUtLABO4QH1RhVESjaOvwyX3uyvg=
X-Google-Smtp-Source: AGHT+IG9ei9VafGhogll0ZfQrnWQuX3q3mJNG9ItxBVOsOkRff58mzJtsjaCsRuB3ayEgZ5pWyxEaQ==
X-Received: by 2002:a05:6512:402a:b0:52c:b196:ea37 with SMTP id 2adb3069b0e04-52cc4767572mr906296e87.0.1718717761608;
        Tue, 18 Jun 2024 06:36:01 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9028:9df3:4fb7:492b:2c94:7283? ([2a00:f41:9028:9df3:4fb7:492b:2c94:7283])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca28720acsm1509466e87.146.2024.06.18.06.36.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 06:36:01 -0700 (PDT)
Message-ID: <180bb76f-a547-44c9-824c-b8d57f7eb10a@linaro.org>
Date: Tue, 18 Jun 2024 15:35:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcm6490-shift-otter: Name the
 regulators
To: Luca Weiss <luca.weiss@fairphone.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Caleb Connolly <caleb@postmarketos.org>,
 Alexander Martinz <amartinz@shiftphones.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240618-qcm6490-regulator-name-v1-0-69fa05e9f58e@fairphone.com>
 <20240618-qcm6490-regulator-name-v1-2-69fa05e9f58e@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240618-qcm6490-regulator-name-v1-2-69fa05e9f58e@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/18/24 15:30, Luca Weiss wrote:
> Without explicitly specifying names for the regulators they are named
> based on the DeviceTree node name. This results in multiple regulators
> with the same name, making debug prints and regulator_summary impossible
> to reason about.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

