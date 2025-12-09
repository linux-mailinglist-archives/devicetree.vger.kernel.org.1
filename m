Return-Path: <devicetree+bounces-245314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAEDCAF020
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 07:19:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D33E9300569D
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 06:19:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B64B021ABD0;
	Tue,  9 Dec 2025 06:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="RlaHstet"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1FC79DA
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 06:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765261145; cv=none; b=akArDaUM7IuU/GtCcqk5G0qlvSr2/YF4BTPkGuNFZ6aTANeD8zxNqyqN8Y7OuuswNKhvxjv6GJanQPePoUSAKvQIywft228lOnTQ35fFVLTf24ZwPv1jX30jaIBmkBX/vlC3wZ+aMfs4TfgM2LmSTLUle95B0TdOli2djkr5W8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765261145; c=relaxed/simple;
	bh=l4EVe9RafhQ3WUkRtqp4/NizWmZJwSi2CtslaMCMZSk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qE2eThAkx/rxR7z/Ik4p2np+yYoQzv8OfrJnZJqzzp1wxMdfsRcDcnplH8+QmRuoyWnNiIGVEx0Ap2NUiG+FuRKBE4wPg1r4/PojmYhkmHzO49Jk3JENr6Z8wy5BjZcF4FGGipv7vjfuiSkV22JEKFPbgCIvLiT4s5B97pwvK74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=RlaHstet; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-343f52d15efso4923126a91.3
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 22:19:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1765261143; x=1765865943; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vIa6jqcHFzv9iZgum8ltDygq/7mCA6BUmLPiZxq3KhM=;
        b=RlaHstetoCauFYeNnfcIzU/5CkHRnGaqUJEqPFe2EYXkZ9ssyCk8raRKQ24bwpnSIK
         1sNjjvjUNUyqaejc1SK4eE0XKXc9A68r7vz+F4lC5kt3j+FwOEe8u35z3ys+lMxI0sGU
         Q6PwHMyNakZ1ChEldb3vYLwdo3+UzNYQ1oCT0xwlbntprtyK4GPndhBRiPxQngWR6r8i
         OFR8izHzFwwPvqYB68TFmSnRbxz841eYsPF1EK/Mlo8+Y9hPMS68+jKdQa2XAoSozidd
         rFSxO7s3q33Hef8fMpfTsbeFfERP0CdJG55lmK+gyYfq8Ms7HnN9BCWWojp8th0WY6Yx
         G32Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765261143; x=1765865943;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vIa6jqcHFzv9iZgum8ltDygq/7mCA6BUmLPiZxq3KhM=;
        b=KVXqJq95gaoloS52UlnTR7/nZe+FqyE9aIDALxogr1zaJc98MQwZtr4bMxBsQ3XQKr
         PUFonJUVD0qdus704TAwKdncjIxObcDdohxp/oxOv4Bxfr6XlxisrxyQStZvmk051+oI
         qTwOCjDJ1xiNCmkBKhdd5cO/wqCss4GCQS2fOULPtnd7xDEQPNWWBSomRKhlPsAWQ6rn
         416FQKGIr9U1qCOqo8uXRam5d/V4mSPvLYSrzCdD9jv3Q0I3oXS+0xjXOTuftHZSRqbN
         jJoK1dwj46M9HhjADllH46jXu1qVeH3cloW4kH0eBbod2IR9X09Rb80VKsp4rVhxe4Fk
         fMog==
X-Forwarded-Encrypted: i=1; AJvYcCX9qQ9pK/6yzGsBswYm+IVVKTQoMqGhe6e4R5+Mz4fz5egx/3XuobgEp9R4ZPWHJOhroiS+LqdfnPsw@vger.kernel.org
X-Gm-Message-State: AOJu0Yyib6UXR7XxbNBp1FY3nwm1eFNAbI1yNJ6jsNY/mN+xgjKXMf+d
	sbYAw+fCkGfCVrg1rYl/zeIXIhyVPZDELASn0/fh3c5p2YEwVBiZtIR3aDGto7U5/zM=
