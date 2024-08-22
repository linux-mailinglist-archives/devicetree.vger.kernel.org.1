Return-Path: <devicetree+bounces-95734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CECD95AFB7
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 09:55:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD7D21C22B8C
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 07:55:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9FCC16F8E9;
	Thu, 22 Aug 2024 07:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NuyW0vVy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09996167265
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 07:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724313314; cv=none; b=S9EQxZmZqODtk/NPARXiIENGThvRGHawDsu6cL/q3vRliynC9K6IlVlexEiCZ4CqeJW8vkOahHMNMLuh1bcXlKf8M5bPDbE2BPYSvVb98tCr/93cFupCSqptizUEmdck2jjETpy93K2s7QL033H22o3zuCh+1GvSmmwcc9zS3rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724313314; c=relaxed/simple;
	bh=JxTH1JUcwUj5tXsh2vU9YAtTfgnOREw24cwYEjA42Sc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G19P3nIx++E6z1Z4K54VnQIxgQW1/Du9rFm6YKGT3s2m4zElRjKp6DKrjXBr3YPt2ZaWiYurhEBeEz9StvyyELMoUUiZbn0c+r5TVXVi71tjv3E7m9YomLU3opn4GBMfYVq7bVeio/lJo3mGnElcImSDdeJfybcYob59n1m/lCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NuyW0vVy; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5bf01bdaff0so699701a12.3
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 00:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724313311; x=1724918111; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=WEMxkmps5fBhkkA4iUgysD4v8ZU5plsG8cGD1Rw+ymM=;
        b=NuyW0vVy4WUHyM2LWQJcRjUoRefv2T3YLVVHMnsx7FGzEGxyXIPvvBS3yHGzwloqqx
         JM/mp1MSZ1mSW4h76voOSfuef9scCA2JY7MUsOicuCWo4zNEwe6R0lmnSMhaE8PnZouZ
         Wq+E/kOn9qLvZmqQ3ZUjcPJ/f22SOxsI/f2emoUsjlZz4PWnfmjJPkjktQUIt0Wata6/
         k7gdb0p5yaZ52FLMysL2al64bTAAFmRPmA27fOp+LqjOUg18Mvb/BTu28OzFw5GqnV+4
         xy/4gfb8SNAytT/R+5If3SGLY00v414EtamHhOWiEj182tc8j9qypY7ZdVdHmhCDCTRS
         Ob0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724313311; x=1724918111;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WEMxkmps5fBhkkA4iUgysD4v8ZU5plsG8cGD1Rw+ymM=;
        b=jckQiN8W2/+kYwfcPB+HNOGcSBp4u+p79SSnUliunBOtMpttSnw7nA+ngu4vH/7iSy
         Bw70mm/gH6j9XLXjKxfHSV5HSVLvjqc3FL86okhD0neJZMhf+GkAvQzYD70rSpQwAzU2
         qN7vHLnz8B8DKzKjl4BYxzpS0SxjTtUignC86HeYIYeVJlRTzsBWh68LeJsRj7bKu5av
         emrGx0gq+eHnJAfsYL3APIAIwLal54ukFAK/J5zb1r6XMGkVRv5D/obE3VaoFknD86AF
         ooUNEt11dvw4vbja/ib4kbLRHTRM4CNzMvhGLp1P3H1C1SjpTirekQ6fCcipYB6fsR6A
         fAAQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLOEjmeHG3rFx1YzJnz/+zT2mwn9AcOc0d2rrF9cgpvvRnV6Jer1ihuj3jgzBCf4rRTsEjuc2JKP3E@vger.kernel.org
X-Gm-Message-State: AOJu0YxnPfR+9ntDp/Oy+TGp8Ufr1aiarJmORAnzPjV2h1C8PV1VS1Bt
	lN88S1A/5uI0CyMqDdLBAISsWOfP0bmKxUHqUdU8S81KieLOJYXUy8vOkTLslKE=
X-Google-Smtp-Source: AGHT+IH2Ql1jTj7O3GI+6Z3dMnyxGKEgZvEtWtmE5cMBZeecWfk/Hl74tjT/kz3MaQurQFNlT0Q1ew==
X-Received: by 2002:a05:6402:34c4:b0:5a7:464a:abd with SMTP id 4fb4d7f45d1cf-5c0792947b1mr557111a12.30.1724313310527;
        Thu, 22 Aug 2024 00:55:10 -0700 (PDT)
Received: from [192.168.200.25] (79.186.29.241.ipv4.supernova.orange.pl. [79.186.29.241])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c04a3c9dcesm576492a12.30.2024.08.22.00.55.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Aug 2024 00:55:09 -0700 (PDT)
Message-ID: <24d01601-99e8-4d61-8024-530244bd78f5@linaro.org>
Date: Thu, 22 Aug 2024 09:55:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/7] arm64: dts: rockchip: add NanoPC-T6 LTS
To: Krzysztof Kozlowski <krzk@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
References: <20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org>
 <20240821-friendlyelec-nanopc-t6-lts-v3-2-3ecfa996bbe0@linaro.org>
 <fbdda0b5-a924-48f8-a4d5-6578c2b5d378@kernel.org>
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Content-Language: pl-PL, en-GB
Organization: Linaro
In-Reply-To: <fbdda0b5-a924-48f8-a4d5-6578c2b5d378@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 21.08.2024 15:13, Krzysztof Kozlowski wrote:
>> +#include "rk3588-nanopc-t6.dts"
> Do not include DTS files. Please rename board to DTSI (which is for
> includes) and then include it in respective boards. Remember to generate
> patches with proper -M/-B/-C so the rename will be properly recognize.

Thanks, done that locally for v4 series (will wait with sending to 
gather feedback on v3 one first).

This way NanoPC-T6 has 4g_lte_pwren and NanoPC-T6 LTS has 
usb_host20_pwren defined separately in their own dts files.

