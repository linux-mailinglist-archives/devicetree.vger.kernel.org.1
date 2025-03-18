Return-Path: <devicetree+bounces-158755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD51AA67F28
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 22:55:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5D7903BC71A
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 21:55:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A88D2063EC;
	Tue, 18 Mar 2025 21:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="bUn76Gjk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2969205AD1
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742334909; cv=none; b=ikFhnPE2SHdow/Ic+qtn/y0g6Esvb11u4SzRyvCTBuRzn+syFAd0lgjM8loXbfo6TvdYD9J2XCDCigMKrGAtJAA3WW3eW5LE3Px9UKDb8Clt4Yekz7K8A2Mdka1VCh5VbaQ2/0vUZ++YU3X+7tAtjaYYk4xLYLTCiz0lmY3SWXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742334909; c=relaxed/simple;
	bh=hx3Sr4AFb5ucFf274orT/rk+C50ckIa8tHSb/t4lLeE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bbDXtUYZHsQQ0C9PeMT4YjbooLzlTTfEp7kq5n5lKwvT2b41EupDRjoBq9nBd87eyX39S7yGVOkq1xxaUeyCdyEv7pELvDGxoYoRfQXf1YsMnPmvQoZY82hprdQWxnwCse7HOMQQybZ2FFcoKyjFOkyc/nrCRj/B94aD+au9VoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=bUn76Gjk; arc=none smtp.client-ip=209.85.166.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f181.google.com with SMTP id e9e14a558f8ab-3d45875d440so25783925ab.0
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 14:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1742334906; x=1742939706; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BriU7gJk74pNPNWavKZMoPDwkWz3I9HqTPL00tnATHc=;
        b=bUn76GjkgvU9jKnorEuKFcJPQKmKiaOojEXT6mq6rBxO1fSywZ73KiTzN/Akumixsj
         uqt33nUAOonjdsFyQXdUQLyZyaHKtfsD6Y9Q269g9LzLbtixoRDqS9WbfjyFnLNYom0/
         bTpUdo9oZFirjKaawnVj7ufreCQYoYvYSCt87h2mABvQT0XOzmXlzoxwu4QjJbRbPcOr
         /+a4+A55QvWhRyMW8fzbCxMJhfLVIK4uZPMpu1OcvjG8mXc6qtRFGXWwoaz0eOxLK82c
         9Jpee4OiUnoeebX2TL0tH/YRKghq1hqCJ8ucRsVlCU1asECD5tXEIDRjs5X0ctNqTGl0
         wqpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742334906; x=1742939706;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BriU7gJk74pNPNWavKZMoPDwkWz3I9HqTPL00tnATHc=;
        b=TUe9UkA+su7K9a4RTDObWTKtLf8F/sXscQhtNielKN08dJ/cN/SAvzj6fPz8Yu9/qS
         xqN1QkjEnmbdTqE6L8WkE9yDtVAzxH7+beB/N3f4fPbTK0/7TF4iptlmVcscif4RJ+Zy
         L4y3Y/25NP7tBOREkzTjhIsDw/637PDWb5THglKa0jAWV4NcnEDZZRXuAkidCEQfl1D9
         ZCHT8yUa3MDVQAM1pPqngBPmGreQXIKd7ghDjrK32FBSMp0s5HX8fKBw+8mq3/iy+2R0
         9wK5Lzgn6fWumqFPhvIjE1DVvWzA0ge1lSlTbWuRMP9IMVB6DzgTmKgZKO8fTqd1ZxXi
         uWSA==
X-Forwarded-Encrypted: i=1; AJvYcCWi2O29KYxdHzGCe6FS+ZBlp6mt9ztcQOFoJOqLwyjMYj2MDyItLOv/IVgDHSDn8xghQA2j/zgVBCzR@vger.kernel.org
X-Gm-Message-State: AOJu0YzIvqC+/vBgEA9Pj32oKRP2P3aegAamRoXu3c3MOaT7/aSckGDA
	d07vTiGCaQoabvla+/7CZTNqEYK33Vyz23Tfnk0cU5FsbpYb2qH5puJFMczgTLo=
