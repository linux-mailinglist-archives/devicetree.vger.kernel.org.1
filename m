Return-Path: <devicetree+bounces-229190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BEABF4CB0
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 09:03:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D87DF18C3DDB
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 07:03:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FC25270ED9;
	Tue, 21 Oct 2025 07:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VQ6Aic7a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F18B261B8D
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 07:03:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761030193; cv=none; b=aBlQGKePYxRTPgEa5on54UvoPGfv+qIKlxxK+Q9FogMJ+3xxR7KS09G7sMJ76lD7Pu7ZiMwaMh+h17RuBluJ6oGtCouii7spWDUyA2WC/czIDuE1IsLvYTK/U0x626Z1HJjv+m0h1KsthF8xDr2+t47NrFLFOeetW0NMRW+rHJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761030193; c=relaxed/simple;
	bh=Trt9/WBbPE+M4yerJ3ajCCIXdwVs8rCRfWuIswNj814=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=egdfTyfHcW1iWodLQCfJWWkgWf63bwb8lTaNyEC2veajuv2pvmDHuKQO9WL24y7OI5n1DJFQPZyk2VqRrfjT1VnnjOhI0ctHKuegM3ml+iGuoGHCD8KfEbZf8A2tKf9RbZ4am9VhAsLzMpQAjxjO76fmlPdvpc940FRp9JDk68w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VQ6Aic7a; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-290ac2ef203so51163295ad.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 00:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761030192; x=1761634992; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ytwICgmHnNiFmycdKKSg7V7bV41hOS/rk94HNVcG15I=;
        b=VQ6Aic7aIBN7BvnAi+E3SsHA9dsx9Z83eobHy7WN41mtbJgzzdH5YKhZNsZmrKwEDR
         /hsD1Ty1NCCQJceRKRM4md/ZMABuwOGvHMmBicmpsQb6mtDpDrhSQ6wDUNnHTNH3M/9r
         li2IScUP4a+mBit3WTHaxkTrvfFCJhFunUh+f7kSWgU717xJBGjVOuQnTbIXpudZcMgh
         yMnRm3GNDHBbgq8iqYJSJRnjkB7UUbWjTTROtyrLIKW6nk8ymu10Cg0w9XJE5Z/l6ruR
         p+D1y+peF2SQw47DmvcT+0D76LReujNUaHQV+n2er8qs5p7DBkXDka11Hua7jN7EuMik
         B/VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761030192; x=1761634992;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ytwICgmHnNiFmycdKKSg7V7bV41hOS/rk94HNVcG15I=;
        b=raQhqwgfefEnv8yjjqdBpucDwhQQbgbesaI+ULm2tC/hwx+sauT/p90nT4lz8Efjw8
         FJ+WfOPSB7ykd05slAkYTQ6l8sFpar/R2UMpiRhfMPFpauYvLU9fFwDR7s8XgRUqEPXN
         O9HvolLgDx33f0qGDmmPhz+2oZCir0QaLC5JDAo5uj67iuCGUOZhGfTRVcfdiefmSeVV
         R6piadxOuK3e2U+/9t758sz3PRCzJHAWleda6H3AYS8MzKxWeWQsnLQT9gc7taYGd9tO
         iVrNP9PDwhwipvfQm4WKap5zkjyj0+Gu8xHb+t38UoYNzwRSdEz/+Z2BAZ0vJtSBe8x9
         OYIQ==
X-Forwarded-Encrypted: i=1; AJvYcCWc7KV7jOsHP594MezT82394YGYthQ98Ombh0i+xY9Lz//6aKf85HUHCdtEEgvDM7a0n2yB92sVkKC4@vger.kernel.org
X-Gm-Message-State: AOJu0YwUUiF86gYjhgy124GFiH5JXGEksjSVH4NvFgNYtQjy6n/63XRh
	WeiNrACzp+juKPST1yaoDAKWekGj9TsoI84m6DbpEa7Q40o5HtG2uGgE
X-Gm-Gg: ASbGncu2XXlUDYYrSRyy+GiRIsr4owBpTw+SVpm+uVElVqN24UxDh56kG09k0pj+ywZ
	KiUMuGhoK2czWotsl3x02B101gTsM4NfFN56UMya0sgI0LMpKmH6fCBQ5VIeMn5D+E8MLn96dsA
	LcDAMBL4JvQaa5i1e1mQblPMPY0sm6uYX4yQe7yP7LZcY94vL12GBkRe+2PjTZvN5hTKzBUi6D/
	lzsDAzPCy09lPawNi7/4M1DikEsQl7BkACYPZ40TxI5u8goRCWRcdEQY6Aod7dB/SDqyWer6deF
	MdeRLb9vJTxeycaFioOcR0sQsz+uU88M/v+22WL4RAqErq2GPVtWqL6I5YBtO0tuK45Jkxnho1x
	/VIJifS0Hg8SbnycT80EQKW/tlJgD4TXszruDseFrHZ8qZEEPhu6xx96D5LRcTDc2SzHQMFWj7N
	ZD/jwVqS021bTfm3sB472o8Pw=
X-Google-Smtp-Source: AGHT+IEY2zmPOwhscx1EDdtuLAginTFIvWQhGpHhHiYdyy7zAELaeMJCOQiAd3k0JqmBbx5zBDOJkg==
X-Received: by 2002:a17:903:3bce:b0:24b:1625:5fa5 with SMTP id d9443c01a7336-290c9c89d97mr186476275ad.11.1761030191637;
        Tue, 21 Oct 2025 00:03:11 -0700 (PDT)
Received: from [172.17.49.162] ([103.218.174.2])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29247223a3csm99924915ad.112.2025.10.21.00.03.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 00:03:10 -0700 (PDT)
Message-ID: <291a0fb6-12e1-42a8-8cd4-0171ec996ef8@gmail.com>
Date: Tue, 21 Oct 2025 12:33:05 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: talos-evk: Add ADV7535 DSI-to-HDMI
 bridge
To: Krzysztof Kozlowski <krzk@kernel.org>, andersson@kernel.org
Cc: konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251015122808.1986627-1-tessolveupstream@gmail.com>
 <1689b441-89f1-4f2e-a528-be0b91d34b36@kernel.org>
Content-Language: en-US
From: Tessolve Upstream <tessolveupstream@gmail.com>
In-Reply-To: <1689b441-89f1-4f2e-a528-be0b91d34b36@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 17/10/25 18:50, Krzysztof Kozlowski wrote:
> On 15/10/2025 14:28, Sudarshan Shetty wrote:
>> Hook up the ADV7535 DSI-to-HDMI bridge on the QCS615 Talos EVK board.
>> This provides HDMI output through the external DSI-to-HDMI converter.
>>
>> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
>> ---
>>  arch/arm64/boot/dts/qcom/talos-evk-som.dtsi | 21 ++++++
>>  arch/arm64/boot/dts/qcom/talos-evk.dts      | 76 +++++++++++++++++++++
>>  2 files changed, 97 insertions(+)
> 
> There is no such file.
> 
> You need to squash it into original posting.

Thanks for the review and guidance!
Understood! I will squash it into original post.
> 
> Best regards,
> Krzysztof


