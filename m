Return-Path: <devicetree+bounces-133091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5139F9382
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:47:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7F34E1883952
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:46:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AE9A2153DE;
	Fri, 20 Dec 2024 13:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EWE6JEsI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ECE6CA4E;
	Fri, 20 Dec 2024 13:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734702367; cv=none; b=Dz71/GeteqjuWD56jPcCCsPFe4B5Cfe4TtsreZe+xpGDdDLqjbq/4wGuKqJEh5HQXn3sHnT30xK6Ox0TnU4KrFrxqGCH5vdx3YudOlv8PfEkFAWVDL36zw46qATm2ZWZiBzZ4zkOWvYJp98yPR7roUBjELI1xTCK+5Ki4CMs+gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734702367; c=relaxed/simple;
	bh=N8D225wvf8/TZijhy30Bcyga+eaIRxy/Gz/liwg1YDc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q+xSyLjqvbfkUUvdSceffKMS+A/F4jHxhysi+5kacXGyZUdmnjm/ZAORB2gHubb5TRt51aif5kRtxraCJvGnmBXndOfWdicnjClWsvXgPD1CD1f4vpoCGs1nHTSdkjxxzMy7ntZk2DTEW7EDNNfJS37R1Wr8slQCDXmj/Np8SG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EWE6JEsI; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-71e565708beso1044590a34.1;
        Fri, 20 Dec 2024 05:46:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734702365; x=1735307165; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9+vSQI62Q3dsLifjk+T6TXnWRXA7dEHBhjtBdW3Ox+s=;
        b=EWE6JEsIDPRXm2ILBDwGxy7Qrf24d/gohVM/hmojM9Zwu9f70L1A6M+U7GVyICr+YI
         5HYacdMt8ToUIVRvMAa/nGfuT4kKCfytQGBuofPwez4+JNfYb3FQz60b5t9ka8lFVbLR
         PDxXswQXbFgNKt0JbLaj4gnsEkYrKcqQSlySqiThXxhemd38D8JT3fUWZ1YQTLF3+/KZ
         QbwyDCtI+enuS+Q7DZexJ7BJu1YnIVn5wgce/mE9cFDVoxOl6WpdAa/Njxw8/D+tL/j+
         AVhlLlhEUiwXSAwkyuXbWDv4rNBM4sqlMMv0UeQT2wfveMKxXgDD/2MljrbUrRpvVzi3
         Y1VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734702365; x=1735307165;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9+vSQI62Q3dsLifjk+T6TXnWRXA7dEHBhjtBdW3Ox+s=;
        b=VJubN9BV+2N4yf0fSoW6hTwVMAD0RVBKol6FQyU5hceS1VHLisJ8swSg3bWJut/a0G
         NwT1r1vkkOfXoVQnm4gvsv+yDqUR7zIqcHq1KvkptzTb/YGz9U+oNWKtzCJ+hzpzna9M
         o1oKIGNlmNWtn9ABc7tu/8Adia6vwkWi6dH8UnYZkNDQaZXwrZ+IYqe9Xa0dGGoURmpE
         qrYhjFwclwW63eZI5zLE+xSSk4LaOXxrIPuqrN8hQDTM7/3vH+GvDWXyJhPKKmh1rbv4
         mfRhZqojoQvFqq9tNbvOMbWsb5+83YNvOn+9mHYKMYeKGHSA8sja7D1YVvc/Uon4Wq3p
         /wsw==
X-Forwarded-Encrypted: i=1; AJvYcCVdD2NZITM931NJ6aN5sQn7VVHRJKmJiU7TwIYM83/Pc5DXPNQgVgAQm02wJ+0VK3L/XO4CtvOGbtpQjjP+@vger.kernel.org, AJvYcCX1fkFaFs/e+1opssL7CnbY7pvduAHMx9EwRy4jx/g7iAlcDlWCElodTW9+aDr80ah7e6GVeyEfYjja@vger.kernel.org
X-Gm-Message-State: AOJu0YzdkYvwirmoijGoFYr66ffb7ZhY14Zm/Zd6KnQyJ2Cg42pZibxV
	L0aObMcwKy+gtskumY92l3SVM7wYDfpQmeEVqldQ0U1gEtOF5J3UypXW5XurA9uVDSsdWAj9WED
	6o0bNGDVo/DwlFbOz3Qp7J6s+tDTXLW9/
X-Gm-Gg: ASbGncurmlGYwjsH0RYEtb2qw4EEBCJH60olJwZN5WQlg5qlkR89y6HWkyOqBuFyGM1
	Oca8CK/l7QseOFnzOIhFiis9tJTXfTdqIbIY6DcI=
X-Google-Smtp-Source: AGHT+IE9ZPcWwA3AIv9xh6RPuCiuyn/+nkgkF4iovtUahECHhWgqR2cqtcr8C+qsM6vKu9ZCfNRRol3oxLfCXFfaa2U=
X-Received: by 2002:a05:6871:e41a:b0:29e:460d:f74a with SMTP id
 586e51a60fabf-2a7fb00b118mr1599205fac.3.1734702365559; Fri, 20 Dec 2024
 05:46:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241215124627.70525-1-joswang1221@gmail.com> <2024122046-backstage-laboring-3bcd@gregkh>
In-Reply-To: <2024122046-backstage-laboring-3bcd@gregkh>
From: Jos Wang <joswang1221@gmail.com>
Date: Fri, 20 Dec 2024 21:45:58 +0800
Message-ID: <CAMtoTm2y85o-q9SD7+OtOLohyouPXjc-VoAUr_aVU1fxX7A+eA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: connector: Add time property for sender response
To: Greg KH <gregkh@linuxfoundation.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	amitsd@google.com, dmitry.baryshkov@linaro.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Jos Wang <joswang@lenovo.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for your help in reviewing the code.

I will resubmit the V2 version as soon as possible=EF=BC=8Cput patch 1/2 an=
d
2/2 in the same thread.

Thank

Jos Wang

On Fri, Dec 20, 2024 at 8:25=E2=80=AFPM Greg KH <gregkh@linuxfoundation.org=
> wrote:
>
> On Sun, Dec 15, 2024 at 08:46:27PM +0800, joswang wrote:
> > From: Jos Wang <joswang@lenovo.com>
> >
> > This commit adds the following properties:
> >   * pd2-sender-response-time-ms
> >   * pd3-sender-response-time-ms
> >
> > This is to enable setting of platform/board specific timer values as
> > these timers have a range of acceptable values.
> >
> > Signed-off-by: Jos Wang <joswang@lenovo.com>
> > ---
> >  .../bindings/connector/usb-connector.yaml     | 20 +++++++++++++++++++
> >  1 file changed, 20 insertions(+)
>
> Where is patch 2/2?  Oh, I now see it, but our tools do not :(
>
> Please make them properly linked together, normally something like 'git
> send-email' will do that for you.
>
> thakns,
>
> greg k-h

