Return-Path: <devicetree+bounces-220673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F762B9933F
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 11:42:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D97993A54BE
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 09:42:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ECAE2D77F1;
	Wed, 24 Sep 2025 09:42:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mZH0GF46"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CABCA2D9481
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 09:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758706938; cv=none; b=PO4vRIGRhxCrGodPtoKVe8Z6fbM86NpWSCVwqevNWtoiIqEokcXXYCBveL+TfPY8ECYLcEU3xD/9UOMisIwPLQdzwlnRmuCzJEAQvfCy7SJLeIEqjffxRVJ2dVayaX5t0NezKrBlC69Jg6d+MaFuvMJCeLjgQ0cRtXfkePqMbG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758706938; c=relaxed/simple;
	bh=jaIOyJS/1rmljszz81W8T5bHHsG3GsxMClVYfdNZEPc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bf3t/JxnltyQnL2iyofB2lqTox7nnvcWHdpp9pikBAiCv9QuSvCp50d3l9KdW85fLGEvJA0eFtFNJsZ9LcbiV+2Svc/UGQqoTPO5O4hgSRzFU7yWjDH8PfPzfdxDArjR5OKoNB6J45M2IQrw03lbovop1VQgIHfdxPQP9c1WfS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mZH0GF46; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3ee1221ceaaso3821925f8f.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 02:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758706934; x=1759311734; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uDYjbaYtR9X9/K9VwNWQp4yXt0BXnnN3Mgb8xKTG+Sc=;
        b=mZH0GF46rvdqccvJYMZecYPbZeQrtM30EJFhFstc/LQAl26RNMsQHmcN2RMW2Zo/GD
         YzAh7uDJtryRyvl3f4CRbug9BcdmYpekkyJCD0HA/NcLnsoQZSf4YLbCADdzVm+qyNvQ
         cbY8vyYP4iYTuns0KauBqHFkbbrKRw1MOipy0gZ7Znmx1hA38js6SIgOna7ZZbWElLRG
         89t5EfDkplCw1razKWqn/RRRpqGiF5ZAlZXLqoO7QPb+w37SOtmRU9rXDqc5eVnf+fkm
         2dcg0U3t3LpBNU2Juh4uUtw4TnDt39GDNbiTmrQOF4heJBQlAzNy0t6Hc/oULTfkTMPF
         pEww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758706934; x=1759311734;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uDYjbaYtR9X9/K9VwNWQp4yXt0BXnnN3Mgb8xKTG+Sc=;
        b=iKHmpU9YjEKcksa6K26AT/kyPZaAHwykPur6pN4GIKAnBGybO0wrzn7nDiMUZihG5W
         Wcpyuzf+oCsFWH+0+IheaxhnrIrDNjErWwqzQlrTGnbO/C8Y1bNjcGXb8L7lgmeFS944
         pkE4nLhidYVQFJgcxVS7XlY2tWifVyr1fHaR9eLdKunKcmbPlfiff+QcvjwTecrCbwyH
         aCJ+6I7fNxflx+7ts3+qnMeHiG4GZTqBV0OcpuLGW212N/0fHuDETp5s/QDRVF1d0ugi
         bh0dwwBQOmJQfxpkTePKdn9p/FfxLb35QZclg/cV5U99ygWa7icgZD43AUdYWcogjqBL
         4vig==
X-Forwarded-Encrypted: i=1; AJvYcCU0t1nVAQqP/9UPRV+WMqFIJHdDgUKaMFlTCU5edbiIYY8qaPQ381qX4k/qqG4hpfRot4DTQxfNHAlk@vger.kernel.org
X-Gm-Message-State: AOJu0YwHTH2aN1hiTD0jPYwbBrkUliJcZHf6450MpFPWChRb26ltaCod
	gNZs3vfhqZW1OrkfC8oXhrkQjAXmA1YuR4LsqkAT0mfPoBnBSr4z7JyVfPU0JQ==
X-Gm-Gg: ASbGncu1f10lykHDvLIJuUE63eADo/SlIcY7yCWQbjsh9rvoYJJm9HiEG99zR3PQnFD
	Eufmykvc3/XP/DwacFhMsqoSQhmGS1zXg+jQmOtt7sWIokkeSFmcBOYMV7r2xufH7O51Stm8A29
	ugU8/KWH0Viwr86XQEgOiAVI9e99ZeRvyq7CpIoO8088PcqqYI/2GDPstLCpuVttzS3op33RBN3
	f53n2XdmhgnzmfzDo4VxhCtzAGt9mazeQB3jq9uKFINKDOa7ROpl7chOxt2mRdVoN8oojEzAMB9
	f2/awkC5Pn7TXuQhyfcylxBoPxpzVgmkMg7zYWvxq5y0QSLaxWu7P+yx9y5WJ0pWWq2oVnN22Bk
	UpbRpeTiFjGr5shX3p3t/IOzwmC/Ud14IiHZQ9YQE/X9DhmD7jF7VVQH68x49klH2+LylvrETsH
	Ic/YsY9Vy7qb9hoMg7NLtSAQm4GqzsrR3tCItJJWWF7FI/zgQqW86NW3AlVo37
X-Google-Smtp-Source: AGHT+IH91JwgVhi7xpvny99FXoN7tjt7AmIAW/YGtLT1L1J+48wCTADkEz6Cf/AvHGUdfI4k0/hLkA==
X-Received: by 2002:a05:6000:40c8:b0:3ea:c360:ff88 with SMTP id ffacd0b85a97d-405ca959751mr4813428f8f.31.1758706933633;
        Wed, 24 Sep 2025 02:42:13 -0700 (PDT)
Received: from ?IPV6:2a02:8440:7503:805b:76:f865:8f03:23d3? (2a02-8440-7503-805b-0076-f865-8f03-23d3.rev.sfr.net. [2a02:8440:7503:805b:76:f865:8f03:23d3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-402188ef7b2sm8909600f8f.34.2025.09.24.02.42.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 02:42:13 -0700 (PDT)
Message-ID: <841138c8-4fcc-4388-9639-391def0ebc5d@gmail.com>
Date: Wed, 24 Sep 2025 11:42:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 1/7] dt-bindings: memory: factorise LPDDR props into
 SDRAM props
To: Julius Werner <jwerner@chromium.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
References: <20250922-b4-ddr-bindings-v7-0-b3dd20e54db6@gmail.com>
 <20250922-b4-ddr-bindings-v7-1-b3dd20e54db6@gmail.com>
 <CAODwPW_oDTh9FdnLq7w2FPQv68ReAUUpssqEktUH5zhewbfcxg@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
In-Reply-To: <CAODwPW_oDTh9FdnLq7w2FPQv68ReAUUpssqEktUH5zhewbfcxg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 23/09/2025 00:45, Julius Werner wrote:
>> +      lpddrX,YY,ZZZZ or ddrX-YYYY,AAAA...,ZZ where X, Y, and Z are in lower
> 
> It looks like you accidentally changed `lpddrX-YY,ZZZZ` to `lpddrX,YY,ZZZZ`?

You're right

Best regards,
Clément

