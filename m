Return-Path: <devicetree+bounces-69801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B10298D1957
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 13:23:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3FD17B21189
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 11:23:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25F6816C453;
	Tue, 28 May 2024 11:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o9RU9NBe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6A90154BF8
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 11:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716895406; cv=none; b=tRY+QFDtfzv2HeoaOzRWSOfk5yltT9lsvfIsUimlR2YLDe51lh9HgWc58siOojhSJYRdTbytq82XlVDqQx09VNysVAIlvtogGWs6PR8vmMncIa0hGsh8RGLQ8FaPu9uj6fLcYPgLejO3Qb7LGhZTyODFGkvm/BjyhPBLaWKfZiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716895406; c=relaxed/simple;
	bh=o0jVo10rUkf0hnMGC1osUVoTzkkTpvLNKjNHzwYPz2o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SLw5/qw/OjgxK41UAUM6UsUPzLyWL6pPMIHNX7Usw6l02PU9opDkpbK/pyEzZLion1U/YVC+hnHE3Mq182nYD8yxLqcKN2y4GbFUrEajW9gaiVnE46VxHz/hEl0cKX4a4CjjCpF/66miauEqKqqb5n+kc7Itja4iiCdY2hVS/oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o9RU9NBe; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-df4e346e36fso754516276.1
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 04:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716895403; x=1717500203; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o0jVo10rUkf0hnMGC1osUVoTzkkTpvLNKjNHzwYPz2o=;
        b=o9RU9NBecXj4luhS+tWREpwQDvx4K778DXDAol/amldfzwtZJszZwl2BNh7WWbmdgC
         R8HeWW7KmX7s5cvOTI36i/WXEQ2bfEMYip1DVtttSX4eE5k0pZJ7iVd3FWq0sOOGu+ZO
         gBdK6XbVHEhov3hkNVPhu8wTpPbg5er0y983G+NLOUBDiU8duGUGDy5SEzR8mCzc+qGm
         seTWxe+ump38dLBt3xj9tiCRYPKsEt94qKqif/7ntcqJNtLe/H79Rei6sTYT5iF+GWY6
         yedvoXEJa1R2gV0NcV7aUQd7QXlf4Au0Cbwxy/NBzxvddyh43KnfzpR9PeCKnHjxVRz8
         nLlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716895403; x=1717500203;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o0jVo10rUkf0hnMGC1osUVoTzkkTpvLNKjNHzwYPz2o=;
        b=coLODuGzK4IyeE5PpsDqYc8XYcCxxQJMRqzaFJiuEXzkh7nkMgsM9moDPO+4slju3R
         /VjLL8RYDOi9jxVTaJxyi4To+3jQNidmmuoGdrHlEaGpI7QfCWtxft9Bkx03JSRldPCQ
         x0TGbdZy8jBsuP4bG5D4gBL+KWX08jXTP1vg7vxGuOKWB43gjh+MPZGAIiReu/DOyjpq
         m/uwTK1pfjgaLk4W5GHGD0JrYfQ33YofUQBnnUSeaay9qTdnWdU9HC0DoI/5JB2Q6BCP
         PVHCgCyEMOP7cy2elorPWGwUPbmmdz98iboOu6jNnXBVao9pAYz5U0JWjCF7KnOxgGwO
         MqSw==
X-Forwarded-Encrypted: i=1; AJvYcCVn49PqbVTuWiz2lYJTX4BlexN5OBOB/YHDKSSb3KpUpmKdKwR75oyZ/4TjgtYZaDrzbunyLZx4AVRwrHiGLida6nX8Bna+qj5AKg==
X-Gm-Message-State: AOJu0Ywuf+LJNdOf6LCzpomKu+jiLSBWlsR7F1TY6p7JPUdLEvPs11+j
	Vj0Br104wWi73nMb6N1R0jAcWWg2c8XG8RZdoXzb3IMG2+b9mo456v2NOyNh5XGFjoNIMnkMFek
	zsATuiVxROwLNoMiCjYOBZGZ7r9JFdrsVTWFwSw==
X-Google-Smtp-Source: AGHT+IFM89jAkbAeUASNdtBBxhAcMHFPFYE/DuNZA8xET9DT6Q3ZDVSx4aTUQ9VgOHYs59aDbb7k8SWmtYtPVwlakAo=
X-Received: by 2002:a05:6902:1342:b0:de8:9a4b:47e4 with SMTP id
 3f1490d57ef6-df7721c75famr10787522276.35.1716895403027; Tue, 28 May 2024
 04:23:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240515014643.2715010-1-yangcong5@huaqin.corp-partner.google.com>
 <20240515014643.2715010-5-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20240515014643.2715010-5-yangcong5@huaqin.corp-partner.google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 May 2024 13:23:12 +0200
Message-ID: <CACRpkdZEXB4t6V67FwexOPYtpovXkJ+WsG57VG_p04Kv1LSatw@mail.gmail.com>
Subject: Re: [v7 4/7] dt-bindings: display: panel: Add compatible for BOE nv110wum-l60
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

> The BOE nv110wum-l60 is a 11.0" WUXGA TFT LCD panel with himax-hx83102
> controller. Hence, we add a new compatible with panel specific config.
>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

