Return-Path: <devicetree+bounces-159930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D516FA6D172
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 23:30:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5570B16F0DB
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 22:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B509F2AEF1;
	Sun, 23 Mar 2025 22:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="za8yqTkV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044021487D1
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 22:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742769035; cv=none; b=OcrmxdiNLZRhDw4AdF5+MATVfpv5vt9j9ZPjFJzBxe/RvJBmUbjCWzh+w7L3hCu7b8rtVy8vrxpEWMsClE6GFhDAyuhzMKhjWNY59Xrk50yTeFGGZ7bEracsf7qLzPKEI8iYiqRQyK6L02Tqp/MH2zmipZhfk5UBcoV1cK8x+mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742769035; c=relaxed/simple;
	bh=1b3NqGhZ++VNtWquMWADqKAovnA8dxvjiZY17polxNE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jJQLpIunJNnr7GW83120u0i86vCl98GNRo1CF8EPdH42dHsRg6z+7lLq4FYiVmBlhr4NxYGFed4lpVQBAyBn+IFuRolERq6IZpQsqQJy8p1K+bAR2dgI2LXmcp4wXo2Jf2ijBGOalu3MmFhllpZChTzqehpS8cE8jnAoJZVXjT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=za8yqTkV; arc=none smtp.client-ip=209.85.166.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f49.google.com with SMTP id ca18e2360f4ac-85ae131983eso408691139f.0
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 15:30:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1742769033; x=1743373833; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nTRlExMDyawWBV8YJuZYM4CxYbcHVqfU+45dmVV3tsQ=;
        b=za8yqTkVfMyFHwD1+oWYC+gKzg5VhwhXkvOmBnIq9CC/T8XxO4JrmDhP5r3zfnG+Fd
         UJbzZ4vgqLt3cJFNpaxpXoI2olejHL+IF86y72vmUgNIv4wdU6oOgG7stFfKQlji5asp
         KQbf2X6w+2zsM3DXr6nR/BtieR6h5eaYh72zewIQB9b4Q1rLWOuKiWSttSl8ngsFQPRi
         UkTsRvqFul0xUDU9qHgoxls/KCVFSuRWyAslygBaCRn1BLEgmB77vweODSDpqOlXR0vX
         JNmISd+QebuZFN93XZJvSBAzEZKKhlBHiPP/vMZtR65cfgNbMElU16pJ4n41z7BSF1nM
         T6HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742769033; x=1743373833;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nTRlExMDyawWBV8YJuZYM4CxYbcHVqfU+45dmVV3tsQ=;
        b=X/qmOaIpcOidgWplTpKz9bY2EwzV2H6K3aIQJrsKmWtZpFs1zJ1+1nuRQ8Af0wmHl2
         5MFYO4kgBa/+jk7bFmpiGymmNDN/hdvPdFXUAjk8rE6al2r0ELT7Np/sjQ1A2OpK6rRz
         br5uTw7zyFG1Pmqr+b/AS+NeMeEsNmM9KybAf+DCpDBDGS06VAdsKzDGeC0cDapxeFcK
         FaIO0SmaLqOsY/wg9XNK6y6D8L/g1zzF9S+7snxCuutehxl6bkT0pm7mqLf11ZBC0IJn
         tCRWe+MPRJLMvIl3dgP2QNxKycv8qoT2sCePW55QCI7esJzHeWFEqpmmae+wDgiov5Ei
         MI5g==
X-Forwarded-Encrypted: i=1; AJvYcCXSNVc9VkiDrrIvGqNhHTiOMAg5LHKVuEQ6TwIWFZsOvq9oUnLdW2MgdHPUfSrvy/RP2GdAP93n5x9n@vger.kernel.org
X-Gm-Message-State: AOJu0YyUXtTsu2lwFDQcTKVSYi4B859BzxPD2d2ZdNLqQqPpbMYtKkRY
	DXoa1mXAUVJiw/hFg/uynlgq5w999+io6DuS6g9g1yKVqi9dWlFjdKU6MEwI3/k=
X-Gm-Gg: ASbGncu0j+BRtSnTjg6s7gaYFOMBVEz7xMo5WyZNmgCgN49+1qRfWeXrTYCIK/SFYId
	kk2rLeVFsI1EhJqha5J3BqXl5oISImVBdWO9T/l+huzHs2hr2NFXychaM5ldpUdcrCsfW9gs0Ik
	A11sjQpLgmYqZP/4sgwVna0hjhCynNOl0FbhbKHHph3QAY+0VH806dafrUW931xyIEL9hOPOlZg
	J6XEj0jVxQbkmzCzF3PmssnUxtGcM01jFdt/8rCdWYDm/slVd9ydpXtXfBbd+uMKuYa5ZtlWokZ
	tT0ztDd6NKmlV2zq0lJfr4+ilN9O+LwYWywylOnnMkN/4yQwg2jwJuIC0+qks9wDX+DqeMqLbMt
	oNkk90IIeMlyAZLmWhw==
X-Google-Smtp-Source: AGHT+IGH7axJe7eTCwDAhgnxz/2TT8RhnJt+UseNxV/R3diYZCOSlRPsij/3sX+uVBgUHGoEXTkhpw==
X-Received: by 2002:a05:6e02:3e03:b0:3d0:239a:c46a with SMTP id e9e14a558f8ab-3d596114994mr121950535ab.9.1742769032889;
        Sun, 23 Mar 2025 15:30:32 -0700 (PDT)
Received: from [10.211.55.5] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f2cbeb52f9sm1538014173.130.2025.03.23.15.30.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Mar 2025 15:30:32 -0700 (PDT)
Message-ID: <661457f2-aad9-4b3c-926a-6ee021355dac@riscstar.com>
Date: Sun, 23 Mar 2025 17:30:30 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND 2/7] clk: spacemit: define struct k1_ccu_data
To: Yixun Lan <dlan@gentoo.org>
Cc: p.zabel@pengutronix.de, mturquette@baylibre.com, sboyd@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heylenay@4d2.org,
 guodong@riscstar.com, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, spacemit@lists.linux.dev, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250321151831.623575-1-elder@riscstar.com>
 <20250321151831.623575-3-elder@riscstar.com> <20250322155034-GYB11633@gentoo>
 <45526855-17b2-4de4-8e12-6320b7d84c8e@riscstar.com>
 <20250323130430-GYB15267@gentoo>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250323130430-GYB15267@gentoo>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/23/25 8:04 AM, Yixun Lan wrote:
> On 07:43 Sun 23 Mar     , Alex Elder wrote:
>> On 3/22/25 10:50 AM, Yixun Lan wrote:
>>> Hi Alex:
>>>
>>> this patch change relate to clock only, so how about let's fold
>>> it into clk patches (which now has not been merged), so we make
>>> the code right at first place? cause some moving around and renaming
>>
>> No I don't want to do that.
>>
>> The clock patches are Haylen's and the are getting closer to
>> acceptance.  Let's not confuse things by adding a bunch of new
>> functionality.  Get those patches in, and mine can follow not
>> too long after that.
>>
> 
> I only mean patch [2/7], not all patches, as it's still clock related
> but, either way fine by me if you insist

I see.  It would be great for Haylen to implement this, it's a
better way to do it anyway--you can define the number of
elements in the array using ARRAY_SIZE() this way also (rather
than having to count them at runtime).

Haylen is welcome to use my patch as the basis of this, but
if it doesn't get into that code I'll add it.

					-Alex

> 


