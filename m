Return-Path: <devicetree+bounces-241245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD3FC7B7C0
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 20:21:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 045523A5D29
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 19:21:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 143992FFDF5;
	Fri, 21 Nov 2025 19:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jyfl8fLU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F0402FF17B
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 19:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763752845; cv=none; b=sG0xs2t10e37z0JANO81IzqQDG0ohDtEExdeK9TspVVzgsvXJe5K7BdWPOld7c+be+y59c2EVxEoQvPEWmEbx1ks62nmws31G8C3ULBdPvHq6cm/EMJMrBLixUGfICI1Mdw3OaO3C9gzTUhKc0BO1kLc6kVt3xEOABtAtmYHPaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763752845; c=relaxed/simple;
	bh=Hvkhvcu/+r/uun+XiTRw/s97qI8wDafnAVnKcQvcEcY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ndelpjfneYX3Je5d7eiKRT06/Ab1p1JVjIdzrWW8VAgg6sj6MbAPuJe0i1fSSg1g7wPMnyO2uFfXUZajM1L5r1naBDT2gcBpvuTEy56Nlh17iNP6/PD8IXOSXJLpfkqMqUgbuBC0GPehCyAY6ALBxMlX9Uuf73dlGidG90Kh7pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jyfl8fLU; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-299d40b0845so37700945ad.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:20:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763752843; x=1764357643; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DkiySot0JlTeM81NDSJaYwCGtmRwSko9cXTn9FLOklU=;
        b=jyfl8fLUAiD29ptwrihc7I0ieYGm59joV/PcbRo6xTPY+I/8ES9zVLOUlEHcwzUidj
         sct2xvppNuCMEceivQbeQ8jPoW+6WK1mBh4TLThkCohR9FZFzPjVLGJ/4S0WCUwW6Wo6
         aQlUnkDxvmtppsBbKi+x08AP+Xxli8UmlZn31O/V0/S3xo9ZYJLmp+vgT9KFhb5O/+Y5
         K121JeDtTGCgSUMVRCNHhpYco3YCpyOtqDXPlQFV3wTJSaDDUYPjvES9a4czZe2v8AdX
         Y+COMqchecydHs1tm15ag30CsKzAs61/oCephFsfZsnJZlqRszERp8ymtLj9buyImi1N
         LUCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763752843; x=1764357643;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DkiySot0JlTeM81NDSJaYwCGtmRwSko9cXTn9FLOklU=;
        b=Bu/I8tofRAHXWKiXTT/tCu05IGs41CCFuyAo+1ELoIMYqRTLb0JVqH8DvFTEWo5Hci
         vFS830Ghi+vuLWBoMVKx9pqvs84YVNHFLz2agCPPhjcUj1aKx4Gy/UKJKM0Vt5rbjtmD
         EsgYgg5/iON9ZIFnWitsPSXltPrNV10mfGump3f2c48ID3JhcuaCRxVuZa+iEbRES5Ku
         t2KO4svO/BtYyjk/+iPbQfb93dd1gTNYy7xB+Tm4xSAihhyzSOJr4tyMtIVm6c8gjPL+
         GGO2aH0mDdgUSI+581sJVdIjcjdtgayn/Y5znSZZZV3wQjFfxFD8BHlAkF3xjs4lIX/6
         XMBQ==
X-Forwarded-Encrypted: i=1; AJvYcCXIxIXybjP44WEWazHEc4E2SjhfRVLYo3YqbbLtWRqRRxjMxYIheX20fYYmuK23S08H/Mv8/UMUYJ09@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7q5XOuASEBb4yqD+xvvrU64ri/Rb7UyEikO4Fa1DK2ZSFihyB
	Q9e7JXQto9i+eqZpHBkrnX3oYIS9BSmuFFBlnkMOMuY3bafESUYNFUH3
X-Gm-Gg: ASbGncsmB3ysTvIR5IhJomepw85IyfWts5nls03JNRO/yNJTtDawB4CvokaiqLjjIbl
	gMBMAtly946Tol0L/6SKs7s1Upumm1J/KKxjJ+artzmI4eunmsGinG+yXqo8a8JuJs+nSSU4To1
	NKdEqKPiWphKqaV7Co9YZ+o9kL+zXQ8nI+OrKdogHCxugJ7yZBcVbniPnojunEmEOVC+shdVogH
	cMCpwxp7WKJ0OFGSoe81D7oTzBLJ8bZH7BgyP6Z6UzsjdbCvm8BI3ZB4271FStyCzQlKjCNS6mq
	P1S5Xn2ksxakmLyFrydJAQDSZuPbx5e0fAKdaNYoQK6F9QRMR9TcE7asXFpNVs4bamsQ8fjfL5N
	XXASFIfdQ9FQm2Bo22xT0RAPXImLtSdYV+NEwADz9tt73qliRY/9sruBKTxXmNaIQ3vybsvW5XA
	CxoUoQRDxml87Of6UyDvhPkk4=
X-Google-Smtp-Source: AGHT+IFGSMhAaX0qmWupzfxH6SdMnBmmVUzXc6aFgY6Jd8H4M51kLSvwGWZdzl8zwzxLzIH4iUB1jQ==
X-Received: by 2002:a05:7022:793:b0:119:e56b:c746 with SMTP id a92af1059eb24-11c9d711aa6mr1429994c88.11.1763752842786;
        Fri, 21 Nov 2025 11:20:42 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11c93de6d5csm18602216c88.4.2025.11.21.11.20.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 11:20:42 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Fri, 21 Nov 2025 11:20:41 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Billy Tsai <billy_tsai@aspeedtech.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, BMC-SW@aspeedtech.com
Subject: Re: [PATCH v3 1/2] dt-bindings: hwmon: Add AST2700 compatible
Message-ID: <d47e02aa-5cb3-4ae9-b2c8-896534f27404@roeck-us.net>
References: <20251120-upstream_pwm_tach-v3-0-eaa2f9b300a2@aspeedtech.com>
 <20251120-upstream_pwm_tach-v3-1-eaa2f9b300a2@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251120-upstream_pwm_tach-v3-1-eaa2f9b300a2@aspeedtech.com>

On Thu, Nov 20, 2025 at 07:12:31PM +0800, Billy Tsai wrote:
> Adds support for the AST2700 PWM/Tach controller by extending the
> compatible string enumeration in the device tree binding.
> 
> The AST2700 PWM/Tach hardware is compatible with the existing binding
> schema and requires no additional properties or modifications beyond
> the new compatible string.
> 
> Signed-off-by: Billy Tsai <billy_tsai@aspeedtech.com>
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Applied.

Thanks,
Guenter

