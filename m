Return-Path: <devicetree+bounces-90039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A87294394E
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 01:16:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 795471C21478
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 23:16:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8F5616D9A2;
	Wed, 31 Jul 2024 23:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pt5m1/4p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127E716CD0E
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 23:16:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722467780; cv=none; b=Rdjq+2t2ugLzchbWomoJzfMvHMcLpDtYNHHogSk7bxJcY4MSRT/3o7zDBBM+QIVrU7DB5bjtKJoEpSEm4PKqtozRvhNvvGaf6sj+i/1DYcDQ91MDYgSzEOie6LYATxyKsFacxKIV1VY2ATPzJPQbwSqAGcC4OEbJnjWXh1RWlFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722467780; c=relaxed/simple;
	bh=tCZ+7U4gvlAIglfZR61b5pOiWsgsslmYDZ8AIeIP8JQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pg5vlBoOCwO8QzQc7yVXPyyC4k8q0PPI5ajkzOZnxSn92vLXshyB9GTO2fGZHkbfa9MkkeawuL9xwmk0osTkK1w20bp+LbG25uXOuTehFd1G3672b5evdZTb3gD/rqjQmCnCmCuQBVmLbvoqFp3lQqtGOKcKQXHKI+Z4uPHT1AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pt5m1/4p; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ef2e37a171so10507621fa.2
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 16:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722467777; x=1723072577; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JavNCLotRK4KQxq9lyYjaiEtUxB6+1luGLfLNHw6Wfg=;
        b=pt5m1/4pjp6DGaWkf22mW90B3kDJZdg7hw706XpCesTC8XawrwAEH39eTjs8XanoD1
         +83v4gxHhFbwwpI8/IRmKf6Gg/VWie1Ute40pjQd92qI4+GLwm77n4ea95ieaw6ocbG8
         OpJTWQEyjovECuxn7j1RwfHGecX55ndQnbWfzBw9qjXPHBvSfLR9XbDA0umL8eDkf8Xw
         3V3ASeCsIwEAHdS7LYaNT0VDUIsyTfdHR4w6Vl1JbVUMdUb/pR6+clbLbyW/0FNGuqO/
         T70bo9T7ZlM1jq0C4nxhEOqTVt4BJNE9enEovA/1yQbegN3HdDdjCQ652lgQPIFrzM86
         zAVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722467777; x=1723072577;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JavNCLotRK4KQxq9lyYjaiEtUxB6+1luGLfLNHw6Wfg=;
        b=pIA4iiKSg/m2DrK6dDYgvWCbtBOnI+ELcw/Y5grQvOID7NkzoSYMX5o+0LVx6ITjHr
         ndbcFnc5xbijwwTzqxxJPM2BXddSMdHgilYoja9hol0VILG2jzso1iY/B7rLt3qoT8mS
         f/0YsXyc4BQwl1JkZ6w+/jjOopr99ueBUp2IDxSK2efRVdKaccz6IFF7dsedml37scgN
         q9hmEuz8u9KO7YxcF7HSNzzc0oiP8Wi3yeh6HxjP6njXJDe9S9z0wLCIAnaguew1do4j
         OJ8olBz7oSybTVT1pSYQ0RAy7ZnpPChXudXN8uwJtv/jDCLE76xk3uLdbIjmJwkCH3H7
         lPSg==
X-Forwarded-Encrypted: i=1; AJvYcCVIbT3JFpsnmejyEwvOedPtlJBJmjgtKounzOZQBQmNMVCKk8cwzfNkwxle084Xmk+GuqWqmjS5xLj6@vger.kernel.org
X-Gm-Message-State: AOJu0YxvgRqtjotKl50+0E3B9+nhLOSu6dVjA+GUugEXK3enyje4awny
	U2xTFtY/Dr58V4H6L3NPRyp99oYQdVQ2aGDQZWgFC7kER0DCA6AWNeK6h6rofiXPkIgh9WFbrOA
	+GWk=
X-Google-Smtp-Source: AGHT+IEaVpI3qrTHxRrOBmgtzDaETYctHshvQkpYcpqnhSaAHYd2SYlV0Bd+Ukxx1gkWOWC9hVGEIw==
X-Received: by 2002:a2e:3a17:0:b0:2ef:307d:1f with SMTP id 38308e7fff4ca-2f1530e12c3mr2586031fa.1.1722467777056;
        Wed, 31 Jul 2024 16:16:17 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f03cf55c77sm19782501fa.62.2024.07.31.16.16.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jul 2024 16:16:16 -0700 (PDT)
Message-ID: <f56063e9-1db0-4d67-b08c-dcb8140d5b8e@linaro.org>
Date: Thu, 1 Aug 2024 02:16:15 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/13] media: qcom: camss: csiphy-3ph: Fix trivial
 indentation fault in defines
Content-Language: en-US
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20240709160656.31146-1-quic_depengs@quicinc.com>
 <20240709160656.31146-2-quic_depengs@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20240709160656.31146-2-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/9/24 19:06, Depeng Shao wrote:
> From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> Replace space with tab in define indentations.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Depeng Shao <quic_depengs@quicinc.com>
> Reviewed-by: Elliot Berman <quic_eberman@quicinc.com>

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

--
Best wishes,
Vladimir

