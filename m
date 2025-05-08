Return-Path: <devicetree+bounces-175010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B49AAAF8E4
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 13:40:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3CE2A7AC2B6
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 11:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 952E2221FD6;
	Thu,  8 May 2025 11:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="1n4X3MHN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3D25221FD5
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 11:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746704409; cv=none; b=lTgKgz2Cxmq49kYWHA0mh4tFCEpkuWEwCX6x27lUdO4qy24CC7poibXmAN61fZYYdUVuiEwoPF8qjtW0opMYtftxxnTBAwDGte1MZE0uaiU2C0sCh0mon4nVB9QykUcxDibC2tFl5wgplAt5Lh6H16vmMMnxvNP7KITJEzFVB2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746704409; c=relaxed/simple;
	bh=Fx9zrUTk3i8S1DAJFlFt9wfUwkt0xKS/Y7jdzQ/hcQo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TRTbSZafDp63xzc5PggMj7fgeHu/fDoAp/Fhc4CC7m2DEgSYGNOQvQHy2jD/Tois6mFTATqOdx4EM5qUpojOsJd/kESv9p+WMF+D4D+LCTc28tFxz6Nfrnuhzv6vCryFaUDCeEqblgGnxp2VMH6NrKM9gRwIY0Pe9VdX4A+At2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=1n4X3MHN; arc=none smtp.client-ip=209.85.166.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-85e73562577so87727239f.0
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 04:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1746704407; x=1747309207; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7gCgDIEvIXJ5HjkEoan0OBOu/905mhsNatvjj6Ubkh0=;
        b=1n4X3MHNci+FmI0NH/1OGC3AVHX6Nlx2xFPTWjJRqDLQ4Ru1QsnOai4yo3oPbpUzGf
         EFiDOHXk7jn0tW7QXV3aiJhhiai4rHO2Py8e0BtW2xSnfz9tl8t7Qt1NyeVpNHvrqUZg
         h3FJA+141YBdjpLIZ/Gji6bJIH+cTvN+y2Ce5JhcES540B6djvp7CWJ2zY1gN8T5LmKs
         fL3xzuJGHt1J7j7WjvSbk3ExrWP2lnRtNBH1fRP5dLKjRo+NC1/DMON0zaZ+JSSeiDBt
         CU6IuwgFrzTGoRBnSID09Cud7iDG830VMVYzIZxXhhdplG6mBJ2ARlXCI9Z/Xu42vwly
         3A3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746704407; x=1747309207;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7gCgDIEvIXJ5HjkEoan0OBOu/905mhsNatvjj6Ubkh0=;
        b=p+qyV7ONEeANqPOyxcNiUrPnEc0IBKOS3EC3J6GF69OBj7QesS8BXOu/nSp+Q/iVLn
         PgWluIxV6C+WNd0AWYXlSBTo5Xexn3d9BhoPRsoxdodmW5EEQAls53OECZqtHxDkAgC6
         GDBcNpoWtdE6R9AhMScDBM5SajSsVxZmTOBkyYlL97G1DwJR0R3Btm402VslGgseexQ2
         S7eEG8N3XgrsCSSimpTamhe9g4ae1rbu7bLZn+fQdnRpVkjij7rGl4gN7gcyj/whYm5V
         2WZFXJZQXTbb/NDa6FxcfeYTAVU3nZRoVoAJel0e4N7Ei1JmkhD8Stx8FOTgPHpBEsqv
         v9qg==
X-Forwarded-Encrypted: i=1; AJvYcCVtuRpN7WWJ437TC1TJVa1wZ/lAYVZ+WQ2LqTHYGNvtS86SxGCigM/K6DAhoQCc68sUMiNO5/lE9qSk@vger.kernel.org
X-Gm-Message-State: AOJu0YztQyPu1ZNVNV6ZN3wekENPrL/daKPxk4z0UZjY2Oba/gRZHUG4
	toQCsgWsx+bQBVB8C+bWfww5NasQk6S2S/d2J2CyIGY0BAOLShjZucNFqpNrBl0=
X-Gm-Gg: ASbGnctCj0le+YrcqPMxqj3bb7YH+M92L73PcakgnTtEHX822gGjMe3eMYcVTJovq9w
	BDt/QpSFVG9F9wZ+1+nSKaGSN1Ru5RuQqgJShucSoGZQar1UcvY+L5zgUZK2G3EyrahFUgc5M5a
	Mc0M9y4Y9Z5fWIekl2L5Rra2rne4fgmjja/W7qHXKy0ZJp4qsjakl6Uv300ovPlXiaSZ3VgW/ui
	tYLI0m6RTxhyGuX8LVb7f2WO7ydaK+qPGmrSU7RcMqBZu3EJBVbHigX08RE7H3WbIxZTv7spDBR
	XkjNsmAJwqqsNmUhqudOU6oAn2U+ETTJVvIMcXOiWlCecfRyee/vKyUml9LG4tv7alr0tSppRZK
	NTRd0
X-Google-Smtp-Source: AGHT+IEgQbpeES+TFJhbzId8HdAIkJfo3yOl1pgxcIDfMs+gyDWkgbwTLja1UcaM/Qo0ZByBfH3ZrA==
X-Received: by 2002:a05:6e02:3805:b0:3a7:88f2:cfa9 with SMTP id e9e14a558f8ab-3da7390856dmr72096535ab.11.1746704406737;
        Thu, 08 May 2025 04:40:06 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f88aa8e1f7sm3145496173.121.2025.05.08.04.40.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 04:40:06 -0700 (PDT)
Message-ID: <d6649f6f-574d-4ba6-8db7-d3087f421386@riscstar.com>
Date: Thu, 8 May 2025 06:40:04 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/6] soc: spacemit: create a header for clock/reset
 registers
To: Haylen Chu <heylenay@4d2.org>, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, alex@ghiti.fr, dlan@gentoo.org
Cc: inochiama@outlook.com, guodong@riscstar.com, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250506210638.2800228-1-elder@riscstar.com>
 <20250506210638.2800228-3-elder@riscstar.com> <aBwwBSfnkw6XUOLA@ketchup>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <aBwwBSfnkw6XUOLA@ketchup>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5/7/25 11:16 PM, Haylen Chu wrote:
> On Tue, May 06, 2025 at 04:06:33PM -0500, Alex Elder wrote:
>> Move the definitions of register offsets and fields used by the SpacemiT
>> K1 SoC CCUs into a separate header file, so that they can be shared by
>> the reset driver that will be found under drivers/reset.
>>
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> ---
>>   drivers/clk/spacemit/ccu-k1.c | 111 +--------------------------------
>>   include/soc/spacemit/ccu_k1.h | 113 ++++++++++++++++++++++++++++++++++
> 
> CCU is abbreviated from "clock controller unit" thus the filename seems
> a little strange to me. Will k1-syscon.h be a better name? We could put
> all syscon registers together when introducing the power-domain driver
> later, which could provide an overall view of register layout.

I'm OK with making that change.

To me the "CCU" was the that IP block that offered clock and
reset controls (and maybe a few other things?).  But renaming
it, given we're separating the functionality more clearly,
is pretty reasonable.

Thanks.

					-Alex

>>   2 files changed, 114 insertions(+), 110 deletions(-)
>>   create mode 100644 include/soc/spacemit/ccu_k1.h
> 
> Best regards,
> Haylen Chu


