Return-Path: <devicetree+bounces-250012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E536DCE5A43
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 02:03:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8349F3008E95
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 01:02:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B10DD3A1E9A;
	Mon, 29 Dec 2025 01:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gFyb9DJ0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 005431ADC7E
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 01:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766970171; cv=none; b=oCkw1vq9OqeWEFruwZllN1m17USujtR18TS25H3DiXHT10CINHaOhXRCxRj8cX01e8GzLMd8zlcOG8OlyC/dP+NJe1LNAUa457TRp9bMYIgGbr7EhRJs1MspRVJf5LHoc0st8Uj5y5wiOmryCbO4yfDHj6UBPNwi5MHvtoPG2Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766970171; c=relaxed/simple;
	bh=8PsFqhWPWBs5ISCcmLVbxGD3gHbmqyMeDa365kBTSqI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pwG4Bv/psRN68MCbA980MWO2u6g2RobR4wWKf2YQ/SJp7yHsRzaBjXbQS86AeVDqvCf2jc74QOj1nJA3OsFE1xDifL5CICkLEWdK718pY1rwTDktpIv/TXo1+vpn5jREkWQeR7seg/U7XOb5fX/TSO5oz0eUheFYAMt7GncF/BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gFyb9DJ0; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-64d0d41404cso9851107a12.0
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 17:02:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766970166; x=1767574966; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8PsFqhWPWBs5ISCcmLVbxGD3gHbmqyMeDa365kBTSqI=;
        b=gFyb9DJ0mD7A5/shyLu/l7OAbuW0sjnpjq8EqIAXjZEKmr6FSZDqe0Q243EzFH+ESQ
         /lg2YmdTU7utkdE87a0gCPr7RCqDCbSHtluUGfpJRXs0fR6X4KsOBUyCf8LANo1fA/8A
         shQlBnUVgEx9hj0EXCvUAx0V6U1Z5nQalIDcb84mBo64gpfuVxnHhVwJCvkzUQwY+Lic
         yQBycplhkQwdlSGmXcHL0Lv8KIuH2eo2PonWB+AKpHYtv+ztcZmicL2wWCQkPZ7E9+ld
         lTRKsuswPdlmMa0/clXeiczCIt3Bfacl2eR/V5lJ1CabGzaliuZMTi8+g+9Ehw3Gexde
         gq5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766970166; x=1767574966;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8PsFqhWPWBs5ISCcmLVbxGD3gHbmqyMeDa365kBTSqI=;
        b=lIQPWYMA54OLHthtukDYhxIpXnOCGorAzD0kAmyVAzdRHpe03X+/dEMSlo0nqLSY+U
         QI+8x7+POyW8q9mH5cT7AFHuc/uCMi7To3WDKQ57iACuNdReHUAfEuPkd1FfRBOfh78F
         gPccVyaOAQUL8cxdcgoDpGmwRVfaR3Fiw/SyUZma+sGmR4U6Y05btJPFGclUhGXnVBVA
         dN+uacS3+iOoXhNQX/iZ/ZXQMSPc8zU3gaDC77OTtbDoddC0werpyxf7RhDRtIAaVHie
         U2fEZSw1W8RSD+ijALVRajs3yOMPbbziOgEMtbMa+yUZEn+0YBBOuj+r0GbOjGiiCUKx
         CxBg==
X-Forwarded-Encrypted: i=1; AJvYcCU1I0Tf/KnaAQVJewzok9PZuix+ttp7kvTlrDfLKmk46R6fgthBwG7ZVKl1KX+ipoWK7DQqPddPiGwI@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/5pPPRNuKfbOjF7zRJMPzvCrnvn1qSCgdpE6ZSY2HNq8Liefx
	A+ZwUxXGFFTnyyjt6Yfnnxd57sMmRX7dOUKsmQ8fg9o1+S7HX/GReSRSM+v0hVMOanv0T8fVPZ1
	78OyXEj1ESs0tQIPnMeRcAtZvwIUZJ3A=
