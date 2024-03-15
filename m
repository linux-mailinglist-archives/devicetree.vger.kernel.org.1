Return-Path: <devicetree+bounces-50793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE1687D2AA
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 18:22:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9EFC5284217
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 17:22:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 551744CB37;
	Fri, 15 Mar 2024 17:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b="rUsIq+aW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C241C45BE2
	for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 17:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710523278; cv=none; b=jysMXmmCkN0Hg+7UbqVWxilzyvu6UmNhRUKKoRd/d6EexNb4IBJP/grM6kIslr756HN6rfue+1/eJSm6JKdo2UeEeV8LqjC+qWK0CTM1Q+5b3wqzYel+8t/UcK3Rh9JpaA79+wkNJJ+YGxsg+DSS6+N/6q5b+9PZ8uNv09RUfoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710523278; c=relaxed/simple;
	bh=lZGIfzqc2Drzycj6AUKwKqZXUp1iJGO6D44k85fp6lc=;
	h=Date:Subject:In-Reply-To:CC:From:To:Message-ID:Mime-Version:
	 Content-Type; b=J72jTQZ5VTvba5W3516VgpXxM1P2EwFYsLqrrq2F0chSXEwEPAzufk4Jpsqimf1+7z/E9w0tLjJX43f6EThjMZAEX6s0LpTSXevmJB1D0aAfZB29/R8hYsOD0OtwAVNoUp35J6AEUB+v4UVLSXTnKEFrPdG0S8MMXQgFZyg9DHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com; spf=pass smtp.mailfrom=dabbelt.com; dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b=rUsIq+aW; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dabbelt.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-6e6f6825102so1027938b3a.1
        for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 10:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20230601.gappssmtp.com; s=20230601; t=1710523275; x=1711128075; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z4Uu/E9gE0652T6hoQJRicZh5VPvjIkh0J3KEQ5/ek4=;
        b=rUsIq+aWDlp9HkYbGp89cDOS5Q6V9Bsi+5LKAOXST70EmooYPJ8cKvqL0+R45mLzSG
         lpN2Rx4C6zSX6px0hlG50f0J8UFldBDa6AVpl+RBjdCs2SG4kQWmHaxBuocRYuzlnFc3
         TT/u0jCSJ5/JANc/zVpPV93k6Zo6nDkfYy0o2xW6s8+5v1ykAYtvlHDwrFOphaK/V5SQ
         7OFMbRQ2553MA088lD15/DALfNoPbLKKO97k3MZnlJ9AAJOREwvAkDt5aaIqymyG1rs9
         gVegLdwty6WMkVL+tuJ/oaFxVwBMeGDI2l8U/6YUkCwqx3FryusCinDtEpf1aXOrYq6X
         /QkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710523275; x=1711128075;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z4Uu/E9gE0652T6hoQJRicZh5VPvjIkh0J3KEQ5/ek4=;
        b=Y5H5uX9egPhrzRXCgvxSuB4e6LqcaEHviw+x4p9vozj2AM1WS4C9m3y8DxCfzkjDir
         ScMlGFVrmu6/vN1rwyNuZ2zZijsvyphZ8HSX2AI3m/suBptR7inSm3GGewAMZqBEXcVh
         wzQLldN2QDBpwxAAsgewx2go5IuGLbtSR4ol2U2/ofYqFB1nZVNoA9dELLVVcO4OACPc
         I9PReaLXeb6bkCQY2Nn8xDUkJvlw1ghN8lStuclrIBT79rbGvQAdcStAg6hZquN6STVc
         oXpDo+zrH7TaNT6gJGYS3P+QkqJ4Rs5N/yPOKpQMMUOCtHsozel/wvM/0da8nUgjgouL
         9pnA==
