Return-Path: <devicetree+bounces-250963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 513DECED401
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 18:51:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0E5AC3005FDF
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 17:51:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6801D25C804;
	Thu,  1 Jan 2026 17:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hfVTA9c5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F206D221545
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 17:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767289871; cv=none; b=VW74kLrB6UstHmhuDsCA4tJRErfEEe4TuldtuEfOkwwwBl63WOAsYLmkx96r9QQR3/kQF2sl1eGRJMknLcqPT6CHAQqIUbB0D8trC0PX4ZA2ENDxpb4S2e9IYd3BayIRJJaR+SO3m+3+Mw3l5hX999f3fcbdgiKwVRH7xy+laAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767289871; c=relaxed/simple;
	bh=+SuxnZuOwBtnUHrco5G/8HwaRgy8Mmuz80am3+gdY0s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XT2TAktED+Ku1vlwptkRIlcUVhER3UZzzsUDMC/PQ/j2dm0fvsPiwEa9+aECi1GILCLUxAR334OK150jNNOrupyQlxCOMvNddHa2xI06GxjP+U8Q3Zif1Anpp0MKi8lH6kVXyDamiZ7p5W8VMwd0fz03d9nX1RdLIXjctU0GFHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hfVTA9c5; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2a137692691so134262015ad.0
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 09:51:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767289869; x=1767894669; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0jj51h0hnz/QKxpvGSIa9Sv1MaE6xhEm5WI7a6VOKxg=;
        b=hfVTA9c5BPfPqSosNllmgPzi0PXxb1Gq4qzIn1NDH4v/XCQ4Hh3FWJCTBxEnEa8nN4
         kmC3lV5kbnfErKmPqgFUjewD85RSbeDA7qFJS+0Z28fRraghdLuIadguaR7qutcMsD+g
         fOJ3GP6JRvmkC4FC65vZ02hblMTeOzdY0af8qVjI5iLdH/MuN/KT1bAc3lmBqlg8fmRK
         SL+BlKn2McE1OKcNzAGQ3eRPLfEpKiw5n9a3GYWC8+KmQEsx+qBFBN6nABbGAzCKtAUy
         rIVfr7dDIRG+F9TRqwLAWD/q+JUZRBvLW4FlK3aZin+zQ84sBmAX4/dp5kZ57v0csLga
         Shug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767289869; x=1767894669;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0jj51h0hnz/QKxpvGSIa9Sv1MaE6xhEm5WI7a6VOKxg=;
        b=FsDRrUG1QCvsSCw5D/EOKTmL6NrKM6tFUiBR1UJdIO1JaBIGGEC3/7CDM1i4QHiwnQ
         F3HpyWzE/TG/FtVE4k0GojbHiqh8nqpmhZBm2oWpi/mpCoHx3L/NfQs6K1VFQQgukVLI
         B6sUuFKCZz6dSAhQjzSuSbxZZrIylNqARetxtV+1foz/GmPV29are8QHOEEPCuba6i2X
         1HKiP+9qvWrakCeJFLUZT6078UI9aKoaS1KkWBie+rKOgD5i+Uwb90yptzu7I89CFhnq
         3weQeAKmvC3w0wiksJGMfq8vXsVrMoGZ/d3B9Xw8f0K4kEv01hQoIGM7wDLj+6m6xR52
         llpg==
X-Forwarded-Encrypted: i=1; AJvYcCWEaHqw+VWsDWgNjoV7WJk1mIH+wOCo5QfPR/CUQ6y+Vf33ifNJW2LucGvw9DGc9g4CHbAYy7Y8aXkb@vger.kernel.org
X-Gm-Message-State: AOJu0YzdfxdmUQHYJFNNVvMu0hcTz4OvlZkYjEnz7ZBKYJgQ0xulY/l3
	PBF8g694lQUX5o/qCkLfCkRGR3aRfhEVGUOvFhaHw/GWu2zS/fGMi4L2
X-Gm-Gg: AY/fxX4J1uN/c7tdzctUfKOkONEbj/DN8R5G1iOAR/2Ins4/gaD9w5iByx5IfShzcj7
	Y4/Tn9W3c1bkVIfoiqyYiSqEG9624pGXVa9gCSyqo/yodwfP4MhdyULuy+nyHqfRkD272qxOPf/
	cmZ8IPc2OEodG9PO59PtPjO0v/xid+fUdQ3jcCpY6Gkw4B61il5LD1nfZBtKmW4YvFfSEr2YisS
	olAZ4N1qPrHm8mGhmy6Sx62iVkdBZGJuYmUpBv5L+/K30ky/yPIrlkVE+kDjAM307NyFVw4DTIS
	UcqWFPCyp2pvsDsisSgKyx3k6zCg2JEiVf8Q/9xc8Mp6TMZF+wqJ5bVZjBEVeqY6PrTv77P9kle
	5ePvvRUuzir2sLYCwVJ1ZbLZZKvFhXqnXCEdUa5AIKiCGaLi4E4FtnFPCAA/vKKm7TgJpV9lbSs
	puwEZFq1HrqtrC8yVQSPdnu3J5
X-Google-Smtp-Source: AGHT+IFsQJ4bAmzJ+Reis0EcfO56892m2Lru8k+ihnYSVUjClPj1CJFSHdmj8mSH6IKO+AaaRLP9dQ==
X-Received: by 2002:a05:7022:42a4:b0:11a:fe6f:806a with SMTP id a92af1059eb24-121722f65a3mr42792371c88.31.1767289869024;
        Thu, 01 Jan 2026 09:51:09 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1217254c734sm152212026c88.13.2026.01.01.09.51.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 09:51:08 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 1 Jan 2026 09:51:07 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: j.ne@posteo.net
Cc: Wim Van Sebroeck <wim@linux-watchdog.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RESEND v3] dt-bindings: watchdog: Convert mpc8xxx-wdt to
 YAML
Message-ID: <74226532-e501-414e-87a3-5a1b54e0b9fd@roeck-us.net>
References: <20260101-ppcyaml-wdt-v3-1-9d59c5aee03f@posteo.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260101-ppcyaml-wdt-v3-1-9d59c5aee03f@posteo.net>

On Thu, Jan 01, 2026 at 05:54:22PM +0100, J. Neuschäfer via B4 Relay wrote:
> From: "J. Neuschäfer" <j.ne@posteo.net>
> 
> Convert mpc83xx-wdt.txt to YAML to enable automatic schema validation.
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: J. Neuschäfer <j.ne@posteo.net>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

