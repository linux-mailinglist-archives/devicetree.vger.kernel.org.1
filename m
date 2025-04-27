Return-Path: <devicetree+bounces-171296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EE6A9E356
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 15:41:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 75AA2189AAD5
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 13:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B75B18FDAB;
	Sun, 27 Apr 2025 13:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="FU5NM75h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A99153BED
	for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 13:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745761281; cv=none; b=t787XUkiniKsi5zqLB5p7vNKwDoPhZH/I/zyCJP+VqhWCrCwzLtaDRHE07a4N4/20hT9qXGHN2Ftskzb4JLzWQhUCMKFow93WgNU6JliCar690aelNxmOkxgORN1uthz1vBFXilarQuNwfd1giAiVLBrn54r5hpXDn8P+qtVm9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745761281; c=relaxed/simple;
	bh=VnALKFAe0qO+P//pjggZT55wiJFa5E0L8cO8PSW+xlk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qTtmzS4GSSXT/erCApAtQtY04BSpGvURyNAPKuBEZn/zdiyJM1KC9IbUgy1kpjbQXcD79XRuwpiSRUiZti/3SNPU4UDlFSm3+FfQjEoXx4fETrHyy9M3DWH+sXCeonNyhyx3jeloujyH4t0HRT/UPuUcamKRfla/lthWryWPbjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=FU5NM75h; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5f5bef591d6so7402695a12.1
        for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 06:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1745761277; x=1746366077; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lgLsTHFUHPVY+MlDYOlPHI/6Yw7FnfxYmbCzXZmnW0Y=;
        b=FU5NM75hacbjTf/WjGAOYbr9cn1stb2HOpic2Du6PWnwncKLp4aPXdkPF5KjMGhbrX
         Gvr8s5MvTxKirq5OrANmVJVHWfPJF3pppY011xlYp8aaePN09xwPUpWERsnzZguHh/AE
         QISf2GAd4yJheDVooxIwgFB9NEW5Qx+4zweppybxiqpLfVyVcHJzDHoR2RZ6x6nlTORK
         sTXDO7JYfxh9j74YH/QOisoVzdfJtITcdcmRx4EzdSvVVWjJP3i4ZOP7R/ef8TMzIF/P
         tfQmsFETVTgFd9T15EHe6wPw30596qui0O+H9Uyc3BBeV/TWzZh1e6xz6SM+iauBG2Ie
         UXTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745761277; x=1746366077;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lgLsTHFUHPVY+MlDYOlPHI/6Yw7FnfxYmbCzXZmnW0Y=;
        b=o8bPTCQaIAgITIAq6zzlGNpkdKc0Vj5/WBkS+/Nta1TcIcH6vIvM8k4YfdQy5ibrrg
         a0vLZPr9xzLIhUytbOkWFz3vvrTBFhgJD1BTCL/utOgEjeCopXb5u/bJQItpegDcBImj
         O3yUXOUHZD7HHlpCiSf5ySxRvxD+Cu9sG+jSFRscthvHKU2dKtIdFFfGCh2Dl0WE3KSi
         1fhSq5LnP7rohVd5SPYtvC7gFsj3ISRAW0EvMipm5r92YJNdLXToEUBu2jAD/oZ2Hs2W
         onvU/PW4idl0K+6JnVWTFheGEZAwypNLHQRQjfq/YTp0uRwtUeKr7NOt5hOXGcoUwiHx
         OjiA==
X-Gm-Message-State: AOJu0YwVYgziJAD1jWdmhdy4oEz2xfoTCeqlcsLoEUM/g9bDuWMFwZmE
	B8UbbFBr2UTlanfWXxgBSkBZN2/r9TLVojCCniY0AMUYle9Lffy9HyE9fqZn18E=
X-Gm-Gg: ASbGnct+qbYIL+aPEk+2qy87qZ0uHht09tHlyaW9YkR6DcCwLSqc1ZswUyIKBc4cvJN
	gb2pIU6f5EMK0nfev8DzQsJ8O3vcsBcJJgSAws5mVy5pm31Xd9/cLRVWjKg5Ye8H691bY/8Hb+3
	UZYxJOjCfVfEw/FaJh/BzzaZSzDG1FsmfLwMk3l4tIEbEzWglJdTqLgE0wHEeV5+NO1w0V5t541
	keQpAUo65+WqV5zOoii+3Y1uaGP6RMU0Xyvtg5bNYzKM3at5hwqyDTGT2fqIQJHT7ZL5NdYTHyk
	bPYuJhLZ6AEFhu9FYuSVC7raKQExoNUq0qxNTGnjw6b0hr7xZVh+FETP5/g0
X-Google-Smtp-Source: AGHT+IFjvYNUHCZ3dPrDRyEa/OPDZMNfSszUTn/p2tnOnx4im+io+5tXp8qpQenDsLlwqL9uw5wHmg==
X-Received: by 2002:a05:6402:2691:b0:5e7:c773:ae35 with SMTP id 4fb4d7f45d1cf-5f722672b22mr7593685a12.5.1745761277306;
        Sun, 27 Apr 2025 06:41:17 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.145])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7013ff570sm4139225a12.23.2025.04.27.06.41.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Apr 2025 06:41:15 -0700 (PDT)
Message-ID: <86068277-5443-435d-b1cb-0d1a5731b331@tuxon.dev>
Date: Sun, 27 Apr 2025 16:41:14 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 00/11] Enable Power Modes Support for SAMA7D65 SoC
To: Ryan.Wanner@microchip.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, lee@kernel.org, sre@kernel.org,
 p.zabel@pengutronix.de
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-rtc@vger.kernel.org
References: <cover.1744666011.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <cover.1744666011.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 15.04.2025 00:41, Ryan.Wanner@microchip.com wrote:
>   ARM: dts: microchip: sama7d65: Add SRAM and DRAM components support
>   ARM: dts: microchip: sama7d65: Add RTT and GPBR Support for sama7d65
>     SoC
>   ARM: dts: microchip: sama7d65: Add RTT timer to curiosity board

Applied to at91-dt, thanks!

