Return-Path: <devicetree+bounces-184342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E1AAD3C28
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 17:04:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 74F7817D8BD
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 15:02:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B104236437;
	Tue, 10 Jun 2025 15:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MwlXxraa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09E923505B
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 15:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749567680; cv=none; b=UkFAlP0tPsDDtYWzXZN16MUF5LWYXJ5l4neQ3U767BLEJ9T/+z2cJ8ohicPxpgarZ5NbJ2WDxlsgbTr8d+GM7Cm95j+rqe9QomKBG+VMrZB0eesUXA0qu+5b3+VHv2Ba4j9rP4/axJi48M8PekXLhRJEYfMaCHsSwy5yO4/RSQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749567680; c=relaxed/simple;
	bh=23AWRhrHcaPHP7oMCM9lEqTacoKjXBMIfNr5jB9jLIY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZqpVFMzOqWu+YsJZPdYpJ6k4Tj6Ir+nLGB4cW7AbjVbLZhKWSw7LXnQgqi2PXhE64r1yAAEDq/aEo/nXHVUk/BuG4Gpfxcm/ifrdk5F0GITbFObndKUKfbS7qzmVvsgQ3I4YkI59aAlWObw3mpIzoL1CLTTxyOOkJaAJRaEkq7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MwlXxraa; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-32addf48342so4984001fa.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 08:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749567676; x=1750172476; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xE8yJTLlDFnm9Bpry9IxitbenA7v8BJkGYn6cbiZQ5U=;
        b=MwlXxraarzNiBR+FmhYcQsrLPfUPJFyL1G43TkTU15dJEexQ7PVAWmQOGOllRGKckL
         H0QwLDsC5tARN1drqSI+1BYV6n6w62e0/PIKyzanaT80i1WnV0c+b19On2cYeSUpXoz0
         d7qWNPux1KmBtG8i+zM9hJEDQXi2WnQUHWrGvm0VksA2XWJ2DhWsRX19Q9DBfhR2/Q7L
         iGwUHt2OCGAa06n87Jaulpvwox2x8pINEHAD08gxXu94AbIPdWChXyi+E0ickcFd8nUk
         Tuo5vAGW0uYIPC+sEc8YTG6BPnH2+g4UDYcDHx2L8imfonJIyG1xGqk5S/DcFmiT7vSW
         ILVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749567676; x=1750172476;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xE8yJTLlDFnm9Bpry9IxitbenA7v8BJkGYn6cbiZQ5U=;
        b=QZurXIO2ErjqRrtG59blUXYaUFAxZU7VMWUMGejMQkLvldIbcFnRYlDpTjraCU3p3d
         XT1sRsU/n3WNFjxtqMlfn74S8t9nQTdnAK/cQ6bdJH0S1RDCH9dMXL32DVmgK/QZrua+
         O2eZOr5m2fE3b+tnYQM0FrseA0y1Pu7Ln6DPjSWYJjAAVl068dM0DKhJs6huM7wKl7gU
         I/0SpBjzBFwkwe+erwsead8ScjvmA2G3dkizHzyCgQeVqHKUIPiRpVKJ91N1G6V+zO3a
         SPlgHJJBNJFAdV8q1yMpBoE4EjrKGG03oTqL6LeaLX565z0aABU4GiE2N0JTHr8Yhn0p
         P+kA==
X-Forwarded-Encrypted: i=1; AJvYcCVEkS1iQK9ErhjKR/gbNEl8c/5xeE5fdadkfescoJxSfFQnSGVbf1A4pJ+VOGL8WFpJxyrm1DkjPlVr@vger.kernel.org
X-Gm-Message-State: AOJu0YyOBfuPPDhyCH45ga0gV3D5QsxPn2vWKJAAmM2bwEjdy9obTOye
	cJyPUehZbtO4Nbz5bOMEGHwYS/BcXt1elY33g5TZvAutYdijcTme8WrZto6SqDNvBdBUln2thjm
	VxIpc
