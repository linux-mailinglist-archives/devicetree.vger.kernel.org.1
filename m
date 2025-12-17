Return-Path: <devicetree+bounces-247236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D97CC5E53
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 04:23:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B7537300C0E6
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 03:22:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 336012BD022;
	Wed, 17 Dec 2025 03:22:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Kox+jFKx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84771237163
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 03:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765941779; cv=none; b=PvD9eMZ02pfEuvli4PpsI5jCYPVM3oBscVhp5SWriEkhvKKAR6l/MPT35ahLlyTM3/FlIXEOW+2xwSEZJGk2p32sm4ZFWyrIq3jFxFeEwaqLIzluRNoozifaKUGRKOV7hhsmT4kjF04ZSvJCHf6ABz/WI5AqNrF16fAlVp7x9eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765941779; c=relaxed/simple;
	bh=bsdkX0PBndxh3GIVlYbnxprKKDaEFfFM9KmZt8UOBLg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fTLGc+vPhANN+xsgr8bEkCo6QndE3/1t1I1bLdTNf5EPqETeOd7U7Wooo7SoPz+UiEWjHLFETqWax1QgBbVZNqQ8WzfKlpLh/qzRfc2eoPAx/vJs/CejLB0DV94p8cpt2uVoJYXvl9k99KacZU+WgP4krSKNexmIGGmV5Ic3zxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Kox+jFKx; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4775ae5684fso22930265e9.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 19:22:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765941776; x=1766546576; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=coYB7nuMknCPFUDXjLCeAFqddfJIRf4URBuM0pBdh9U=;
        b=Kox+jFKxtCa8ujP5FuzO7eOqwLm1gN+Kk4MpTCZcxHOE7xbGyyUY8OpsVbA34H89TC
         Rukng0HUNz2xdqYTyUKl0D941vsmWWhAwdmakIWRUd2AzSyc7NI/OEKf643iFMAWiktU
         EdmzVpCUJ3ViUGID1u1ig0APNYjhSNWjBe8VrqqPV1qUZGruvncIj0/zrzgz06vdC1wD
         LI0c76MgG4cbCY4mNmB0YRoENeiLb8EdvHiM5vCHpMr8tZoRjtiNNO+WdGgVgUTAkylE
         vOmDbLpdR5+SmO4YG6EgJGHtcAgPa0+IDL0h91TnqlV1DmvGn5v46f/BPMKOW5VgsV1S
         oggQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765941776; x=1766546576;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=coYB7nuMknCPFUDXjLCeAFqddfJIRf4URBuM0pBdh9U=;
        b=nLu8V4z91LgSIcUnj06FVv6PZ2qoukCDfxuDbCEwJrtHTQygcB+bTUjHbuLXnUjrtZ
         550WxMEkWj2HPqbQi4HnAYgqTx0YfRxI1fyB/HBSTTQWymTURf2kSu2TNj1Gw+Pg48XR
         0nqf0/Qgf2I7CanAzLOgn9e9ifz4WcGagd7m32FJprsoqH5+VdUjbIyznJzcxPMZCzJR
         6CthEzi0f+zzLkgkYvDVpXUmy49FPMA3JwTE+9Pzuow0ZEUnC6GhgOOHpdJMgDoDqOB2
         poroFKT5FGAgbl4OVyAiD9I/wd2K4HZLG/HcQ080vhA4SpRArfbcoKSiVRcWf5bCcsrm
         0mlA==
X-Forwarded-Encrypted: i=1; AJvYcCUWlxBtWdawGsqpPkUdls8bEH0W3Nn63vC/gSdbBbQncyy0jWfq/m9z0xj7GK+rlMVazhrxCckfOUc7@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+z1sOIQXc6/X2HguPbxjrpV2Mmb0p91lWcEHy9kX5dVzcmuqd
	Wbnh7TdffEyGcLuWU1hMTtL5HYCq0in+A1jce98U/EfjBKYdFJ4q5+6Q0vlVBtH9bhU=
