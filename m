Return-Path: <devicetree+bounces-50259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B1087A7F9
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 14:00:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 750A91C2181A
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 13:00:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 801923F9C7;
	Wed, 13 Mar 2024 13:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qfC/lPrB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4D783E487
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 13:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710334833; cv=none; b=kM43r2wh7+AQxbnguUs04Ui9HjQ9f8ejlQkaJqdVbTbfaNnEFjLvbrGoB+4ZaoAGvGrlYpRs52a+k9AZmy18cxie1o4R1nZ17nIoM0yI1jy3hFZ5ymnP9itMXHPrxRLRnhU2Xj4Xjp1ulHRvxUZdIUyhtLbs4hmyJ1uU9WPDKcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710334833; c=relaxed/simple;
	bh=tyQiThEp+4HuoOzZEzciTYNhRKMvGeVDr3uS79XsYiI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IraIXRcJvXzlh5DrSr2a2gdf0Cc6jbeiOKBcG3PECShO+26qOpZ6++haT6qxi6gdXNHY598H3i/ps3eLNzgSXtFyOZSGhQpRbiRBs/gW5pzdb9pjYovO+Sh/rwPPGyY7MJHO0LVJuNo3WGEG/zR5IZ0WEyUvwvLNV+0LDyfPVdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qfC/lPrB; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-413eb712c3fso1929855e9.2
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 06:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710334830; x=1710939630; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7n6zmAqsHED2fMtlbML3A5rve4vFnW7OpII30SeEmtk=;
        b=qfC/lPrBOI04ZIQfc+VKz8k/BtypiS6kXbHXYs5dIrNjTvXkvyXFQjVjzLYZR8Qk0y
         9+5GWdqZlFzXqa2S3FP0EBCIo/hZ7WO46mEfTKlVY2y/7IJ8uF3X+lL+BK15Er4UgXVT
         ZClbdqWpM8h85McWrrTsZ+FwliiNke7UWmJjKVd6d45K24SJZot7niJ8p+zLTXnFKLuq
         oScByG8XTZSDAsNu2zIUirFivBE37s6XosZ0sTt+H9/W00sFiet/Y6xBUOlylV4XDZbA
         rRiSjFyeXGoNXzEvS2/eKtEzfUvSpUomffysBid8JU4MjnVDKb3ZV+9V94DHixUasRzj
         fzeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710334830; x=1710939630;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7n6zmAqsHED2fMtlbML3A5rve4vFnW7OpII30SeEmtk=;
        b=iPZl+pUZTPvclP2TxBGWfnIqVoTrw5C0Dag/fBa0Vja8979KogZQN+EjQTAK3Tuwwl
         mGy8KY4EkgqgmkE0QvWiuRKF9Lm2/P54kt5Xcc8O0rTg1W/4j7FiymqYbWdNyBtFUP5+
         yJnttwknUaBv1wPn8mkn2IOZFDakbLc7jI3fERz533A4kEHBAFmIWdSmkW+F6pAHTof8
         nYaht/e/rUJamPl3SLggoyYwr8EWSGpkDvUTnN5NWf0YYFdV/UFRnBlHImQ2jXY9Krcw
         CKpQgD6iQfZGeNjbfEewbGZyNAicuXNGI6YdKzOaSRz1dQIGLyL5PXh4/pG847YFUOLw
         YQ4A==
X-Forwarded-Encrypted: i=1; AJvYcCUpAPVUC0X3NjvwpQgxG04Wecp7sE2bRTQQza2MIF4l9HHi2bCw0Q0nLOLqfmYcA2vsIXCWYGZsp6oqZxOs6+WE3fscOqz2lpUF3w==
X-Gm-Message-State: AOJu0YwVpdmhsDsvHPMR2jz6diDGgV4pSJztyLVxNI0tamzfwrdlhkY1
	VWz6u2qFENB+VqKDUueQJIGfLUg0dWNjSbTBYkQPHC0dMLwGaAwhmSAl2oNChQM=
X-Google-Smtp-Source: AGHT+IHv2E6BNLHpvAnXP2/gvY42t7hY8WaSL8xSs+EUEUfxnIcE9KktgA7PSqfxy4qW5lBltcB3EA==
X-Received: by 2002:a05:600c:19cf:b0:412:b42c:8ff1 with SMTP id u15-20020a05600c19cf00b00412b42c8ff1mr9754544wmq.21.1710334830049;
        Wed, 13 Mar 2024 06:00:30 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id w3-20020a5d6083000000b0033e75e5f280sm11589696wrt.113.2024.03.13.06.00.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Mar 2024 06:00:29 -0700 (PDT)
Message-ID: <2e93bd35-f966-4787-8c0c-8bce50fb2693@linaro.org>
Date: Wed, 13 Mar 2024 14:00:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add Schneider
 Electric
Content-Language: en-US
To: Sumit Garg <sumit.garg@linaro.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, stephan@gerhold.net,
 caleb.connolly@linaro.org, neil.armstrong@linaro.org,
 laetitia.mariottini@se.com, pascal.eberhard@se.com, abdou.saker@se.com,
 jimmy.lalande@se.com, benjamin.missey@non.se.com,
 daniel.thompson@linaro.org, linux-kernel@vger.kernel.org
References: <20240313123017.362570-1-sumit.garg@linaro.org>
 <20240313123017.362570-2-sumit.garg@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240313123017.362570-2-sumit.garg@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/03/2024 13:30, Sumit Garg wrote:
> Add vendor prefix for Schneider Electric (https://www.se.com/).
> 
> Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


