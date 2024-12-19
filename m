Return-Path: <devicetree+bounces-132579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD02B9F77F2
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 10:07:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 968227A4032
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 09:07:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9725521D593;
	Thu, 19 Dec 2024 09:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="WkXPa0Xq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0DF219A76
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 09:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734599235; cv=none; b=B4FZkGEh2I83hjZdu4bSKASYB/WqSYED9UsfZJr6Uk0UunMTIH/EzCw+bSHbe97CnHc5kMedyES6aDZR9+sfbcsYo4OyYoPdhUOotAOgsYlExUxm2UjRKeEJ4q2JMlDyjsbu6jUr6DpCYhm1hmo4Ih2D3auk+pcEyZxSLk0hqf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734599235; c=relaxed/simple;
	bh=jYWuB2EuY+KX6db9bJDDdrQtjui15euSLjzgB/Y0VlA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aSKvX+9FhuFnNeX5s/yxD63ExJlk7LH1vgPvnYAziU60NLz0mVhqAs8bSsKPAbMznPTELxViYCP0iGDkR9QXcp/Py6eXul8ENmp1AUZeM+HaPOWnUKdmIfMG96Ai/9F9VXMMyCGa0ZnPVONUO5TvhkJTS9AMedzP9NEhnvC+vAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=WkXPa0Xq; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3862ca8e0bbso357885f8f.0
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 01:07:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1734599232; x=1735204032; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YhXU90riflbMMXXiNNRfoBPN4nWysFB0QvF1+RIxPmc=;
        b=WkXPa0XqDg1KHsFhIHYMRjVD7QHFGjDY8jefHS9PZ3euW3w568Ga8pYzpQRdIzpyf7
         X9bzRHNKs9EnZB0HCzL9wUmIl8MuAd4MTT+TzvIbvWNY7ZeXWHOb0DVkYWJXtOOJ6ZWf
         KZCaRktombUrUqR7wrEXRfrd+KoJSU/Ass1swq5aN2XSv6osNLWI88GQMi96s20Z8F5N
         /ABuveAcNAYuJf0tAwq+OeGswiJOlH7IBu0lZnQjrsNbKd+4SByNpj5nZIMdiDmDxLPz
         MHMmhe5LSLUs2xseK+tUuwZbDnJi5yZlmqx3qOYjp1RiIexVxfLzsUlnv7A2ugDwtIXI
         uFBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734599232; x=1735204032;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YhXU90riflbMMXXiNNRfoBPN4nWysFB0QvF1+RIxPmc=;
        b=IMWbGUStgMEyQFnwAhXNxPEoERU4SL7X4ikKUtkKox+2ZS7SxB0xxucQ/EZvovUs5r
         TRnWpWsBlGmfcYPQbsm0TbIvGT9kx7O05eutTKzBJ+3/lQdFJWJpxoJDP4EV+blAKoLS
         YP2oIslHaMs4UY3KnN4mTBgoAEhqP0ncxcSiv4jlF3JHBFQxLr3CslCB5uOKtvxasn34
         +FbZjZJz9FjGTAXQx9vg8oE2XU4qW6UW4T/mKou1Ukgbi3oQfv94OO2hPFxBUpezI53x
         aU4u5dD6fXL64XExMf8i9MruqOUpG+zDrRK2BkPoFc0KwQdWDT+lxg79PvYY4GWJnhsS
         CNjw==
X-Gm-Message-State: AOJu0Yy6aNPef9FNEtMhKC0/Z/LwSCTU8a8rqm16mbNRRu/Ljq4Daoh1
	jaJ1ysmraWSWkAp7NRa7S4eq7UWHw8tbklxDLtLiuy7wznd0+DYprExl0RVD8HQ=
X-Gm-Gg: ASbGncuFE9E1P9Jct4ZykOiUZmoUTMGhh/W8EK0qWgzkeJd4wgu0w2XtiE9hZI1Vfo+
	ERDMhd2pnSbLEb8yTV1hQ5gXTEkC19B99ZUT6wGc9miwKAVaOZUyuZOFcdUmQIzpXJDH9U+DRJ4
	AWRsUSzDe5d9kQUvJVzoCpmgligz54Dr1MQW3tBnO/4H7v2En2+uo8s+mGZaBw86usW1ww8o+nd
	JXAy1Kz9crGjx2qcq4BoYcouhE1xomDwuocS/1DmCOej+apzx9BhTA2oD4mUWvBCA==
X-Google-Smtp-Source: AGHT+IF7WYa1QHYe4An4vUxQWS2KauZ22DGqQxC5ejjoWjVjb7f9ys1QTxnqb2k6m7oIcFBfI6DzEg==
X-Received: by 2002:a5d:5f56:0:b0:385:f996:1b8e with SMTP id ffacd0b85a97d-38a19b0504emr2588375f8f.16.1734599232117;
        Thu, 19 Dec 2024 01:07:12 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.102])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656b41904sm45606305e9.37.2024.12.19.01.07.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 01:07:11 -0800 (PST)
Message-ID: <1e2cb493-f645-4448-8df9-e6c19cb96a70@tuxon.dev>
Date: Thu, 19 Dec 2024 11:07:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] ARM: dts: microchip: Add no-1-8-v property to sdmmc0
 node
To: cristian.birsan@microchip.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20241119160107.598411-1-cristian.birsan@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20241119160107.598411-1-cristian.birsan@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 19.11.2024 18:01, cristian.birsan@microchip.com wrote:
> Cristian Birsan (2):
>   ARM: dts: microchip: sama5d29_curiosity: Add no-1-8-v property to
>     sdmmc0 node
>   ARM: dts: microchip: sama5d27_wlsom1_ek: Add no-1-8-v property to
>     sdmmc0 node

Applied to at91-dt, thank you!

