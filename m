Return-Path: <devicetree+bounces-52468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 67255886BC9
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 13:03:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9924F1C22A02
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 12:03:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5BAC3FB29;
	Fri, 22 Mar 2024 12:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iOQXRbX5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFAF27453
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 12:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711109035; cv=none; b=cO1P47rSU0GqIVJhL8E8hjTTHJ0O8bISalCPPmi6IzZKi4NFe371pLNKePBaeb9Wgnzqrkly5h19tnv1L5AmrYYKDNn+8T2iqpmkaH7iYNhVlDmgLtg8f8vfcc5y0o2PgzEirQMqn63U00FXy0jWi5YKXtj28jLNxG42sUNkFY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711109035; c=relaxed/simple;
	bh=Y4dOlSnG1mp5DbfHiWqcxPfv265KzC6b5wyQVWaCNIk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Lrfa+a5iJSihsd6eh5i5X/BKFcXlhqyIOamUW/ns/jWk70eUk0Is3kx40iK8KU3PVw6rrubfjelZRyDbuuWfVyrEPoczFOqHWpXm4Mm+sYuYS7+x5Rav37qfa1HSNbohhqbPAqhUmqHhQJyqU7ZADHfAFJ5nGVjalOz9yqKrvaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iOQXRbX5; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4147c4862caso3997845e9.0
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 05:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711109032; x=1711713832; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rGs4qRI69HmirbYdoo/X0WlJUf5KRctON/6+5RBKAyA=;
        b=iOQXRbX5nYE9A7gw80/uhX9L4DBcmS9md42ehkCWPMaYeLnmpzi4j8eDTcC/6kpBOJ
         u1xz8zh0emOWb/pPDw0Qiufo8m1ww8mJsC4BGmYusxzmx/xOJUW9BUVy1nLaQBU039Mg
         4u1BanU+Br8YveaHoRBVerqK0VQAS+nTEp0iVDNA1bjdyhZv9Z9VN5ULtuciOpsMS7LM
         YkrFEM9rhE5rl+p848Rz1O08ZNtdjIi39xzlKk/1rxbi12G2t0MKw9PkSTR3UMdgCUjH
         /IRtPzBl3jc9E3gQQsuHbFWc6oarR6lAe9xGe+G8Vkrpo8BU+qpbK3O4cPS1+6K8C38k
         /g0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711109032; x=1711713832;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rGs4qRI69HmirbYdoo/X0WlJUf5KRctON/6+5RBKAyA=;
        b=S+Sv3r3JzfIaQK+rsFAvLCGqq+N1kxjktJPcF/Qu/901gFDKRNTHN8E3DlT1k0vPB7
         81SSTamdsjUX3BYHPynWpwhP294gurJXaEowK0njaLcND0FgHtQa4+BhdLg5pdyYNplI
         L/3nh6izkFFBSrWUltRVw51IjuM/A0zH1EJ/K/qss2rxp6qHcCmD3ri7qxHbeoxH8l1e
         UnGHHa4WOEAJzpFgkLEPZta1fvgVZduTLUe7fKCziWj0c4PXZH2yqCHCx89WUAWY3KGS
         fSdOnGAzZmH1dHq/Op825rD4U7zFLgFsc2dp7kv3/Oa9X/EYNeBbTEtJoB9zZzoEm+TM
         UzQA==
X-Forwarded-Encrypted: i=1; AJvYcCVJeiuiTIucvYaCZviYGr6g0FCE5WxK+6UxhwXkv8XJ2OTzo1+ULsMWMJC+slP7+806vMoxGxUOW+MKsJpzt/dcW9ncGPPyMdP7sA==
X-Gm-Message-State: AOJu0YxK07OT19SNh/lIY45cq3SdcboOzDUZ8ld+/Qkj0dAag/1iE8Ru
	0/qe0+8LQD1hyScwq9FeWqfUoWb3ZdJfZ1/jBCk64mrjjZ0GfJaOGETmZysDGmc=
X-Google-Smtp-Source: AGHT+IFO/z/zCR8zDHG84NH9P3H6rTvXVlOBLgULqH1YZiOHMt0jBLPjjbcvbZO+VyY3d7hLuXaRhQ==
X-Received: by 2002:adf:fe4b:0:b0:33e:bb67:9596 with SMTP id m11-20020adffe4b000000b0033ebb679596mr1980258wrs.64.1711109032506;
        Fri, 22 Mar 2024 05:03:52 -0700 (PDT)
Received: from [192.168.0.102] ([176.61.106.68])
        by smtp.gmail.com with ESMTPSA id cl1-20020a5d5f01000000b00341b9737fc5sm891207wrb.96.2024.03.22.05.03.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Mar 2024 05:03:52 -0700 (PDT)
Message-ID: <30f71224-7340-4255-bd48-a96252985b15@linaro.org>
Date: Fri, 22 Mar 2024 12:03:51 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8250: describe HS signals
 properly
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
References: <20240322-typec-fix-sm8250-v1-0-1ac22b333ea9@linaro.org>
 <20240322-typec-fix-sm8250-v1-1-1ac22b333ea9@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240322-typec-fix-sm8250-v1-1-1ac22b333ea9@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 22/03/2024 11:58, Dmitry Baryshkov wrote:
> The OF graph should describe physical signals. There is no 'role switch'
> signal between Type-C connector and the DWC3 USB controller. Instead
> there is a HighSpeed signal lane between DWC3 controller and the USB-C
> connector. Rename endpoints in accordance to that (this follows the
> example lead by other plaforms, including QRB2210 RB1, QRB4210 RB2 and
> all PMIC GLINK platforms).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Hmm

I think if you are going to change the name here, you should also do so here

grep role_switch arch/arm64/* -r | wc -l
54

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

---
bod

