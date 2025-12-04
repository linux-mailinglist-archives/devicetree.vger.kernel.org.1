Return-Path: <devicetree+bounces-244161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D692CA207E
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 01:20:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7BF7F300F9C4
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 00:20:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 154AE17BB21;
	Thu,  4 Dec 2025 00:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="StwBcJGL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F76312FF69
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 00:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764807603; cv=none; b=nUw9zGmAdbibeu9e6xIX899RoH3sr1Rv4p5IN6tHfGH5rusxbvKxcxy68Nk+tlZX2f8uAjSrJsitQ7zKr6Qcm+KweHJtqm48l6o3xeews27DLLdKDw/7Au8+z1TWUMyKGOiukjQTQUCLsutml55xRNmz2XEwkneUU/AvrshfrSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764807603; c=relaxed/simple;
	bh=W8JDpJ0cszJ31H/pDOqCniqWJfMlgyzvY+vNNyzFof0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UOLA/aTK1bjtR8j+sivy2750PnmaLbQ+yP/m6KZ5jSiEqKq0ZYf/bjMr9aQK9iwLBcI7aXxsnM7Fj79R96otEN4q4uYbGoYxX7fOQq2vojIbktzV7VqtvNxSFeiX5C0ZgZjiW3QXhVikux+V4sDNWkzvngh2Gji473fQD5XeIy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=StwBcJGL; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4779cb0a33fso4469725e9.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 16:20:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764807598; x=1765412398; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Sy/9CGo8NUcxokw+wp92Xk3pkZwIb1w5SdSGUoemftk=;
        b=StwBcJGLcJfxTssaWb8uykX/xbNE8K89oLTIURWcXQswGIujc+q9L7GDbTeunhGmq/
         LBF/LmqaIkHhSQKSUPUVxe4cKnbs2EZvPYKikUjehxJoKYxZHim0cofRSvIc8NHMcu/s
         UhLlYJ6IN3zRbWIOw2vMiX21NULxRNnUiKkzTYFurXir/b9WoiXv1Q9Vyr2mpG8zaBeL
         FrwoCw72h2ucp/cBrLQJf7KBekH32J1IwAVFuYjc32hxOWQoSf2ojQ0L1YS0L6iUosPW
         5wXk0/BvsO1CjGWAI1StK6IuJWJOJk2jR0t/HMHUNJNDpxO13bodEXI5BR0Q1QayNblD
         +QWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764807598; x=1765412398;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sy/9CGo8NUcxokw+wp92Xk3pkZwIb1w5SdSGUoemftk=;
        b=Di5EldEFIgIRY1BUzTLgNS24P+8WCZwByNrCvsewW6f5ImmEJJE6AbQf5onNfvKFRx
         jkpHkkkQGK20JQtKU8Myp2xi/pBs089/65vWnONG+yPDWPggOcgnCNxBn+M6Jm30k1BF
         5kr3l3dNesKIXWH6FuD6GqWGXxRIAUf2W2qHj2jEPHBy1Ezle5C4Ffj4tRgw4FM5Vrxq
         8JQ8+CXjL8v2+aJVuiPm/KLXU+ElpXns9iUcGlIfkGrpBb6nVsPUIG+47PYaTdxmWSt2
         yY1GdF5oJycfmQkMq59Hg8lmxzdCf3SGm2L0W7+pZ8Bwo1ju+rA92HvsS3dPqW/8/fiV
         VCtg==
X-Forwarded-Encrypted: i=1; AJvYcCWNamnWuxiI5kYgqo5BfqIOX0xrgCmpvOmLwkWB+CqM6og0VKiLXvDH6RojJIYqpTXEwjdLHMhV/S4A@vger.kernel.org
X-Gm-Message-State: AOJu0YwTUkzK+VFmr1pkQsw+MuweOn7i3dNaQBDN/vmUbYSYhxDKNdBH
	itt8jqJrnJ9ZvScLMJxCyK7m0/CqCaVRevYp86aBHdiS4gFL7bBrU6pdV5br/ohm2CE=
