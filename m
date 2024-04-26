Return-Path: <devicetree+bounces-63183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A38648B3F75
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 20:36:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E7412879E1
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 18:36:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D8F61879;
	Fri, 26 Apr 2024 18:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HgBCOb/q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6AD81C06
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 18:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714156601; cv=none; b=iiQ+/fjOmzul/CuD4MQ/wbQXEPvdQROxeeLMdO/Au13EJJyOOod+bktShqGzO5vxhUR+21BMX70wHK/fXqvRBOv6wZw/wtelzQs7/mR4hjZdQ3+L5OktIOtixgV400F+JwYyMiO6dIrNE3/GOfZT5Kdof1lrRJGWPw+KD79RzHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714156601; c=relaxed/simple;
	bh=8iQni4o8AKLtkCiSzMF5sTTPENZrpRMz064oMyR/9p8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LJ6J2VqnrvL7maRZ3lBNXmJaU5GFLlfjiJ24vzLLrqw+X8neCgUIkZmA3lUtVXAus57E9injIRgTvkH29Cgw5U51eXMJ/wH0A3hn0qIhqDHCtO6Q/tg96x5+wW//I8P7lkhhnidFR2B0IAcwN50juxAabQiRGeKKnYGN3rJjSjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HgBCOb/q; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-de469a634fbso2903027276.2
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 11:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714156598; x=1714761398; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PfhKiSI78+JIcccpgJr34viq+IohAArFutcQbMmPLDk=;
        b=HgBCOb/quyE9u+R/YOyJ5I6S8qNznA00InRMtv0S0M3KZtqIDEeM6wenyxfmL9ROKn
         IvrXaDCpcijwBUBHuV7yLXTZ4Ti5TX6svN5SeqK1qzF2yAb7oJE3/zQHVRHtYwp7O+1G
         /7m1xhNZzGgGB2/znyUKNAKpvQmRATpMYJfpApB70YiMQfo+Na63+Ro8pcptgMnhxU2G
         2ttY+n9KgQN32NO+zA8a9TbNMok5roP3hjRLPYa+sfe7rLLRvlIK9bZUbWjhFk2l4+9I
         9QyNiiy/YnpJlH1/Q/GErngKlRaAqTyBJcnI+6Y8PDIG5oICbaxZJ+JgEx4RbKUtzyTj
         M6LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714156598; x=1714761398;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PfhKiSI78+JIcccpgJr34viq+IohAArFutcQbMmPLDk=;
        b=T6AnNR9iZ4HchI1U+Dqeae7pdAbATStnlINzJtpMJ5VIKhZmJlFW2CW7zIZ41mFABI
         I8gCqGO9GlU22Ky7bbgBIhmpYZA3sfPvbAPA7pZ3UoXF81csZB0Il9zgzk7i/cwcFYNC
         SAhrMB6f40Y560r6/TnD4qpNViHXCyeRVKclAr/SakHYwzw2f9SyRe5fR0vzKkFWcsqn
         n8P7ofbLJ0yXa04jdpV/5SkaQaOZ9FjZyUyXdJHB5EmaS2sXF2PDDC3x8Z4h5H7CO+LZ
         ZvY3VXpkNr/eJq0tWyFpx4ryYvAudd6f0e4aNEfhv7aFom4b5nqGv9DWBJVhPxLrdUcU
         SoEw==
X-Forwarded-Encrypted: i=1; AJvYcCV1zJ+duLfrvYMoNRBUsCXENWE7BpL1w3OHwtZRwbhhIUL6SSDKTn3Rj/aQambUlr5Jf6FE3Aqb3/1WkTHODyXVBDHiEDYOKzO9SQ==
X-Gm-Message-State: AOJu0YyPgMYIcuYii8dn++ilz3mHF5L/5liGePpYTF9H72YPmk5CKdzP
	3h+GWLEEab5mvea7zrx7R1Tf3JGp06QQMJg84nFJhBKSfc/ojAc0iVQNq1RV2KJFdFma0CRUEuH
	IwjOWD0ew+V2EDk2XUOkSBQaI1U62msds8toriQ==
X-Google-Smtp-Source: AGHT+IGRxa3W0lgYO1YxHtc9PrSoHPfAHJlkehTh6IfPv4AnhXZXP6F5xHNGt4rxS/gqBaEeHMiE6Osf3r+FXyv1SYw=
X-Received: by 2002:a25:2fd4:0:b0:dca:c369:fac2 with SMTP id
 v203-20020a252fd4000000b00dcac369fac2mr3878075ybv.3.1714156597887; Fri, 26
 Apr 2024 11:36:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240426-a750-raytracing-v2-0-562ac9866d63@gmail.com> <20240426-a750-raytracing-v2-1-562ac9866d63@gmail.com>
In-Reply-To: <20240426-a750-raytracing-v2-1-562ac9866d63@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 26 Apr 2024 21:36:26 +0300
Message-ID: <CAA8EJpoOJ4z9+SgWoCnKWY4Tq9aoX5z9f9S_KhHzo8o=GEuG+w@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] arm64: dts: qcom: sm8650: Fix GPU cx_mem size
To: Connor Abbott <cwabbott0@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jun Nie <jun.nie@linaro.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 26 Apr 2024 at 21:34, Connor Abbott <cwabbott0@gmail.com> wrote:
>
> This is doubled compared to previous GPUs. We can't access the new
> SW_FUSE_VALUE register without this.
>
> Fixes: db33633b05c0 ("arm64: dts: qcom: sm8650: add GPU nodes")
> Signed-off-by: Connor Abbott <cwabbott0@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

