Return-Path: <devicetree+bounces-7038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DD07BEC34
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 23:02:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 61231281AC0
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 21:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B1893FB2F;
	Mon,  9 Oct 2023 21:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zUDlbyAE"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6502030B
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 21:02:52 +0000 (UTC)
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52B0F9E
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 14:02:51 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-59e88a28b98so42825117b3.1
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 14:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696885370; x=1697490170; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SJz0h0Tx8tbmQIBwQkViScvt69REAVK+f5XbSP6AYKE=;
        b=zUDlbyAE84bS8JysuwtlFOlOCAIWHq5vzlBdmzHuLZHTu9Su55E3ZOHSlochmwe4ku
         jUA+nBDgJjp5jJot7wg1c5nQdLExC35cCoWHvQS/AE9DqudRhIwlBxbNaDP5yy6GuK3k
         gn6JHPIjOS8no3KV+MCnjIamgwIABXgze4vo00hH2wRYKc+gaKukjamaSsq/QjUqbEyZ
         N98niBdGNGk90sjPdMYWvgAODLTESYfa37pxPF+38K9T83mGNoV0fAaW+jeUhbXOC4zZ
         cNg01NNqtizcd40c26dWJt3yPK7VEl8abjTF9eOtd41mV5IdgAK+YdqSeZKYwdgT38Nm
         Quzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696885370; x=1697490170;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SJz0h0Tx8tbmQIBwQkViScvt69REAVK+f5XbSP6AYKE=;
        b=E3ct3HsDLi/lvwN3q/iQ6DkOaA96/uQjKjdQwNbWTYXNy8qW3QngmuJQy8EVuqWCWh
         eVxB9kjcydmUqa2Quyijpw8gEWxerprijmQMt1DBql+sDELLe7MQs7olm4V0d/i0TRbf
         spfrwchYRNKaYQg4Dl+3AzCZz6JMQIRrt1f9ZujKAFzKml+fmtVWh7BVfIaAlhoyqEPa
         I8LpIY+60ZRmwZ2h2wP1ZJlGWduNb7e0zoDGicLlaXk0gUpYlBPCUwIbm0pE0qyxPR81
         VL9094N4bmeqnDb30ivyy+LatiR/LXsl+BlWdsvnyI+/aCO3dxaB1VT96Kk04pjYKnG+
         /WHA==
X-Gm-Message-State: AOJu0YxqFq1dpYPybWcLEorN6i+WCEAjLFGmB2vgxkqI2SHpdq/dRyvM
	sUTW3/GP+uT1cj+y68d8/JzIjIMq1qTZt6eNqxq2Xw==
X-Google-Smtp-Source: AGHT+IG7zTQ1sPIVq6sSufNIqZ5HokqJWtqPk7b7cMpFUs43lI/+XA7kKBK7iStn8zLZan3BdCgDzKJEQFuFjmdMKw0=
X-Received: by 2002:a81:49d0:0:b0:56c:f0c7:7d72 with SMTP id
 w199-20020a8149d0000000b0056cf0c77d72mr10143379ywa.4.1696885370504; Mon, 09
 Oct 2023 14:02:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231007060639.725350-1-yangcong5@huaqin.corp-partner.google.com>
 <CACRpkdbek0-Vhk4_34qY+0=EGrQxJS_CfLuF_5fRozMMyc+=Kw@mail.gmail.com> <CAD=FV=UFa_AoJQvUT3BTiRs19WCA2xLVeQOU=+nYu_HaE0_c6Q@mail.gmail.com>
In-Reply-To: <CAD=FV=UFa_AoJQvUT3BTiRs19WCA2xLVeQOU=+nYu_HaE0_c6Q@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 9 Oct 2023 23:02:39 +0200
Message-ID: <CACRpkdYrFhTCa9rJ4savOcqRxcnyqoojCnwaCk6cnJv=aWxo4A@mail.gmail.com>
Subject: Re: [v1 0/2] Break out as separate driver from boe-tv101wum-nl6 panel driver
To: Doug Anderson <dianders@google.com>
Cc: Cong Yang <yangcong5@huaqin.corp-partner.google.com>, sam@ravnborg.org, 
	neil.armstrong@linaro.org, daniel@ffwll.ch, hsinyi@google.com, 
	swboyd@chromium.org, airlied@gmail.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 9, 2023 at 10:53=E2=80=AFPM Doug Anderson <dianders@google.com>=
 wrote:

> Also: just as a heads up, Hsin-Yi measured the impact of removing the
> "command table" for init and replacing it with a whole pile of direct
> function calls. She found that it added over 100K to the driver (!!!).
> I believe it went from a 45K driver to a 152K driver. Something to
> keep in mind. ;-)

Sounds like Aarch64 code. I would love a comparison of the same
driver compiled to ARMv7t thumb code. Just for the academic
interest. Because I have heard about people running ARM32
kernels on Aarch64 hardware for this exact reason: so they can
have thumb, which is compact.

OK OK we definitely need command sequence tables in the core,
what we have now is each driver rolling its own which is looking bad.

Yours,
Linus Walleij

