Return-Path: <devicetree+bounces-243216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C400FC95772
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 01:44:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 81E1A3A1C6B
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 00:44:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11FCE3594A;
	Mon,  1 Dec 2025 00:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VMAyTRDk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C9C0219EB
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 00:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764549860; cv=none; b=RVo4chGRFMzpTV0n7YDh0p6bwTNWJ/hp4l4PrTYXedUL+bR0WhsIy1c6hVQukI05p/Pg21l/KmbrnTZR8Flq4kh8L6wnhXNAZ57i+pGMBp3OT9DhVVV/yFwj4zyWYtq9WOJXkqg6WZvhT40wCG+DH2eN7vcTAwKobPt7WzzRq6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764549860; c=relaxed/simple;
	bh=WXei8faNKFRbZg/5TRBpJIVvZ5EV4z9whv3No2ypEdg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gQXpblebqQqk67x68FmrzgcNCe2z9vKmWBr2l9kjW5CZIgE7DzsgQA/fYF6jY7iw8cE4Jz6GYzhBzOZ6fY4zqZsrjbiImnh09FRH6cFAXJLV5iFsTXJBWmA1WqGQWrrj1nABnL466W8XD2zSpK2XZqz8cG8iQz+oz7oVbEEdnVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VMAyTRDk; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7ade456b6abso2735870b3a.3
        for <devicetree@vger.kernel.org>; Sun, 30 Nov 2025 16:44:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764549858; x=1765154658; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=loQBrjsHTLWumic5XUfpbVeTUpVIR2+yqTrDotKERHY=;
        b=VMAyTRDkTdDDHtdDk4RvIQACnLWow6xl7MH2H36dKK8KcRjs26CRPye1lumSZgwL6I
         VTGz6RF0+FwxHBWWnMyBZKWSunE8wq9En8b9ot93uu9/STnPO6UwczSJRctdtAXTX9vL
         F8dWH8TkVQaWcnzBr1YeTYFeH8VECBVKZv1Hm129yd51Xep35Fm1zBzqnfWrEJ0G6dIe
         PGvs8ZECyoOFielqaC/LHyxhfDz4taMfYHaBCqf2/lNBCom6jLSiT1Zv3QJxaIlRJ57O
         V/0kqyo+zZBI9VK6axYWmMW4w2YYQJaIh14U8RcTcINsxYJl2imec5EAAn0TTocBbcqE
         +H9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764549858; x=1765154658;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=loQBrjsHTLWumic5XUfpbVeTUpVIR2+yqTrDotKERHY=;
        b=HvWCzLncwTQmHer4YOnUcNSrbuI6qhvVlWC2l96H+3UjsJf/DelZ2rIXeHL5UZQZ3o
         2hU8HBg8P2VbPzLVPqNUZB2SiELJGVB9zUV9wvZSD+zTy0903YXQ0ARVMASzVbW1bDlp
         Dc8QcS4ptUFkEDDHbxNvgvZ0zcwjwfqkiSbEWfJItnNJjmN1a+N80d3rkKsZ/af5ZnEp
         gpUjuZI1B5XaPL23IeIDa/4F8p33IhWZKMJj0pzmkdKL2HjVXoP3HRJJ/UI8O/PIT3Qa
         muVqkJo12qLoKPBQU7yFFZgjYy/E9o9+dfiQ/++O0uJUMv+/NL4dDBJuBP9vHtsu5Mae
         sZAQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJBTDALbsN6hKUGBuPCTYoBMWSYlEPX91ojd/o/Ltk9rAB0d+cmSmnupP2TiLjcOqDFLLY7UQgzrdj@vger.kernel.org
X-Gm-Message-State: AOJu0Yzz7tCSmLFYy0maBGZIH0NyRHueXeLnt6uwsRYtDRmygesmG7iP
	07tNr+dH60WdfbiTSJU9dFm04ZfIphofVJt/9+CZ7JtwnDYI+ceYbnJ9
X-Gm-Gg: ASbGnctthY7U7cun1aFNQhPW9pMMHZFJQlIUmOqyc5fpzTpzbtd+Yr40tFnYDEkxbHu
	re1o/kcIwiji7A35B3y2lt8+FKoZkLpUmtgCdql8m0DuuBfU2cqFhaZEovpGsxouO7cbhbo5GpP
	3Osw6DI0qSGCw0p28Lke1N/P2y/r6kx6InElHD7mqFaSHRn7LG5eSvZFKPSpw8KpdGVDrW5eppD
	I8Ir4Iuwfts0GAeuUF3GIjKKRjpAeFOEtpUluYL+hTNvVXT95QKJFoIgUNdlJxB9vAZYmXsHNfE
	/ok4b9Y48PzRSdQbGmcF3/11TUcOyIGYo8+A4Z7iinUydgW7VjzSWyIQvbHCjkQtYTaxOiRN04C
	5Wrr2X9FeAfcffqhi4FIKE4pCBNtBZcP7SSQbBUQlRuDX3RzI5wd+HDECNO7Jx8VTWPod5ehwiq
	m+cPG75OXRbAwfCx+TqXvdZC+NoxDvfUXagb/N5VUkZnfd38i7/EsXBdHlw7bo+qjE
X-Google-Smtp-Source: AGHT+IFgJVWGW8YwKUU9Iny4M1dxzau1tG3wPCluSngGPGy5qUbx1lrl2uJNSMdXKWMj7Ocp4T1S4A==
X-Received: by 2002:a05:7022:20f:b0:11b:c2fd:3960 with SMTP id a92af1059eb24-11c9d85ff19mr19455932c88.28.1764549857774;
        Sun, 30 Nov 2025 16:44:17 -0800 (PST)
Received: from [192.168.68.63] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11dcb03c232sm51936663c88.6.2025.11.30.16.44.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Nov 2025 16:44:17 -0800 (PST)
Message-ID: <ff66f890-b405-4a81-9d8d-7d94fee68680@gmail.com>
Date: Sun, 30 Nov 2025 16:44:16 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] iio: accel: Prevent NULL pointer dereference in
 interrupt setup
To: Andy Shevchenko <andriy.shevchenko@intel.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 David Lechner <dlechner@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org
References: <20251124-expressatt_nfc_accel_magn_light-v4-0-9c5686ad67e2@gmail.com>
 <20251124-expressatt_nfc_accel_magn_light-v4-5-9c5686ad67e2@gmail.com>
 <d3318386-2646-4f1c-ab4b-6ae3bc71e9bb@oss.qualcomm.com>
 <aSWPnRBRdPS8vnir@smile.fi.intel.com>
 <61e860e7-fc3b-49ad-bf6a-9745f205d52b@gmail.com>
 <c627fc05-6980-44bd-bdde-4750b3bafe2d@oss.qualcomm.com>
 <aSieijZt117wOh-6@smile.fi.intel.com>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <aSieijZt117wOh-6@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello all,


Seems like Linus Walleij encountered this as well, and the fix seems to 
have landed upstream:

https://lore.kernel.org/all/20251103-fix-bmc150-v2-1-0811592259df@linaro.org/


This patch no longer applies.


Thanks,

Rudraksha


