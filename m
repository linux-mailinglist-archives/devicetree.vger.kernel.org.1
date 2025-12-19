Return-Path: <devicetree+bounces-248064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EA6CCE865
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 06:25:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E814E303EBB8
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 05:24:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9572C2C1585;
	Fri, 19 Dec 2025 05:24:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bQ9TNMYZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A942C11D3
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 05:24:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766121844; cv=none; b=PXV9SMf6kVaaqEIKuEKRcjL+Ox7t3JH0FZYAb3iubpJVZx59CFV14E7hggnKADgVNqz3GcIXeF/zsJ1QSSd7VsgELyCIiV5T/Go/G4/xJc3ZuH6c84k58UU7xfUCKjjk3l85VgbOCrG61hzfIQKzJl4Y0NaV6XCXA5nFTCYdj80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766121844; c=relaxed/simple;
	bh=hpVgyNRNTF/7kcsg9lnbnogjpGsM8Obr3fagkkDIX8g=;
	h=Date:From:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PilkeKQ3tD4nbbOseZ7kqjT0Mo9dLvv8Ja4+FtijzM8ZHFuLcEic/sCu1EpSHf2OGW0to/6vQQLrta/UO5KZODagFE3gKHjnTG/OBgeXYaSHYBo1WdRHPr81C7a9DjoP/i7qgwJIhEDFkMakmlfOr65khNlmG8yVFDn3Y3i6eS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bQ9TNMYZ; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2a0833b5aeeso18362515ad.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 21:24:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766121842; x=1766726642; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RodLP0AzMxrSO+sVsgHgtZsW0nvryzTBS7wWjzUGiPk=;
        b=bQ9TNMYZ+ZZxkYX7PMW3D6IMIfi40uX6/FxmZm9BNKybNi8jOsbc0NL4BfLk5vhaku
         WuGVzGRHOx+B5wRq0NUh01svkYCAn8S+3xV+51LXq83w8wrURm0H3k2c0k4tXuXV1D6p
         0Dodv/9QdrfyH0kGnNtI7Wb6GrYq4qqSUYWOmia1hvLVal7HvgfdHZv7bBoLulBhCgg6
         +G7P1hRzNiuTuvNg/x+MYeG4f+sOM9ZAcJe8Xpc05sde3BS9USMNYVP1K3Rb19yLDgM1
         7Y1I+jz81kG/0cIAmZYEUI4tLxLxj4jg1cUf2LEeilJuqPpd3D4e9rTA2jLbC6QatPhk
         wg5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766121842; x=1766726642;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RodLP0AzMxrSO+sVsgHgtZsW0nvryzTBS7wWjzUGiPk=;
        b=K/9Ybw57yIOKP37NB8dffoFoG3Y7F1WD85WgS0zElItjsPL+SCfWLggJ97EvlFMDlF
         ierWTjkvrq6e/GjVp3KYRm5bsfy3NOWJgag2RdKrn6zOJCz24kfA/eNCS4TTPG/uIrw6
         y63T5IJmi+IhDMsb+Mm4LUpoE3ZGUvOkf8jcxtyJ9AvTJjBx4W+zcABGFX3c68UwgA5u
         E2zP3lb1fp8cGYOmX5MX+Z8IMfDOnhyKMzg3wcq+DswvAQ263WZuOmKOfSCo3yTbwUk0
         9A02iAn1V5IW/xCxd7Qh3b9WHpllo66Y6QOnnUX2+h10BsYrpxy+yT+/blYodWImKryp
         ZP6Q==
X-Forwarded-Encrypted: i=1; AJvYcCV4IzfCU6Sk6XANO1UsesLCq1cpW9G2THIaRZJ/sJDzhMY/opRv2NiRhPfBZBIAAmR0gN/ELtt18ye8@vger.kernel.org
X-Gm-Message-State: AOJu0YwXKobyLJ4jZ6mOAOurcnnkQcYI4C5xnGCv2tjI4IgBoYg03suh
	E6+7r4+8PucTpy5MPtYyMWszP+Hw8nVzdPK5Lebr8mE0hIBXQJb73WU3
X-Gm-Gg: AY/fxX6NQnB9NOOXOXyn3mNGq0l3iUE4piUTkESMFniocCoUsujuitofIsJSEtAbi6Z
	RXszQkeAsRmeCBQOvzZk3B525ikBEmp/wHUg5AiWJt2Hki9/UcMJQWKmE1aaQ4+9+ZIJIeAa+kR
	cnUZbvqbNFhsTz6Fiyl6V4LYzSPLMPfo9aOKz5AzOg00ItuKrpo64HqiD+KILFnvJD7ztpM1JpC
	Be3UlsDgEbGQ5NE91bR85TlXQvX6dK1HQ2/jY/637GHFpYIu9P4gZHZfjN2SPrVDSzSK7fpjTsM
	sB3jlQKpmp0W5VyH9JP29XOZfUt0WRjgT5FiM81HtUGtrDuIlsF2QC8uiM+rcxRDp6Z8ZIjjaDD
	B0dD9CbNiH4Rao7ZGmhD5nMwkD86+nnkp3v9hUNTQd3KNJ9nW9AE5hYaJAoblkVVlupAr6tvoQA
	yetsXaWYsttUvtqj/pwxlRacakOaFrau6f9+tj3GpOWe4d1F856QUd
X-Google-Smtp-Source: AGHT+IFDgJZwNEBeeKwBL3wo6S2qUd5lDxhYjadobhv5i0Xz6F5uVOsZEz3MvEz02kCvTGgmYV553w==
X-Received: by 2002:a05:7022:e80c:b0:11d:f44d:34db with SMTP id a92af1059eb24-121722ec1a5mr1842609c88.35.1766121841950;
        Thu, 18 Dec 2025 21:24:01 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:c932:b7cf:9dde:f662])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121724cfdd0sm5033647c88.4.2025.12.18.21.24.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 21:24:00 -0800 (PST)
Date: Thu, 18 Dec 2025 21:23:57 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andreas Kemnade <andreas@kemnade.info>, Tony Lindgren <tony@atomide.com>, 
	Kevin Hilman <khilman@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-omap@vger.kernel.org
Subject: Re: [PATCH v4 2/3] Input: twl4030 - add TWL603x power button
Message-ID: <waxqf7fshz6nyupfky3dgap4x7m6b2mwatouxvwvguwqdvdvop@ubehn3xzl5iy>
References: <20251106-twl6030-button-v4-0-fdf1aa6e1e9a@kernel.org>
 <20251106-twl6030-button-v4-2-fdf1aa6e1e9a@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251106-twl6030-button-v4-2-fdf1aa6e1e9a@kernel.org>

On Thu, Nov 06, 2025 at 10:00:26AM +0100, akemnade@kernel.org wrote:
> From: Andreas Kemnade <andreas@kemnade.info>
> 
> Like the TWL4030, these PMICs also have a power button feature, so extend
> the TWL4030 power button driver. As the irqchip of the TWL6030 mfd driver
> does not provide mask, unmask finctions, do it manually.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>

Applied, thank you.

-- 
Dmitry

