Return-Path: <devicetree+bounces-48718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D50E087330D
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 10:50:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6F86B1F2529C
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 09:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D75CF5E3A5;
	Wed,  6 Mar 2024 09:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="bXPN6EEK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD725DF29
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 09:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709718616; cv=none; b=chjZVGvTvJNxijqBAAMryNvKIzlrHmHs1jfJv+JZbmXTug7E733WGyos4hLwcBTOmZkgZK/WtaA5IMvtBHC1fzpMmBhUWy+fqjTpuWMT8QrENnaeZjOpPduHXFEkmrTNLFbfo4EVu43GDti2t1Jy1SFEvEp6VtD5XwMYye579hY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709718616; c=relaxed/simple;
	bh=5wTDv8Pow3ls0hAeMHjkJghWq0FXCqANDCJJgNSwvho=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ceANhjdDOjCdFAmlHkLewrXLlO88TEk28DGKWqlJo3yaV7dv0VKXJGk+sBvV9IxtVFrXhChJywiCxjNxddFIwVPsHhnnAgqwgTbgUbaWTLp5v5yPpFPeFHi4pOJFGifK68OLPdFX9MlaF9vw7x/gzvNQ7lLlKh/2769URlipoT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=bXPN6EEK; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-5d8ddbac4fbso569084a12.0
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 01:50:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1709718614; x=1710323414; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5wTDv8Pow3ls0hAeMHjkJghWq0FXCqANDCJJgNSwvho=;
        b=bXPN6EEK8ROtqPXnYOisP9OZv3wXjLA9VoezLbW3CpaUU1dDVxypTELbSobzh3ISeO
         xeeF+K748SPIMCXb59dhOMK8AOcrwAYrBhvPq0myPnega+hV0+Ig/sQcg8N030py06sk
         uE049MOvk3W3SPtXR4IO/0+Hj631mWd8R1z3r/9ZfaUaNRgiXWbf+jjzAi09jCuQSX9k
         4fIyoX1knONzgrM09k7oeU+5dvnWApdAWQjeiDOfqEOPsM2ZwZXs4XiEcPdbj0TeJn+i
         fGZguCMDj+GG181gxMU3Sznje5Qmiz/t4XbK975eZUMhtA8ATFIqV/rRnjsGnaLNvqPQ
         db2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709718614; x=1710323414;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5wTDv8Pow3ls0hAeMHjkJghWq0FXCqANDCJJgNSwvho=;
        b=mcIdrvd6BX4miXTXFSNSmw6vwogdTe12Acbx8bpPwNaGrYwavAcQhENoSQDFmG7XKj
         jCnx5jVg1kEQLt0zvDPMFO+9oFFyxQfOJ0Xea6vq1KiZfaXFfe6BTUv4tigf6endaWry
         GBhahUkhTfuPIiZJO2YHmNxfPVSF7XZ4JCGlAZMU7d8+B2L+0di28rWg5N2GJxcBNbSD
         TRSEZBvrvpNbh5tba59hkAAZIPJPwTuT/k65vXzZDtunX7fWAey/d/7fk3GLwekjprvv
         RkX/uPB/iFKDqy+dO16EMDU2dqdOhBfF+jhgygSQtRcv6ZIGL/kamrKTp0u0seWi6Pr7
         iBCA==
X-Forwarded-Encrypted: i=1; AJvYcCU/1noltG5V0bulBkbJwiDbD/nsXCSmY/wDOZSSm1EnXDgu3RAt/JYRo6Id/tOjkfXi9uE+dm8yj0yzt0alcVvgYrmUNIrYf1dzdQ==
X-Gm-Message-State: AOJu0YyzUbVuOWwKvgMsDU1u1KWcV2gmr9GFtkQN35V4j+den7DF9gMY
	6QPy5s5y0BcbcoFRIT0p5Lj4UDtNH5tJop4/fzIJxUdV3fTxyZdHrnY9yqQHx4kX+lZsVZ19+RV
	4XirvkuRzpQxYJmU+UIMPUi8bIGtyg5EG1NnEqFlUv69xaVHim0m4sg==
X-Google-Smtp-Source: AGHT+IEe5ARYEUNZCsr+iHrFPzLLIKN3FTqKMUPA5r/pRjcydibLKmQbYN0Ni7yeDM2vxSQwE6cGRdoCFy2gruuS/H0=
X-Received: by 2002:a17:90a:f490:b0:29a:6b5c:33ba with SMTP id
 bx16-20020a17090af49000b0029a6b5c33bamr12644943pjb.5.1709718614426; Wed, 06
 Mar 2024 01:50:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240305210747.1377506-1-naresh.solanki@9elements.com> <a32a2655-7561-4339-8521-bc2558e0bdb1@linaro.org>
In-Reply-To: <a32a2655-7561-4339-8521-bc2558e0bdb1@linaro.org>
From: Naresh Solanki <naresh.solanki@9elements.com>
Date: Wed, 6 Mar 2024 15:20:02 +0530
Message-ID: <CABqG17hYK8MFMPVNXxZ6JT4TW00PPt48q1qZBzS=gJrpC--iTg@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: hwmon: tda38640: Add interrupt &
 regulator properties
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	mazziesaccount@gmail.com, linux-hwmon@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,


On Wed, 6 Mar 2024 at 12:44, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 05/03/2024 22:07, Naresh Solanki wrote:
> > Add properties for interrupt & regulator.
> > Also update example.
>
> Nothing improved.
Yes, Just aligned the regulator node name in this revision.
I missed aligning the commit message.

I'll fix in next revision & update commit message as:

tda38640 has a single regulator output along with
CAT_FAULT# pin to report internal events.
Hence add properties for regulator & interrupt.

Let me know if any others changes needed.

Regards,
Naresh

>
> Broken record. You got the same comment 3rd or 4th time!
>
> NAK
>
> Best regards,
> Krzysztof
>