X-Gm-Gg: ASbGncumcNSJ+WviykrB5Ei1PyCRTcUpDQpYgIUe/q4tJXC5Q9VYh/EDXih3jdV3Oco
	nTY/WQxHHUWyoIZLf4qpSpmuIvoU6PnzY9JHJKI/NQOw+6smXJIrai/WatjND3xeXaiDWKPFGaD
	b7o9O9Lb8Caus9qFDp5vrEBiD2tWVWttrjqk2PP2oYujx13MStxD8dGNUiZGc1JV2SUMN+LnLCA
	mfuodjkSP9TH3vYLAs19KuqlemficKUyzlKToRKFu8H7YOSpMXSjv19F21v+sK8wOiONhGnSfez
	GchjiODE20qJaz/3BX6O8OFjpA+SPvXW2p7Hx06WeQ2sYMT6Kmrs7iBHJ4CHA2+Pr/2f3/4BLdt
	cGJ7K8neHE5EVo4Ng+DcB8AOGn3IeUic1F7XbjqFY
X-Google-Smtp-Source: AGHT+IHSSRtsaZUmFAPGvVVgj7EydEp4BKuD0Ht0B5+VS8FrUQJrjPNz/Fq/zYfo1RebfCCzrBlIBQ==
X-Received: by 2002:a05:651c:b27:b0:30b:b852:2f7c with SMTP id 38308e7fff4ca-32adfc44577mr14976731fa.5.1749567674214;
        Tue, 10 Jun 2025 08:01:14 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5536772a951sm1566498e87.167.2025.06.10.08.01.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 08:01:13 -0700 (PDT)
Message-ID: <a14abbbd-c19a-4d9f-a888-3849acf7f045@linaro.org>
Date: Tue, 10 Jun 2025 18:01:11 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: media: qcom,x1e80100-camss: Sort
 interconnect alphabetically
Content-Language: ru-RU
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250610083318.2773727-1-vladimir.zapolskiy@linaro.org>
 <20250610111145.zp62zx5rjmezvmkb@umbar.lan>
 <26a0a50a-849a-4a2b-87f7-af11b6f91ea1@linaro.org>
 <tlaf6k4pblymc7zrsglgiugn4ft3bd2wwpmcghysmtnlb7grml@p6mqjkve3dvj>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <tlaf6k4pblymc7zrsglgiugn4ft3bd2wwpmcghysmtnlb7grml@p6mqjkve3dvj>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/10/25 17:44, Dmitry Baryshkov wrote:
> On Tue, Jun 10, 2025 at 03:42:05PM +0300, Vladimir Zapolskiy wrote:
>> On 6/10/25 14:11, Dmitry Baryshkov wrote:
>>> On Tue, Jun 10, 2025 at 11:33:17AM +0300, Vladimir Zapolskiy wrote:
>>>> Sort the entries of interconnect and interconnect-names lists in
>>>> alphabetical order.
>>>
>>> This looks like an ABI change. At least you should explain the reason
>>> for the patch.
>>
>> There was a number of comments and notes on the mailing list that
>> any changes to dt bindings without users are acceptable, i.e. no
>> users implies no ABI change.
> 
> It is still an ABI change, but the one which usually has a waiver. And
> that's why it should be explained in the commit message.

I can resend the change with an update in its commit message stating
that it's an acceptable ABI change.

At once the Fixes tags could be removed, let it be a non-fix ABI change :)

>>
>> Also it was used as a justification to accept dt binding documentation
>> changes without the correspondent .dtsi changes, like in this particular
>> case. So, I believe the room for fixes is still open.
> 
> Yes
> 
>>
>>>>
>>>> Fixes: 2ab7f87a7f4b ("dt-bindings: media: Add qcom,x1e80100-camss")
>>>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>>>> ---
>>>> Another fix on top of https://lore.kernel.org/all/20250502204142.2064496-1-vladimir.zapolskiy@linaro.org/
>>>

--
Best wishes,
Vladimir

