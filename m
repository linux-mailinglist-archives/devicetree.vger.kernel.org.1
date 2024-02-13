Return-Path: <devicetree+bounces-41240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D48C7852E5C
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 11:50:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B4AF285D63
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 10:50:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9CED286A6;
	Tue, 13 Feb 2024 10:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="yWlwqiMX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B32324B23
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 10:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707821405; cv=none; b=Tg2P5KBy3kK3Rx+qGloup4+kNVBTDEJ8mDQ4U13Ll9+TBg4z4JLeH61k5z2uliHWBHSX0wspUmzVV/P1qZ6t0SYq26kK/kKLnMqTSlOHln4/Ot4Y1KNKE6lOcKWv87OUufsdXZAkr1j7k3jXJpjoT9JHIp/6rR69m64dKag2eew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707821405; c=relaxed/simple;
	bh=RUvyiqu4Ux7M5Z+cAhfxe1cXxuU5TO/mS9LBJdNoknY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VGxuiBAKKenzSKKsszEJXM1H8MhdhBY/lVyDffgC56555WYigUfwVr+e6bkVtSEpgiKRBkLmafSNScyemO17h2xndH9UO5sWfZEvS2jbXUqLzqmQ5lxfWbyHzImd29p6er75HDinTM9APaCctq+NKvzzgaI1YltrVndvSrEWVgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=yWlwqiMX; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2d0512f6e32so59213781fa.1
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 02:50:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1707821400; x=1708426200; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QWAT4dAXOAmPSzJEZJu2mOVBm/kxWM32GYkAUjFq9bk=;
        b=yWlwqiMXWQK0makOfUYg3TQc1UDOvVPVDNLfNrlvGhSoc1LU6eCqpILT6aqzZm37RO
         HWgL9IunVAE81CENwnFdGNseThHSwcJxa2RTsUThDdrnn8yV7zSAUddtk+jG7ud1fOdg
         PlRw8sauCooEI/zu7V7MWjiRczaPYE+bbvZp3c0c7FzEgU3mGOcYYOXGB1caDa9KvDGy
         9H9BdUJT04O42oc50mpRpyMkt+ZuK5FP3itB4dqv+nkya/rDY9xCG9ZYqRYKboSwbe0c
         FTAMlu0O7REYRTTAQ9NOIQyhhDIqxq+QVmxyHLoFf2vrcrW/BQxWMUpjOexOHfpCAF+p
         xUMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707821400; x=1708426200;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QWAT4dAXOAmPSzJEZJu2mOVBm/kxWM32GYkAUjFq9bk=;
        b=onLayNWB8RLz95r0SBaL9xBr8xFTph2pdlLhljrBc7mpF0JCcf1Lu7I57gFlxKqV/W
         MI14A2gN9qpab8Pm7PdsB1bCjAU9yZw261dI9K4c6f/ME5vbRdTuJ7Yjbr+CT+MpAip+
         iE/1ztZGg2MJXFj0Numm2Pf8uXNmSpGryx28O/apcy5DYjs0nPZ1NIrfQJD8m8tp3nl5
         EpzdIjtd0+cDX66YrNiMBNv/KZEKqgIy3oy8yUi3DbnHNf+UdXXDZuX6/BNDwkBz/Z9i
         +n2CpFrBZrGAwqBEQG4x2h0dV3ayNcUGL3MiEIFWUanog0lb3Tu7vx80z+0f478VWvkK
         Hr9A==
X-Forwarded-Encrypted: i=1; AJvYcCV1KIOEm5sLqoxS0/5NXKNaCkK8lo4UBppd1ZPWDHhdvAE+uUJMn9RJSC0yDsItdwxl1IatvpUOmM34dsEL2hCWZHZgRgOUtVR9ig==
X-Gm-Message-State: AOJu0YwR/GC2yqULW8PxeAY0CpBV7hD0U+EZ/sIqJdFo8HKDuJyWcuIf
	IMACZCOAtgt7SbzxrFjvnk/sN4c/vGZBNvz1CkSCPnZBX1QAkcMvhrApXK/shZw=
X-Google-Smtp-Source: AGHT+IElSc/Wv1gvuH8FjWaxFfv7ZcxxuvK65w2MgZFXxN7uqtz1CXEeAoPbZXxVvsodkBoVzKo6+Q==
X-Received: by 2002:a2e:b0e4:0:b0:2cc:a72c:9d with SMTP id h4-20020a2eb0e4000000b002cca72c009dmr6132404ljl.37.1707821400368;
        Tue, 13 Feb 2024 02:50:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUUk7qV/a0HjvQceZkCAKoI0J1nvg2fBu8yg+9/Yq1rRb35oRw5hhiuIA9V9Niz+hGh9EnnSV5bXnmNPxm1ULXhN2oK/rpw4YBTLw+XPfiPvojreUXgGloKDsf3Ih5vxUCRigQpDswYX17SJEUbm2+6AF78O9hjQqvCbQFWQ+SxQrCNDBE2+yHiEsjb+BgEfianEY7rMp7Qki/XpelAreluz4J2irD3v8vgJMdHc53iRnhhvDnM7zEhb+LOr5NpwG7rPCUceCZdMyH+tUKoE/AtioXLz/AkDapuEHLQZnfDATa7RXI7WoFRsV3u6kIpCUPUGyqWtQYO/P2PM90Hvngev41IUY57lSiMPRExUDL0XT8=
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id z3-20020ae9c103000000b00785ae649de0sm2844148qki.97.2024.02.13.02.49.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 02:49:59 -0800 (PST)
Message-ID: <b6a02f8b-8782-48bd-8916-36bbd996d4c3@freebox.fr>
Date: Tue, 13 Feb 2024 11:49:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: amlogic: add fbx8am board
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 AML <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
 <7ff2d053-7645-4016-99b1-646242463547@freebox.fr>
 <76638bd7-f290-4729-8d15-98e1bccfbb40@linaro.org>
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <76638bd7-f290-4729-8d15-98e1bccfbb40@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/02/2024 09:42, Krzysztof Kozlowski wrote:

> On 12/02/2024 18:51, Marc Gonzalez wrote:
>
>> The fbx8am boards are based on the Amlogic Meson G12A S905X2 SoC,
>> and the SEI510 board design.
> 
> ...
> 
>> +	ao_5v: regulator-ao_5v {
> 
> No underscores in node names.
> 
> Didn't you get such comment before?

For the record, this submission is, mostly, a copy of meson-g12a-sei510.dts

Thus, I did not consider diverging from meson-g12a-sei510.dts

$ git grep -i ' [_a-z0-9-]*_[_a-z0-9-]* {' arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts | wc -l
6

$ git grep -i ' [_a-z0-9-]*_[_a-z0-9-]* {' arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts
arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts:      ao_5v: regulator-ao_5v {
arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts:      dc_in: regulator-dc_in {
arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts:      emmc_1v8: regulator-emmc_1v8 {
arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts:      vddao_3v3: regulator-vddao_3v3 {
arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts:      vddao_3v3_t: regultor-vddao_3v3_t {
arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts:      vddio_ao1v8: regulator-vddio_ao1v8 {


IIUC, you're saying it is preferable to fix the node names in new trees,
even if it means diverging? (Using dashes instead of underscores?)


For the record:

$ git grep -i ' [_a-z0-9-]*_[_a-z0-9-]* {' arch/arm64/boot/dts/amlogic | wc -l
397



