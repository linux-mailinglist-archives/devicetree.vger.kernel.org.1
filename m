Return-Path: <devicetree+bounces-15018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 400847E7D1C
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 15:44:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D4676B20C32
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 14:44:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 856391B277;
	Fri, 10 Nov 2023 14:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="m1pFAfKv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1289F1B291
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 14:44:33 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 621683977B
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 06:44:32 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4078fe6a063so161715e9.1
        for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 06:44:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1699627471; x=1700232271; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=10OEd7QT7TQMRLL1rtLuH43/neHocTKp/HU4MqBMxu0=;
        b=m1pFAfKvfjJu6lx3hjaJ6koQMLVfKcpBcczvRIf39Hlv8qMwpfqxEiyYuxnHYUVxBh
         PNxKCRQPBBzpPoOeJ/er5/jifaJ7l1kv8trDGdT/EQxeHM5Tg9eqv4sNweZfPDQHV/+g
         Dk7Bxm6EsfYVntHzjVD/LuiK96bciPSKwoji+pt+sq3VaI3Nu2dae2ccbC3OAuq/xTIg
         BzcZ0M3vatJ9UiXZ+Cem/Biaz6gmMV/PGBYScom2ZImCpwPcqWcpfNJl/T3oCqIEIzqA
         R2UrUkCT4bFinNMMAu0sdDkd9pg0W9Xdn3Zrle7DA1eV8B3w/JAGl/u6rr2SqC3fNOZm
         DspQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699627471; x=1700232271;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=10OEd7QT7TQMRLL1rtLuH43/neHocTKp/HU4MqBMxu0=;
        b=XAY46CIKxEUqGkaDBqH163G3XEupEs4cwmYGGvYJSJXEjKNo81Dep9evoyYlQN8gOS
         mSs4y32N9L/c8sHFSU+CNq3sx7cYKm6fcFyIWsj5W8UqkVvMSzDBDrIVNUrKUEqCtSss
         7NHgGkgyac333g5T2RP5szhkll2piSQjiUOn5uTGbJJvQ6pg6AxizTI/mWzzagwfj6x5
         p8mXYljvp3qGh3hCV9wdcsLLjhJOw1p/EN8Nn2Ss3LA4UwTkc+oTzgGKugxC502jVHHn
         yIMT4AxWkVGikHbNPlGZgxGqbXdq3PPYDYq6Aen4hV+WVThwN2xt0aP9L8tHwCG7K0c6
         3FJQ==
X-Gm-Message-State: AOJu0Yw1ZEOljHiyAxRo0uj7desYzTSIha9EyaRpTjJrv9chlno8pHuh
	/Ct0Zq5rfJsmjtT256kbg1txYc7euh4XW2KpudbvbQ==
X-Google-Smtp-Source: AGHT+IE5FXYGSgPFXoXtBFZ/aR7LWB3EeBWSPwp3SiMKQVhxi/p83QC6vx+njb0turh9PF6w2RlHWJfsime4QvXZBNg=
X-Received: by 2002:a05:600c:6013:b0:400:c6de:6a20 with SMTP id
 az19-20020a05600c601300b00400c6de6a20mr356475wmb.3.1699627470599; Fri, 10 Nov
 2023 06:44:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231109092634.1694066-1-xuxinxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20231109092634.1694066-1-xuxinxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Fri, 10 Nov 2023 06:44:14 -0800
Message-ID: <CAD=FV=VxQJFWFaGHD+zpr4dxB85jMQpJiTDAmFZk67CTYNcg=w@mail.gmail.com>
Subject: Re: [PATCH] drm/panel: auo,b101uan08.3: Fine tune the panel power sequence
To: Xuxin Xiong <xuxinxiong@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Nov 9, 2023 at 1:26=E2=80=AFAM Xuxin Xiong
<xuxinxiong@huaqin.corp-partner.google.com> wrote:
>
> For "auo,b101uan08.3" this panel, it is stipulated in the panel spec that
> MIPI needs to keep the LP11 state before the lcm_reset pin is pulled high=
.
>
> BUG=3Db:309908277
> TEST=3Demerge-kukui chromeos-kernel-5_10

BUG=3D and TEST=3D are not something that should be included in a patch to
the upstream mailing list.


> Signed-off-by: Xuxin Xiong <xuxinxiong@huaqin.corp-partner.google.com>

Can you add a "Fixes:" tag, too?


> ---
>  drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c | 1 +
>  1 file changed, 1 insertion(+)

Once BUG=3D and TEST=3D are removed and a fixes tag is added, this is fine
with me. Please send a v2. Feel free to add:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

