Return-Path: <devicetree+bounces-102107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 41BAB9757FA
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 18:10:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 006C6B2444D
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 16:10:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42D0C1AC8BB;
	Wed, 11 Sep 2024 16:10:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="hx3SbFYp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DF41A3033
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 16:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726071006; cv=none; b=Rxpshi6vGKumNrCSiVh2NgXuPqSJ0I1RAM86tAFLqVlqZj/hKVHd5j4GizUty0Mc3zxY094aF4GoMMD8nz0IhFflAkXKjvdTL2j2AbkGINA5yYxiw+jNtFrbRGv0iTjmiEUJ4+hXVcoefmTDhwYdQIXp3KtKFW9fO/5OALt5oLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726071006; c=relaxed/simple;
	bh=EyC1asarizN+wlHGUbEl5egryrMctUQ9CjTYigbQumg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JyjaaJn34sul4nwkUYB7ipkGhaOWgi23MpWEwnGdcwnC3pvMZNYLx43SROdGM8yFSv068SonM2M1xqRMARiOPXYcS1TLIZ3AfQHd5q6Nl9lL5qQNFWN7xdfpDAas1qvnWLyWKuxm+7ALOVm7iZrrgimaAEWZmWXPN0rPdq+mSVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=hx3SbFYp; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-206bd1c6ccdso287705ad.3
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 09:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1726071003; x=1726675803; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K7UT67gV1cwJybIxBArzSTyhlTWk6LFWkBtDrmyARac=;
        b=hx3SbFYpKbxVhdF7hZdOkiAzeCAYdMtfQheuJ/LRRFWCQUa+9mTAVrp7tH+rnCGt0k
         dsqnuhVwotmn+YP7sayfa7aJ7RBFV0RuaT9cuGh+8WKMbCQ+n4+eGg7xVBbcwjvjuHin
         5FIA5nLt2xK+Ft5OQ9p+mjYWmeqOtCDw6EI+rZFrKvbVMLrhWwrryQAeUi3jpU0qq//q
         HN/UYaTw0iiB2cvw6baNv7Ic7Pl1sMrvJ7RQpdUwotjdWjZkuWDEeHj8BpoHyXi+c/Gl
         qPQrRFC7N8GjAJvGAdyJC820dEjakrIZwj3qSwHo1eFBOE6HuXv2hDjZZM4J9eYV4mlq
         /XLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726071003; x=1726675803;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K7UT67gV1cwJybIxBArzSTyhlTWk6LFWkBtDrmyARac=;
        b=lzbACOfexMVKQoDQNFDBldo7j109mNySYDDoQCtcgZMKXHpdsigH7aWb3KuKkO6iPB
         A3eCREzhuJ0GWKVoOozjZjVNNTYSK0s1cYiPWrmAxcndVsMOIyu59Hup4TBfR/TMrGRt
         8gT/2oi5vta89ntOvA4tdPCa6UIBcIvo4ZorM4hAfG8//U+oBNvPsILBmFsBB3iBUowM
         MqpzjwE7tYGpbEAXP3xIP/QLKty4VdkTvsdhUg9b9LBQ1m+5v+2VccDzVUpmKLQaNzCm
         6/EYlo4EyONWBNCFTmBH2RYY6JAGow6jHZTHgPtfK/c21nJNBvyt4AwEcqmT3AMsbI46
         2LUg==
X-Forwarded-Encrypted: i=1; AJvYcCVQ42JznUliCbTkirT2uMzCT9hWj440EM0rLpKpEP3DhKepMVOTzymJ5dO0u80WlDyYWRRfOwIK9l60@vger.kernel.org
X-Gm-Message-State: AOJu0YwDsOVYyuIjKLD/lnnb+Lpx5+u+2RjPdNvzysea8soD2UM2DKfU
	1eXwQ9iABEqw4XRKwLLqEfcaXlm+WH8/+/yfrde9pztWDsWglB5XPuuD5BXdOg==
X-Google-Smtp-Source: AGHT+IHxqgzZVxYEvY9qL7CLZSUAdKuf7UAGYqozKhceMgYQsh8xQE8qJwCqlU3Otnp7XWn00TTRiw==
X-Received: by 2002:a17:902:e546:b0:1fb:90e1:c8c5 with SMTP id d9443c01a7336-2074c643e20mr54026305ad.33.1726071003325;
        Wed, 11 Sep 2024 09:10:03 -0700 (PDT)
Received: from [172.16.118.100] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2076ae3fe19sm1602505ad.0.2024.09.11.09.09.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2024 09:10:03 -0700 (PDT)
Message-ID: <ef948bc7-aa2b-4b45-8e6f-32c28b7d6684@beagleboard.org>
Date: Wed, 11 Sep 2024 21:39:52 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/8] addon_boards: Add addon_boards plumbing
Content-Language: en-US
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: fabien.parent@linaro.org, d-gole@ti.com, lorforlinux@beagleboard.org,
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
 <20240911-mikrobus-dt-v1-6-3ded4dc879e7@beagleboard.org>
 <2024091147-graveness-manmade-d070@gregkh>
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <2024091147-graveness-manmade-d070@gregkh>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/11/24 20:30, Greg Kroah-Hartman wrote:

> On Wed, Sep 11, 2024 at 07:57:23PM +0530, Ayush Singh wrote:
>> A directory to store and build addon_board overlays like mikroBUS,
>> Groove, etc. The overlays present here should be completely independent
>> of the underlying connector.
>>
>> Signed-off-by: Ayush Singh <ayush@beagleboard.org>
>> ---
>>   Kbuild                         |  1 +
>>   Kconfig                        |  2 ++
>>   MAINTAINERS                    |  1 +
>>   addon_boards/Kconfig           | 16 ++++++++++++++++
>>   addon_boards/Makefile          |  3 +++
>>   addon_boards/mikrobus/Makefile |  1 +
>>   6 files changed, 24 insertions(+)
> Ah, here's where you add this.
>
> It should be below drivers/ right?  But what's wrong with drivers/soc/?
> Why is this so special?  Why not just under
> drivers/microbus/addon_boards/ ?  Why is this tiny bus/device so
> different from everything else out there?
>
> thanks,
>
> greg k-h


Well, it can go under drivers for mikrobus, but there will be other 
addon board connectors which will not need any kind of driver. In fact, 
the original patch series this is based on [0] did not have any driver 
for the connector.


As for bus, see my reply to the other patch in the series [1]. 
Basically, while the name of the standard itself is "mikroBUS", it is 
not really a "bus" in Linux sense.


[0]: 
https://lore.kernel.org/linux-arm-kernel/20240702164403.29067-1-afd@ti.com/

[1]: 
https://lore.kernel.org/all/ecd1fff8-9c15-496a-982f-36e6c58e906a@gmail.com/


