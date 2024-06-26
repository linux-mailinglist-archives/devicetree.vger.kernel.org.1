Return-Path: <devicetree+bounces-80192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C22791801D
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 13:48:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07CA12882E1
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 11:48:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F0B817FAB2;
	Wed, 26 Jun 2024 11:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="tXTkfa+G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5BB916A94A
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 11:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719402478; cv=none; b=qlr7d0tdjtBNYjrrDOfUOLRCRhM7hV26IWH02wsGrjQ3I5TRZzW/6uV2bGgTqG+7CHXuKAGPdX7hpwL2OwAXqXm/O6nHzz9i97leXFfnJDYx2nkBsCQwaZUkHjqVuKpbEMQDSPzl1SnbDvw+rfNeIbyULWxe7MYk6Zns98ZSW14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719402478; c=relaxed/simple;
	bh=p87lmOqwo03u1im941WCgzmn7HD168xnuTaHd8fAP3o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DAGYOwAfq4lObuqobOAFhB54nvFFS5LM+2P/g43+a1jLn6p+hDdbEtoIK4yqi8Fy/CjBmTpKAV/J+wZwMtYcJkDQrhw40RirTBPy/A+Z8QDRNlKx29tcPkMNtrto6o827gK6osBO+1qelIcsj5bXW4bmOmdOQlQJljDCZDCbku0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=tXTkfa+G; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2ec595d0acbso45293571fa.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 04:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1719402475; x=1720007275; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7553H3j3i6iNa/ZOWQ82kVijQH4mppNZvmZu+TATobA=;
        b=tXTkfa+GsLf5uwPRGS40xf26P8jNq4TsHw17VPV1e9877jDAKLh9ekbi96DYguxrEi
         3pv06uo+yImDT/7tPnRUIr2TxVoZ3F/m32g0epRULlbNhB3ZYPDcx1qIfNrRh3C8RcX1
         wDRc9d0cMr/ceOengn8iJin7dgUqBtUqsI+jskfDssibxou3ymlVrNNjwc/5GNb+lP6V
         GahIwPVtcIVnBYtrdFqEFja+eICE2lPPAjCTcDOxLxvKuJEv/S0yfoDL4I1P0ymZ+47b
         VCHPp7X/olh7LJyg9L05mCvw86Q2L1vAG2VVDNJSNRAFcR0YH36lW4FTcPbgKpPjMyKt
         7vVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719402475; x=1720007275;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7553H3j3i6iNa/ZOWQ82kVijQH4mppNZvmZu+TATobA=;
        b=VKhXo8Sp6REV0yU2WRSBsbAQKnlyMj4oeTjVU89s2SBQ2ars58pmi4JRg7AO4Oi3Ok
         vl1cT7Y0qZzrBYqv+QsxGS2srs03VXTYu2MKo/wjilaDBhr3DoEL80MiB71SEWiA37CE
         LEfXPnEkxeRaackyWzWLaO/Gi4O9UOL3mv3XdG5HdrHOtcsg7DC41yW3fMCw/YfYYixo
         92xmgylKrppqrp09GMDD6bevWAo52plkmRMHoEBsxhjXQ7OzAb6Vad47WYeNMA4ntF6k
         826jclDu7+iNw3N8knBXtOBjNXTsGgWCSbWO+Q6MOCtMalllDU1dBrZo4Y1eKMKEERZa
         dd6w==
X-Forwarded-Encrypted: i=1; AJvYcCXSpeS54W3KowK4No7wFHQyuXIPXNqPEx6KfwdY9Og4HQVgV4YRGnhoLi2j/izChjd1BdOdpWISwbnjAVi7jX1GG34OpUeh2BCSww==
X-Gm-Message-State: AOJu0Yy6UOD5dppxLHaKTXm+e4k8KuAv9+D4kaWVq3Yx6bvpKdaujFjJ
	y7wOgcujwnJMMXwstFD6u+t+X88pFJxiyWDv8AYiYLY5TL8sGzlHRSWlwIfZ7Wl1iwk/gOqYTgg
	9vYk7OdDNqCjXrK2QssXQ/3HR4bu3deu5NwBlww==
X-Google-Smtp-Source: AGHT+IEOW5taPG+ot0MsdHjzA3BA7yJBQcv+B7N4jaZunemGUMn9f/XFU7RdGtrPKaMP09aoDMi92GWx2Q/d4hEw2vQ=
X-Received: by 2002:a2e:9213:0:b0:2ec:4de9:7334 with SMTP id
 38308e7fff4ca-2ec5b2fd2bdmr74478051fa.11.1719402474843; Wed, 26 Jun 2024
 04:47:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240509104813.216655-1-krzysztof.kozlowski@linaro.org> <171940115812.32431.4234002524799635130.b4-ty@linaro.org>
In-Reply-To: <171940115812.32431.4234002524799635130.b4-ty@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 26 Jun 2024 13:47:44 +0200
Message-ID: <CAMRc=Mc8ET2GneRT_PoGvffe+c5u13zAYsRr3u5P+aRzQv4CAQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: ti: align panel timings node name with dtschema
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>, 
	Tony Lindgren <tony@atomide.com>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-omap@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 26, 2024 at 1:26=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
>
> On Thu, 09 May 2024 12:48:13 +0200, Krzysztof Kozlowski wrote:
> > DT schema expects panel timings node to follow certain pattern,
> > dtbs_check warnings:
> >
> >   am335x-pdu001.dtb: display-timings: '240x320p16' does not match any o=
f the regexes: '^timing', 'pinctrl-[0-9]+'
> >
> > Linux drivers do not care about node name, so this should not have
> > effect on Linux.
> >
> > [...]
>
> 1.5 months on the lists, but maybe I combined too many separate TI mainta=
iners,
> so no one feels responsible... then I guess I will take it.
>

Yeah next time you should probably at least split omap and davinci
bits into separate patches. Otherwise I think Tony thought I'd pick it
up and vice versa.

Bart

