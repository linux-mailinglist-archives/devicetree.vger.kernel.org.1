Return-Path: <devicetree+bounces-114857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3149AD269
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 19:20:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7EE83B23619
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 17:20:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 059471CCECB;
	Wed, 23 Oct 2024 17:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="miUm/knr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 874021CB312
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 17:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729704048; cv=none; b=dU55Lmgko/5qLXjupX7QDHVEpwKmkRZT0/YZP/gO0iRrZVEe7xQoB5Cp4+z4DU23ixNWrFvi9WpjZKpqH6vT2AS7ezOsGNkM8lyc3KF1LBVVIJDlR9xLexSnuCEzaW8ewNbEFxSLmH83gCLQ82lDsfVH0lRFSIwkUGAsHcd+KJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729704048; c=relaxed/simple;
	bh=Zw1WWcu8u0UhtlcMAXK7UYHoubcBNUL10aVGmjKeq78=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E4800Nld6rdj6T8/+F5hF3OPQUI6nUoyFQm9wbCALWyji1HuOIlWT9vk1cIbhghGiV+MgJYJVA8lQcVyvF04NURWCyJ9nVZRkLiXTCwofrYMo56TW9C3FbN0cn6k+SW3an65UJ5OZddvB+VPvU3O0Bo+KkU7TYl/MxImDlXHymc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=miUm/knr; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-7ea8ecacf16so11866a12.1
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 10:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1729704047; x=1730308847; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nEQXo9Sz7v8bN7Q1vJX5DWcUwb1IgUSqRx5epQQcFPc=;
        b=miUm/knrawdT4wXT0+yy/Mc75JeTrbMJ00HvYcVTSd2TIxTctR4Y+S0zmF4AKcrDS3
         HNhCqgsq0Xp4hUxCJJ2Of67dn50k3dgn1m+rDUjfbDAYnDqenCX6tjo8OxxUFWdgU09w
         Roo8GJAx18PeJPydDAZveVInbJmEDMkibaY5RvkwqtCiiczzUI0+c/aA0zk9dgEwN7aL
         3kAxKx790H831map/epb+3NQTkduHpL9HY1yV1cBQ/U73ICyfIWxN6mo2uRiNhfcHSkv
         jz36ohAW6VN70T1qoq1ItL4fEwdvTU42JgA/YI6q2fBp7Xsy0NVGaozgudpulB/neWxJ
         ULGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729704047; x=1730308847;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nEQXo9Sz7v8bN7Q1vJX5DWcUwb1IgUSqRx5epQQcFPc=;
        b=P9afKxd2geF65onoZYr8Lh35dCZ5h1gIJorodc4/vBhWEKxrKZ4b5CpvgtNaNvhuKJ
         R9JrEwUT2mi7kBCYYK45+qwj3kigJyCREGn4GvkAwgF7g8Iy7l35EkAxbH+KETO70vvB
         rl61xylNN855AjVP7Y/7e6tiuMFpIemVF5isId7EoS9ENHPZEWjmSjDToN5zWnT0+cP4
         8FknnLgmmYqS4EAvaeSObMiL56ILNKQxquP2E1B4O5alrwgt1zJ4XQbliLzbmNSPFFDK
         n8WvL4CvewRKhe/0ONJ3Ef16Rk+pUynj1S/+YZdw/UE6+vp38VTi+qGJvoXWIhtZmnk3
         NSYw==
X-Forwarded-Encrypted: i=1; AJvYcCU931ZtQuDHMsAYDup4A0Gvcnf+7mZaxWU+soW9RTw9MUzLZejWxeKcX+tpyrkTmWxOE+kggSVkT27H@vger.kernel.org
X-Gm-Message-State: AOJu0YyRqrdIB7ySlfs+93z9X57UwiELrrZnNT2UrmJ5q4ec6WtgJjfP
	x+RA77LjuZKV3emnEA9jX9N7o5/QmxrnPOfBAy+O7Oh9oAecpPVu3FFWId0y4t4=
X-Google-Smtp-Source: AGHT+IHPr4QZhkAAGeXAcDGgKolf50uTjkGhkmYrtjSOEjEXstK3U1GYg0d0gYasNFQ1xIHEov8Cbw==
X-Received: by 2002:a05:6a21:399:b0:1d9:3acf:8bdc with SMTP id adf61e73a8af0-1d978bb358fmr3064226637.46.1729704046752;
        Wed, 23 Oct 2024 10:20:46 -0700 (PDT)
Received: from [10.211.55.3] ([208.115.86.78])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71ec131477asm6838596b3a.10.2024.10.23.10.20.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2024 10:20:46 -0700 (PDT)
Message-ID: <01a7b872-494f-4ea1-aef5-b40abc4bec06@riscstar.com>
Date: Wed, 23 Oct 2024 12:20:44 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] riscv: dts: starfive: add DeepComputing FML13V01
 board device tree
Content-Language: en-US
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Conor Dooley <conor@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Guodong Xu <guodong@riscstar.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Emil Renner Berthing <kernel@esmil.dk>, rafal@milecki.pl,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Heiko Stuebner <heiko.stuebner@cherry.de>,
 Michael Zhu <michael.zhu@starfivetech.com>,
 Drew Fustini <drew@beagleboard.org>, Alexandru Stan <ams@frame.work>,
 Daniel Schaefer <dhs@frame.work>, Sandie Cao <sandie.cao@deepcomputing.io>,
 Yuning Liang <yuning.liang@deepcomputing.io>,
 Huiming Qiu <huiming.qiu@deepcomputing.io>, linux@frame.work,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20241020134959.519462-1-guodong@riscstar.com>
 <20241020134959.519462-4-guodong@riscstar.com>
 <ae5gels34ozgzrcrwz53wj22hoy5cq3crn3dmkhitxlffmnavt@6lbmrcpjmqyd>
 <20241021-unroll-empower-3ab903615d6d@spud>
 <c048d270-7a07-4807-b816-0f4e0aeb67f7@kernel.org>
 <2b449955-6596-4c9a-9799-f15d186e260f@riscstar.com>
 <20241021-crimson-translate-291eaba4e640@spud>
 <CAJM55Z_jp7ZGUcV=4Ciq0ZMPbrf_YARpSDwWgxBa9OjbYzhiFw@mail.gmail.com>
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <CAJM55Z_jp7ZGUcV=4Ciq0ZMPbrf_YARpSDwWgxBa9OjbYzhiFw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/23/24 11:49 AM, Emil Renner Berthing wrote:
>> Ultimately, it is up to Emil how he wants these laid out.
> Thanks, but I agree. Please begin with a patch moving the nodes that are no
> longer common out of jh7110-common.dtsi and into the vf2, mars and pine64
> consumers. You should probably do the same with the &usb0 node instead
> of overriding the dr_mode property.
> 
> /Emil

Thenk you Emil, we will prepare the next version of the series
to do these things.

					-Alex

