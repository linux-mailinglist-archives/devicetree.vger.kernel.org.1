Return-Path: <devicetree+bounces-76413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FCD90A819
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 10:05:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 194841F24145
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 08:05:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C2A1190468;
	Mon, 17 Jun 2024 08:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="M27ogRyL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 896CA190475
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 08:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718611543; cv=none; b=XJzcGrZT0n6hdtipcHpFEQD50HMMgpAZdvnUtCX0scM5F68eItUXO2Z+sdyU0XETa/Juh3zpyzcrJ4bWhbj69mBU79VSziNq0mwvzL7adgJU1H+C5s5uCuxeUEbqwgYX2T5LfSGhUKRSwGvWAJhi1ZTB9YlDEMM+uvTrfFc81lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718611543; c=relaxed/simple;
	bh=jJknf9JjCF3QX4BKrwowK8j7mwdmpuB67UlqCB88zt4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HgttYDLZ0TMObQtfosdqVugpffUkJnFblubfy+TTiS8aUuaFotCRpmdAP+9mfzuA4MuyczmAjal2u6LuYrURxj1NB8/g2rcVOAEQM0sLIaM0OpymlafdmyJrilHGIdzPEMsajgf3ne2IoatElwVxcAAVq4+EGLlor+QQqfzDTQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=M27ogRyL; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-421f4d1c057so31946595e9.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 01:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718611540; x=1719216340; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RhK0l1wiP2QqjV41iED4AMmcoD6qMZOANZydgxIA9xw=;
        b=M27ogRyLqqJDYSYax0gkBfghsm3QbB66bTsHMHrev59VUVxA0Yg0V8HUI5yIxrE+8Z
         BtLTY4NRJCyCOZIvqgqWqoMzyq1sokyikQs9QIzqWXcHEp5kL9rQmBR+CC47qs7Wm/bN
         uk3PMOLC8w8befLEkHMcSEwA/eQCrUBvTvPT5HggkPceonbChvQKizbmg2CVsyG8DVVT
         BCNdeDS4ZB2412qUy08+9YLuhU5tuBGzdEqN2RBjSNbEdnc6X5QtsxiNe2x0rFT/s+B8
         s4x8eTTPj7eKf75UxX+WcCj9p9E7dm8YngRfEJ1zzu/ufdMDxm2Xym3jZXSEMwMfxGbx
         CwJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718611540; x=1719216340;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RhK0l1wiP2QqjV41iED4AMmcoD6qMZOANZydgxIA9xw=;
        b=D7crHiQuHsCkchvSiGsTnpqZLRg14V+en6D6YR26trplIDPlVfc2IhEU447TYlfD/t
         oBWm0ymEsGnFPqdBUfVU4myKNKF6+XaL+Y+aiq1P+v+STKer0Xd2pL1cOx/BFD7TNWR3
         XcKf/M8xQ70upCsSqvspkOOK2nPfGiYgD6wQNTTY7cw/o/bMpxR87WYpGk1Qk8I4qzVu
         z6H4gIfok+8IXKzDxHEs2vCgXAqz81o+xzmGz38jAXyMD9pot9zmdaNNtPoU+OSMaH3q
         EjK1dDDy2wm3Sj72f9u3kNM0mlU9sY6V8J+6UyxzqRilfc2QAonLnCGmutG44ZMyfJrJ
         qOLQ==
X-Forwarded-Encrypted: i=1; AJvYcCUeVMe1x2xgyg+7KM6JchcvymRiXuAOW3qYHeD9eQHddEA4/W/sQS43k8VHNhh6+ZgMtDppG0jbl4Np54eYX2guJRDgQzBKHMv/fQ==
X-Gm-Message-State: AOJu0Yy/1839aUpPtK5Liy9R0CjH/AOOutXqzSLqTfIx1HkvKXNOF4XJ
	thSLenXXqTqFT98N11AQM3vi7/aBAoP7Pq3MynoelNWMnkV/+iI9rgDN3Jcj7eg=
X-Google-Smtp-Source: AGHT+IGAPWtrsBoKqiT6NA7h3nhAEtNjGh3ZlArWedHKrxD1LJKsjTkfQ0ARrSXU5FBmgRUnhtV3jg==
X-Received: by 2002:a05:600c:468d:b0:421:2ddf:aec4 with SMTP id 5b1f17b1804b1-42304844f6dmr74278975e9.30.1718611539796;
        Mon, 17 Jun 2024 01:05:39 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42286fe9263sm187819725e9.15.2024.06.17.01.05.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jun 2024 01:05:39 -0700 (PDT)
Message-ID: <85e9451d-2cd0-457f-a246-017433757fff@baylibre.com>
Date: Mon, 17 Jun 2024 10:05:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v5 00/16] Add audio support for the MediaTek Genio
 350-evk board
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Nicolas Belin <nbelin@baylibre.com>
References: <20240226-audio-i350-v5-0-54827318b453@baylibre.com>
 <ZmwODkYov79VHznK@finisterre.sirena.org.uk>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <ZmwODkYov79VHznK@finisterre.sirena.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 14/06/2024 11:31, Mark Brown wrote:
> On Fri, Jun 14, 2024 at 09:27:43AM +0200, Alexandre Mergnat wrote:
>> This serie aim to add the following audio support for the Genio 350-evk:
>> - Playback
>>    - 2ch Headset Jack (Earphone)
>>    - 1ch Line-out Jack (Speaker)
>>    - 8ch HDMI Tx
> 
> I seem to remember you had review comments that needed addressing from
> AngeloGioacchino, why resend without addressing those?

I don't see any comment:
https://lore.kernel.org/lkml/20240226-audio-i350-v5-0-e7e2569df481@baylibre.com/

-- 
Regards,
Alexandre

