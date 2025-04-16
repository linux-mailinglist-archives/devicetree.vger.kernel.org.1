Return-Path: <devicetree+bounces-167754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D89A0A8B867
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 14:09:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DF8E97A4F4D
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 12:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F30B248897;
	Wed, 16 Apr 2025 12:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xnraYWHU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31956248871
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 12:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744805208; cv=none; b=cjc4qxanhPL4PEoxVcfHyTIXCibiDJgTheS1ZWs7nA3qGJIEszw5+LH2VqUkuOiu2Z7CPbTkxOUd4zLd+nQanC40q2p5FvL/Drcp+Q/0tJ5aa+UeuBxCLfiGxhRRGleLQPty40IxyizG95RlmVapK2FhlYz6f9+IShe3n4CJwE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744805208; c=relaxed/simple;
	bh=+ew6Nlx7RAbr/t5g5DGLhokwMN3TK2CIoxmpi00MUS8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IJVd54V7NU5laHpPOQKHEypEGMlc4TRttXh39tzyRGVu4Kblzx+tMv1cet6swcMFSCzPirOWCrlaELCapEgkEa29QFngUugdMQ4lF5fzTvljsqM7AJyijZawnZjU5/ROXQxkN3o4FRKQu4HPhUHX1LCLGuJKzdDbFsqQchCvS/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xnraYWHU; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43ce70f9afbso68254825e9.0
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 05:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744805204; x=1745410004; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fG+8gTyogJhXVVgzlC1Mhz4k4/KMfqYLgC3PtwVFNXw=;
        b=xnraYWHUouWxeBBEkd8byuorWomx6S1OPO63/vQ6N5HJ6WID/jZIdUQf1L/LFQ3NkM
         4A9zAxxDMuS/WPIYu5UavNdfJuxMpmtt0M2QK1apFVsRX9sM8v+R5YU7oN5+w22lzweS
         GH0VJSZC21hPZ8+U6wHGMbFyezRS+ULN3b9MeL1Wj8d8YKfWqRwob8O2EfkESK32X4Lj
         PnBwmnwCIvHorWhK50XojZARFSwMbMYpm2s0POagkvUJqCuFtALPWMSSTKKSKpRzSkn/
         ZtcjrIG3qBmm3DC/4ubmdNu0up6DOZ+sRwK1aLEVAWgMEqxIykwSCTqiHjOp9Hbof5cR
         iWbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744805204; x=1745410004;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fG+8gTyogJhXVVgzlC1Mhz4k4/KMfqYLgC3PtwVFNXw=;
        b=Joh1YYC/R44UlT905xpalnPRZ1xuU8IpgYPS4avHua5DeFadW9z2T86wsjHws2yHuW
         KPWLgcTOvHM1hG9ZaOgomZQTulVt8Ez4bqUqZd7YzueG8NZ53Dt1NtX86OGBfEuR4kQm
         g3yjHAemIQ/B3Nv92fqO8GvT+9gqaFVgxjC2Tm6IDXaUN0KTplkTw7k42Xhqa+YuPt3o
         GfiSNEojLhw8tq4gPRW4k8JDfaebB2C1MNcIPm4alITuPX8tLwq/8GSUAiP1MA7QqW/J
         n27bYQXk+bktgEzraBFvHLzg4cCAofG075gqelSurlsHa60JF49OGG5tgVVFdgsaqFOd
         dxPQ==
X-Gm-Message-State: AOJu0Yx6pObh+fAlU4MkTzmPkx080QHx5sfCB7h1mlouvC0lcVOY8APS
	K7EQy9bhmKBHKizPUEWXjDw/xMDPFy2WeV2tUYViRjb7suL4DGgYs9wiL2b+D4w=
X-Gm-Gg: ASbGnctz81tYPHWxIgWV+LPaQOaJgN9DcfXko4l/7FonGq5D0rjOrw0oiZqMVuwQL7v
	8p0cu+uhc0fdTHzvuI24+NAh39zh8JJJ+9bWr6Yz+DsIAE4L8vyl+Sbp9AYgbsQUmbfI3Q9RuOz
	Did/09fAhrYn5FUwiOMzvrfKXljVTozTv/uCuoCUpWoIL2dblxNXhui1XwHV+s7tdLizvFH3iAi
	8DeSSdA/6WkKoYqN1VnNNOaX1I8tCqILNQh98ommzlDEhaobwwdFUgqgN2C5RcjFltbykLa77ig
	92aUK47AE4Hzbd8aNUTzwOulZF+vn/ZTIxmtLpY/EiElzpRIcXJQ4am2GG8Vz3xEVwrO52Y44JT
	TPATXZn+O
X-Google-Smtp-Source: AGHT+IExyGK2xAyqqRdl0ucrVOkKVctx0j8878wpht2JoYVPAOWXtbOfFgcpvfiDCEvbHTp1PaTX3Q==
X-Received: by 2002:a05:600c:350e:b0:43d:878c:7c40 with SMTP id 5b1f17b1804b1-4405f2fae8fmr12215625e9.10.1744805204371;
        Wed, 16 Apr 2025 05:06:44 -0700 (PDT)
Received: from [192.168.69.176] (88-187-86-199.subs.proxad.net. [88.187.86.199])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4405b507f87sm19119035e9.25.2025.04.16.05.06.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 05:06:43 -0700 (PDT)
Message-ID: <0aeb5aab-fef0-4983-9573-e72bbe3e2cc4@linaro.org>
Date: Wed, 16 Apr 2025 14:06:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] MIPS: Loongson64: Add missing '#interrupt-cells' for
 loongson64c_ls7a
To: WangYuli <wangyuli@uniontech.com>, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, tsbogend@alpha.franken.de
Cc: devicetree@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, jiaxun.yang@flygoat.com,
 chenhuacai@kernel.org, yangtiezhu@loongson.cn, zhanjun@uniontech.com,
 niecheng1@uniontech.com, guanwentao@uniontech.com
References: <6E749D043BC7BD99+20250416034548.805069-1-wangyuli@uniontech.com>
Content-Language: en-US
From: =?UTF-8?Q?Philippe_Mathieu-Daud=C3=A9?= <philmd@linaro.org>
In-Reply-To: <6E749D043BC7BD99+20250416034548.805069-1-wangyuli@uniontech.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 16/4/25 05:45, WangYuli wrote:
> Similar to commit 98a9e2ac3755 ("MIPS: Loongson64: DTS: Fix msi node for ls7a").
> 
> Fix follow warnings:
>    arch/mips/boot/dts/loongson/loongson64c_4core_ls7a.dts:28.31-36.4: Warning (interrupt_provider): /bus@10000000/msi-controller@2ff00000: Missing '#interrupt-cells' in interrupt provider
>    arch/mips/boot/dts/loongson/loongson64c_4core_ls7a.dtb: Warning (interrupt_map): Failed prerequisite 'interrupt_provider'
> 
> Fixes: 24af105962c8 ("MIPS: Loongson64: DeviceTree for LS7A PCH")
> Tested-by: WangYuli <wangyuli@uniontech.com>
> Signed-off-by: WangYuli <wangyuli@uniontech.com>
> ---
>   arch/mips/boot/dts/loongson/loongson64c_4core_ls7a.dts | 1 +
>   1 file changed, 1 insertion(+)

Reviewed-by: Philippe Mathieu-Daudé <philmd@linaro.org>


