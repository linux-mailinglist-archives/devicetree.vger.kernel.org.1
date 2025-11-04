Return-Path: <devicetree+bounces-234780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 28525C309BF
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 11:54:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6824F4F7A46
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 10:50:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 285CD2D8DA4;
	Tue,  4 Nov 2025 10:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o+qO87oL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FC112D9481
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 10:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762253382; cv=none; b=MCYwDJsxsNZNz8V4dJGyk+fNCAnNnxyZ3U2T/ZnkIcSGgkGl9Eg07q0UK8soKazav7xZ2mIvBsf41YzlVc4AUNhhqf/NWAYbkWxClbVpx7Ufd0U6Xvs6bSIw9UOP3RZxj5hGPOE7ycPuisJwK2MRJuD5NWiFzMAfMS1bqSawC48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762253382; c=relaxed/simple;
	bh=ak9HRSabsPSc2sAYhp/DgmsudFPRzOz/MW27WLeWYw4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gSPKj54bDNZ9Jyh8C/ACSdIqSLxbGUtOc0J45Qwm332k7C3uE6nzUdmc+oLU+BB4at0A/dkFRMvwY+WSpArLKvjPW6d3hP2FjfZBI2AH1+vuSvpjfyYJ0o5ghiD5HDm4Vl8F/RHmasFrpCFRreDhP8Tmd0pT0066clNakNSwX7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o+qO87oL; arc=none smtp.client-ip=74.125.224.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-63fc8c337f2so558788d50.0
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 02:49:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762253379; x=1762858179; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ak9HRSabsPSc2sAYhp/DgmsudFPRzOz/MW27WLeWYw4=;
        b=o+qO87oLjqt1HGXCIT4G0ktzVOXrDixA1IfDAkhH8tKdcYu8J/FZgETOWz7u86zZcf
         eey/jBIFshN5cltJ8pU4Gddp0f3/yLDIvZJNFKWWCh1ryqBiMtud0/QEuKwNAzv/lmaD
         roVZD/SMxZgWvHZHk5sGceJG0dMvtXwWeZu1DZ0+P/WNyP4azho7/BnyNwYxlQIDs3f1
         YYXLe2xWD+g2Mvd33nlfAkZEu8qhpOUw6akene0TqCxEfmAjMq8X1YZevYK5atHeFIR6
         AX98O9A6FOlGDbCbiLCaxFwngFaxQfOHNZhWcbFT0SO9FVlJURbAONLbtj9bMJCdkbg+
         gZqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762253379; x=1762858179;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ak9HRSabsPSc2sAYhp/DgmsudFPRzOz/MW27WLeWYw4=;
        b=jsoR1FDeenM0+l3asE/R0CwAFXk48etUs2Zd2DrzgQm3iKU1IdK+W/sEs/KAjm+Pb2
         b53k82LFpcY79WiXezk1N44BFW4m8Xn6F6iIf8hv10STxKaP2+eda8ZaB+z6+AoOCTxi
         x7ZWZQuvs9zimMYa71zIf4xR00CuoPqQI5bfHWUheILjxydJWZfIQvAnj/vDjrDqY2Nf
         x9/Ab3CCstXz2Wg3NkpCW93rH9Dok7di4NAwdC0GmSnna8rpVidQq1nft7xqHurl3lIc
         bA1D6ZQqnLJVRhqvBzxVaGRHOar0P8Vm68fYe3Eayncu+KJ2BNszlUIs54cJ6F5fj4Io
         qUyQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHFi5Nm5SuQB/cJ3G5Wnbsp5ZzdzROkqCbgW+Pt7LjXMloD1Umr4zOmylVIdGIsR4fUHWu29NlHYAI@vger.kernel.org
X-Gm-Message-State: AOJu0YyFaONIYXPVA3elCGfHGbmzl6NBEf/ErSLGqNc2gFbSKqlKMo4a
	9L+mmrm35dIcAZwwQWdwovkhaN1CDe9THguwDm3y0Mz+BSbAcPFsOtHOqMtcTNlEF8rgbcxWUkh
	qDi7YTmfFtwWHILFuZd7TTdndRDBweSwk2n+cCckKNg==
