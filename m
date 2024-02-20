Return-Path: <devicetree+bounces-43990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E21285C154
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 17:27:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A46C1C236B5
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 16:27:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EBF379934;
	Tue, 20 Feb 2024 16:24:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="INSycXe9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B96973162
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 16:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708446256; cv=none; b=hRjWOTlS46/kxNfH4VSPUJY3xykx7pvtEjLqbXRnkJzg8XF8YzAmtjQeqNpESLbRWP9UJso2oCZSrwa/N9Xyz52S5gi7oBnT55SGqTKiZ/4aYm4scJxTcg6KP8B5hH23mQywcL+i/PWXR3OPmChHksiEXYsWIywOXp23OrscfwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708446256; c=relaxed/simple;
	bh=V9UXYxsjU4cj+yx0sEQJpi+OvKGfjILSHzsoiO10G6s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C2it97dUeih0za4tPKG4MLAAtmZxyvhep8CJH5/nic9XNtEp9gj/qIrOAZMFK7CDRInQiDUicHPGFqC4DDCVsZfD5RPyfytm9U/PG7CzJDE1cnb3OuBROclRjG6ejRDQSEzjiWHgRqcVKY32kF7wBkrx5j+xNVjTOrbkq0Fky4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=INSycXe9; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-564372fb762so4419474a12.0
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 08:24:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708446252; x=1709051052; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F+IVXLX6v+NO8sxJws1ir9snn7LlFjRh2xi60KJZ2eE=;
        b=INSycXe9l72vx5FfgMpdkDUwxOc9PiCdT0/16mEoNtYiJeR37iPzn6C9LDnngqcUjo
         5AhpQcBHdxHt2ZECm/bdMt0ANVlebdF24UtPHBa+soSVMFgzbBSJfaxs9/dMq5g1XDXj
         QDZNdcVmjAiMwHq1kpih7oo0KkCxlW7t5C2U1SVxxu6vi6v9rT3z1Av0jhT1hnBD1RY9
         z9stTftn7EhdG0TVUhekJ/1IohkDQeyx0I6zrbL0Ig163QhO/4M2PiroFo8JLGppBRa6
         Uh8enIMT4wb1r3SqMc8FiBPLjvnD+qz4mERtKOZK+UmWmefCaIlY8GIxNZt/9mbUJSpP
         ghCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708446252; x=1709051052;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F+IVXLX6v+NO8sxJws1ir9snn7LlFjRh2xi60KJZ2eE=;
        b=hVqthfDQkrQH3GoOvq/RPt7+YOOWB1Et2m6zmktSdJ6GjlFNptkOOQarK33d4caXtj
         qZxpSTJTBMa4C25n9T7Sfz1hhPqJUfcWanLs4tXHLnhjTkLXzttCUpwlptzzueP5Kyfw
         BW726Fm2xUcd676DJC+oALNBPEgU4Ke3xsUfC1oXGMqAMyrMoM804q5m6mqv6PlQZ68x
         R0HgDdncNqY6uqjoKliq12i0vYj/w68qiuvDgTakd3jv2GVzvcbh3rmJnMWlK8k3QFkl
         cbBsXzjZOHY9btrDCt6cwANpdags+PLAcQm+v9usi9AO7H4VY9CkbZTw9rZ8uHJPM2ey
         za8w==
X-Forwarded-Encrypted: i=1; AJvYcCVFc2s247qU6N3ZZF0XK1Cw2dwacFUXlGnVCVzwI/Q42+8uApQyvQiTaA6kvpYXKJdOW0uqmTWx/o4Ck4YTmTi+9s6HUYqwaFG4zQ==
X-Gm-Message-State: AOJu0Yx3N7Lgr75Sqxhksmdys34hnqwzqGNOG/bUTi+OGYLL/0uNyRtS
	sQNGTW8KenEhclOVYeIURZCcyJ0HNqMjmgMe8mpRrsDdqbdwpz75RmzIr6I9Sm0=
X-Google-Smtp-Source: AGHT+IFZmK2e2sw+WN2SwTYl2h3+0GIiWBLrJ2ZPju3OYiD1b/GYJMFgMmfCQd49G6RCRmnUlBTfsw==
X-Received: by 2002:a05:6402:1b1a:b0:55f:f94d:cf76 with SMTP id by26-20020a0564021b1a00b0055ff94dcf76mr10421136edb.27.1708446252538;
        Tue, 20 Feb 2024 08:24:12 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id fg11-20020a056402548b00b00564168e6674sm3599568edb.51.2024.02.20.08.24.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Feb 2024 08:24:12 -0800 (PST)
Message-ID: <2e019e25-de19-4de7-adb0-6d4c78eeb398@linaro.org>
Date: Tue, 20 Feb 2024 17:24:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 01/11] dt-bindings: wiiu: Document the Nintendo Wii U
 devicetree
Content-Language: en-US
To: Christophe Leroy <christophe.leroy@csgroup.eu>,
 "mpe@ellerman.id.au" <mpe@ellerman.id.au>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "paulus@samba.org" <paulus@samba.org>, "j.ne@posteo.net" <j.ne@posteo.net>,
 "linkmauve@linkmauve.fr" <linkmauve@linkmauve.fr>,
 Ash Logan <ash@heyquark.com>, "pali@kernel.org" <pali@kernel.org>,
 "segher@kernel.crashing.org" <segher@kernel.crashing.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "rw-r-r-0644@protonmail.com" <rw-r-r-0644@protonmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "joel@jms.id.au" <joel@jms.id.au>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "benh@kernel.crashing.org" <benh@kernel.crashing.org>
References: <20220628133144.142185-1-ash@heyquark.com>
 <20221119113041.284419-1-ash@heyquark.com>
 <20221119113041.284419-2-ash@heyquark.com>
 <7b49b194-a13b-48ef-87a6-482c1622fbc2@csgroup.eu>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <7b49b194-a13b-48ef-87a6-482c1622fbc2@csgroup.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 20/02/2024 17:20, Christophe Leroy wrote:
> Michael,
> 
> Le 19/11/2022 à 12:30, Ash Logan a écrit :
>> Adds schema for the various Wii U devicetree nodes used.
>>
>> Signed-off-by: Ash Logan <ash@heyquark.com>
> 
> There's an issue at https://github.com/linuxppc/issues/issues/410 with 
> kernel v6.4 as a target to merging thing, any plan ?
> 
> It still applies without rebase (with git am -3).

No, it should not be merged, because it was never tested and fails in
several places.

Best regards,
Krzysztof


