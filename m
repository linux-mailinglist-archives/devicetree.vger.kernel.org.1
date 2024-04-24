Return-Path: <devicetree+bounces-62090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0078AFE5E
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 04:28:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B2BD01F2367C
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 02:28:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB7E4134A5;
	Wed, 24 Apr 2024 02:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="2r/9rwsd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7149718C36
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 02:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713925702; cv=none; b=tosje9v1X5PNixCoewD4qvQIzdhnQFoDu9ODZk07MYpjVmgdFwtFcqIhIl53Et0wdlG8ZrewpSP3LxC6Dc8vqjMzFQZ4j4Bnc4hVI/hAQTrXAuaw0iUPafdMGl4gj8IBPeD9r4APbYF1G3LCBWgxUo1j5U5J8zjC2Aq1eVhMrVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713925702; c=relaxed/simple;
	bh=9z9OJbYgfrcfwWRX0GO88WwWFXb6L+Xo9Mu/0lbViUY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CQzuOThfcGLZ5seWI025DyrY6LjM4z9IJJ8F8pEqj6ZEsvum7EEdbIGpDAFyH/Q8r0ar/MUEKBpPIDrUVlvIGjP4/Z0yBM5kYP5pnfJAwqcvmjl/X/lOdSYZ/LTQG7SAm1cJ4nH0EA5jpCrY1a57xyZmrKsbyKkLkB/YlhQkAJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=2r/9rwsd; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-6001399f22bso2111902a12.0
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 19:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1713925701; x=1714530501; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ze4k+50kKLUhtdOJ+MVcWkC0g+gDNT54b6uo5ytHs5E=;
        b=2r/9rwsdvb2hIXKLDWedx3j5xEpaY0tvYB0F5Hj6d8VdU7Tvsl50m3ZdDsuyDSJcUk
         1yAUyzq13p2ofxdJIx57AOV/aP8tsu+IwoUFIgKmFOz4YoyRWeVS7YaOw40lK71c7KCT
         b8VmxN87oz7ohSGAEYJmU1lAA6kBbbQsRHZGChHRIa4HxgT47ZMYDejcO89kd9BcyHGh
         /hpSRfnprxn0uU+jXV+NYoGMqHy9jvY81AFjIpHRGErDaNuHIoJE2hYYIixbhIFpneBm
         EDhCiZ49udFDD7NItvh5GkJuweNr7jFfw0n6g403s+dls7igWaGj5OoqlYIAcqx8Bnxz
         5z5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713925701; x=1714530501;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ze4k+50kKLUhtdOJ+MVcWkC0g+gDNT54b6uo5ytHs5E=;
        b=oyseH7SSKrzrxXg2Ks9+4tXf+udKhRxgpZJjQ9WlkamQhu0LJHy4HcnJM6bNa//Chi
         7QhZpA4HlEdriUXqOU5+mCkuojpPERvk8rKYYPUDTd278eh0IVEYUIA0gHOr+LdkxpPp
         xorTKy8AHD8eTe3GdwLWHxWsoRbyGyD3djB9NBQKjb1zxnwD/Y+oAoxW8r5PLqnHqfik
         UQF/alkaJZbQS0Fv5csducn6+EtH2ouqTFjhp3gwyvZ6I8lxAy3XA4m0cqxq2waiVadt
         rrj69yaNRdAbtCpFxRAONNjOHZsFf8zJfCzvkpC/A2uUKS6ueq/FrhRd0XQ4g+Roz/r/
         n1uw==
X-Forwarded-Encrypted: i=1; AJvYcCUrYWqRiNLuEsT2/8OMH/t/wjF5Y86QkHVhrb1N2BUf8unwqCErHiqfkpORG8i8SpcPhSCe+eOz07wM2/ttv3LE7UTfxLlfX8WaKA==
X-Gm-Message-State: AOJu0YyR+DXN45wmJfMNYjLaMsKRpELq8YUxnU3sA2KuskqT1cERUOmu
	46GeW1ezsLobN6Mt+wXzWMO/bdqMeF32N6g02ZICt33G96h7Vuqzx7dK3oVLQ8LgoFnoMHPqG7M
	b6G5JFER8nkV8jcWcj/LHX1ygdp/dy3mJxh1IpA==
X-Google-Smtp-Source: AGHT+IFBTLfPuGp9/IC945aJ33zSnp5IS3lA1sZQ97BsGnQxgo+apMlCKbEsg2kkINqPxswPBgsDmG5f6quE3YJGhno=
X-Received: by 2002:a17:90b:3448:b0:2a4:ca45:ded1 with SMTP id
 lj8-20020a17090b344800b002a4ca45ded1mr979782pjb.28.1713925700834; Tue, 23 Apr
 2024 19:28:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240422090310.3311429-1-yangcong5@huaqin.corp-partner.google.com>
 <20240422090310.3311429-5-yangcong5@huaqin.corp-partner.google.com> <20240422151607.GA1277508-robh@kernel.org>
In-Reply-To: <20240422151607.GA1277508-robh@kernel.org>
From: cong yang <yangcong5@huaqin.corp-partner.google.com>
Date: Wed, 24 Apr 2024 10:28:09 +0800
Message-ID: <CAHwB_N+M3Le2L=mECVMX1Ha2g+G=jog6zdfZCzJ-HSdkngHGvA@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] dt-bindings: display: panel: Add compatible for
 BOE nv110wum-l60
To: Rob Herring <robh@kernel.org>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	dianders@chromium.org, linus.walleij@linaro.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, airlied@gmail.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, xuxinxiong@huaqin.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
  Thanks for review.

Rob Herring <robh@kernel.org> =E4=BA=8E2024=E5=B9=B44=E6=9C=8822=E6=97=A5=
=E5=91=A8=E4=B8=80 23:16=E5=86=99=E9=81=93=EF=BC=9A
>
> On Mon, Apr 22, 2024 at 05:03:07PM +0800, Cong Yang wrote:
> > The BOE nv110wum-l60 is a 11.0" WUXGA TFT LCD panel, which fits in nice=
ly
> > with the existing himax-hx83102 driver.
>
> From a h/w perspective, the reason to share the binding is the same
> underlying controller, himax hx83102, is used, not that it is the same
> driver.

Got it, will update commit message in V3. Thanks.

>
> Rob

