Return-Path: <devicetree+bounces-250609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C81B7CEA6A1
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:08:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8F8533050CE8
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:06:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF83C32D0DD;
	Tue, 30 Dec 2025 18:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="A+FiXeDJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A910032D42B
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767118007; cv=none; b=F8pQTBbPDGQ+NDBP1ENeDaFHpwGBPzmbDHF41hmZIcIg5mufX9AuhkDGWoTNgDjkWHP0bh8rXy7TBnkgNn54YTvzxm7+zrT0PSZ7xPG24sjfcsUtPgF82kjuSwLCTDJjUao0+r6f4SsVT/gv+h1PMvNDGn+EtbtrybhteWz6cG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767118007; c=relaxed/simple;
	bh=JXbcTwt8lSz38JLo5VyeeND1Py4MQ5lVYu2xY2r+7wU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WzTh+/ZJV9v/vK5kSa1l29dkMnMc8lAiq+xSsjHFqIn2XHWBRtFzU+46T2og8JXjClU9DSV+oj53A8H7GRBP8zXBY5ml+MG6PtNpOanLyMgbhsj9Wk21ee72uTFr8Gzp3igG7Db4zGnYKzYxlLFs+gF7qzhpL+WcdBP7YXLzyTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=A+FiXeDJ; arc=none smtp.client-ip=209.85.219.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-88a3d2f3299so121017096d6.2
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 10:06:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767118005; x=1767722805; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Kw6K1zDOG7+9A9tzeUA0t/hpBL/fZjOT2o6xij6Wc/E=;
        b=A+FiXeDJ9M7+4C8Bk8rXhezgX8WggyQLzNe7bx3QbWVELnUNEqKot9KGV2PAJqA/qC
         O6U+0dbS/WBQ9fR+hhanmKqlpDsPH01wqYAPuDRH0qF6KO9x7eCf8b/eKR7Etg5EETYu
         6rxiNIw8LN4jBpMs0TKTSN8GplnLuP+A+o9m6TIWrpmUbfec50DVyI1cVHBxGqOOq6HE
         4JfudXbqpbJb5EafqOzMNMUsxibLr+fO+fH9fxRAKvoOK60hNq/QA6FY0BMxULILpbKM
         yK+1nkhLY2LziaOqXpkaxvA7Tkme8Q/QfPpfpQtVJ5MZyoSef+HCmNpStXHhzIl+WcNe
         0Spw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767118005; x=1767722805;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kw6K1zDOG7+9A9tzeUA0t/hpBL/fZjOT2o6xij6Wc/E=;
        b=m0eGvkMpXu7Up2QGuBp53ehksDFllJ3EshI4q3xavoQjO8EskwQTIVhMS4MY6B33u+
         MHV0lMnAqIAiVioUqYPRuGwniDAKJ0DGzkPzjrv5hYOp2djxBkv/tssLpMzjC/CJXdhR
         JxIlBxPKVf0h+XQRAF4dMOxfcXLnOrUqCPu998DVnU58UyZGFK9+6Ps9zQaqvc9TolZe
         44ddS+vYtdNk3fMWdr8fZHkdUASOK54BGIDgaUJdrMh82/tfLtzRjot4SM7KQ2kM9MOg
         nGiO975jDWCxVwGyAvb0LNRvMtFFDIrP7OxxDSSCcnk/V7r4uab3PqAwjVLq8bGE32Gg
         rv8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXIY9sbBlB/XUrpjCQZVPvp+fzUwQwhfwLPh1OozLATmmShOeXu/S+yi7RYbcmlcN99OhrVMAv0qe4J@vger.kernel.org
X-Gm-Message-State: AOJu0YwvM4B59dfT0IKgfmEfwvEE/gArnSqDcDChTV7qxbUvR2UQfwIj
	wmfEH4i3/dE0DCyQ1C8/+ioJhRZ4bcTld/0PhD9mGrdv+heu5l9ww5Mrri2BJgmXgak=
X-Gm-Gg: AY/fxX4/TAu9QiTmoSOSmnzE08Ezqh3U8as9KQd3FvUEJw1zJtz/FbTTw82U5+J9F5I
	eyQqLhSBIrMx6kdOsghY+oQjcxbOlvU6Zdt+Um7Ixh42XlS2aoQvDwIoHJuDXWXVzgIIKEBJ1vj
	XMQqXBurNGu3/7P/6z2h7VDw5hfndQi2dGeGHpj9tXBjUCI74tYtwow3daSYEfGKUtRVJzWR32o
	yHLR1Lov8PHCIIgnY1PLghdVLE0TBIi2vaZhN6mNpeJc/bFxG78XIpokftYd0OeZYeV4JQ40Mlv
	XOMP6SYZg4sWrdDzEsyk3RS1z0/Y/ye3jf1wIX/a3U1q8Fyx4tzIF8nvSQ8om70wdIql4rX7/le
	+XZJagMIWy/MgJXD7M7XX0xhu9Vr+1aM6AlfeQGXiQTznUz9PIapK8wF/Rgc5kyHIDS/VPJZH5B
	6QnUSIEzlZE+GJe0mam4Pzt7HvySzahEvI+lV477fEri/O58F5kfA=
