Return-Path: <devicetree+bounces-133089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E84BF9F9372
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:43:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 180EC16A12C
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:43:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED705215F67;
	Fri, 20 Dec 2024 13:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="faACZkIQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496FB215713;
	Fri, 20 Dec 2024 13:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734702188; cv=none; b=tLZFCBHTjbT9mkSPbOWJ4BkhQSc3xD6eVbG5e67xX89MwkuO2I3nZajSE4IWAIXlWvVoqQZ0LSo8pwcNgAialvG/9r0F1C9LYgG4h0X9DWKyPBosvacFMnCzyqkHfMXMr7cpZooOAaQSAFeEKlBGuSNB++X+AzjegEquXiPVKZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734702188; c=relaxed/simple;
	bh=VfHjiwSbW4ozdHv7TUEHJ4uyoAAGBbdM1WfUW8TjYGI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HJtpMpQaqj3FfZ+tdhT529Tuo8tg05z/dPscdVGdTocpw2vrhmCtUzyxZzW8sH23LizWIxt6rUGImowRwcyYW7yvMyBn2AEIRIoRm/Oe7sIisrb/M/Kd4VyaZuB8FxJc2uSh5oILtH5JDa9LBTsOJJxF60j1xQ373r76+slZPKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=faACZkIQ; arc=none smtp.client-ip=209.85.161.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-5f4ce54feb8so860983eaf.3;
        Fri, 20 Dec 2024 05:43:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734702186; x=1735306986; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eD72dglxfWi7m8QzWfK0i4AXUsxvNO/17u7Nq47yNjM=;
        b=faACZkIQSnBkbGNr4o40D2xgmwTb//eQToqiAPjzNxDsU8Elfa0EQpzh3TraiK7zGn
         j+FNAIwoamI19Ipc5JVdr7rrV6e/eknsMoFkYMVEIux5/PGfDzodGAuMp+4ICdVGgIue
         Z5QpItde0PJkZ9KJkOChIUq8zGhwT2OrQISRRyLxerwMYhQ1rSV8UVUwAT9Elx2j2TCY
         NmLw9WP70BH3pX8XwCkqLxpA0gnLXtwBbakVgKO34g7Hgk7awtKOUQwRaaBxL/u+C7zb
         0T5L7Rk140nmx1Qc3eRPSF/kkVInYQ+0Wr6XCCMqeFI16JQMly51iMCTQYvOXIPOsYzk
         7TMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734702186; x=1735306986;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eD72dglxfWi7m8QzWfK0i4AXUsxvNO/17u7Nq47yNjM=;
        b=Jh3BiCroWINYvyY55+dhfLPhfJt5Z8ocQdfn3nafN6SCj07kJMp43xz53cUyl5CavM
         pqcJD9t5uwIYwE963IkC9lF50LztxFEaWMKrn7Qhthgpq8VBCIdWg3w8+Vtvgiws/wts
         dVHiDICuypQ/Xzon8VDXQHKFM6h0EScTw+jHvD2cZ3EUUdnErA2LaP26cAvayWcazpwr
         9CcBqlOwZCptD8Rte4DzmJUZsdo+pyVT193Hutzt7SfC00N7KBw/82DXKiivo5Vmwbjf
         +mWVVzLql6URKYBv6j0UEnz4G+RGNzIgHHRWOFxP+juFZk36auw2d97HHqUKhrrgge9w
         Fhuw==
X-Forwarded-Encrypted: i=1; AJvYcCVYDgBffRY78qVYOBM3PA0oFvpRY/cohPIIWn6SB0BUl/01m7fthGD1mmi8ciH3oCBdEPnCVWQEIBCkSSAx@vger.kernel.org, AJvYcCXAgGMQT+WV9kL0yU4cu3PW11qp4erHZ96G5DaXq/ncRJ6urxbQ60iaPM3rR5gvx2j4b430HX8E5Zlt@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6POJ6T4znQvzrKIpgSVhOyeENfSbfdxpXZGtHiRO4IHkvASa7
	aYJjG8g8UDCxl0ZWVU/3WLHQaxnGS2lir936KhFfxV/tqNZobyOOZmID3h/leyU3jGwcK0YKFtr
	budfZUZC23rCGjwGPEd7nErz3HcU=
X-Gm-Gg: ASbGncvfffoJwPYZKIA6JNexszG3+8n9fRcpCxB8HlwFTRe51yFeEZc4dmozHIiiXNU
	/MwrhtlddGsu16MaLdbWKrWJmLeu7o9urYkP5/eM=
X-Google-Smtp-Source: AGHT+IHAqssRLg7VXVfmWFt/gyFOTsYdrLwX3h+lyI3JSbkkD7BoN+6krBYSOcyohp41ukYefnz02VZLfeMsf8whtfQ=
X-Received: by 2002:a05:6870:9d98:b0:29e:76d1:a8f2 with SMTP id
 586e51a60fabf-2a7fb245f7bmr1672883fac.18.1734702186370; Fri, 20 Dec 2024
 05:43:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241215124627.70525-1-joswang1221@gmail.com> <94e7cbb3-32c5-4366-95c6-3be30cd7e327@kernel.org>
In-Reply-To: <94e7cbb3-32c5-4366-95c6-3be30cd7e327@kernel.org>
From: Jos Wang <joswang1221@gmail.com>
Date: Fri, 20 Dec 2024 21:43:00 +0800
Message-ID: <CAMtoTm2y6pmSEyaXMqs_6sADXLc=zk4ja+5aHQW3A_WCrfuYbA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: connector: Add time property for sender response
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, amitsd@google.com, dmitry.baryshkov@linaro.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Jos Wang <joswang@lenovo.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for your help in reviewing the code.

I will resubmit the code as soon as possible, put patch 1/2 and 2/2 in
the same thread.


On Tue, Dec 17, 2024 at 3:35=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 15/12/2024 13:46, joswang wrote:
> > From: Jos Wang <joswang@lenovo.com>
> >
> > This commit adds the following properties:
>
> Please do not use "This commit/patch/change", but imperative mood. See
> longer explanation here:
> https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/sub=
mitting-patches.rst#L95
>
> >   * pd2-sender-response-time-ms
> >   * pd3-sender-response-time-ms
> >
> > This is to enable setting of platform/board specific timer values as
> > these timers have a range of acceptable values.
>
> Some explanation from where do they come would be useful.
>
> >
> > Signed-off-by: Jos Wang <joswang@lenovo.com>
>
> Your second patch did not make it.
>
> Best regards,
> Krzysztof

