Return-Path: <devicetree+bounces-176403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 58299AB3D9F
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 18:32:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D6F386029C
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 16:27:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33307248F5C;
	Mon, 12 May 2025 16:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="A70uVjpl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E92724503C
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 16:27:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747067250; cv=none; b=WXTMUvpzlUQGo1hEN8exd9clrSzrCEz5f7t1qghXhbg87/hmZQnjQOf0+U8WTGU7T4oSt+MpCKnEB46pq3cYo6YNE3Q+RuDaviz7XLCKl4lxowietktZePNrCeHTfSmqN8JzZHGiYdwt5JfTVMwjU+SBiNqGX068JNX7p1TcL8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747067250; c=relaxed/simple;
	bh=J2u66nb+ZRnekPNZzRKWIEEdjXCW8XvffK8/9kLcR0Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DHfuZnYoZX7oM7insm5u3H2SZNZw1iHtptZwNQBfHRa+mklylGUIch2EREMVkzT7Uau7IcAYn03/xsiqWEgrqpkA0eC2jdDT+VIatKvMlqpB7Kj4ASNAu7d9WNg4bhujR5wP5k7uTZPl+leqF1jvh06AZkVJuaond+kSVXREBMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=A70uVjpl; arc=none smtp.client-ip=209.85.166.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-3d93deba52fso13222455ab.0
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 09:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1747067247; x=1747672047; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tAY5Ws/2zHP7f1+msXoBsYcHSMzdc5Is7v349rd+4sk=;
        b=A70uVjplBv+wFWsd/jSj5yauDdVTs+6S/1N7+wMeIzVei8NkuzeTk0wpvsIFNd20Ci
         rzrnc9PPkMk8m+rO8p5ku6DJC5x4yXsllRltFpj5DM+E002l+orWuawQtJTiKImziyLQ
         acDmyrl6cpJnZLLFXklomezMuVOdlhud/ZkLrrzMy4HNGPC7mHe1qeQ2zLM6/LNr+lSq
         JKHs+5YcDzRYUO2JVOH/LCMLYOJAd8jnne7eI+A/BAMa1XZlPEnuLLkW1411S/rQsaHV
         pw8Jlk/gdD/JqyhKV9tCPLlFyM6HniklbPw4xVmc4r9mnq9RB3mwe8L9IIz71hj/2yb2
         j2Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747067247; x=1747672047;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tAY5Ws/2zHP7f1+msXoBsYcHSMzdc5Is7v349rd+4sk=;
        b=m9nVZmh8OXrplWnSC5CDws4oR3Om+1ROlM4sEKNowtGBnEL/HJGXpa0NHu7JFV7eo3
         MiIHlvOGPNyFD+uIryOEgLJE1GYBSR85UHAny+sqNI7nJMasLabMIY6SX4xwTzdK8slF
         HZBr3sfgCc0JJrbD3vJqdyQ3hSWDbd3TzPgyNCWJkREfEjI1lLPB+QBcXnhvmWb5jbjN
         9O98Jz0rQ/ZgWxF+3dpvhW8PnA+OprkmTs8B+F+L0TCSSMEt8/bbNyiVMHH15QKu7wod
         3NTl0+XvSsIPV1q6aqMshwOZ9D6n3rR2b8feZ5R6sV7dgBByu7nkY+ZJhVS189dKjQgH
         DTiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjx+O73yXnnyuteLMKbjQt0HNZiSH6OsGsjNJ3XSU3e9Fu0NBKdUfajGS3lYnCo3tqKWCMyAdQIOZm@vger.kernel.org
X-Gm-Message-State: AOJu0YxDiFFlGIcsJ3cT3W2Ysf8basXyY5Zfr8y6/GJ7dlvTEBWi54zq
	eMUkdoDgLxs05pvhgBfydefFoKubiz4fZFsSbkhmc4jRwzg4YvpszZDkZCIlu+w=
X-Gm-Gg: ASbGncv6bT7QZi7PvddcPWBybqytnFDh6y5a3nZM/UIPMupY3yzgWK6KWstfbkli/hO
	iVLWCGzR84uPObJbW/7as1vIo5i4xeveWnEw0NM+I/W5POZ8Z7LhwtjHajZLIa0vDzKKr+5Qmxr
	T3gj4WO088nQiyMO7Rp395x8eau4YAFib73rNOaf+gzdwF9rmnxVrV1Ay9B+AeBKsRrt1hj4x9M
	lWLpy0fKQghu+s7EAuy83RReRfg82QTQRgmlYPhy9Tvu+ub1tsX/va1roehnmcNA0+Fy5txoUZz
	4fatwBRNK7R1LfIIgbQZEzVmok5/d7nHOyuBJaZgKNsCLQKxLjzYTghfOF83B3NSRdpmmD3OEVc
	K1rQdFbbQII6T/hZWJFrdkWZS9w==
X-Google-Smtp-Source: AGHT+IHMljbBOih9XI5ChNfY5x9ORAxK3ZQZvd0UNipzv1F6zPCMndWOAl1ZZJYumsZfCVB/PanfHw==
X-Received: by 2002:a92:cda7:0:b0:3d9:66c7:d1e8 with SMTP id e9e14a558f8ab-3da7e165314mr150329395ab.0.1747067247243;
        Mon, 12 May 2025 09:27:27 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4fa2a9ac275sm1503877173.80.2025.05.12.09.27.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 May 2025 09:27:26 -0700 (PDT)
Message-ID: <5674cfb0-fabe-4b58-98fd-8479c4d3ff79@riscstar.com>
Date: Mon, 12 May 2025 11:27:25 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 3/6] clk: spacemit: set up reset auxiliary devices
To: Philipp Zabel <p.zabel@pengutronix.de>, Yixun Lan <dlan@gentoo.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, paul.walmsley@sifive.com,
 palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr, heylenay@4d2.org,
 inochiama@outlook.com, guodong@riscstar.com, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250509112032.2980811-1-elder@riscstar.com>
 <20250509112032.2980811-4-elder@riscstar.com>
 <20250512135429-GYA517867@gentoo>
 <abfd4c78-2592-4b8a-97be-109a8fd1bed6@riscstar.com>
 <91afcfde275a28127ba0df962a9abf4d07ba6b8b.camel@pengutronix.de>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <91afcfde275a28127ba0df962a9abf4d07ba6b8b.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5/12/25 10:46 AM, Philipp Zabel wrote:
>>> so I'd assume the underlying device doesn't really care the id?
>>> but with different order of registration, it will result random id for the device
>> These things are identified in DTS files by their index values
>> defined in "spacemit,k1-syscon.h".  If there is a need for the
>> assigned device ID to be consistent, I'm not aware of it.  Can
>> you think of one?  I think all that matters is that they're
>> unique, and this ensures that (for up to 2^32 PMICs).
> If there are multiple reset controllers and the driver can be unbound,
> it's trivial to provoke a collision by keeping one device bound and
> unbinding/binding the second one until next_id wraps.
> This could be fixed by using ida_alloc/free to manage the id.
> 
> regards
> Philipp

OK thank you.  I'll put together v9 of this series and will use
an IDA to set the device ID.  Thanks again for the explanation.

					-Alex