X-Gm-Gg: ASbGncswexnToNpA1wLrGSRgzKDzoa59Buyo4TgdYHiWOWWqr2L00FdOkNEefJ55EHA
	0X9EKNnxPxbHp80QctWd4EvfQE79EsQruvgduBTn2o+QRBzeMSVg8j28GP6d5Yh45sy8KB0pmFO
	GZTUypvq+J5Yq8PXGCL0qkXicduqzpmlmmMMjmTsKDdE/r8gjQCHlEhDoBcuFaM1PV0rx45ZVqt
	KLLw9yVSexsWsFiaYhmlLKQYTxhwzGZDHJ+lgo8Q+pRyPjrzwNbRQkEQnj2
X-Google-Smtp-Source: AGHT+IFkRk12Uz8wpzuhpMIHhTXXbZyl3DIW8r7FnluskO/7yYtfMjAEvExmUGloPG75YUmDMmv3zjusyYiPuTnpWEU=
X-Received: by 2002:a05:690c:6ac8:b0:786:68da:3f4b with SMTP id
 00721157ae682-78668da4023mr149747947b3.31.1762253379370; Tue, 04 Nov 2025
 02:49:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251028061345.3885632-1-gary.yang@cixtech.com>
 <CACRpkdYdQa4=4JvBWJcRv0X_A0PnkQpZQQ8NTPzF0ntdt9qX=A@mail.gmail.com> <PUZPR06MB5887C2D161EA5CB13A41462EEFFAA@PUZPR06MB5887.apcprd06.prod.outlook.com>
In-Reply-To: <PUZPR06MB5887C2D161EA5CB13A41462EEFFAA@PUZPR06MB5887.apcprd06.prod.outlook.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 4 Nov 2025 11:49:20 +0100
X-Gm-Features: AWmQ_bk_lIuQg0K_Adlxvvq0mVAjsPYqUJ9ljmVmC85MrC3marOjlEWPUkD0cB0
Message-ID: <CACRpkdZtQkbGnQtb3DZf1XOVpbZgnBbqZD3kxEuCCAS4Pm3AGA@mail.gmail.com>
Subject: Re: [PATCH] Pinctrl: core: export pinctrl_provide_dummies() to fix
 build error
To: Gary Yang <gary.yang@cixtech.com>
Cc: "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	cix-kernel-upstream <cix-kernel-upstream@cixtech.com>, 
	"sfr@canb.auug.org.au" <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 29, 2025 at 4:35=E2=80=AFAM Gary Yang <gary.yang@cixtech.com> w=
rote:


> Generally a device may has two states: default state and sleep state. The=
y are included in DTS file.
> So DTS has two nodes, one is for default state, and the other is for slee=
p state. When the device works, select
> default state, but select sleep state when the system enters str.

What is "str"? stand-by-retention? (Sorry for my ignorance.)

> There is two pinctrl controllers on CIX sky1. One is used under S0 state,=
 and the other is used under S0 and S5 state.
> When enter str, the system enter S3 state and S0 domain power off. So the=
 pinctrl controller under S0 state is also off.
> The settings for sleep state are loft and make no sense.
>
> But if we remove these settings, the pinctrl can't find sleep state and c=
an't change state when system enter str.
> When resume pinctrl, pinctrl core may think state is still the same as be=
fore. So the settings can't be applied
> as expected.

Aha!

> To avoid write these unused settings in DTS file, we have to use pinctrl_=
provide_dummies() interface.
> Do you agree our schemes? What's your opinion? Please give us some sugges=
tions. Thanks

I think it's fine to use the pinctrl dummies, I will draft a patch and
send so you can ACK it.

It's fun to get the whole picture of how this works on CIX silicon,
it's a new way of doing
things with two different pin controllers so I haven't seen this before!

Yours,
Linus Walleij

