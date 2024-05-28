Return-Path: <devicetree+bounces-69802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C908D1959
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 13:23:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E11241C21C13
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 11:23:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7167716C453;
	Tue, 28 May 2024 11:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S318fFqx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC70154BF8
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 11:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716895436; cv=none; b=IiCGa7OBMoxmpNX5Tm836Sv7zN83cdA49me2UvEpp/JH7IpD2RuW66OtoDICCdmyoiJXHY3eNzDN2ukDsUcgx3A27GaijDJCFiFeH2wTR2hEv7KS3FuR/F64byqq0glpirdEjucScC4UfFjDQFw7G6pmYjuRLY0CATyXde0y9z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716895436; c=relaxed/simple;
	bh=Tkkk6bms4T2MwW4ForLDxoxSswp5URWOO7BFzeJQoaw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HK8WwE+diOCXamHut+jziHW59JSXzGM7g9aIk97+UARV+oGIYW8vc3XJnqWlnVPwQu8+E0niI2+PGGoalf2FbecCV03lTI0J0ZhlGEWnoARBEesA+BgWlgYuOPwX1xAnB48+0HVGYMvFt2G67kmdFSSKYpXX2kRVFif4s6rhIUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S318fFqx; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-62a0827316eso6823877b3.1
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 04:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716895434; x=1717500234; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tkkk6bms4T2MwW4ForLDxoxSswp5URWOO7BFzeJQoaw=;
        b=S318fFqxj3I2zj0ioHT6bUNHPljWdxyHh5HaDSef6G9+kY1bShDhzyy4gL06wWwmIM
         +/a7qJ10tuFXbHbUukU4GlDb89fau6GvjBLa0SjXPx7goYIkT9jDCRx3HcJXcMec7LnZ
         yWR1RnhCcr1p2Au5BKZ2lbvNHqu9B+q9pWAyksQvAnEzOKdzZwXD2rxHM9ehaC4v3Xlw
         Tp9c0lPzVYxLPQzpCLJXzqyIU8DWrxLqoRUajJMIGS7D3uHhXJQDomsNmOZznecs6X3i
         d2Rd8bQNlf6jeMDTJ3hW7Nr6Y3I7bP1wvcmtuGdNQ/O+xwUqyUUsUkDcy7S5e2XqIt2k
         sJJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716895434; x=1717500234;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tkkk6bms4T2MwW4ForLDxoxSswp5URWOO7BFzeJQoaw=;
        b=dcOD0ISg+BYFH63zv68wZltTcYRgt7GcXocs8/RGrq/99jrMg1eIqcp2U84+jh8Rn9
         gwtgqb56agzTY5FHSl4XH2/TdUwDWQ7CSGH3d4B9Gd2bR7GWM2FLHXrlsXYzk0Npwu2n
         7mNhZKgf9cWWOtBLW5ckbJX7cA95SyIxbm6Z7eNeMnJYWqojyvUwjdCdhzoz6XvXckAZ
         EVtzrehwOP/D4b/NunblsrWZEpwIE7NuzEWaEWhlGdSD+tHsxA1gq1HWBhG33CMzBqh7
         W+TjkZF/OCYgYp0Ib4QiJCsQRUcvLlzCkT3gCWcI379gfffOJLfMpzPqqRtG+mM+BKkr
         kzoQ==
X-Forwarded-Encrypted: i=1; AJvYcCWzXHiwqEBzMUlJdaiWjeHsteMcy4d0Rx+dPsvF9sUKg8b8/55SAgzTAGum7YnwEozRX8fypVhxgrYIKk+93bEV76QmcnDjKGG2QQ==
X-Gm-Message-State: AOJu0YwTNdKxOSFL+RmQgDPaoN+Dy8uYSywgv7HAhh331bPOnI4Q+m9b
	pb9qg/yYg5AFvUfYSWKSvoGFcJOWtq+uKoXtVUBNXyxycP4XhGLKbgth6NUeHTBlJY64+fBINtl
	zL3rrwv/+QRUL8Nnzd5YYuIhnxTLe6JNlRG15LA==
X-Google-Smtp-Source: AGHT+IEQoF8wL8Xqvylpsi0+6rsl4Gki2TH+Hij9qPQIiP5sR3UjVGJmWc3MmbKhLdXvBfgAKWQPmLdqQrxpSxBuYNw=
X-Received: by 2002:a25:868a:0:b0:df7:6c37:5bb3 with SMTP id
 3f1490d57ef6-df7721a6eeemr11706166276.15.1716895433961; Tue, 28 May 2024
 04:23:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240515014643.2715010-1-yangcong5@huaqin.corp-partner.google.com>
 <20240515014643.2715010-7-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20240515014643.2715010-7-yangcong5@huaqin.corp-partner.google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 May 2024 13:23:42 +0200
Message-ID: <CACRpkdbeMXrjZutEH8keWeW-CfWH-J-O_rSpBwEOVxzWHuyg_g@mail.gmail.com>
Subject: Re: [v7 6/7] dt-bindings: display: panel: Add compatible for IVO t109nw41
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	dianders@chromium.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
	conor+dt@kernel.org, airlied@gmail.com, dmitry.baryshkov@linaro.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, xuxinxiong@huaqin.corp-partner.google.com, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 15, 2024 at 3:47=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:

> The IVO t109nw41 is a 11.0" WUXGA TFT LCD panel with himax-hx83102
> controller. Hence, we add a new compatible with panel specific config.
>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

