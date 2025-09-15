Return-Path: <devicetree+bounces-217193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D410B56FED
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 07:53:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DC1267A055B
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 05:51:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 585BB277011;
	Mon, 15 Sep 2025 05:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fLgMo64b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9E4275B1B
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 05:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757915613; cv=none; b=gwKA8GTghpAZJMzMM5fMSE9GNbGtdQcmlVa/gAkyxtFJmXcTp8DaByOCpl+AW/OFIuG6F0Me+qwW0BZgq3F6SnYCBJPhaaQhvJtPbyg7e/up60R8Cw4ED7oFTpqD/PbfFm/GOZbZbaNxKrgqLUNopu4tTi3bzBk0rOkORLNmlQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757915613; c=relaxed/simple;
	bh=JIF7wtlPlo7ensEBWZTrh6HhFvaUaAowbOa05FbDUnk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZuO3qgHCCA8/Kwn766oS/xz4KByHA+0vLvs2gs7t7ByCTACFE3KAMuohI8QL1Ui0jzx4xC97BGfL+pn4HmwyQU6bXt+jR3AA84wip1eddrcidQm9hd6ZoYL5eubnYYEG12vtU6l6SkS9naAGeTff6zFrXxJODaYlDasE35Goybw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fLgMo64b; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7761e1fc3faso1613263b3a.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 22:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757915611; x=1758520411; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lXozmDJ3HnlGu75CLn9cmOAS5UrsjMSL6Ugc5vl8nJE=;
        b=fLgMo64bjJDN8aDInzKl2wmL7bTzRvamykzapDgnZQ67SltrVl1GioYK4ezgeU5abg
         fSKDzlBIMisipcz3VML7KINz2/swhyhMQlNBO5F3ch7i+39vhqYG9MbIw9uYNDOoutFZ
         FZ4WT+sSYxCI9H4k7vtRfpLDdjkluwc1cQbvmcOTqv93oo61Rc9xXn6BI2lcMSJj50g7
         wt3g0nFVa5jhwJliMiwBMzkjiQJ5YRuEcw5guCDFtdM+O6C9b54tbhCTAPJRGiHtzKyp
         7/+dsiPb5f4l2G2yNg0wKMsIiPjU8bQXZPESTSFCh373/duukHWDPtnVsxSbE8h6609T
         8D5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757915611; x=1758520411;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lXozmDJ3HnlGu75CLn9cmOAS5UrsjMSL6Ugc5vl8nJE=;
        b=Tnn/UWzxjK+ToHxsbKFb1le7jTqWiLpFsVOHkRpVF45thwg3/BIBfkTFZnpG0ufQbi
         zTZzjBdGi78AffXqfm2SdVdv5u98ZGdnYd1uCM6rgJv74UuG3SALjoIOQoSkSOJc2mBW
         wZyow00Bv9BffMkYjt2gHmrDizM/rAxhBZOTCdLmLVW4479KwyUHAFgD7zBrgWYNztWa
         q2ysc/pX5crjEYuUdq9P3o+7vffS2maMO0I27qn+8xp5G77KvvlJ6aAFipRWCqIpIkqI
         HyEEma+HLpA7jgej1iL4gM9KgVHAj2FeL7G1Ru8RB7FR2a4KoBxRu5cobcwgwvT5DCqM
         VKag==
X-Forwarded-Encrypted: i=1; AJvYcCW9SeN3xw32jQMDfJ21LyhtgYa1ygRzx/lLCCM2v+ZCbw53eXkR0SNSCJnhHndMf24DgJhhbOmrNGWx@vger.kernel.org
X-Gm-Message-State: AOJu0YywCzXJ6WVF7X1ZWf0GPL607N12rC0H7P9WhLepWQ+bAWGwjEx2
	WVwKeLyOr/w0VGVaayaqzZJKHjIJ78VRtFNvDBr/6/HvPX7XGDFRkCYI
