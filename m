Return-Path: <devicetree+bounces-105111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB009852D6
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 08:19:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB30B283995
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 06:18:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A58B81547EF;
	Wed, 25 Sep 2024 06:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bahQ+can"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B362155C98
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 06:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727245126; cv=none; b=CSQR189Uf8OEwTivfaDe/SI13X3c8KxhSnLIMZa82et7tvHWs4AXZe5+Z5E682B8BpK4IAHPq/en+VosWw3CKKN89zOHu+sxW9t2IDzCXwTYgu4Pv1k57JvvLj9XhYi/b1hVsyzTOz7pt3lO24LLxdtjw35IL95nzXW0yRg4L7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727245126; c=relaxed/simple;
	bh=4PFi3GrWcYBdSSW0hgzBkVDs0dXzs21wTMmchnPoW+s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YQiBtwwXYxE4LNL84M/0FJ3Pg6mdZaDdUy75gzFK8R0za7/aQjlOJQDBuQqmocNSEhpJxL/iYXInKZ2LFgfk2Z50yq2/sMbwC4JQ6uBmefItQZCHa7U0a0Zcn8XDvNIcxwcMUNfnQrIWlb+42DXn597ZhmpsPY1SbF3VzRwnj+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=bahQ+can; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-20792913262so75217245ad.3
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 23:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727245124; x=1727849924; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gAfB/c2dUK7Tp4TizuYkDvXRM6wc04Km7rfihTnNlVI=;
        b=bahQ+canDxfoqCvyVVBxpy2yDQTbPoEIGfwsErvWKUcaG0DhTb9u+YhB57wl3rOg7i
         hEkYGbZG8KnbFZFgJ2FrjJdiLkvGdi/OyLhkF0B3W8WmRTMAcnhiX4By6yTAG2oww8Qx
         FxYFcFn8EKdL9+/r1Z46NGQem1hSHkOjcjGZs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727245124; x=1727849924;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gAfB/c2dUK7Tp4TizuYkDvXRM6wc04Km7rfihTnNlVI=;
        b=IEC63B4zu3j4J2JMVh9poiVPnNvHo5shxtqlhj/kkgPN6+BfovBloDxTC1SqsoJqhr
         W237sWhWd+vg+EbMKbRFyxAt/Egqtwv6u/5nm93dlRXUodSdvaqwoMF7zZQ//NsXOmc4
         4OOFYjRAYXtLeoRjBWtYgvQiX3TvVB9rQ17w6gWWROHrWXGpylTwTRcBppIzMIyruY/D
         91wtnClOVIbKG+B7X5BSioFMdwcZ0zFsqs+hOFhTzNzg/x9uj1cPxDxdKPznzIKdkqiM
         LmCJiAnh9RLUvgVbUv/pOjBXMudxDE8sPTXIaFUjukicC6ztem9ggiIGa0ms9+a+e24E
         4dUg==
X-Forwarded-Encrypted: i=1; AJvYcCUQOoHe2nrPW4yF43vTRpHDmxRj44RQBT32URPBs2w63Rs/7EwGqCVqJH7Rmpn/JzjixKfo4ZgtU+IG@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3vfL+2Uk3PPVKbDudoeeXCmFD0sFExQUyW4wZxLPqllSbFYr0
	caq33o+JmwJ9Degc0AHlJ/gJA3oYa59qAJbt+FufZDXAhW+Bpcbao20shw9KUg==
X-Google-Smtp-Source: AGHT+IEdnYbq5bAx4Sg9X+VZO3Xo5eBYOK7WziCE8Ch3Kc7BECkSDi4+tCYZhgtuKZ8+gFm9JzzLAw==
X-Received: by 2002:a17:90a:2dc6:b0:2c8:f3b7:ec45 with SMTP id 98e67ed59e1d1-2e06afe8f6fmr1835727a91.36.1727245124474;
        Tue, 24 Sep 2024 23:18:44 -0700 (PDT)
Received: from ?IPV6:2401:fa00:61:204:5d35:3dbe:2256:3e42? ([2401:fa00:61:204:5d35:3dbe:2256:3e42])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e06e1ae741sm665351a91.15.2024.09.24.23.18.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2024 23:18:44 -0700 (PDT)
Message-ID: <c9f7042b-1e61-4289-9ef9-ea15bd7e9847@chromium.org>
Date: Wed, 25 Sep 2024 11:48:40 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: display: mediatek: dpi: Add power
 domain for MT8183
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: chunkuang.hu@kernel.org, krzk+dt@kernel.org, ck.hu@mediatek.com,
 robh@kernel.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240919112152.2829765-1-rohiagar@chromium.org>
 <20240919112152.2829765-2-rohiagar@chromium.org>
 <4djlcabqjkq7thbxadjbbi6oumybnyzv7biwawke46ctjccwye@rmqougrj6pl2>
Content-Language: en-US
From: Rohit Agarwal <rohiagar@chromium.org>
In-Reply-To: <4djlcabqjkq7thbxadjbbi6oumybnyzv7biwawke46ctjccwye@rmqougrj6pl2>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 24/09/24 2:41 PM, Krzysztof Kozlowski wrote:
> On Thu, Sep 19, 2024 at 11:21:51AM +0000, Rohit Agarwal wrote:
>> Add power domain binding to the mediatek DPI controller
> That's DPI controller, how can you add here power domain binding?
I think, I messed up in the commit message. I wanted to add a missing 
compatible string
in both the patches.
Will update the commit messages in both the patches.

Thanks,
Rohit.
>
>> for MT8183 that already had the property in DT.
> Best regards,
> Krzysztof
>

