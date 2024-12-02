Return-Path: <devicetree+bounces-126196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4A69E0867
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 17:25:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF18C167F36
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:07:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F1B8146588;
	Mon,  2 Dec 2024 16:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="O9xEu6H9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E88A1428E0
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 16:07:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733155638; cv=none; b=QxWGCRs1cc3Kl8MeNq4yreVycMAjHJj4qO+y9rG2Avk7MPejvD1wt6U+YRhAKQlx/nV4hmoufwoRr9LryPZ628r/AHAnOcpUENuSmV2dkuTZl+uWGS161V7U2j4F0z55kQC4EZPDBVWhjgir5ltbr8IdgjB17g85CHcUVQROy9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733155638; c=relaxed/simple;
	bh=7jZTOSAwZM687/4IxljIJ+4sBELVFnFczjjMTXnd6MI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VogjS1R6k9jZcpHUJLjhmOfU6HEE8w6e4FpQLeUiwXxhUhb18i8pJ04oiBX7TnknudWhtf/jPAmi7XZf0bVmh2hUJCBpLnJZ19OypiHx+AMiqXMbVGDT+yo6z3fpSi+WltNH+gXhqaft7Gfs3Wl6PdKaiFMxkG4m6D37DZDRX8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=O9xEu6H9; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ffc76368c6so65596191fa.0
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 08:07:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733155633; x=1733760433; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QZViN9u7WEeef4ck6iMwRDaJEybzCZmgvmXDAyqUy/E=;
        b=O9xEu6H9QhzXtmyjHrbdDYA1DMhqE1W2n2gTRvB8QQKIq81gYI/kmnke3IgY0btOy5
         9IDFZ2hdphgFBL0XTt4tjcKKMZD0SSBrAjRYaZuNldq+iP4/Tog/NQ+Gxp3J1lYyt691
         U8MLnKhQnLxHhyoUoqpika+SYTY4sB38/WBrw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733155633; x=1733760433;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QZViN9u7WEeef4ck6iMwRDaJEybzCZmgvmXDAyqUy/E=;
        b=k1hbJDFWXO5wSWsR1qRNqubQkCp68Gxg9knoPzW3oi0O/pEc1vMOE9RdAkP5AwAdrB
         X1RsFBlnTG3fy5IQAULZxkWymKcjG9WCiVix9ibBpxKaQ/vm3akOAb2CPNsbunwT9QAp
         ioGj1PtegXQCM4ZdvKXSBLoauVNMpMBU6W1uvWzvurGzMcvaSJqQkvRiGn78yubudEyh
         fOO1iEthJbPof01W82YEdjneCLHurNI4tqUNs/Fs1CbWUqX4jR77gfEHJgEVby/qshCw
         t0i91Rd05ezL9tCF5ka6iNixllWJCDWJc0XH8/8Hbo6fIjCQ/TI9EQUnnvXUIhdmXQse
         dyPQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2MnYHAAN+M3Flq7GyjQchr1/U7x8mBmVui2V2ouu7nIvNxTAoVO7E7JBZcqGo6JsHNcYWo4TA5xtq@vger.kernel.org
X-Gm-Message-State: AOJu0YzMlmKsewVBIjC8tDg7MjC1o7mbKnonafPjKU6wCzBln1E4XkFO
	J8iNhkMH6WznYMGOpQVAdoLfYwwwmBbFOo9RUICtHfihsh75G978ZKqIyRf57rzKN+9qpnZNt1H
	ZNQ==
X-Gm-Gg: ASbGncsdEt96z4AcDrorOSi0+kP9DaHNSirPblVhq9b18gxpawe3hHmNyfndzoYiI77
	yydiWwZ5L1Ii0ITn7JOwDDLPMNz4bKhH2vw0tU6s+fdvGunkQJQ/uNIU/6jx4ojflN2RV33cOx0
	nHLRgLoXPHKlYz0epYrzJhbr1HX5SOB+k4a+dl50EAp10lKkPc1hiSHMasiRBNlSuXAvyr8WIRn
	Lj9cA6Fr3k4hKt3rDsNJaxP4kLpw/+l2UsQSodkEXAGZPcwiYTUiucSxeX5TT0HaxA9nNNxRj5i
	m0n1kWfRbws2pA==
X-Google-Smtp-Source: AGHT+IES3Ww4hUgrdtuBAwD4sqB/FFB7nGNo4ruVuMDILzgT1YuLxSZzJd0UpQVbXqar0uQ42P6PTg==
X-Received: by 2002:a2e:bc22:0:b0:2ff:d133:b54c with SMTP id 38308e7fff4ca-2ffd5ffeb25mr171499801fa.11.1733155632033;
        Mon, 02 Dec 2024 08:07:12 -0800 (PST)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com. [209.85.167.50])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffdfbb8fc5sm13143051fa.22.2024.12.02.08.07.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 08:07:09 -0800 (PST)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53de92be287so6390088e87.1
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 08:07:09 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVOO/pgESTtkctpl65kVO3pAaVPED1U9ElFwmyG7hf3Mj3oTm2EXUQiAVDrzOXoQ9xpGWLrHRw/YpnV@vger.kernel.org
X-Received: by 2002:a05:6512:2396:b0:53d:ed0a:8113 with SMTP id
 2adb3069b0e04-53df00d01b2mr15721785e87.14.1733155628493; Mon, 02 Dec 2024
 08:07:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241130-hp-omnibook-x14-v2-0-72227bc6bbf4@oldschoolsolutions.biz>
 <20241130-hp-omnibook-x14-v2-3-72227bc6bbf4@oldschoolsolutions.biz>
In-Reply-To: <20241130-hp-omnibook-x14-v2-3-72227bc6bbf4@oldschoolsolutions.biz>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 2 Dec 2024 08:06:57 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VJR3O=8xHtdPapwtDS2ShL3SVTyvzNgOTNjp4U7OGO4A@mail.gmail.com>
Message-ID: <CAD=FV=VJR3O=8xHtdPapwtDS2ShL3SVTyvzNgOTNjp4U7OGO4A@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] drm/panel-edp: Add unknown BOE panel for HP
 Omnibook X14
To: jens.glathe@oldschoolsolutions.biz
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Kalle Valo <kvalo@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Nov 30, 2024 at 11:09=E2=80=AFAM Jens Glathe via B4 Relay
<devnull+jens.glathe.oldschoolsolutions.biz@kernel.org> wrote:
>
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
>
> Seems to be like NV140DRM-N61 but with touch. Haven't disassembled
> the lid to look.
>
> Due to lack of information, use the delay_200_500_e200 timings like
> many other BOE panels do for now.
>
> The raw EDID of the panel is:
>
> 00 ff ff ff ff ff ff 00 09 e5 93 0c 00 00 00 00
> 25 21 01 04 a5 1e 13 78 03 ee 95 a3 54 4c 99 26
> 0f 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
> 01 01 01 01 01 01 a4 57 c0 dc 80 78 78 50 30 20
> f6 0c 2e bc 10 00 00 1a 6d 3a c0 dc 80 78 78 50
> 30 20 f6 0c 2e bc 10 00 00 1a 00 00 00 00 00 00
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 02
> 00 0d 36 ff 0a 3c 96 0f 09 15 96 00 00 00 01 8b
>
> There are no timings in it, sadly.
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---
>  drivers/gpu/drm/panel/panel-edp.c | 1 +
>  1 file changed, 1 insertion(+)

You should drop this patch from your series since I already landed v1:

c1bae6802ee9 drm/panel-edp: Add unknown BOE panel for HP Omnibook X14