X-Gm-Gg: ASbGncuINSmUbSxFi4dcQHqHS5ProeCR3aZZtkra83o6pNLPNC0ZQjNt55b5IgjlxP4
	e9BJ7PXXDAux7t//uokfp8rbqoAatzQP1e2EzZNJWO0wwVFC0odZJ6heNPH0el21NqJ/R4c36WR
	+++UojsrPFnQTpFL2geTbI665C5Y1DuoqId2c/OrFO5WwvWx6M1I0k1UE7h+B36b1jT4LXdsE5a
	T9ENmqk1nJqZqJPgCwiZlAzrP2UTu/sB9E5P426ZcrqeecCDrGZ9PLAYU9DMsxKg2AynvxIctW3
	wEao/ZhhQuGkxX8R8z3utP8oLMN2ovx9P2m1RhzTExSlRUJwS3K7ZbfJzHWwF+b6j7sw8tPdaNm
	zrzrSP4i+XHcpyy3bVPGp7ZkiGttrVzeNpBMoZBEJJCzfAdh7FgWAVxMvSLhz1aF4PNT4VA1739
	uzUcyDnyqIvOeNZ5RxWZrJw7tO62S00YpY4lFIeoBt2tO49WD3MccK
X-Google-Smtp-Source: AGHT+IGctIUBDJ4B++ZPZwfzieuoC6rE0jEla7NQRIEMiwCpYVYx+DGWozaw5tUyDHsHwHr4Gj1ARQ==
X-Received: by 2002:a05:600c:190d:b0:477:af07:dd1c with SMTP id 5b1f17b1804b1-4792af43c8amr45511535e9.35.1764807598460;
        Wed, 03 Dec 2025 16:19:58 -0800 (PST)
Received: from [192.168.0.27] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47930d70806sm2382045e9.13.2025.12.03.16.19.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 16:19:57 -0800 (PST)
Message-ID: <65414d04-3db9-4dc2-bf1c-1e260713b818@linaro.org>
Date: Thu, 4 Dec 2025 00:19:55 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND] media: camss: csiphy: Make CSIPHY status macro
 cross-platform
To: Andi Shyti <andi.shyti@kernel.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
References: <20251130-make-csiphy-status-macro-cross-platform-v1-1-334664c6cf70@oss.qualcomm.com>
 <ae056a82-e5d4-4a73-b478-37533ce2e0ed@oss.qualcomm.com>
 <b9150026-cd87-4bed-8ba1-800e92203a30@oss.qualcomm.com>
 <577ece85-adf1-41c9-b7a4-ca65e27e6c75@oss.qualcomm.com>
 <n3w3lvw2tnqjcu74eesuo7sr7nbe5tqlufii5zsvvpwtapxd2p@6pbrr46cc26j>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <n3w3lvw2tnqjcu74eesuo7sr7nbe5tqlufii5zsvvpwtapxd2p@6pbrr46cc26j>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/12/2025 16:57, Andi Shyti wrote:
> Hi,
> 
> On Mon, Dec 01, 2025 at 06:18:51PM +0100, Konrad Dybcio wrote:
>> On 12/1/25 3:48 PM, Vijay Kumar Tumati wrote:
>>>
>>> On 12/1/2025 4:20 AM, Konrad Dybcio wrote:
>>>> On 12/1/25 7:25 AM, Hangxiang Ma wrote:
>>>>> The current value of '0xb0' that represents the offset to the status
>>>>> registers within the common registers of the CSIPHY has been changed on
>>>>> the newer SOCs and it requires generalizing the macro using a new
>>>>> variable 'common_status_offset'. This variable is initialized in the
>>>>> csiphy_init() function.
>>>> "offset" + "common_status_offset" is confusing
>>>>
>>>> Let's maybe add some platform data where we store the actual offset of
>>>> the registers in question and pass a csiphy ptr as an argument
>>>>
>>>> Konrad
>>> Hi Konrad, may be I didn't follow correctly. This is consistent with the way we maintain the other SOC specific reg offsets / data in the CSIPHY driver, in csiphy_device_regs, isn't it? I seem to think it's clearer this way for the reader to see all the offsets at one place. No? Thanks.
>>
>> I thought this driver was a little more complex.. anyway, big
>> changes that will make this prettier are coming so this works too in
>> the meantime
> 
> After this short discussion, in order to get it in, can someone
> from Qualcomm ack/r-b it?
> 
> Thanks,
> Andi

I'll pick it up per nomal.

---
bod

