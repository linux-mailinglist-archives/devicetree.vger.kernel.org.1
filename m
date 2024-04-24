Return-Path: <devicetree+bounces-62485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FA08B1454
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 22:15:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 75B811C21348
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 20:15:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA6721442F5;
	Wed, 24 Apr 2024 20:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kssF1u+2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5639E13DB99
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 20:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713989687; cv=none; b=fHONnOoFJtnIJmC3Lk/8iG+hEOPr8Y2BykP6qQ4Er3qU51TCyFjwEZKvWQ/GTmepqTH9czKLbGEDdggl3BYggIH1sQpemXfr0/sr8KipJIlGL/WbEOBR53pLrW/fobKdD8w8Wa2dkDFwIqrxcR22b9oQu6Szc4bqhMXN1TDc+A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713989687; c=relaxed/simple;
	bh=5juKDdGEYxNl2ENPjsF/4a/Y2iZb9ON1oaGj0sw8O/8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RW5ltnXSyuorbWuXQlyQNREiyzRshwY2S6tQqLnaHVvApVfOyKXydZxQwv1J5OxjIdVJg8NOKbgBD+0rUxTQqdEv0RBzt/ikMfNtMh2LyxhsVA0wzXsz1hwRpZF8nkrb0JjNLc0Kg2JVZ+b1E9soFBn6SQ8+GYA+UkVrjtnNIPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kssF1u+2; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-516d68d7a8bso290825e87.1
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 13:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713989683; x=1714594483; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rcWOpWv1JwDPxWKBqvGmsKPJY5XCaFq86YjpwkCYxAM=;
        b=kssF1u+2ueTxkV7YbInRzGjki5stAj8wmtxHqAiCG9YpVuKukEl02cjJp3Zs87r/92
         k95bQlhf9OjGvOloeorkLFi1ncIHw+MuzURhFILZ/UZK3m4/UaiYNsq99TjjGl+myvQh
         RJyr51AJjEhvXIWq36n12VxViLhi/+8xGqSCFmkPC2xVJ1FJ56LJ1wSz48vASnqQaAEp
         QroSl4+vKtt4nuKn76G1HGSvxNoNUP4h6DoDC67+TkA/xd/HTWpapwaviLhSN/wA2OmM
         jwGodqGsaJvqJa0hpwfuzA1dgmdJr3OgQ9Z6S5dbD5ZQhggcD9/Xr03jBUR6m+jhFuws
         VGqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713989683; x=1714594483;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rcWOpWv1JwDPxWKBqvGmsKPJY5XCaFq86YjpwkCYxAM=;
        b=pQyGAz4UtVYn6x+55LBPdBYSSfYtloYR1IVsyQnoozLUhOMklSBkaL6naFlmJa2re9
         jZqfAgQeoaZg9JCU99+Z4K3C29bWySySvdwws0S0k+mLREMQZ7UqisHkOzFJlB5vLywB
         3uu9o1z8RHspH7X5G9ZBSkqBpqo/+GxfXnNKBjPkj3B70T29k3cqFb/olrnDJHxtnCNE
         YPlctqSUFzw6F89dv3ZL9V9hORmSPdjxz5RYtETpNf1JSO7kbrR2MR8WIZZ0iRg9MxEi
         eNIYlYQHYFIUQtWpafYMP28fsxPvTL3E1jiQWMXTHEGZ8Aet7R2MroF1A2/ZOAOqb1L+
         KOFg==
X-Forwarded-Encrypted: i=1; AJvYcCVQf0i+Xw+mlN1V0WBI3oR8jjNb6nZ+FY6DWu3MjCKxfkpCzfRZo0iC9Tqs3DxlOvfh2yTIiO6ZQTUXlJ74/JNuERfahxJX79beFA==
X-Gm-Message-State: AOJu0YzwWEe1A7Iv3BHnbP2C7fvK0H04PlbqW+29DURl9mbrAIrAUw2x
	fmRfTzObMB+rfpBlnbgEW35thSytUwtZj2EO+mr1BedcsOZYt+1m1uigHzqnFGY=
X-Google-Smtp-Source: AGHT+IH9wlcx4Zg+9QomKNqCiiTVcanWix96jlPdIDd7H3SL1paT78g+EIL8htxmS7imEX6O6XqwzA==
X-Received: by 2002:a19:914a:0:b0:513:d71e:eebd with SMTP id y10-20020a19914a000000b00513d71eeebdmr190966lfj.32.1713989683584;
        Wed, 24 Apr 2024 13:14:43 -0700 (PDT)
Received: from [172.30.204.223] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id n1-20020ac242c1000000b00515b5cd2361sm2485942lfl.164.2024.04.24.13.14.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Apr 2024 13:14:43 -0700 (PDT)
Message-ID: <439e44a6-8026-4283-a2b9-6a2d655f28fb@linaro.org>
Date: Wed, 24 Apr 2024 22:14:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/7] arm64: dts: qcom: msm8953: Use mboxes properties for
 APCS
To: Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240424-apcs-mboxes-v1-0-6556c47cb501@z3ntu.xyz>
 <20240424-apcs-mboxes-v1-5-6556c47cb501@z3ntu.xyz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240424-apcs-mboxes-v1-5-6556c47cb501@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/24/24 18:23, Luca Weiss wrote:
> Instead of passing the syscon to the various nodes, use the mbox
> interface using the mboxes property.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