X-Google-Smtp-Source: AGHT+IH9R9RdQs+4+/paw7zFCFKKDDzjpBdbtJmraB11OzlyUV7KUFzWKn/pZTATXFnVWVQr0NrhUQ==
X-Received: by 2002:a05:6214:4308:b0:88a:2f0f:c173 with SMTP id 6a1803df08f44-88d86e482c0mr506484426d6.68.1767118004593;
        Tue, 30 Dec 2025 10:06:44 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d99d7e8d4sm261620256d6.41.2025.12.30.10.06.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 10:06:44 -0800 (PST)
Message-ID: <55c2c0e2-2213-4cc9-a752-fce17149bc35@riscstar.com>
Date: Tue, 30 Dec 2025 12:06:39 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/13] dt-bindings: riscv: Add B ISA extension
 description
To: Conor Dooley <conor@kernel.org>
Cc: Guodong Xu <guodong@riscstar.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Samuel Holland <samuel.holland@sifive.com>, Anup Patel
 <anup@brainfault.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Yangyu Chen <cyy@cyyself.name>, Paul Walmsley <paul.walmsley@sifive.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>,
 Andrew Jones <ajones@ventanamicro.com>, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 spacemit@lists.linux.dev, linux-serial@vger.kernel.org
References: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
 <20251222-k3-basic-dt-v2-7-3af3f3cd0f8a@riscstar.com>
 <20251222-stitch-preachy-3fab87fd6f0f@spud>
 <CAH1PCMZ7ywZ3unLy0yHYK+fFHk0y=q2cEtPnRi=qSpf=fc75rw@mail.gmail.com>
 <66c0676a-7920-4825-b916-3c00b1648a08@riscstar.com>
 <20251230-imprison-sleet-6b5a1e26d34b@spud>
 <dc87a3c0-8627-4328-a17a-6510ee8245ac@riscstar.com>
 <20251230-ungloved-unworthy-cacc7e22e1c7@spud>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20251230-ungloved-unworthy-cacc7e22e1c7@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/30/25 11:46 AM, Conor Dooley wrote:
> On Tue, Dec 30, 2025 at 11:29:14AM -0600, Alex Elder wrote:
>> On 12/30/25 11:09 AM, Conor Dooley wrote:
>>> On Fri, Dec 26, 2025 at 03:28:25PM -0600, Alex Elder wrote:
>>>> On 12/23/25 12:51 AM, Guodong Xu wrote:
>>>>> Hi, Conor
>>>>>
>>>>> On Tue, Dec 23, 2025 at 5:17 AM Conor Dooley <conor@kernel.org> wrote:
>>>>>>
>>>>>> On Mon, Dec 22, 2025 at 09:04:17PM +0800, Guodong Xu wrote:
>>>>>>> Add description of the single-letter "B" extennsion for Bit Manipulation.
>>>>>>> B is mandatory for RVA23U64.
>>>>>>>
>>>>>>> The B extension is ratified in the 20240411 version of the unprivileged
>>>>>>> ISA specification. According to the ratified spec, "the B standard
>>>>>>> extension comprises instructions provided by the Zba, Zbb, and Zbs
>>>>>>> extensions.
>>>>>>>
>>>>>>> Hence add a schema check rule to enforce that B implies Zba, Zbb and Zbs.
>>>>>>>
>>>>>>> Signed-off-by: Guodong Xu <guodong@riscstar.com>
>>>>>>> ---

. . .

>>> The dependency can be go both ways, to also make specifying "b" mandatory
>>> when the three components are. That probably produces the most helpful
>>> devicetree ultimately.
>>
>> What about DT files that specified zba+zbb+zbs before "b" was
>> ratified?
> 
> They'd generate a warning, which can then be fixed. That's fine to do, a
> warning in linux-next doesn't harm anyone. Updating devicetrees in ways
> that don't change their meaning but provide extra value is not a problem
> in my book.

OK.

. . .

>> But why even bother supporting "b" if you have to *also*
>> support "zba+zbb+zbs" if you use it?  It adds the possibility
>> of new errors ("b" without "zbs", for example), while not
>> really enabling or representing anything new.
> 
> That was my first question after all! Ultimately I'd really err on the
> side of adding it because people will expect to be able to use it and
> because, in terms of kernel support, it will be useful for ACPI systems.

I think it's too bad these "equivalent" extensions can't be used
to simplify things.

I really dislike requiring the both a simpler extension *and*
the others that it represents/implies.

But practically speaking you're probably right.  People will
expect to be able to use them.  DT tools will then point out
what's missing, and the list of extensions supported by a
given CPU will just grow and grow and grow.

					-Alex

