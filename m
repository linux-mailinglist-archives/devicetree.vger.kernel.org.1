Return-Path: <devicetree+bounces-198289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E48B0C41D
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 14:28:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 67C277A743D
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 12:26:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6FAE2D3ED5;
	Mon, 21 Jul 2025 12:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="sMbipTJR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D9C2D29D0
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 12:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753100889; cv=none; b=mvJBbQpO9WAO6gCGlWuXV+WscFIwEh5SRYmiomNLHjrpPMddTWQxRZZ4h1zhZlKaaDypEHwvwdA69Jy/Azv7nlOZvk+EhmXX5Ga5zF8SplJJTdUapu1CVGTfm+MdTTw3hIFwXfG104tCcx3nmLZ8ySbZOMcNiHbVjpcthA+x1gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753100889; c=relaxed/simple;
	bh=2Vn0aaHBna3jhvDqCj6KN/yLEG5ltghGc9j1bu034LM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FSPGfVewNs1Y2/NOSjlEkfq6ZwVl38gwiUAeJrPgeukT0VjIfnh5nzOPp2qXcaeYOT8/JPHbECcFyMcROyiBHl8bsg5TPfPz1t3GLIdziiPyAG918JznShjmbbqYIaCBI0DKx2Q6ZtBjz4Ip+dsCPKcfTmr1B5v2boGwUuRH1wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=sMbipTJR; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-713fba639f3so34422597b3.1
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 05:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1753100887; x=1753705687; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2Vn0aaHBna3jhvDqCj6KN/yLEG5ltghGc9j1bu034LM=;
        b=sMbipTJRSsUWiUJtdKzXEmHKm2z43bZznA2+7reXOBZ7hWFoTVt4Ozk6EmLY+fSW2L
         QF2SR+Gqt+bgEIlAEuEF7ChjgOLJtlHQ83wGXOcQ2oGG2aWUEGQwNRBimtC/T7WnC9rm
         AHJTRhuah2b0EhzVbN9s4c+yDPfTAp913YF4G/dB/EEoX6/2pllAx8RPzEgKyc7KyTuc
         7o5szQLAJihSK3w6nMNH7yxwFiM45vL/37QkxZOJuyHdEXhxJmdouQNbUG6okdlKN83z
         jjcT2IHN/ulGkIAiiX35TSZLxRlWqcuSD7WyS3z9Y6Wg5bXbA+qnQxQiOlw1mWFgZhs6
         Zxhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753100887; x=1753705687;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Vn0aaHBna3jhvDqCj6KN/yLEG5ltghGc9j1bu034LM=;
        b=Sx2sGQ82Aiqy4Xbjc9WpuqixBze8RDkxwyVnXLHFFqHuCmEDngTVM6RH7aLbYCwC7N
         9NhRzF8jmJk7uHTJkxFghVEpt4bwhp3xjJQ18jQEMgzF9du2n/5gO7Trv6E0YPFUH0aQ
         SjkSX9CJtmTu7UQ0wLjIqUw3iDF2AO/cBEhKy/MnlEpdJk+19DG04J/Ain01QlJNfFTx
         Xegf1z+3Yn1BPEPrVF3YkIbMbZ3xzlzCSPDB6j3odnVJN2FV6j6OcAF/O1Gnfd+tIR0m
         D1k/q7Gqf1GeO/DOZ2NFgS28lqUzuCV3C8EgsMAtKjakOblC7ZRYP440Ft0JiUmfbHXe
         g5tQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnuyyfI/UdzqXnFFEDpiomvwJOKF7yIlaO5aTLDz1UTZJcP8WEWkjH9AYDdwYzTBnr1N6fLoWGKDtd@vger.kernel.org
X-Gm-Message-State: AOJu0YzG0cgTx9CoSiR3QE62m4uxAHlRec5kLJh02wivAJuMUX7Rjf4K
	qExdzQYrqiV9MmUXnipCpwKv1CYHWEjRxPGwS1YTqWDFXuJboSDTl7vhcQzqF0f30qurqC8o0Ir
	uneC6zTVLWj+Yc/E+4nNcckEeyUTk09AbGYGYmgYcRQ==
X-Gm-Gg: ASbGncv+Jg3+kit9bB7ACZIF3cv1GPFJkV/HGWoGPKmUFBGs7yL0IafABNJT3Obkw39
	3IaMNrp/hLU9O88gMiOyv7g7ICBUXTYP9q0fO7sQ+ju8pd00JaMS5huFzMxgcpkOKMbjTb/Gs5L
	K4AHC1ilj17HUGls98Sgkfbxz5h/3H34/SyypT9Ka2NTEOkxnLg//mxxfPpa+zbD6ymeSmqDjZb
	+d+kawYFBkkgexJFT5F+UrRWWOpYOJgKwfAJJKc0A==
X-Google-Smtp-Source: AGHT+IHROMVCGTzKbd8DUnRbxTfTlK+MR9JL62BsI9VnekLusb3BHR1u3EIZEbgGayIv2PxqmGUaZG2GMi/i6h3zKV0=
X-Received: by 2002:a05:690c:2501:b0:712:d70b:45eb with SMTP id
 00721157ae682-718a97cf4c7mr209750327b3.31.1753100887052; Mon, 21 Jul 2025
 05:28:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250721-leds-is31fl3236a-v5-0-264e841f4da9@thegoodpenguin.co.uk>
 <20250721-leds-is31fl3236a-v5-2-264e841f4da9@thegoodpenguin.co.uk> <c4e4f79b-5b1d-4cab-a8f0-49adbe30f2af@kernel.org>
In-Reply-To: <c4e4f79b-5b1d-4cab-a8f0-49adbe30f2af@kernel.org>
From: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
Date: Mon, 21 Jul 2025 13:27:56 +0100
X-Gm-Features: Ac12FXwobXHJ83Z0DHw-PuSuMEtx3uNkAZQvuIt_cGjqWBGALi2mwf-OzhJmGjQ
Message-ID: <CAA6zWZKi-UA_=bxKLjYN=HUEue+jXtqP1kTZtGZKwep6GAMuLw@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] dt-bindings: leds: issi,is31fl3236: add support
 for is31fl3236a
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-leds@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Pavel Machek <pavel@ucw.cz>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> I never spotted it before, but this should be issi,22khz-pwm. No
> properties use capital letters.

Ah, noted.