X-Gm-Gg: ASbGnctRzpBWdHmk+j9fbQThaKq4Rwtw39NmNZYYsy59Xdfc88B9ro1Jg19jmINCCIz
	dRQU7ICiNVEyiQ+ghP/lgrIUaZrcW13tXC+pd/ZwgGALNVMNksS3yQtgnASo7dSs6Ox/tfMT+Qq
	m+/viun00k1opTMFi65Ng2H0T3Jj/O8WQSMQBtfRWTXeD16OFq4lY9iqmoLTTPXVc5KJzLFe1td
	M6hr3WPvn51ihgn71jLwhSqhtQJ2qHGCzuYkNTFOkJprYRhXmVGIso6QhpVuO4oYx1ZmG0EyjS3
	3fohHem6aC+CLCdPf4dMDNJmI7SN2dMYdX8S8zvbE+mmA5ehdkYROMz0GuKlL1FVNMSM0/aOXMB
	XP5J91kqSHA52sfsd/h0=
X-Google-Smtp-Source: AGHT+IGVf9GbYQhaKGZToeaVO4iSrNen2V8aeAO2lkOMP+96+7ao9O222hC69zg9XeGwmJ/p4dFgUg==
X-Received: by 2002:a05:6e02:2221:b0:3d3:faad:7c6f with SMTP id e9e14a558f8ab-3d586b2ab4cmr5124855ab.5.1742334906077;
        Tue, 18 Mar 2025 14:55:06 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3d47a668e6asm35193745ab.28.2025.03.18.14.55.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 14:55:05 -0700 (PDT)
Message-ID: <c8cf2e21-ae1b-4e72-bdec-d7bd1b2bc9c7@riscstar.com>
Date: Tue, 18 Mar 2025 16:55:04 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/2] i2c: spacemit: add support for SpacemiT K1 SoC
To: Andi Shyti <andi.shyti@kernel.org>
Cc: Troy Mitchell <troymitchell988@gmail.com>, Alex Elder <elder@ieee.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>,
 linux-riscv@lists.infradead.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 spacemit@lists.linux.dev
References: <20250316-k1-i2c-master-v7-0-f2d5c43e2f40@gmail.com>
 <20250316-k1-i2c-master-v7-2-f2d5c43e2f40@gmail.com>
 <401059d0-6b2c-4c40-8c4d-51749dca27f3@ieee.org>
 <c7dc26a0-7cbc-4909-b2ac-582d108fc5e7@gmail.com>
 <a7862a8b-4d81-4b1b-90d9-3cedde0699a5@riscstar.com>
 <lvwiyxitkuzi57cbbcvuanqpvhaihafarwqhkflxbctzs6j4o7@ev45pe3yuzj3>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <lvwiyxitkuzi57cbbcvuanqpvhaihafarwqhkflxbctzs6j4o7@ev45pe3yuzj3>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 3/18/25 4:41 PM, Andi Shyti wrote:
> On Tue, Mar 18, 2025 at 07:04:19AM -0500, Alex Elder wrote:
>> On 3/18/25 12:44 AM, Troy Mitchell wrote:
>>>> I'll leave it up to the maintainer to decide whether these
>>>> comments can just be ignored--my Reviewed-by is fine, even
>>>> if you don't change these.
>>>>
>>>>                       -Alex
>>> I know it's right what you said.
>>> But I don't know if it's worth to send v8?
>>> Maybe I can fix it when I add FIFO function?
>>> If I'm wrong, let me know.
>>
>> Unless the maintainer wants you do do v8, please just
>> address these suggestions later.  Thank you.
> 
> it's easier to just send it rather than asking for a v8 :-).

You mean easier for Troy to just send an update?  I agree
with that.  But I have no idea what Troy's schedule looks
like...

> What I care more is if you would give an r-b if your last
> comment was addressed. If so Troy still has time to send a v8 to
> get the series in this cycle, otherwise I can change things
> myself before merging.

It would be great to get this merged this week.  Easiest,
quickest, and most unambiguous (if you're willing) would be
for you to do these tweaks and merge it.

Or just merge v7 as-is.  I don't really care at this point.

Yes, my R-B stands with or without my suggestions here.

Reviewed-by: Alex Elder <elder@riscstar.com>

Thank you.

					-Alex

> Andi


