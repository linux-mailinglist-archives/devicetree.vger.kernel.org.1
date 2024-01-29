Return-Path: <devicetree+bounces-36335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A5371840975
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 16:15:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C976F1C21804
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 15:15:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C7D0153BD0;
	Mon, 29 Jan 2024 15:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="izpldgeB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6D6015351D
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 15:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706541320; cv=none; b=CKlOR/PYu62pis+XgmbHPA78N2Jhkn5JoeaYFtmaeT2BGokutpZu2PVqo1befXpdXGcBLyqFqzq1S+3aJmy68YqyFEdeaCDVwCr57mxTQyZHTz+S9bQydm5ESpBzMB2DTU0xLCt393TqgjsRGSs85AId9irAYwnVrfrbUk8mo74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706541320; c=relaxed/simple;
	bh=LAOkgM7jx1y/f+9AaVcx8l/Biq3RfK+MpOVFGABEq9g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=s2U52kUzqvSeiSViEsEiMP/6j5JwkMuepqN38cTr8cI3kaLluWyCWKasmZfASeSGkyi6fotL4peOfBimvbxp/kwcu86N729x0lE+f1X0nWYUqzmNcBjXcFHXCJuQKcb1HY3HamPItiHXmJEY5J0nsW1DnYuwBiYcBqxQsCXwHr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=izpldgeB; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dc223d20a29so2606853276.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 07:15:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706541317; x=1707146117; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=19g3oA8IiRUGTXPpvDGJllhbr2rfvg3/xxxfKuMshKI=;
        b=izpldgeBa1V17LrXxazhRySc/joJA6JPehIUWW/JTUf/o7fca7843GmqBa/LavO0cn
         X0R5h6pQo4C5pBUhLHDwp7kaX+Y5Q74CqdJcMJeWugT7zzT7sHs1cWxln6lxYYnnWqgx
         dE54XGeEVN8P3+54ypI7LcSum9vD9ZF5w/re/8J4eD9E2lRoJXS4En1/f2IrxvOKds/s
         uJDgZ7xO6xVq6UjCKG4geMGBLM+/weUjCgNpnbOBjjeTxkgD8fM4GHK9jdeEXZqj0xyi
         1d/L6XuXbdjOKqBjYIFVh7fK6OFwwYFkxaqTCe2TrEwPQzfQ+pccWXX6472+6mvtg2QL
         BRsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706541317; x=1707146117;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=19g3oA8IiRUGTXPpvDGJllhbr2rfvg3/xxxfKuMshKI=;
        b=sJHhnb9N0i2ucuTj0h7DqshL5VsDZr+5puWQN/6HLZTMXf0VZuDeCLvSBB2T/0kyww
         6N3zwVHTrNKG5w5dXJ1s+xgzSwaiKCTtiaI30DaKsvFTdGRfBItPN6QQHvAn2SqyH6J9
         lNJPRqs6v9/wFYNA/6Gx9cxlhNtKYrQL8EWwE/lVvI7WCTfHnd75C2DmSqDZqFQqY/Sg
         J8malrz2uZSBYSWd5lvrJsUjXsWdUJXOkRJCf61bkP8kxOqd2rwDA0MqoUhuHvw/lICw
         0HoreIUafak59zVaIMsp8EAMiItVzWZ6UcERr3sCj8y5SOwONNa+a6qutLL9Rvk5op/Q
         7kIg==
X-Gm-Message-State: AOJu0YyPQX21DaQhp0f3DQme458T7KWEoVcdJLZIY/zpFP+FaWDAmYLC
	otTeGC/HHXW2m8kI32vO1cwzSkVzMZS5yRdw12csLCy2TiGVi2R6U6VWPZGx8Pa8NlrRQAfwMIe
	dFFa854033U8bEZsh9qzB2IZpFisCaHr7TDUr4Q==
X-Google-Smtp-Source: AGHT+IFydtOcrIJRlNoXpg56zZ7tHX71n5y4JJpZgFrLYNKvhBr3oibPkEQ4p09wGzgkORErJGWYlBptWzGE6KVbIJ8=
X-Received: by 2002:a25:ec0a:0:b0:dc2:52f4:2356 with SMTP id
 j10-20020a25ec0a000000b00dc252f42356mr3387101ybh.119.1706541317649; Mon, 29
 Jan 2024 07:15:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240129-x1e80100-display-v1-0-0d9eb8254df0@linaro.org> <20240129-x1e80100-display-v1-5-0d9eb8254df0@linaro.org>
In-Reply-To: <20240129-x1e80100-display-v1-5-0d9eb8254df0@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 29 Jan 2024 17:15:06 +0200
Message-ID: <CAA8EJpp_S4Ug8WoiQ5f3hEESTy9_u1wOo-ETMD2Tky1_OQH0kg@mail.gmail.com>
Subject: Re: [PATCH 5/5] drm/msm/dpu: Add X1E80100 support
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 29 Jan 2024 at 15:19, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Add definitions for the display hardware used on the Qualcomm X1E80100
> platform.
>
> Co-developed-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../drm/msm/disp/dpu1/catalog/dpu_9_2_x1e80100.h   | 449 +++++++++++++++++++++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   2 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
>  4 files changed, 453 insertions(+)
>


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

