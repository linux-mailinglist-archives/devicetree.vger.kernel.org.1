Return-Path: <devicetree+bounces-102140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 503389759E7
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 20:06:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11C432890F4
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 18:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 644971B532B;
	Wed, 11 Sep 2024 18:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="FhIx/nO1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com [209.85.210.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A11F187322
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 18:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726077957; cv=none; b=E4ta+gU0f41HmkuS89BuIxKt/8+x+4Q1rLYDsDtfYZoybi1pQq+0EENe7J+zVj7FxQaw0c2QO3mU5C4eI+cfn5gCUrf+z/zwjhdzU6BfqKyoTtR1I81x5iiGCXWCez2xv5QIfvsuoGukZJIsyPum6HrCH+m1ZkYK+wLOz96vGtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726077957; c=relaxed/simple;
	bh=78931USUkSOlqGnmgmQGJYTIhjGkoMBJ0hWB/dF0QEA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DwCVA9bBOsncez+umohrcwEKIIVBE4jUfmUP7r7WZVxiQCblnOHAugGCIiMUA8siL/1c2TZFXoHh15QrgeHLIpObXU68H8bg0wP4Okysn9j10fytPTjUze0SXa8pTT7sX+1kuvlnhUcvfvGoBi+WpM0cVfFau438a/B5mcO1yPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=FhIx/nO1; arc=none smtp.client-ip=209.85.210.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pf1-f195.google.com with SMTP id d2e1a72fcca58-718d8d6af8fso39184b3a.3
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 11:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1726077954; x=1726682754; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JPdsxUdu3ZLqIS+/4uXoHqqeUOuJq80zG19Uh2siaVM=;
        b=FhIx/nO1qbChPP4IiBJ8eNHfmB7nKkmkA6UYhGFgb3RRLdMC8rLK+h10qjZcGuHScI
         d6S51d4APmlVquIUPl4EXrk2EjnxFkmPogyjZ22iDAsxHgSNVGGNmALpZOZQN/MFqucL
         bBifN7FP8KY0MnOZSw+pMqsbFQOep66IxPFYDZNPcB1PDqz8n2Kdn7I8EfxHWUidC5rI
         mZiRMJfcVF4SiM7f4RS/CgwA+TJZsVRtjOjIV5neEg9qAvfQBaVziJqmklYczkfQr8ZY
         pxgqcjSYJsWUKmSDMDlSRE9EOt/lGyH+InItmkBsf+eQhab4lkGNOCrAfAyZ45M62SeG
         Z9mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726077954; x=1726682754;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JPdsxUdu3ZLqIS+/4uXoHqqeUOuJq80zG19Uh2siaVM=;
        b=Y/9S36X1DoVPu/e2Cq3juTvOrrfZ8IbM1AVbknlN+Z8M4VXWqw8z9Tz+lmT5RtreN/
         0ZHPvYvbPAKMtRDWsG91YnuumHwr6ML7kiFKve/PHQN6ko/Xh1nRX8RDwhVFFaoVLeLX
         2cFLwy9uX2NX8gPbJoW0VuTk6MbfJAsydI3pSwf1cXLG7jY3XuIBjTzetugLzBjIQ1e5
         RblLMd9ULMaXsjeECDOA5r13QHAU31X2/y6sOJoQQpCG/JtBlmSY6OZLubGItHBctjuX
         Wcn+J3X306DoOHE+/OIhCTNZYXz4PwvyVWmP9Y+5xFgs8t8jIYG512Kt0U2FSqEj4xEO
         m5pA==
X-Forwarded-Encrypted: i=1; AJvYcCWw9nOk8vZFFm0twQbkWr+S2jQPIae9edYZ7K07UDO3INOWdbndvMWSXfer9+mqK/8ljc9/k4TtQNtv@vger.kernel.org
X-Gm-Message-State: AOJu0YyQgQCIF7h3hIP7Itiu33epWtOB1ztzsjaKJYvTIqM7nl4uD7L5
	K1Rha1Q/+lZxiCKbsrbvk0LVM9ARXOtKhTgZASaoUeaWjfc/RmnyeesQ3EAPDg==
X-Google-Smtp-Source: AGHT+IHJfl0jqiL9U3myZiASEiYJyc6sHjUAZZiTehS6OzcD8jJ66gAgSfHPxeYKVEGFaegklSLYhQ==
X-Received: by 2002:a05:6a21:3982:b0:1cf:2438:c9e3 with SMTP id adf61e73a8af0-1cf75ec5c7cmr151962637.16.1726077954392;
        Wed, 11 Sep 2024 11:05:54 -0700 (PDT)
Received: from [172.16.118.100] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-719090c37efsm3247602b3a.187.2024.09.11.11.05.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2024 11:05:54 -0700 (PDT)
Message-ID: <ba9a5ae8-c5af-4045-9e22-28363dc94d42@beagleboard.org>
Date: Wed, 11 Sep 2024 23:35:43 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] rust: kernel: Add Platform device and driver
 abstractions
Content-Language: en-US
To: Danilo Krummrich <dakr@kernel.org>, Ayush Singh <ayushdevel1325@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 fabien.parent@linaro.org, d-gole@ti.com, lorforlinux@beagleboard.org,
 jkridner@beagleboard.org, robertcnelson@beagleboard.org,
 Andrew Davis <afd@ti.com>, Miguel Ojeda <ojeda@kernel.org>,
 Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>,
 Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?=
 <bjorn3_gh@protonmail.com>, Benno Lossin <benno.lossin@proton.me>,
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>,
 Trevor Gross <tmgross@umich.edu>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Derek Kiernan <derek.kiernan@amd.com>,
 Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>,
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tero Kristo <kristo@kernel.org>, linux-kernel@vger.kernel.org,
 rust-for-linux@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240911-mikrobus-dt-v1-0-3ded4dc879e7@beagleboard.org>
 <20240911-mikrobus-dt-v1-1-3ded4dc879e7@beagleboard.org>
 <2024091106-scouring-smitten-e740@gregkh>
 <bd542178-af1c-439d-bde4-9865cf6c853c@gmail.com>
 <16d70285-cbec-4378-98eb-b522a0efbbe6@kernel.org>
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <16d70285-cbec-4378-98eb-b522a0efbbe6@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/11/24 23:09, Danilo Krummrich wrote:

> On 9/11/24 5:52 PM, Ayush Singh wrote:
>> Sure, can you provide me a link to patches or maybe the branch 
>> containing that work? I also think it would be good to have the link 
>> in Zulip discussion for Platform Device and Driver.
>
> Sure, please see [1]. But please be aware that I plan to rework some 
> parts
> before sending out the next version.
>
> [1] https://github.com/Rust-for-Linux/linux/tree/staging/rust-device


Maybe the branch is just out of date? It still contains the generic 
structures for IdArray, IdTable and RawDeviceId.

Has something changed since the discussion here [0]?


[0]: 
https://lore.kernel.org/rust-for-linux/2024062031-untracked-opt-3ff1@gregkh/


Ayush Singh


