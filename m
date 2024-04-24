Return-Path: <devicetree+bounces-62174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AE58B031E
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 09:24:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B8E41B26048
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 07:24:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C2BC158219;
	Wed, 24 Apr 2024 07:23:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="fhBL3exY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B7A157A72
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 07:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713943401; cv=none; b=f8ct9TvAQVQedjXwbImGlGjrvMWTP3XPxYNLShUd0VLrJdCTnxB4srDKzI+391D4KWwAOhB+XGjY87cjLCJLkK3K8kn5T2Bgg8yIX7h/qS2J41yIt9YCGRRjW360sNYc6nuSi/vYI8ao/DVtaaUtF8w7gzJwP+wiI6X3wK+PgSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713943401; c=relaxed/simple;
	bh=Fy44zdBPUIi1e1kPvszIB4TBdAgpSw1pweUwDCaQ+RU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cfjWID/JufSJq1kLv2pax6dAfKEBNG1rEwzbFWS3Ec6IBl5Oyb6r9DR9x/5TRRT/73a9tu2BYV7n7kH5jOIvFgFHWE6g9QTo71q5/5gMpxZfLsNG5O4Pte9MaCm6T8cWWkyT+B3Xwu5ZTd4VbfWqDGt2Qdfp78tupEutJOnkSlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=fhBL3exY; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-34b3f3764d3so380072f8f.3
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 00:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713943396; x=1714548196; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xOAuqs13k76ipILyHrz87YiVm+6HwZVLQFW6RCDP/CU=;
        b=fhBL3exYnyUai8OrvhPsBO6WRQlDu77fyhSN6u3/iL/uk3Mae/ZVCEiSkJuedrDdyE
         0XtR9VrOr7rV6RywENah3QRxBaPMXNY2i6fUMwOy5n0fG7v3kgNx4Sw+3WDGdu/3lBVQ
         wW1l7FaCH0ZzlyDzzQiGWQErEo4XtUtPXDlSY+7jDEBi1UbqnOmGeuHjVY1rPZ5mCbq5
         ZOK+J/6ZrodC244N7X29DboTdwOt0NwuKSmvyx/xWiEO1Y5WwKzHWfLYHIBdXo6U1RlC
         dyMpOUwFOyP9fv22LsWZ3im04i5EkcfDk3gCB/DsB6XIxoZUL6ONxMBDvkDmtzi7xlug
         jjdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713943396; x=1714548196;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xOAuqs13k76ipILyHrz87YiVm+6HwZVLQFW6RCDP/CU=;
        b=EWuMZv6DeJuE1qKBjbHSl+H8/Mq0Csp3gFnvFdodnLq1ilU3bb+ac0GBiV6YhqbZHU
         rQy6TaBo5XzerOqJmtpYwN/fI2kRr7mX1SHwPi7T7Dv2J3j9gOgA04Se4EeqesZUxvvb
         W7yIE5r3q6DsaZ0qX5YlkCe2QDnm6SJHm09Zu8v1MNhiTN5yvZ2FAseWVvuCzCy5AgZJ
         tDHpC2xvfFC0bgR9SGM+6ULnJoA3/LSe8gmE607XC/+gJN041zmfQ29pDEBajBFZfrCR
         xZmmbyPA/X/OtJb3gj9HYNslU0V3AQu31ihPEeQDtNfrcXu+RTOL6KRKQldFp2FLaXw1
         INCQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJhxznE1iFbL1JtnX2G7GUzOORFSRiVv1WN7YhDMa21cHFajDA3jrprthnXb0aS7OFSI84SacmHS/AxBMZloqQkVtjceHpx2CaGA==
X-Gm-Message-State: AOJu0YxJ/ijbsHvhsrq9UsCfs1Ij6xB3YuwnaQS4rHmPgehqngfOR0dm
	gY6U3RsAxn4jKpfQG8A2StDa1SI/dx8SVawEekDUrMfA9RhcLIVf6nrt8CD0pvc=
X-Google-Smtp-Source: AGHT+IFCMRd+boelCqR+CsKhxLlNo5r68LHwVH3LQbe+tV9NyEiJ+zKsBoHZU/+a4l1EzP1sq6qqyA==
X-Received: by 2002:a05:600c:3ca4:b0:418:ef65:4b11 with SMTP id bg36-20020a05600c3ca400b00418ef654b11mr1231387wmb.2.1713943396566;
        Wed, 24 Apr 2024 00:23:16 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:999:a3a0:6057:6f32:d1e5:d4d7? ([2a01:e0a:999:a3a0:6057:6f32:d1e5:d4d7])
        by smtp.gmail.com with ESMTPSA id bd22-20020a05600c1f1600b0041b0cda6f9fsm671254wmb.48.2024.04.24.00.23.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Apr 2024 00:23:15 -0700 (PDT)
Message-ID: <380532d7-41bf-4fcc-bcff-3cb6de0b172f@rivosinc.com>
Date: Wed, 24 Apr 2024 09:23:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 0/7] riscv: Add support for Ssdbltrp extension
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Anup Patel <anup@brainfault.org>, Atish Patra <atishp@atishpatra.org>,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kvm@vger.kernel.org,
 kvm-riscv@lists.infradead.org, Ved Shanbhogue <ved@rivosinc.com>
References: <20240418142701.1493091-1-cleger@rivosinc.com>
 <20240423-fresh-constrict-c28f949665e8@spud>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20240423-fresh-constrict-c28f949665e8@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 23/04/2024 18:24, Conor Dooley wrote:
> On Thu, Apr 18, 2024 at 04:26:39PM +0200, Clément Léger wrote:
> 
>>  drivers/firmware/Kconfig                      |   7 +
>>  drivers/firmware/Makefile                     |   1 +
>>  drivers/firmware/riscv_dbltrp.c               |  95 ++++++++++
> 
> From what we discussed with Arnd back when we started routing the dts
> and soc driver stuff via the soc tree, riscv stuff in drivers/firmware
> supposedly also falls under my remit, and gets merged via the soc tree,
> although I would expect that this and the initial SSE support series
> would go via the riscv tree since they touch a lot more than just
> drivers/firmware.

Yes indeed.

> 
> Could you create a drivers/firmware/riscv directory for this dbltrp file
> and whichever of this or the SSE patch that lands first add a maintainers
> entry for drivers/firmware/riscv that links to my git tree?

Yes sure, I'll modify this one as well as the SSE series.

> It probably also makes sense to create per-driver entries for each of
> the dbltrp and sse drivers that ensures you get CCed on any patches
> for them.
> 

Indeed, missed that.

Thanks,

Clément