X-Gm-Gg: AY/fxX6chEYXSp6DQK+kn5Q1DzmZ9AYcqXvT/+cz31osAvHDocQ0SEaXrGOnvUhTzUD
	pFT+mUrmeknOzJs9y9rPp9LNs9PdKOh3bF7OUB/p/AOFMXyJLmUBwojj2Pd1P9TpHcL2s1nzDh3
	I8utuJ15dsE6+Jp+t1FQW1HEjlYAi1MAmqlbCUUCm+CFIIhnKiyEHmH5c2yU09y94h3FtsmGm3R
	GZVScG9sTu+2vuqrovX1BwrXvNjChCxkf7Pg8yhmWpi1mrTdi7VAm84OfPgAzXvYH2yYjltt7+a
	CZ4HGac4YQtfGnOEBfXHub7w3MTDlBzVMUmaYL35RAnmq/tpXrqfTqeGuFFG1XuOHEVLaVBWNBz
	zGxGU+MoWCfSO3gIkj9DP87KXUzv2rKmFFNlLslSfSjlR7L8bObDtfz6QJh99XRxjfGkAC53RH+
	NswshVC1HvEIDFP8K61uabpn/bdfgWckbzdFjSVsQ6KKIbF0LCBr+W
X-Google-Smtp-Source: AGHT+IGKzYIQHH56Wfgqk3sgtUblvN3f3xNfZ4d0w5Te3dTerDrm37WC8DhCLtrjaYPiuQ095zpJPQ==
X-Received: by 2002:a5d:5f87:0:b0:430:fc63:8c8 with SMTP id ffacd0b85a97d-430fc630e5amr10101546f8f.35.1765941775811;
        Tue, 16 Dec 2025 19:22:55 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4310ada82d5sm2461243f8f.4.2025.12.16.19.22.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 19:22:55 -0800 (PST)
Message-ID: <4b6ccfc5-9d05-42c6-bb70-32500646c46f@linaro.org>
Date: Wed, 17 Dec 2025 03:22:54 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/5] media: dt-bindings: Add CAMSS device for Kaanapali
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
 trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
 Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20251113-add-support-for-camss-on-kaanapali-v6-0-1e6038785a8e@oss.qualcomm.com>
 <20251113-add-support-for-camss-on-kaanapali-v6-1-1e6038785a8e@oss.qualcomm.com>
 <bd899586-f714-4d2e-95e3-6abf124e75a4@linaro.org>
 <37d0f89f-69be-45a7-90fa-347d6a3800bf@oss.qualcomm.com>
 <2d7ac7e8-ab69-44a6-b732-3657abf3a5a6@oss.qualcomm.com>
 <ceeee542-a319-4ad9-ada8-3dc769599dec@mleia.com>
 <d1fb4d8a-608e-44f5-834f-fa92d487c75b@oss.qualcomm.com>
 <eff759a7-06ee-42f5-a3a6-860956d7ae84@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <eff759a7-06ee-42f5-a3a6-860956d7ae84@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/12/2025 00:02, Vladimir Zapolskiy wrote:
> My concern is that it makes very little sense to throw any not clearly
> defined hardware properties and interconnections into an unorganized and
> unmanageable pile of everything, because this closes the door to ever 
> update
> the upstream CAMSS driver by adding better CAMSS IP support for any already
> manufactured and sold Qualcomm SoC powered board with done CAMSS support.
> 
> If some user already holds a phone, a laptop and expects to offload CPU to
> CAMSS IP one happy day, it's pretty unsatisfactory to say that it will 
> never
> happen on legacy hardware, because there was done an unrecoverable mistake
> by adding never tested properties into CAMSS DT bindings, and the remained
> option is to "wait for future chipsets". Each added unsupported and unused
> property boards up the window of better CAMSS support on manufactured 
> boards.
> 
> I don't understand a reason why to do worse for the upstream, when there is
> a clear and feasible alternative not to do worse, thus my misunderstanding
> and my grief for upstream CAMSS are my concerns.

I don't think this answers the question on how describing all of the 
CAMSS hardware precludes switching on demosiac.

To be frank, I don't see any specific arguments here at all.

---
bod

