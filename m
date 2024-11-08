Return-Path: <devicetree+bounces-120096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 539039C17D8
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 09:24:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E6858B21F37
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 08:24:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 454341DC1A2;
	Fri,  8 Nov 2024 08:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FYAJ1sAO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75CEC1DB55C
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 08:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731054278; cv=none; b=mrxfJqke3bSNihkBAQDK52nC4wAu7YjBpvmgFHjeyEPl6CmB8h4RQaLsUNy+Vx/EiFScGIv14sWmHvNvu0CSN0o5fV6Yq4T4Czz5tO+4/BHv9LrZ8yn+dsYrmndTMD+EMchuIq/3lj1zPDzqOFOeCBbq2hZDbFWs9awW25DkCn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731054278; c=relaxed/simple;
	bh=iBfWj2JA7AswWd35Ieq6U2nWlsPIx9QsGVzoX3QMvLg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BGRfmb8YFCNT3XRtDxtX7ImBXwz2kouvGdFWxtgCWslDGT47x1e3+12Pc5T181ZbtCtL8V03Or1OQV+yHubK9TMwlg3VKNkubvzcO7ntXyH2RikK4+7RkKfSnGicJ7lCsfmHv6GJjXRb9UAb9Ivf5ATtLLHENt0i/HD+F6gvguk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FYAJ1sAO; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2f75c56f16aso17409071fa.0
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 00:24:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731054275; x=1731659075; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iBfWj2JA7AswWd35Ieq6U2nWlsPIx9QsGVzoX3QMvLg=;
        b=FYAJ1sAO/ARcxGRPxdAaZ4lA6f0PBT7jO13gXvaEnIonz7b+YFJTdjxH7TXFuOBRGC
         mWp5nD/yGtHA+khfNwO89AabCoQyiA5ca4rUN6onMD5S5MugqVBO0OlMS3fukloXCU2h
         TT8d2m0zJrkzbzZ4l5gy6xdmJYVOIrFCgCvEa3LW19S7T/V4HXOpBFJuQdrzO+KqQCxn
         R4DFcPkfI025xb1GyHWJ5b7cJUql/PxEhCtWy0rDZxVDM7/Ymsni1qtgog/YdnOKGOpL
         LTswm1gc+WbPu/aHhJZ7+vEZcyzyodDl6kjtZ09RR9blmOFUVYB6xWma3TcAzQyLPamE
         sGdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731054275; x=1731659075;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iBfWj2JA7AswWd35Ieq6U2nWlsPIx9QsGVzoX3QMvLg=;
        b=XN2N4NpNrbzPUqSiBWCzYTT8MlDIjJn9YAflkO6KW4QWkaJFlbGunBlT89goy2RRov
         QSlSQbOj0Ja4JaD+1LqUE5ii2LAISmwhPyqXI4c/CIrhQ8SyQNQ9lwqiOWySfCLdxGpT
         RSME2pUaCf2sQDjLURUn7DigbYKs+xl2KDJQOZ1I9b62YsjyF9P1Lxek4nnmFQEsenz6
         X5joZhTLDFP/9wAR7OmwLPRNR9z3XCzNoT06ejFD9J+1LxcnOdMrodN08pKBSf/Z1sfk
         emrt2BZerOnqMuYpW7F5m5EqCkEiTnPbpchs2xFR2/7F+j02lGx9fuJ5hswR+pXzOJ49
         SHNA==
X-Forwarded-Encrypted: i=1; AJvYcCUYQGtvznvu4HI5RLcAkWHJN/+ffGZkijoMy2kuUw6ABtAmAzQNxOh98i/RyEqS1Fr6DMtL9Q0GSze7@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu+8i+e4zx9nO/PeIsZKc4DpbwuuwvThGk/vxPyNsPEwX3napZ
	O4Uh3DKMKhN8ZlWXT7RvkoIa/pR1VYUCbjhlb7z9zwvbdRvnb5dl7qpCgOYea4L3vB8FIJth2dz
	JkIPMF/zT7+4g/oSqsLjs3Hmp/n+jE6+dtTsNrA==
X-Google-Smtp-Source: AGHT+IGnVc1nyOnAYHft+MoTr7KRjl4or/9wNP6G/ex9jiHF5SnJGvSQsEQBuKYZuIsNr5c2RRu8y2/CfOwy0TH/7vE=
X-Received: by 2002:a2e:a913:0:b0:2fb:b59:8167 with SMTP id
 38308e7fff4ca-2ff20281d3dmr8301041fa.39.1731054274717; Fri, 08 Nov 2024
 00:24:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241029012312.3448287-1-unicornxw@gmail.com> <MA0P287MB282298E7A00528040BBEC5DEFE512@MA0P287MB2822.INDP287.PROD.OUTLOOK.COM>
In-Reply-To: <MA0P287MB282298E7A00528040BBEC5DEFE512@MA0P287MB2822.INDP287.PROD.OUTLOOK.COM>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 8 Nov 2024 09:24:23 +0100
Message-ID: <CACRpkdYGhrzB9Jv_fFOFd-dMJEGD0zyuXZ7-Xhae6N-DYBF3zA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: correct typo of description for cv1800
To: Chen Wang <unicorn_wang@outlook.com>
Cc: Chen Wang <unicornxw@gmail.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, inochiama@outlook.com, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 4, 2024 at 2:52=E2=80=AFAM Chen Wang <unicorn_wang@outlook.com>=
 wrote:

> Will you pick this fixes and PR for 6.12?
>
> Or I will take this over and PR this for 6.13 due to it is a minor text
> change.

I have queued it for v6.13 because it is not urgent.

Yours,
Linus Walleij

