Return-Path: <devicetree+bounces-12192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A267D84AA
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 16:27:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CCD34282045
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 14:27:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF4872EAF0;
	Thu, 26 Oct 2023 14:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pJPL21YR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A4F82E3EE
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:27:43 +0000 (UTC)
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 322BA128
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:27:41 -0700 (PDT)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-5a7e5dc8573so7374477b3.0
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698330460; x=1698935260; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aq6iigylZMpfs04X5SeXZ4mtetKbM9BrbaFDGbQvE9o=;
        b=pJPL21YR8BU93jB5pWuogc/1qcxuzz4q5t5/rlQP3aw4Q27dhGRty3Fa64po7Cv3FM
         dglwvDQIA6sIaAaVJY8/d5d9yhNYYupmqnVWB/mVwY+etQ9n1yv9mhsKra0Lrad/0kWL
         5tLTaPQJNf1WymgYeKQ/nSmBUm44XbjMjQqRmZBMogVWhySoEk+ux9E0j0Jkz3Sz7w6Z
         0QsosL4RqeB24vfaESRl43AadN5IhRwFMv3L4HG7I2i7Ti3NQzb1+qqmBfJqG43OTA4K
         auhyj9DaH3O7R2Yk/CFC2ayh8MYbSWhii1tHn+YYHNANSOtgn8JCr2XQvN4Z+tlYpgx2
         iW2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698330460; x=1698935260;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aq6iigylZMpfs04X5SeXZ4mtetKbM9BrbaFDGbQvE9o=;
        b=P8FHOYkiQHTOn2atVMZK7+/P9ZTX35nPAnq6g5BYyJQZFwsJ1SupQIFR5gvHaEqiwg
         8fXcC9W6xiTtUhnEDl6zpSGmBLLegZ/p+YMGu1G72qYF1CNuO7nKta2YefK/3PNH5S3W
         5ujLPepc6ZnFIaWabSlnia0tm+vq78nhdXeWqb2RyWTE1f/tzzTqvGr213tM0+IZ5XLn
         2K4rCl9PzWWAfaRAgL9DAV7E7fKKEp+uPvG6wPt8CU0leUElGytgCnMogklpbG7mL9bX
         syXTcI8aD/biboHZ1GbjOt+HjsLyy3kuQVU67hc81Gph1eWmkSQUmiWKOHZQrf1jxH1y
         0AWQ==
X-Gm-Message-State: AOJu0YzyTvU7YeFotshOW+QKC83uIIohZdvUdWwf8/4OGN5RbLJubHJj
	5WsHYQYBoAJZ1vPTxXTvfRB/reAe9cWJd67nyyxNbw==
X-Google-Smtp-Source: AGHT+IF9Q38E9GYE6ICcOASuOK8JhrLJhUIH0SyBbZqI7bVwo2KRd8JC/19kmyoIdCwSgBT5tP2m9yPHgvRFJFObtLc=
X-Received: by 2002:a05:690c:dc4:b0:5a7:aa54:42b1 with SMTP id
 db4-20020a05690c0dc400b005a7aa5442b1mr23450115ywb.28.1698330460413; Thu, 26
 Oct 2023 07:27:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025135943.13854-1-quic_sibis@quicinc.com>
In-Reply-To: <20231025135943.13854-1-quic_sibis@quicinc.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 26 Oct 2023 16:27:04 +0200
Message-ID: <CAPDyKFow00ZDE7RkaU_gj3iLYKjubhCZX01GNyROXYE+3YjUAA@mail.gmail.com>
Subject: Re: [PATCH 0/3] pmdomain: qcom: Add power domain support for SC8380XP
To: Sibi Sankar <quic_sibis@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, agross@kernel.org, conor+dt@kernel.org, 
	quic_rjendra@quicinc.com, abel.vesa@linaro.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, quic_tsoni@quicinc.com, neil.armstrong@linaro.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 25 Oct 2023 at 16:00, Sibi Sankar <quic_sibis@quicinc.com> wrote:
>
> This series adds power domain support for the Qualcomm SC8380XP platform, aka Snapdragon X Elite.
>
> Dependencies: None
> Release Link: https://www.qualcomm.com/news/releases/2023/10/qualcomm-unleashes-snapdragon-x-elite--the-ai-super-charged-plat
>
> Abel Vesa (2):
>   dt-bindings: power: rpmpd: Add SC8380XP support
>   pmdomain: qcom: rpmhpd: Add SC8380XP power domains
>
> Sibi Sankar (1):
>   dt-bindings: power: qcom,rpmhpd: Add GMXC PD index
>
>  .../devicetree/bindings/power/qcom,rpmpd.yaml |  1 +
>  drivers/pmdomain/qcom/rpmhpd.c                | 28 +++++++++++++++++++
>  include/dt-bindings/power/qcom,rpmhpd.h       |  1 +
>  3 files changed, 30 insertions(+)
>

Applied for next, thanks!

Kind regards
Uffe

