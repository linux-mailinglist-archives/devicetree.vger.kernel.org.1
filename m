Return-Path: <devicetree+bounces-132725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 065399F7E48
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 16:42:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 05AEE188C1D0
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 15:42:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA58D154C04;
	Thu, 19 Dec 2024 15:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TY8MBVKI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2EF22618D
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 15:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734622936; cv=none; b=jCXkst1bbMaNsovZH71cmpjLC04vEH0RGf7Qko6iINroaVMEyrXwhX/POsXSHhkUdPXfDXK8HdFKA9mxay63RS1xoNbgr4xTmv7xkV+aYbCncmc3DY4BagcPw3cCelAnfgoiPPV93kNoKSn1vwNSATJk/wsNA+FKXhqYvvJyGEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734622936; c=relaxed/simple;
	bh=3kN/RnhQ9QqdZSgvidS0+FBUIXfMb2wnA7n2uaBSRXY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eDKe27ni5heQq9sYcbcVZo8kDa4ikKpcwjq5T2iEJckPl+ABNPZWwB7ugLjjOfsYbnAaDAMzL27cc43Wp157O72pMKf7Mhw9wtPvjVtSatukaxcl5J3rHd3+zHt/3ptkowwGVsjnzD/hTGVeQ4ydQbURAReveATdCpTtB8Fm7Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TY8MBVKI; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-388cae9eb9fso532794f8f.3
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 07:42:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734622933; x=1735227733; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rWgkw7lmexiViKq2PxMUqduxvXcrYGn0gpO5vp9Rz7Q=;
        b=TY8MBVKIgGh73qp5gdAbxvz3hhcfmJwGB3TmO8Trx3xmov/d39M+nCX+lFNCMLhYG/
         PPziBnCbQ1/m7Q2NAizCR/ti5cgraDBYvoZI+R32DEFic2378b7tV2I9PlDPzCid5i22
         vWt87j02bn6AbZmlmM+6vIVln4aghIR4Lr2ms3nvANIC+knieylH3OfSlPYFN46eMf1A
         BNHtXu36g7k3PwupPKs/g4ZigXZaguPQOmUb0E23AtV3tvio/flzc/H76r0uBnWazQZr
         zv+BqvW0AjctCI17t9t6RfYyLHb0QNJlbEM02qXM3JKHl+tbZ0UTVt8ugZBJZYWM4ccR
         ubHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734622933; x=1735227733;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rWgkw7lmexiViKq2PxMUqduxvXcrYGn0gpO5vp9Rz7Q=;
        b=MNbnYqGw5ugAUgxkHUiK0tK1WBfZ3V0Iy3k960Rxz0yQTujtCpg/wBPtwBeslIENJq
         gVeqATMuyoExZilFUnLM7cyts4IZW3SZzkil3EobZyP2t+FqS/v/C74NHCM37D5Lbnnn
         f1aWi2d0Md8oopJ6WTCA87U6OtWM4y8DspYtMbTYiXjqY1AY3LsAimdGHkTIXb5NEwB7
         4s6NdpNOX+/5dOZwrpYGFE7Rzx8Yj7rktdJ2HuGFOqC2tigtezVdZ4vYktRT2CwKo69U
         7akdYBFhblMqVzUHHKoRegTIXz9kF0XFRLcESj+zJvXTUiWhSCDp6UaleKXtN5TgOQ8G
         tWgw==
X-Forwarded-Encrypted: i=1; AJvYcCU4EJfu7wQuayhYpWUiABn9BCkLEiSS2866KunTmUrbbGLHho+4LDxGtakcm8h2GrblGKrSg2BPxymt@vger.kernel.org
X-Gm-Message-State: AOJu0YzucjKK3ddud30whKfN//9GgFhhDgDtnNA2JvmNzIzAKslASLcX
	QQixo5pla04CadeX/yXfAJO+W9W1EvtD7D/5yiiZHRsjJ4EV4AYV9jdsMihqGnk=
X-Gm-Gg: ASbGncvR/TUSbuuBg/9AFMCIry4TRHXVs+MC+I+S0vrRnA/eLL/VCPxXOFM1ZYDX5yE
	iMqcWgnIwR8x8ieW8kbRlVGjIX5PclfsCLz2FtJ+PecKFDfxaiZZ1D32cdKEJ+Uvs+ElCUm7meI
	cq+wder34On4rC8/mV188Bbb13NpfYZcG6VP3cDCu3pUq2odWbAtuz/dPgIYoah/h18Jnd1n+0P
	RsJdTcT9n1SWt3wc85BYlGC9xlU7p0d3OZlNpLKQYVdAZSxJ86NklgQ5QL7WMmU
X-Google-Smtp-Source: AGHT+IHyTbXfmMGun8BgqdCNy/tymW9cvuteP7xXPOqYhxYi6zsB4192YIqC9FG7M9zeEWdBkq3JFg==
X-Received: by 2002:a5d:6d0e:0:b0:386:2aba:a7f6 with SMTP id ffacd0b85a97d-38a19b47ecemr3753765f8f.49.1734622933377;
        Thu, 19 Dec 2024 07:42:13 -0800 (PST)
Received: from [192.168.0.14] ([188.26.61.92])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4366127c639sm20872915e9.31.2024.12.19.07.42.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 07:42:12 -0800 (PST)
Message-ID: <d9e635c8-de05-4812-bf2b-11651f6da5c1@linaro.org>
Date: Thu, 19 Dec 2024 15:42:11 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: mailbox: add support for referencing
 controllers solely by node
To: Conor Dooley <conor.dooley@microchip.com>
Cc: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, andre.draszik@linaro.org,
 peter.griffin@linaro.org, kernel-team@android.com, willmcvicker@google.com,
 daniel.lezcano@linaro.org, vincent.guittot@linaro.org,
 ulf.hansson@linaro.org, arnd@arndb.de
References: <20241219-mbox_request_channel_by_args-v1-0-617a6910f842@linaro.org>
 <20241219-mbox_request_channel_by_args-v1-1-617a6910f842@linaro.org>
 <20241219-recent-everyone-865b19864693@wendy>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20241219-recent-everyone-865b19864693@wendy>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Conor,

On 12/19/24 2:11 PM, Conor Dooley wrote:
>> There are mailbox clients that can discover the mailbox channel ID at
>> run-time. For such cases passing the channel identifier via DT is
>> redundant. Add support for referencing controllers solely by node.
> I don't really get your implementation, why not just allow #mbox-cells = 0?
> That's what's done for things like fixed frequency clocks that only have
> a single output.

Ah, indeed!

instead of:
	of_parse_phandle(dev->of_node, "mbox", 0);
I can do a:
	of_parse_phandle_with_args(dev->of_node, "mboxes",
                                   "#mbox-cells", 0, &of_args)
where #mbox-cells = 0;

Or ... can I pass NULL for cells_name and make the #mbox-cells property
optional and still keeping its requirement of being at least 1?

Thanks!
ta

