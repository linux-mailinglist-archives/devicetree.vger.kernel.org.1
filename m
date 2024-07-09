Return-Path: <devicetree+bounces-84124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3654192B167
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 09:43:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 684761C21DD4
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 07:43:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BED7144313;
	Tue,  9 Jul 2024 07:43:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lBZ5A5ed"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04C013211E
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 07:43:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720510996; cv=none; b=PCXjAtrYxyICqJ1bJgNJLk/KyGs0bTdJUbSFzfCBhfb228HlAVWr+5nxKun9dIBQsG02BDaoK8uFUSM6ounDxQWB4k/L6rHyn0hcklrWuYPZcm/qHZsT7HoqAt0EFrdqdTU2whbJEx7YxRIz1XXOVog6A7083j5rM1ydqlHBXO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720510996; c=relaxed/simple;
	bh=jAG3/aKaD/kqbIcJypKqQbgWvBndMAYJGXwk/ugv40Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=siEzsT6Vb9vsTHp2Bc8DijuYfr4wLVa+5RIT3Ks2LP4FJvEdA+x040YX+bxrx61sj70oGBHELz5ka8vXlVkW8RS2XwkuAJbItc2X/I7Ti+uVzr9odY/aReramcyXNEPI0v081t6Ndt0r4aOSWL3p25SXQc5V267mPfoZNxDpPa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lBZ5A5ed; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-36786081ac8so2957611f8f.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 00:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720510993; x=1721115793; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h1CLW71m5KlFIfS4WtV1HBML6Ik9miyTvvoVtrTfgdI=;
        b=lBZ5A5ed3jLJAWQDSBmi68plpWpHA+F4E8qQYgOtu46nHdf5NTFGetJK8IfEdMijzJ
         Iu5o227LaIzKXnLgFFLA/67Psjwt8XdbAKrFlq53I29f/mgUsWPtKvfIuaXhLTTdwQWB
         IobTTLpchBtFcQLB2uismdWU0vC4FrGdjnqhjaRap1unKlz2LoR/3VA47acWSEl5cSZq
         PPUIPPmrOTemFKrwcjF8XMcccyzEj3TzBXKD+XeTBsgthA8KRlE8a1sZDI5rbrwXSDgz
         CqO/kHqvOvynfJvpJD5QzEpvinpgCndptbxaPIvZVwEmNyg5R67oeb3LPIH8dJNq/zov
         phDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720510993; x=1721115793;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h1CLW71m5KlFIfS4WtV1HBML6Ik9miyTvvoVtrTfgdI=;
        b=LJmyNAvekBV1Tck+ozxHBjR+t6YkhXoTuuv3bb0BFXXyUOGAkgfIjB130ogWNbYLHd
         4Viu+ZfYh6kPLyufrCYE/S9YcyUHk1iQI38ENOlpFnAMr38mZh3mqxuZgKdODnRmzWy6
         51P5rKqL8NPWdC8Y25ZV7QygJYOZ/xaQfFKadM9qdQzwqCjcG7725HjTMBaT6gPBwLNE
         KZqkzsBDmexThFj/d10BY5i1rrSsz9gxxBgM8TxbXzGHV6tQw6biVq21lELmsRPmjp/C
         00QzUsz45T/Xmn7VJt/QYa9SOWQbpWpSjs7Nj/GU6qVyAfALOKaWYUTAYBX2R9Q7jsBM
         K1qQ==
X-Gm-Message-State: AOJu0YxM5mH6tc+uITm0pxxM7BtkbfiAMKoSjhr071eikk3j4eqIeyRl
	TM6OAr67IppMykdndaRjxFSzAiugCITNhsw4QUT4+S4fD82Ak1vZQ7vjd43XX44=
X-Google-Smtp-Source: AGHT+IFW+YP/WjH3mfocei0KWEyOnvOvhNRqjin5G0HJ1iruDzyBQrHEp0XoWZjyCQ5cCU6oLsl5Mw==
X-Received: by 2002:a05:6000:18aa:b0:367:9073:3491 with SMTP id ffacd0b85a97d-367cea46301mr1400995f8f.5.1720510993204;
        Tue, 09 Jul 2024 00:43:13 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:cf24:cce:17df:12ab? ([2a05:6e02:1041:c10:cf24:cce:17df:12ab])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-367cde7df48sm1746617f8f.1.2024.07.09.00.43.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jul 2024 00:43:12 -0700 (PDT)
Message-ID: <0fdbddfb-f25b-4d39-a80c-770fb8ed40f4@linaro.org>
Date: Tue, 9 Jul 2024 09:43:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] dt-bindings: timer: renesas,tmu: Add more SoC
 families
To: Geert Uytterhoeven <geert@linux-m68k.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Cc: devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>
References: <cover.1716985096.git.geert+renesas@glider.be>
 <CAMuHMdWP7y=8rA5jszCbzh_RnXnv4tFUpHv0qtbucHEYRFE9qw@mail.gmail.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <CAMuHMdWP7y=8rA5jszCbzh_RnXnv4tFUpHv0qtbucHEYRFE9qw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 09/07/2024 09:39, Geert Uytterhoeven wrote:
> On Wed, May 29, 2024 at 2:22 PM Geert Uytterhoeven
> <geert+renesas@glider.be> wrote:
>> This patch series documents support for the Timer Unit (TMU) on the
>> R-Mobile APE6 SoC, and on various SoCs from the RZ/G1 and R-Car Gen2
>> families.
>>
>> Changes compared to v1:
>>    - Add Acked-by, Reviewed-by.
>>
>> Thanks for your comments!
>>
>> Geert Uytterhoeven (3):
>>    dt-bindings: timer: renesas,tmu: Add R-Mobile APE6 support
>>    dt-bindings: timer: renesas,tmu: Add RZ/G1 support
>>    dt-bindings: timer: renesas,tmu: Add R-Car Gen2 support
>>
>>   .../devicetree/bindings/timer/renesas,tmu.yaml       | 12 ++++++++++++
>>   1 file changed, 12 insertions(+)
> 
> Gentle ping, as these are already in use in DTS since v6.10-rc1.
> Thanks!
> 
> Gr{oetje,eeting}s,
> 
>                          Geert

Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


