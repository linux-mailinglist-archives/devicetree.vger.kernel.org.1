Return-Path: <devicetree+bounces-167732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 523EEA8B7BA
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 13:33:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D350C5A11BA
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 11:33:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABC962356B3;
	Wed, 16 Apr 2025 11:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="bs9F0h32"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C61B722156C
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 11:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744803227; cv=none; b=UhgFR8O3EUMFPgOHxNFO9bmga1nVZNZPs+72FMdU/Eg6oDOR5ZEf9ghUB/Pn31HlM09xjgzthUbypCiCwCodg40X0JXgEh8I/xCCGz8oo2Sv5tVkBic6RGpwflK9943nDtpYAar0qUOgp9uC0GeoMTtjXZmhG/ArDK5CQ0et0LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744803227; c=relaxed/simple;
	bh=9c/9l7Gx6pO3uJ6uw/xSQ8RpmhZ+3ORIT5sR3A/UcG8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jVzdXH6bZ4NXjcazY/TpZb5+GwnCz9HuRdwY9LRwpgrK8q+AyPabOQyMPh3KBXUzmjONcn7wZXZK0dps50mS6DWkCNCozddp6DbGNlWTe+ivMVYRIjn/V0NkaKDdQ3G5C8U6QLr43l6z0dmzUWq9r21w8AuFouzysX5zphKmAZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=bs9F0h32; arc=none smtp.client-ip=209.85.166.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f54.google.com with SMTP id ca18e2360f4ac-85dac9728cdso136423439f.0
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 04:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744803225; x=1745408025; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WUKLRPozuEL+beG7gwcwBgRjJD70PGCGuYuOaYbRFSU=;
        b=bs9F0h32CMSmh3SFyyBUr/5h2uuGG76tIN3nQbNemp8RAI0B3IcaSedzMp+/PVLAvB
         qwNmbd1mQnvG1eKB+ywt/2mNtZrZQMh4wgYy+B8fn13qE6DunD+d8C0fKQdj+uHsDjBc
         zfXfl6T85ELyAD044CBesSv7HH1fDetX12eIrVdwWVCvqXuYS/DdzQ/mAiybPww9LYS+
         nN2dybVYuEa4Zz0FFrQmtcMO201tw6gKvm1MBk3S2LWYxLXbGpF4GAI7G7uIQMeaP+GV
         XFVpz7TdpsQ71LWdZGzxinIg5NE8D3oZ6vPbMlgMWFX0S4bHqA+Crdvtd74PJuZ6Mg9U
         aGGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744803225; x=1745408025;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WUKLRPozuEL+beG7gwcwBgRjJD70PGCGuYuOaYbRFSU=;
        b=FNGJqVnkxC7p+rJ6F7bW3h45X8FkWtqzS2h4CfptYcNxU/qz24o2Tbi5xSGkmrNfGY
         FimOo+Ans1dn7F+f3XXQ1AD7asGbOjIu2brbtljZSJL0D+yQqTpYCRtM5l4ytNv9GlUl
         fC64z8lzZUmcFMraI902NHyAIuabmyTGb20EgdAOVCbY+ks7zqflZo+J62+YR2NgdsOo
         k3omnLPxa+nmJam2dzdy+7LmlFq6pZ5YuXWxLBMOzAzpSLrveltBtNnnmbct+5+Emlr6
         kk4oxzIZdGn/wceX5WCW6Hin7A9ktYXTjLKYQLlFD9mjzKeSB/wJWZYd04JUhjWkmpI0
         cIoQ==
X-Forwarded-Encrypted: i=1; AJvYcCXseKA/gK273Ivomy4DWSkwPRBKzBA/xaCa07Afwe67U1xFmMoqODMDPLN37Ju/BLQGo80m5P5HoCzc@vger.kernel.org
X-Gm-Message-State: AOJu0YzLhMO9MmoS0xqvkLLRjeJuOilqGirXyQA36IhG+vwqVPDcQw2f
	wTr+YDM7R/e3ZRdEZ1yye9i59pvctJrkNfB6oPctVPjgIK2Yug0t3IOYyBBCfr0=
