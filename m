Return-Path: <devicetree+bounces-181627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 035DEAC81E6
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 19:57:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 096717B518A
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 17:55:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22D0F230BE8;
	Thu, 29 May 2025 17:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T6M5c+0K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A52DB22FDE6
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 17:56:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748541421; cv=none; b=ZKnP6EzneVypusbgrHk3bmwQ+jZdr1A/GSfI4eiyiPgTsBL27jxgKCaRC/aUquKpD3iEwshMDpK8MIe/gquBAwTrgB4vRPOst+pDl9wP84Kp52GcqnAgX/+7umIuukflA99Pn+8/9c/ml2yuixLT4r5goTxnmv2+aVQ4KEGa6Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748541421; c=relaxed/simple;
	bh=kS9GiviriiCchrXct0uEKMDSd5rA7xErne29tXNsIjs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DhIabCRgd2LXpX3OTLIml+a3eW8xBVH9PHKDveYTbnQf6rqvtl/J7gwTl0SY78DTTL67GiaPb8AWTzQLS7ziyqsAjhM3qWw+5DTUxNqsdEc70vdk+T5xYAtqDIE0p5xD3uUcWuDT9fIwrK+OdQSHQowPSVGncj5jU4mf53RlXZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T6M5c+0K; arc=none smtp.client-ip=209.85.219.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6face367320so3373816d6.3
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 10:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748541414; x=1749146214; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Cnq3317eLDD3aX+MPu1x7nQnkfxgO3IBGujg8LJkV6U=;
        b=T6M5c+0KpJoPw6T3s1dzxMIQTzAqHfa6Hnz3do3TKGJrakZZhcci7Xt8b0GYawYRQO
         kmrSnVA8GPUS20gdUm4or5JUweJ5YKOBYGqSWRAzZDSg1eL59RkR1bq4JhlgQ7dvaz1j
         3TvmeD5mDxyILHoR9/ZHJSbjd2eXF4MTZABOsZHqedy4Bwk2DojIogjtMoPLQSquAfbQ
         M72AjWpzppzplvD58MUjdQnaOx+oGYnkFXTYtOKQF5NwbYdsRQM9SlMQepNpvXNZDFzG
         KsrnI8QvKiKfSk5zEMdJftHxw4vT6CLkEPNayYzOIyLndjU640ufbVZA3jc+94m7Fvny
         nAdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748541414; x=1749146214;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cnq3317eLDD3aX+MPu1x7nQnkfxgO3IBGujg8LJkV6U=;
        b=u9QG5kUHJsnEDJAaTUWvk5jm5ngflhPzZJLWZREC9V84wW8FC+EpOpPDzh93/N0Uzk
         azT2XD6p/tjp3wn5Kh74zBDFg8eL4c7TR+Vl18+F1w7zrELGq3A79Qg0kOFxnVqaq/To
         doAH4VEEylc/WBaNpcxuwxxXloDPw052X5RZiF+u6ZfpKvltVvhbCGojN3T9aexLs8gK
         59MLUc/4/rdaXtdQiQun0IqS4ZGitgzv+kaIXE1yaBmEErHNYiOAXmkJxIriA8twzW5w
         d2l71xbvptbwPW0G/yIzoRNm4S/g1q1a+qVCOrGg5XTe3CdXwqY1nTjHmPag5LJ8TxL+
         jbxw==
X-Forwarded-Encrypted: i=1; AJvYcCXXdnWi1WQrZt8/xVrk9Ria5GK+QlPsutYSWPn9eUzDLAXWE2NQqOSCkccTG2yGeGux0ujbd/Jiz3WU@vger.kernel.org
X-Gm-Message-State: AOJu0YwTF6lfkDL//Ea+vJb6rB5lzxVSRsxgmqsCc/sWsGF4LL0ffRcp
	QTYOaxhi9R1J7qM5yOoqM0hL560JhiuaF8G3UzbKDy8NtuFSWP7ChM5A4cNg0sVWuiM=
X-Gm-Gg: ASbGncstZq5ip4Zk+dQspnJEvVXgMbHFihk8UsfuUp55MByQVl8kBmLGx6Lp2SkeZRh
	sRfPoH91YfzFbigJ731GhHbf6lHr7OAfJUNKj3aJpvznvqLksNgYZD0Ww7WWm+9kfeTLaNU6q7u
	S3KWSfxPOUoLIv8dToLjXHZkxwOwD+qbbwjesZz9Cmo+DXllYOdCjgoIIDpbzHjczmCthpRI3zj
	zis8vszOMnrjDXtRpWDIIq0ldMl8rVaCzd9fU4DBzsjq83clb33SMt1kvrqFPscISnpQkzA+3H7
	5I5nCqsGdJ33ip+pNOEntzNyLshX3IStlCmQicKjDdrce5QRjmflWi63LHEVFDQp4fH7HxxqCJi
	/TkKt/eriyA+WGBEdKcYySnut3Q==
X-Google-Smtp-Source: AGHT+IFRbPY9FcCpkFcar+WohXHkz8dPIXN2wRIAXXxo4Xlx3qkGIE/m8rbx0C9NzOjslxqzybdnaQ==
X-Received: by 2002:a05:6214:f6a:b0:6fa:c6c0:47da with SMTP id 6a1803df08f44-6facebf8bb8mr9098066d6.42.1748541414556;
        Thu, 29 May 2025 10:56:54 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:d79:3250:12f6:aa0:e9ea:e0da? ([2a01:e0a:d79:3250:12f6:aa0:e9ea:e0da])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6fac6e1c68fsm11859116d6.110.2025.05.29.10.56.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 May 2025 10:56:53 -0700 (PDT)
Message-ID: <62092013-1c15-4b43-b045-f8915bfc2d2c@linaro.org>
Date: Thu, 29 May 2025 19:56:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/2] Add the NXP S32 Watchdog
To: Wim Van Sebroeck <wim@linux-watchdog.org>
Cc: Guenter Roeck <linux@roeck-us.net>, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, S32@nxp.com, ghennadi.procopciuc@nxp.com,
 thomas.fossati@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 alexandru-catalin.ionita@nxp.com
References: <20250410082616.1855860-1-daniel.lezcano@linaro.org>
 <650c336b-a698-42f5-ad59-7dcdf24667f4@linaro.org>
 <2a8e1ae7-2a8a-4cd8-b699-c010019c766e@roeck-us.net>
 <a6d64948-e713-4a50-9d4e-6de02a550d06@linaro.org>
 <20250528192450.GA15816@www.linux-watchdog.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250528192450.GA15816@www.linux-watchdog.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Wim,

thanks for the update

   -- Daniel

On 5/28/25 21:24, Wim Van Sebroeck wrote:
> Hi Daniel,
> 
>> Hi Guenter, Wim,
>>
>> On 14/05/2025 20:09, Guenter Roeck wrote:
>>
>> [ ... ]
>>
>>> AFAICS the patches do have Reviewed-by: tags, so this is just
>>> waiting for Wim
>>> to pick it up.
>>
>> I fetched the watchdog tree and saw it was updated from May 23th but
>> I don't see this watchdog series.
>>
>> Is it possible to give a status about it ?
> 
> commit bd3f54ec559b554671e5a683e05794abe3a609df
> Author: Daniel Lezcano <daniel.lezcano@linaro.org>
> Date:   Thu Apr 10 10:26:14 2025 +0200
> 
>      watchdog: Add the Watchdog Timer for the NXP S32 platform
> 
> 
> It's in linux-watchdog-next since the 24th.
> It will be sent to Linus probably this weekend.
> 
> Kind regards,
> Wim.
> 


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

