Return-Path: <devicetree+bounces-237205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 29927C4E1AF
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 14:29:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A21E3A9F7F
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 13:28:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB096331212;
	Tue, 11 Nov 2025 13:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="biphaIgi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1188D2BE03B
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 13:28:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762867701; cv=none; b=bDDQo/Avz3TpxoRR24LbeVMVPuZpz+GYV5FJoy8OJKyZRi9+UCTJ7IDIw8buYxYj8m16YBnGCTVFIjkcoPqlsHAyc1kCfhN85EVoFzTC3wA0kvOJX6bH/NPzhNF17s1ffrCTOrBQ0TyAqFIKpttcYq8HIz1/d5N1QEjvbwfk314=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762867701; c=relaxed/simple;
	bh=Ps3gQmpslE/MDFfUlSXSWxtYwxFYzuGV/LZBPe3oXNg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vy8bE7XY0B8r99NM4ws6r8xfS+iyHBO82SOwLvGBiZW17xOOqvyMkey8j3I2PHSRqfmrMVLjArdzUQvtp97fQ3cZeZn8OruJcrZv6KIOquMX/UnHofgArj77GjN6pQvbtsqZP4k8TjPPfSa1Y1aMoGfio6SJfFPJ9iznI5DXDZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=biphaIgi; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-6417313bddaso4430800a12.3
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 05:28:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762867698; x=1763472498; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1DsffIE3Ut5DM8ko3+QK0VsDuxwCG+5a0A0i4trOLW8=;
        b=biphaIgiFboNYxuvMrpABotpYu2XtMn4dnngVvy+3IC0mUX5a9uNosPbxdc+eL5EAm
         zcuRXVEeW6zL7UrJ8WlsqYETPeR7+fKFO+IGmbQ+112nAtWbQvBz0KpUV9goPqLMGHRI
         uiJ4s8iiKUtmjBwCICwQb2AHuu27/YCfGGQQRyFu2TH/URHnFKmFf1td9Vwr3OK8ZvLh
         XbWh4G9XQrn4D60ID4Vl0tFG1OLueFI5RZjCNQYnred9mv9EYTic0wdbM/FVXOJKMAmr
         1gNrfiUstSF8Tg6jkOM9yc3An4goiwCIcu8K5ENXx8ruWnZiPhsiIHIXHF6f32FtZqdx
         K0RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762867698; x=1763472498;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1DsffIE3Ut5DM8ko3+QK0VsDuxwCG+5a0A0i4trOLW8=;
        b=s8nnnRaWn1wTgMAGOWPzq2+BazkJ6QB65M2ZzV+ePDPVWYDScH1mFzI0/LKita17UR
         1BXzM3b78fbjeIvsTDthYhLiPL3pFR5qEy7kEz/QkGueUNMMG6nSICw078C+56H/nzq1
         Mq8wSLKfjmimckuxWgNc3y7v2nJnTN0KzEhky+iWWtJuueCOKE65TOxtkLSVWaLurdr8
         iSlvGaPWahOe93yRwasezeeTnCZVmUuzFJ+qnqKyPMGx0k6/bkjVQ2xhz+cUx4Dz6HcU
         nwdAQaYYPg04V7olwKOf5/TfFHPmkyatWQd9A6Yy/ZKCTQpsxFbU0Xl48wpjgtDK0uyg
         aQRQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEyoyUlS7alB29qTzq3AWKDfPjhzmZrFvqAZuYVLrQNP7twW3MW1Mn33o3j0l9TLBhT65m8FQxyDUM@vger.kernel.org
X-Gm-Message-State: AOJu0YzDHRyN94y0H2lIGdiBp4QacOHIErjY81/XLZ2kjqSmYT7HuPWW
	35g7491c/UKlO+9LgAyEA6P0LN1LaUNcnGNU5o4CF7ZBm4LU2fE3tIFc
