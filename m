Return-Path: <devicetree+bounces-35873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A14E83F172
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 00:02:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D3531F25AF6
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 23:02:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C7BF1F95B;
	Sat, 27 Jan 2024 23:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LL5J5/am"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0AB61F94D
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 23:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706396568; cv=none; b=XFi3x7UY6evJcClBb1TwteUUtAECcQgIaPRGTqdCiGTi52Km4F9IQb2ephvUXpo5zloQa+b6nESB4lECtM+NhZVzK9bzYPfNexcfoW02Fj1BU9JoKY/Q22HaOig9IQ4qhRKUc7jDJPbg3Z1erAxGk79B5Hu3qc3SXHqOv+OH5sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706396568; c=relaxed/simple;
	bh=OI/DYxsJSWBx+d25tKtsRfVL4GAUVdxqmdpn8lShZf4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RmuZgAha+iG68SaRhJO1Vj2qUI305wMjhnvKsy4Py/iyBWDGmil92WbxvdJmlGmaOu/INmCwz2DL05UR6rQoiQD8jtjP+s8mm9bjUFovwjMLM6KPy+ejh5m4eVU7NXTv4a5Bsk5Ev2NhloJykpMgjUd9JRxILDL6J01srJwi9sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LL5J5/am; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-602ab446cd8so16106507b3.1
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 15:02:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706396565; x=1707001365; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OI/DYxsJSWBx+d25tKtsRfVL4GAUVdxqmdpn8lShZf4=;
        b=LL5J5/amWFJyixSoJ4X2157faCEDESiXfEqGXLzuJt4ntBLdTnR8KGnquBI5J+zLHf
         RWghWMasiJqaD7N3H11e8rTymFRe0B154vMispUPO3t9fMyCtf17XZKph10kFok4QVRu
         cVc6qLoMJaYrflGi73rh9yDKdyrqBnIg2c025wURB5TpupoCXv/6ckkfS0SQ2GJOIL1v
         8oe9zCXmLy6Cx66UKAjaPEmvu/AjfXWJhmNySjrU0yizVfxwgyaZJebW7ELoZbc6Yct+
         fuBhxDTqCmYO4U2kMS7gsWJjX6FIUTd8T9uMkSV/i0mBiA8+8LY9V7GUsB3l5My+L9Nt
         R0AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706396565; x=1707001365;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OI/DYxsJSWBx+d25tKtsRfVL4GAUVdxqmdpn8lShZf4=;
        b=t5u7Zak34ZEX3SPmoGPQf8fmet+dy64Lfi1iBmMrGGNJyOFNIN/m8r1ZG5Gc4zAgXx
         Fcm0K9jUTxgrCYOFwbQlhv/T68/DfkkdjPcbCgEosLp/BHnGrPhYP8ymqysAFR2OsmIm
         2lNhHqGuIt/I94v3QCAAO+mXBVoGgG5PuR0bd7DZWVGiv8S+GTttpmLW+OY30/VOsJMQ
         k+lxFNZnaIZyCikfJ/tQkC0vyuhTYH90x5hqUm3UYXF5/TI9BsMYR81we0oWteVRi2vW
         f/3ZG4vIzhzjVw6qgwA5gFfZYNRwIo5ltibKg9KHTbIOI256tYJ3d7aCV/OguWMVjMGh
         gBYg==
X-Gm-Message-State: AOJu0Yzy5fGOYn7VUPuGGN+E1dtcgmBwkNBVr5FyyrnJNNUp2NzI01fJ
	ZL4IVfly23q+XfNJ0IO1gKsyUmoRQujQ0HlHbNAdnaHXiPgcdM7PktdSxEqYCzTRzYc0ezmwnv5
	UUi++RLyamfWDVpbtnx42caGc01Z9Q/T13eTLfQ==
X-Google-Smtp-Source: AGHT+IGyjw9LIiDDoT2S5tGsoR6J36rkT7VTljb52lUEVS87VMLK8vJpNqzNYIdeGvFGjm5XifyDw3lPWoEfckgnn6c=
X-Received: by 2002:a81:a709:0:b0:5ff:6173:e98e with SMTP id
 e9-20020a81a709000000b005ff6173e98emr1920073ywh.63.1706396565671; Sat, 27 Jan
 2024 15:02:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240103132852.298964-1-emil.renner.berthing@canonical.com> <20240103132852.298964-3-emil.renner.berthing@canonical.com>
In-Reply-To: <20240103132852.298964-3-emil.renner.berthing@canonical.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 28 Jan 2024 00:02:34 +0100
Message-ID: <CACRpkdZhzC_4ZFV6cpA5=tHfzyv+NjFBoFC3=jenS2x0-0DZmg@mail.gmail.com>
Subject: Re: [PATCH v2 2/8] pinctrl: Add driver for the T-Head TH1520 SoC
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Drew Fustini <dfustini@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 3, 2024 at 2:29=E2=80=AFPM Emil Renner Berthing
<emil.renner.berthing@canonical.com> wrote:

> Add pinctrl driver for the T-Head TH1520 RISC-V SoC.
>
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

This driver looks mostly fine but I am waiting for the bindings
to be hashed out.

Yours,
Linus Walleij