X-Gm-Gg: ASbGncsqlnfvSNNVxBY2OQnQ0SToDLF4J4P9rMPpKErhojtcMuk842vnx4oC7dX7t4m
	SYBw89Tg2SPU7mcGWsxMkcdQ5Wyaf9mdBSo6tz5Fb5gQojRsrc9AQ1phMX/poR7JfGlf8SeJ++y
	VHs8lK8oqS8LDOy7RBSQ6x3i9m0UFpZuYM9kQzb65d6D0bmHTxdg6EUOxSbe9cWkxveR5BmzMI9
	mPxaJAGDigcXNyTCXQlo3H8G8KL1tMkuYnWqjlCM2llNvdn/MJYcOLCiEE3JPhIPW5SFUZfIp/I
	k5E7x5c4JDhJ8moK2jUr9322vOqWhAoDidjWotZndQSExTOEf/YTNUWu/AevGj3oj1aSHdjc5Pm
	vgixJ03sT4VAN6YerAA7+8KK9dzIE62fwHc2lx4XyyTHXBRXNrVYeBUaD57McqoO7WzW3n/6cl9
	uWMM5R7uayy0R0GIsdIqmFeesq3R+slgk=
X-Google-Smtp-Source: AGHT+IF3CV82MN0YNFqOU++plw/a37xGD2xf2oy84fWcz0qoUsA3eX7qyuzYpkhkVT+G2+ljIRTWbw==
X-Received: by 2002:a17:90b:1e53:b0:343:7714:4ca6 with SMTP id 98e67ed59e1d1-349a25b4969mr8093659a91.22.1765261143392;
        Mon, 08 Dec 2025 22:19:03 -0800 (PST)
Received: from [100.64.0.1] ([165.225.110.109])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34a49658704sm1161413a91.6.2025.12.08.22.18.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Dec 2025 22:19:02 -0800 (PST)
Message-ID: <d8fa12cc-7a03-4954-8ea5-1e2edf9a149d@sifive.com>
Date: Tue, 9 Dec 2025 15:18:58 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] riscv: dts: starfive: Append starfive,jh7110
 compatible to VisionFive 2 Lite
To: E Shattow <e@freeshell.de>,
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
 Conor Dooley <conor@kernel.org>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Hal Feng <hal.feng@starfivetech.com>,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Conor Dooley <conor.dooley@microchip.com>
References: <20251206204540.112614-1-e@freeshell.de>
 <20251208-jogging-morally-9b787b7ab1b8@spud>
 <a18850ad-b6de-4444-9daf-a4a653f4f9ae@canonical.com>
 <0bb12889-cb28-44e7-b2d6-7ecba6264d1a@freeshell.de>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <0bb12889-cb28-44e7-b2d6-7ecba6264d1a@freeshell.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2025-12-09 9:53 AM, E Shattow wrote:
> The unanswered question what I was asking in the code review of StarFive 
> VisionFive 2 Lite series: What is the normal thing to do for compatible 
> strings of relabeled silicon when there is a suggestion of different 
> operational parameters?
I don't think we are very consistent on this, and some of it depends on how
different the binned chips are from each other.

Example 1: Rockchip RK3399 has several bins. RK3399-S and RK3399-T just override
the OPPs, but reuse the SoC compatible string without change. On the other hand
RK3399pro is a superset of RK3399, but uses a new compatible string without a
fallback.

Example 2: Allwinner H616 (https://linux-sunxi.org/H616) has multiple
bins/packages/die revisions. H313 is a down-binned version of H616, which reuses
the SoC compatible string without change. H700 is a superset of H616 (same die,
more pins), but uses a new compatible string without a fallback.

> I can include the (paraphrased) above summary by Heinrich, yes. Although
> now I doubt whether this is the best approach, when removal of
> "starfive,jh7110s" compatible is potentially an equally valid fix, or if
> we're rather considering JH7110 at 1.5GHz maximum to be a superset of
> itself at 1.25GHz maximum (JH-7110S). Would we want to change all the
> JH-7110 boards to then have JH-7110S as the least-compatible, if I am
> understanding that meaning of "superset"? I would like to know what is
> expected.

If starfive,jh7110 is a superset of starfive,jh7110s, yes, it would be valid to
add starfive,jh7110s as a fallback compatible string in all of the existing
board bindings. But this is not very useful, as existing software already looks
for starfive,jh7110, and you can't replace that without breaking compatibility
with existing DTs. So the advantage of one compatible string (mostly) covering
both SoCs only applies to new software.

Regards,
Samuel


