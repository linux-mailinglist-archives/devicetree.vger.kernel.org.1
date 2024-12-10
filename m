Return-Path: <devicetree+bounces-129309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6609EB294
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 15:03:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0D62616622A
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 14:02:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 193A61ABED9;
	Tue, 10 Dec 2024 14:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V5nkgO0G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0871AAA28
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 14:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733839353; cv=none; b=SutwIScR3Bmk2Z47yH7ok1i5aQXyg8g0eecti6qskMbfaPxO+srlMAG9EhjuD33XryQtAc472dDfubj+bCFfTBJgoEqb659ZNEkJrPki6jS4MMXqg9Tkpnu6eSmScItUhPFN5qreeOniKS7bKUchnv6Ex1L2ayVT7jJHQFHgL9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733839353; c=relaxed/simple;
	bh=+NFuZPYZfV1IZRwl655w+8sEEBWW/ztxjjuLMrHJUiM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=btEagJa+Io8YakOSIn2iM7R3GG2rKrwf97tgpH+6TaBNAue0zN4svu/N/+OP5mGcRvRkIUyDrsFtirIlDZI/hS8ECpwfF5U8YKpFKPZtSveIxhXksANvSGf5vvQwucyl/6UjyndzcMkkdEZhOx+GDMrCB+DnwsR7FLqQ0cc9FK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V5nkgO0G; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e3a1cfeb711so2540038276.0
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 06:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733839350; x=1734444150; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SvPPl8qwVLJcu5oGibdh/vSg/TfeueL6no5HldX5f6k=;
        b=V5nkgO0GthAETk+jpjZWVGIF0wG2rV2zEGQYSYdPaj27p3tqeZYme3hfCEUpRrKmrD
         cldxLGJb7hPrjJxMR51R9N8shyBfntGFLcX6lZxRUYDPB41/rJ4agRflaGf0ODi1jnjA
         wOKBnmWE2ZzfZyUmc1Hubz4qae6QoqQ72ao25ZiDQlwrgBKDkNuvUUVpewiCTeAe5yTP
         s4n6YGphS1Gh5e5fDvBcKScelReybNpg3n20pkyRjRcKQm5K3/NQNpG9rNLbh75vpc3O
         RHKUGPA+qySOzRB5WJh9pZn+6rl84UvHYKebsmppA0m7OG6oM/Sl5XLXavSRRmM+xy+P
         mL6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733839350; x=1734444150;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SvPPl8qwVLJcu5oGibdh/vSg/TfeueL6no5HldX5f6k=;
        b=oA6syk5ybLhgAFh1XkYIW9v8fQrA5M8uCmATpeYD6kG6/PMMhi9hbBxtEf0+j5kIJQ
         CNrXGB1KMQUN8K0yHas+VtI1h+HWHEFmxBSLhR4KSeEG9e3DHvUqfh2Z5Ik5CgaBGY2V
         XF0wDGgjkAKtc6JqQfW8qcDM+84U6MoT96G76rFGl+F8zb03A3RgmOGiRRUizZBW4atc
         bu+Pa4tp+H8ScNBUcI1FfexGeJTNdXjOImgy/16M5I1DVQ0MOPHXmYVzwpmWosVnW4x5
         lPjckO5zZD5C1Ks9CHVL83hD5mWCvQW7R4jnIF8KnVrNsvxqeCE597YOUVsCrGqQGpgn
         K1Wg==
X-Forwarded-Encrypted: i=1; AJvYcCVnUIEzD5reYvkR7RdSLvZSpkrVrrffxMDUlvoAR8dxlKQgOYjdnxSC+2RWxq1417zk0Jl89j/pMlbR@vger.kernel.org
X-Gm-Message-State: AOJu0Yy70EDOm8NoMpDjEzaVNmJJVj395EgYFiWb3+sPVN/5UK9kfhg4
	+TeBtGpWGgsc3aCM8yp5teCRofk0YNZlV2/OEzsbTkT//grp+58mwqSVu1sx/b/B1I4g0WMYClk
	li2HgmwxFCeUzjwM2GM4yBIdPzEdvhr5IA3NTJw==
X-Gm-Gg: ASbGncuZYDXiet4VbROAkAOyLEC5+phzl6KTMQ4er/0rIyxOePDZxV+JFZlAY4/EGhP
	W0mySzHF8VMoo0703CCsu+RpT84V/yNx/J21s
X-Google-Smtp-Source: AGHT+IGmKaNpYBq9hHMjYVpDy/ZFedVuxIxnC/8Szgs06mRME+vwqHaysBmsEf6kl+XmlfJPpFjlh3TT7s7p8aYdx8I=
X-Received: by 2002:a05:6902:20ca:b0:e39:8992:57ba with SMTP id
 3f1490d57ef6-e3a59acdf9dmr3350460276.5.1733839350074; Tue, 10 Dec 2024
 06:02:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241130-topic-idle_state_name-v1-0-d0ff67b0c8e9@oss.qualcomm.com>
In-Reply-To: <20241130-topic-idle_state_name-v1-0-d0ff67b0c8e9@oss.qualcomm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 10 Dec 2024 15:01:54 +0100
Message-ID: <CAPDyKFrQ8EJPg+EDtrTmxy6W0mnKip2GjOH4JeLwVAGE_3Ao9A@mail.gmail.com>
Subject: Re: [PATCH 0/2] Allow naming pmdomain idle states
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, 30 Nov 2024 at 17:39, Konrad Dybcio <konradybcio@kernel.org> wrote:
>
> Inspired by [1], add support for naming pmdomain idle states.
> This only affects debugfs output.
>
> [1] https://lore.kernel.org/linux-arm-msm/20241014161631.1527918-2-robh@kernel.org/
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
> Konrad Dybcio (2):
>       dt-bindings: power: domain-idle-state: Allow idle-state-name
>       pmdomain: core: Support naming idle states
>
>  .../devicetree/bindings/power/domain-idle-state.yaml      |  5 +++++
>  drivers/pmdomain/core.c                                   | 15 ++++++++++++---
>  include/linux/pm_domain.h                                 |  1 +
>  3 files changed, 18 insertions(+), 3 deletions(-)
> ---
> base-commit: f486c8aa16b8172f63bddc70116a0c897a7f3f02
> change-id: 20241130-topic-idle_state_name-e119caa0069e
>
> Best regards,
> --
> Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>

The series applied for next, thanks!

Kind regards
Uffe