X-Gm-Gg: AY/fxX4badZUZXnoukl8rrmpBQefJU77CKXBmWPYigNGO1zDSmF6O3zTk6XYK/vlway
	CbvbmThh8dNj7rhpIExQ2mwOBZLL0SDP7GuUO653njeWjFYZMoLtN6zcbMV3eUd0nDkarqIwMe9
	10rYCaD48Kv0HkB5OtY29pMm1/FwWGyCDPZwMrbjpTb3jxSBZ2ee6hLn1z6ZAKB9jbbBtNrZLHl
	RJZt1Q+qp3IxMQ0XolvLJdEtF2xnz9gi4nv2r75jnFhIhZAwsbBKJDDJ3JfsGxAro1aksR3
X-Google-Smtp-Source: AGHT+IF0IXPQk0C4HhJZXawFNHsaGTIn0geCX5EoGqjfqhQpg8FvQc7ds/jfiREC9pa+fJFmx/dK8aQJP4lzul2NfZQ=
X-Received: by 2002:a17:907:dab:b0:b73:880a:fdb7 with SMTP id
 a640c23a62f3a-b80371790d6mr2997016866b.35.1766970166082; Sun, 28 Dec 2025
 17:02:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251224084821.2092169-1-hsu.yungteng@gmail.com>
 <490569f8-a434-4297-b11e-ad34ddc4ae1e@kernel.org> <CAFT9tykPEt+zTREF9C4AXtGp0qDh_65LjHZCK9F=NFhE-K4dGQ@mail.gmail.com>
 <06f97147-5752-4a82-9958-89b138a7d4fe@kernel.org>
In-Reply-To: <06f97147-5752-4a82-9958-89b138a7d4fe@kernel.org>
From: Yungteng Hsu <hsu.yungteng@gmail.com>
Date: Mon, 29 Dec 2025 09:02:35 +0800
X-Gm-Features: AQt7F2oMdsED5iRMhFHoG-r724fBp1Ay7eOq1wTC5-EPCy0ZZVDBKNYSzRNPoqo
Message-ID: <CAFT9tynYM0u_cAqA9YPpoUp7EcVpvcwr_sxrk5K=VNMXDwBE=w@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: hwmon: add STEF48H28
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Guenter Roeck <linux@roeck-us.net>, linux-hwmon@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Krzysztof Kozlowski <krzk@kernel.org> =E6=96=BC 2025=E5=B9=B412=E6=9C=8826=
=E6=97=A5=E9=80=B1=E4=BA=94 =E4=B8=8B=E5=8D=887:10=E5=AF=AB=E9=81=93=EF=BC=
=9A


>
> On 26/12/2025 03:46, Yungteng Hsu wrote:
> > Krzysztof Kozlowski <krzk@kernel.org> =E6=96=BC 2025=E5=B9=B412=E6=9C=
=8824=E6=97=A5=E9=80=B1=E4=B8=89 =E4=B8=8B=E5=8D=886:03=E5=AF=AB=E9=81=93=
=EF=BC=9A
> >>
> >> On 24/12/2025 09:48, Charles Hsu wrote:
> >>> Add device tree bindings for the hot-swap controller STEF48H28.
> >>>
> >>> Signed-off-by: Charles Hsu <hsu.yungteng@gmail.com>
> >>> ---
> >>
> >>
> >> Where is any changelog? You keep sending versions but you never
> >> responded, never said what happened with this.
> >>
> > Thank you for your feedback.
> > I realize now that I misunderstood the process.
> > I previously thought that the changes needed to be included in the cove=
r letter.
> > I will follow the proper procedure for discussing updates in the thread=
.
>
> There is no cover letter here at all. You sent only 1/2.
>
Thank you for the clarification.
I would like to confirm the correct approach.
Should the changes be documented in the cover letter, or should they
be written directly in the commit message?
I will resend the complete submission accordingly.
> Best regards,
> Krzysztof

