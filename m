Return-Path: <devicetree+bounces-220756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CC7B9A1A0
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 15:46:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4DE5F1B26392
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 13:46:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42A943054C1;
	Wed, 24 Sep 2025 13:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xQmD9x2L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6361DF755
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 13:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758721549; cv=none; b=esFRKQ0kAlM9oUGN2AAxoH7byNogcI3RZDAd6OVk3tdVzeWHGKpbR9U6nGDy0zNwas7B3WqvqJ6XNdjbjDpWB2kPkYEK3IGwhhkKAG48AZWUh6N2FeknS00p0jvKR3a/gQtKxJaNHqRzvEhVAgw2yHTcE30lIc45LHWQ9e7eVd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758721549; c=relaxed/simple;
	bh=cEMmzRzXMTGSJDBCpuLpTyfKNk+jAauBaEAZNhHggag=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jf2IxLB0GqtPSx+abdGDQ9HtgVl0uxfBJqhta0iQEKw6qBm/t1gSc6O9w687XZylFhvM8ZJYQk6d4CaKaLdg9zwTTEYYznnsAeZ2hLrSX2joCLipoIExS5ms2+xYcckOgtLS7Lvle6AFGycN/8216XDjmt/Sv519PolHtNbp8uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xQmD9x2L; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3f2ae6fae12so2812413f8f.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 06:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758721544; x=1759326344; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Si08GYvs7O7On4M1lZPat5JwQiuJTzJsw49avbAJ8Uw=;
        b=xQmD9x2LZEsVtPUWs5Yq320mJSpW1sJzES4OT4lbexyG66ku8TgD5qDoyqKgvg8pZP
         nW3gk3pDp3mNpd4yKQ8/XbylSSvQRvTcGm5yj2w8GtXF002izmpjH9H40zo/mV64TkV8
         +ue5zcm2s2a64Sp73cvZaZIbww/GllGn4TZGY3l+ePmHM4x7/8gAbaDqXxoE6P9EtStY
         n5T7yWZVGBbeIq0hZQmXOdpohoLPt/09MqXvFLvkyzlhC9n9PVdG3biHh6UTW1TF9x4b
         NCghEWPa46JPNotZUgCUVrHWoEzzR0t5nxPCWswAAylPpUVcaFMk4otsDTCEoOSFCh7y
         hhGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758721544; x=1759326344;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Si08GYvs7O7On4M1lZPat5JwQiuJTzJsw49avbAJ8Uw=;
        b=Ycr9c+Ee4AFWSxPvC4fMsyqMmXIZY7oIDR6nQhhvIas9edgA3bmoiyW1ZiuFMhq68p
         3ofHjAm65T3/g3utIQiuRFIqWlAEQZdenK+VYEX1xlF5VhTA0z18y12Vqs5oihbW/PUm
         NFPcatBn5bvlKfNyWvSGzrmnTY8AzGB177qrAFeL7nHX1m16hTRTZ+o4FZKN5BSBufqt
         pWgzyscGaPNz5FOwyfcjvY1n5RZ8b1uTiWb3QfEEjZYM1tZvLPVbL3slrVlHyI7axlZv
         KGNxGqytfnj2SNCFP4AxuIhooLeiPrZkpMBOp99C88MhvRHuOwF3IT9TcIryi/PW3DLp
         gmCw==
X-Forwarded-Encrypted: i=1; AJvYcCWxECwshTmTRnubxyFKZwkP52rrV5Cf0BPWN9mkVCzGEP8vgA5qIoOOqQ9f75M0BHD84iRZf0FT77Wn@vger.kernel.org
X-Gm-Message-State: AOJu0YxE0k5r/t9f/n0Vgvb1A/GfIvqVv5yomxXQSISpxpaJpeqtJn/u
	XWI9HQ6VXe7vZs78GTAaDdeSIBcduJTvviD+Ks3YMKJDkhjXTRD0KGG9zJe8UdbEgo8=
X-Gm-Gg: ASbGncuguYwSzEPy3Bg/AoWA/T/7IZq8ORiNhFiva9zlZLGRTxf2l1SXR1aWhFw5rv8
	oTwxKkZnvnzD1rAzMUClTP+SVLQH/Z73u+xLX2JBHBFXI/jMPQy0f0ZBhF3IB8NPVBJEcuGudP8
	/kaE0PVjrmcBxeChSiUKIaZXM3ICH1pAhUUMmFSakCklF9lvEMwBVPbdQnyHXh2pu4iLXcdOwu4
	uLCcW1lVptOB7pfcTlWT5ZJSE7IMqaSC6l+orGITz34wJXV6YCExq76hkP6z/ujAMzxgewgmvtZ
	LDUgsMQwRZI+U6WFMgIEBB0JCuFQv3bD/5BLSNtiNdE9SkFv73d1CGOPhRWC/mezyD1yaXAtKqW
	/s2ylPaeF3ahBERNcvjTVmmXfyD+HxStfnjd+7z9QUyL2p4ue1Y/hBtOTIXNWrOREqWEyJRFCt9
	nKlOQoE0occqZz
X-Google-Smtp-Source: AGHT+IHMbJb58nATRmai0WS9gfnhVJul59uJVjNVhSmasVwwjHrrbyIG7ZESwXwPwm4dgPq89hsCDA==
X-Received: by 2002:a05:6000:2204:b0:3ed:e1d8:bd68 with SMTP id ffacd0b85a97d-40e497c34admr16417f8f.7.1758721543997;
        Wed, 24 Sep 2025 06:45:43 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:bc4b:2611:54b0:29a4? ([2a05:6e02:1041:c10:bc4b:2611:54b0:29a4])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-46e2aacd4dcsm35528145e9.15.2025.09.24.06.45.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 06:45:43 -0700 (PDT)
Message-ID: <e6a7cfe5-5443-4e10-981f-ca3811dadef8@linaro.org>
Date: Wed, 24 Sep 2025 15:45:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v6 2/2] riscv: Allow for riscv-clock to pick up
 mmio address.
To: aleksa.paunovic@htecgroup.com, Thomas Gleixner <tglx@linutronix.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org,
 Djordje Todorovic <djordje.todorovic@htecgroup.com>
References: <20250924-riscv-time-mmio-v6-0-9c6158a14b37@htecgroup.com>
 <20250924-riscv-time-mmio-v6-2-9c6158a14b37@htecgroup.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250924-riscv-time-mmio-v6-2-9c6158a14b37@htecgroup.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 24/09/2025 13:10, Aleksa Paunovic via B4 Relay wrote:
> From: Aleksa Paunovic <aleksa.paunovic@htecgroup.com>
> 
> Allow faster rdtime access via GCR.U mtime shadow register on RISC-V
> devices. This feature can be enabled by setting GCRU_TIME_MMIO
> during configuration.
> Reformat the clint timer to use the same mechanism if RISCV_M_MODE is set.
> 
> Signed-off-by: Aleksa Paunovic <aleksa.paunovic@htecgroup.com>
> ---

Thanks for resending but I was waiting for a tag from the maintainers.



-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