X-Forwarded-Encrypted: i=1; AJvYcCUyh3+w79bmCh7zGCD74GfL/57+Ux+jeLz1o+tvoQXH1T2NcACOXh9XPqVbgPFfEAGnffcoEwugt/axCCPVn+TgSrvLcjNvoZM4hQ==
X-Gm-Message-State: AOJu0YzlMLIQhaYs8j3DCvGt6Fyt5Sp+hFW3E2G8/g2ODNXgAsQkUTcu
	C+NzuAvq5T9TZSCyyLcpXLWmV5zBG9+LNwh+M5eW0lfnLJ0dsH9HHQ8rNbUHsvA=
X-Google-Smtp-Source: AGHT+IFobowEw/BZzPFUGcWVFl2f0Ay+g8tIGVtL6ZeOGfHYkRhGF70dEpXmyMZCMSlq5eClBe2ngg==
X-Received: by 2002:a05:6a00:b52:b0:6e5:d88:a73e with SMTP id p18-20020a056a000b5200b006e50d88a73emr6658033pfo.9.1710523274903;
        Fri, 15 Mar 2024 10:21:14 -0700 (PDT)
Received: from localhost ([50.213.54.97])
        by smtp.gmail.com with ESMTPSA id b18-20020aa78712000000b006e6be006637sm3614761pfo.135.2024.03.15.10.21.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Mar 2024 10:21:14 -0700 (PDT)
Date: Fri, 15 Mar 2024 10:21:14 -0700 (PDT)
X-Google-Original-Date: Fri, 15 Mar 2024 10:18:57 PDT (-0700)
Subject:     Re: [PATCH v3 1/4] dt-bindings: reset: sophgo: support SG2042
In-Reply-To: <MA0P287MB282221F8E750206EA615B3CEFE282@MA0P287MB2822.INDP287.PROD.OUTLOOK.COM>
CC: unicornxw@gmail.com, inochiama@outlook.com, arnd@kernel.org,
  aou@eecs.berkeley.edu, chao.wei@sophgo.com, Conor Dooley <conor@kernel.org>,
  krzysztof.kozlowski+dt@linaro.org, Paul Walmsley <paul.walmsley@sifive.com>, p.zabel@pengutronix.de,
  robh+dt@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
  linux-riscv@lists.infradead.org, haijiao.liu@sophgo.com, xiaoguang.xing@sophgo.com, guoren@kernel.org,
  jszhang@kernel.org, krzysztof.kozlowski@linaro.org
From: Palmer Dabbelt <palmer@dabbelt.com>
To: unicorn_wang@outlook.com
Message-ID: <mhng-76918908-fb82-4312-9320-959318b98b5f@palmer-ri-x1c9a>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On Thu, 14 Mar 2024 17:15:11 PDT (-0700), unicorn_wang@outlook.com wrote:
>
> On 2024/3/14 23:17, Palmer Dabbelt wrote:
>> On Mon, 29 Jan 2024 17:49:45 PST (-0800), unicornxw@gmail.com wrote:
>>> From: Chen Wang <unicorn_wang@outlook.com>
>>>
>>> Add bindings for the reset generator on the SOPHGO SG2042 RISC-V SoC.
>>>
>>>
> [...]
>>
>> This is now
>>
>> Fixes: 1ce7587e507e ("riscv: dts: add reset generator for Sophgo
>> SG2042 SoC")
>>
>> which landed in Linus' tree.  Looks like that went up via Inochi and
>> Arnd.  I don't have that in my for-next yet, so I'm just stashing away
>> this patch for my tester.
>>
>> I'm happy to pick this up if folks want, but it'll probably be cleaner
>> somewhere else.
>
> Hi, Palmer,
>
> I see Arnd has prepared a tag
> https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git/tag/?h=soc-late-6.9
> which contains the bindings part changes for sg2042 reset driver.
>
> Let's wait for Arnd to submit, although I haven't seen this in Linus's
> tree and not sure if Arnd have submitted this.

OK, sounds good.  I realized I dropped the ball on a fix, so I'm not 
sending a PR this morning either way (I hadn't picked this up yet, 
though, so shouldn't make much of a difference).

I'll just leave this in my not-for-next until it gets sorted out.

Thanks!

>
> Thanks,
>
> Chen