X-Gm-Gg: ASbGnctLlIv+7I4sozunPjsZgwUNTnKcVu9dG0H2gm/jpv7k8vyaiHrIQe4leOnNMDX
	yxkxUbrF0Io4O7HKvCaFpjpWgRQ57dMCHl2TgtIqub8bQ3HZhn/u/0mJWSA2j1mI3mdW+lmuxvK
	AsVwJhg0s+m793RTovwjPLatC0kFB8kzFPAJR0rtJLExvx0ZztHx6hDUGFJAmc2tgLpcQ7BPX7P
	QMkUQwDJTwwfSr6AQwNGiSjdnHAAHDbDt3e1h71nwi6vdEToaEt8Tuh6a0niCS/68Y2LeCUriOh
	lxhSlUB7e31fjHuvFlc71NMHkjtF+03mqZyUjbFmP6t8SW88Kf1/rJFoUuYvfrmME6p5Wv0VeA1
	iw7jl
X-Google-Smtp-Source: AGHT+IGUlzNooKv6H53Lv+4jj0Zw67S54d15RSAIPzhmPstWQkhOlgh0PpMBph3Z+r1w+yJha2JiPw==
X-Received: by 2002:a05:6e02:1fe4:b0:3d6:ca61:5f67 with SMTP id e9e14a558f8ab-3d815b5e5bcmr11964315ab.14.1744803224840;
        Wed, 16 Apr 2025 04:33:44 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505e02105sm3566624173.90.2025.04.16.04.33.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 04:33:44 -0700 (PDT)
Message-ID: <3dfc300f-081c-4824-97c3-842f72d2a7d3@riscstar.com>
Date: Wed, 16 Apr 2025 06:33:42 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/9] dt-bindings: pwm: marvell,pxa: add optional property
 resets
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
 Yixun Lan <dlan@gentoo.org>
Cc: Guodong Xu <guodong@riscstar.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Conor Dooley <conor@kernel.org>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, paul.walmsley@sifive.com,
 palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr, drew@pdp7.com,
 inochiama@gmail.com, geert+renesas@glider.be, heylenay@4d2.org,
 tglx@linutronix.de, hal.feng@starfivetech.com, unicorn_wang@outlook.com,
 duje.mihanovic@skole.hr, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev
References: <20250411131423.3802611-1-guodong@riscstar.com>
 <20250411131423.3802611-2-guodong@riscstar.com>
 <20250411-confider-spinster-35f23040d188@spud>
 <89b6142bacecd4a7742341b88dc1e28c4454527a.camel@pengutronix.de>
 <CAH1PCMZnJDcYKJR35WirQT95hte0NWvGBe4fjDuyZEgagvunAA@mail.gmail.com>
 <20250415101249-GYA30674@gentoo>
 <0bbd2842-72bc-47a7-832a-fc8833163e32@riscstar.com>
 <20250415122807-GYA30943@gentoo>
 <hogqotzzpzcow2xjrwh34qcuiu7ooc2qnvlhuvexzvqkrcsfop@mhz26t5vu35p>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <hogqotzzpzcow2xjrwh34qcuiu7ooc2qnvlhuvexzvqkrcsfop@mhz26t5vu35p>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 4/16/25 12:18 AM, Uwe Kleine-König wrote:
> Hello,
> 
> On Tue, Apr 15, 2025 at 12:28:07PM +0000, Yixun Lan wrote:
>> maybe there are cases that users don't want to issue a reset..
>> so, want to make it optional.. I can think one example that,
>> display controller is up and working from bootloader to linux,
>> reset it will got a flicker picture..
> 
> Agreed. You can just deassert the reset at probe time. That shouldn't
> interfere with a PWM that is already producing an output.

I think you're saying reset can be a required property, to be
harmlessly deasserted at probe time?  Yixun was suggesting it
should not be required, because it might already be deasserted.

Anyway, I don't feel strongly either way.  Maybe the DTS
maintainers can recommend what to do.

					-Alex

> 
>> GPG Key ID AABEFD55
> 
> If you advertise your OpenPGP certificate, I recommend using the long
> id. See for example https://keys.openpgp.org/search?q=AABEFD55.