X-Gm-Gg: ASbGnctwG/E/N+zEoGHqgLN3mmbwC0z1Ee4JNMuilEmExi+ppS5daSKq0PbCAyI4tUF
	VKoPnZV69W39USGLG9YqpmWUg99Z3xe+L4Yi5NLPnFBymFdwSRji8Lf343G0rF7WJonEPZ/3c+w
	lg6qVR/+C5iHiqNfUm/Cu9mIztN7ZEDSf9oH5Vyc/1Bba8F038xIcl+cVPsdSgRDYmVa2LnBZqS
	gsa4MFe/Kz3mqHxPimR92Vv4DGA+5XTobHp8u5svIqGjwe2hOi4+qx+DT8Zw5hah/OthZHleEc0
	G+5kRgskrxRM6q+Ue19pmCkjRMCGg2UAtUvrN2j5aMnzjHyco7bgz63EiUTCCdxmzhZic44S8+5
	IdVPSFmd5GPQjy0c5ff66m7OJyuCOXgNHSWnRpzKhaYZolROUo21E7Q88lVaN9EHKFrdV9SzWHB
	R/D4OSNH4f0AbYjj5dcA+dV7As3UqAALgsT2Eridfv9au/3cmn0TTr4zW1HcNlKbyoZrmPFAaXL
	qvGZeVlAtwu0Q==
X-Google-Smtp-Source: AGHT+IF5Dj1MIXDn+W74uXHIewjQZN4zVvvvgRaDGdjD9YPnaJjpUwWG1pTssah7cODBcp1Kuh1Rkw==
X-Received: by 2002:a17:907:7b96:b0:b72:b495:827a with SMTP id a640c23a62f3a-b72e041274amr1311048866b.38.1762867698259;
        Tue, 11 Nov 2025 05:28:18 -0800 (PST)
Received: from ?IPV6:2001:9e8:f12a:4201:6800:ff88:97b6:8eae? ([2001:9e8:f12a:4201:6800:ff88:97b6:8eae])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf9be184sm1334911266b.56.2025.11.11.05.28.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Nov 2025 05:28:17 -0800 (PST)
Message-ID: <0c77dc63-7e85-4085-b48d-1885aa52bdd9@gmail.com>
Date: Tue, 11 Nov 2025 14:28:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/2] dt-bindings: gpio: add gpio-line-mux controller
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Peter Rosin <peda@axentia.se>, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Thomas Richard <thomas.richard@bootlin.com>,
 Conor Dooley <conor.dooley@microchip.com>
References: <20251111092705.196465-1-jelonek.jonas@gmail.com>
 <20251111092705.196465-2-jelonek.jonas@gmail.com>
 <20251111125716.GA2560355-robh@kernel.org>
From: Jonas Jelonek <jelonek.jonas@gmail.com>
In-Reply-To: <20251111125716.GA2560355-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Rob,

On 11.11.25 13:57, Rob Herring wrote:
> On Tue, Nov 11, 2025 at 09:27:03AM +0000, Jonas Jelonek wrote:
>> +    maxItems: 1
>> +    description:
>> +      Phandle to the multiplexer to control access to the GPIOs.
>> +
>> +  ngpios: false
> No need for this.
(...)
>> +        gpio-line-names = "SFP1_LOS", "SFP1_MOD_ABS", "SFP1_TX_FAULT";
>> +        gpio-line-mux-states = <0>, <1>, <3>;
> gpio-line-names is defined to have an entry for all lines. So 
> gpio-line-mux-states is not necessary. You can just do:
>
> gpio-line-names = "SFP1_LOS", "SFP1_MOD_ABS", "", "SFP1_TX_FAULT";

Not sure if I'm getting this wrong, but this ties the GPIO line index to the
multiplexer state. Is that still the correct way if my multiplexer needs
states '15', '17, '18'? Then I would need something like this:

gpio-line-names = "", "", "", "", "", "", "", "", "", "", "", "", "", "", "A", "", "B", "C"; 

And it would cause the virtual GPIO controller to provide more GPIO lines than
desired/expected/needed.

> Rob

Best,
Jonas