X-Gm-Gg: ASbGncsTnCioFYC5pek71lmjgeiToOw4aZWmALtW6L0F7NKv+dF8G1Gi1shFFS9v7B3
	C47OmWc0ZehaSCVW6v5hAU25Jcs/VK4Ynghllo7wSpMOaK5qbqILp8jjSDMRufy3x8EP4YIbjqC
	3bwwU9pr6af7jH2P+AtQ33ZWQGIokNFGNAtg8WTHfRKRUyDM75WRpc2ixj4IEUH3ruZcYIR1jRV
	cdqyWLcXL1tEUWvyugXeGkYHm2jwlxlvSYR1Ai8XYS1Gq7y9/W7wUoPU9VQ9kEpNCBBwW7LoAgk
	ycNETSIPSWTCUYqDpVjkvDrRW2KhZJUsKKDvQJs9ZDDlVnO8V+liqJa86rZnVrv3OSOvp5UN977
	EfvY38q3CSCEx0utWmKPSj2H56y74cI3AvGtzChlg9iE=
X-Google-Smtp-Source: AGHT+IG9GD83InwBhFOW3NGAg67t2y+nz21UMxqm/mpb0uOARyNxtHSYfMypATTlZLh+C+BHHF2zLg==
X-Received: by 2002:a05:6a21:998e:b0:24c:f8f:2b95 with SMTP id adf61e73a8af0-2602ca0782bmr13719523637.40.1757915610927;
        Sun, 14 Sep 2025 22:53:30 -0700 (PDT)
Received: from [172.17.44.75] ([49.249.92.90])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607b3603asm11755559b3a.84.2025.09.14.22.53.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Sep 2025 22:53:30 -0700 (PDT)
Message-ID: <8fa9b725-5490-4ab2-ba0c-9923bd30c677@gmail.com>
Date: Mon, 15 Sep 2025 11:23:26 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: add bindings for QCS615 talos
 evk board
To: Krzysztof Kozlowski <krzk@kernel.org>, konradybcio@kernel.org
Cc: andersson@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 tingweiz@qti.qualcomm.com
References: <20250909125255.1124824-1-tessolveupstream@gmail.com>
 <4869bf32-7a0c-4db3-b3ee-4a237f20f81a@kernel.org>
Content-Language: en-US
From: Tessolve Upstream <tessolveupstream@gmail.com>
In-Reply-To: <4869bf32-7a0c-4db3-b3ee-4a237f20f81a@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 09/09/25 19:27, Krzysztof Kozlowski wrote:
> On 09/09/2025 14:52, Sudarshan Shetty wrote:
>> This adds binding support for the QCS615-based talos evk SMARC platform.
> 
> Please do not use "This commit/patch/change", but imperative mood. See
> longer explanation here:
> https://elixir.bootlin.com/linux/v6.16/source/Documentation/process/submitting-patches.rst#L94
> 
> A nit, subject: drop second/last, redundant "bindings". The
> "dt-bindings" prefix is already stating that these are bindings.
> See also:
> https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18
> 
> So simple patch and so many trivial mistakes which are already covered
> in documentation. Did you read the docs?
> 
>>
>> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
>> ---
>>  Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
>> index 03a7d3c92ecd..a5dbe6af68ac 100644
>> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
>> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
>> @@ -952,6 +952,12 @@ properties:
>>            - const: qcom,qcs615
>>            - const: qcom,sm6150
>>  
>> +      - items:
>> +          - enum:
>> +              - qcom,qcs615-iq-615-evk
> 
> That's enum with previous entry.
Ack, I’ll fix the commit message style, drop the redundant "bindings"
from the subject, and correct the enum placement in v2.
Thanks for pointing it out.
> 
>> +          - const: qcom,qcs615
>> +          - const: qcom,sm6150
>> +
>>        - items:
>>            - enum:
>>                - qcom,sa8155p-adp
> 
> 
> Best regards,
> Krzysztof


