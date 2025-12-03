Return-Path: <devicetree+bounces-243918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EE7C9E711
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 10:20:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 273AF3A7211
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 09:20:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71C5A2DC789;
	Wed,  3 Dec 2025 09:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XufypkaP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CAD82D6605
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 09:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764753610; cv=none; b=C6XbkYB7wSMbjP6+AEGWRyJzHLSGsPJ14LiQZmIsTgun2ZKh0e2Vu/o6LqcTXnIVdy61SlEIEzsSJEJb4BArv5b+Y5Qoh6y+FNmNZlvjMCGdzTIPfa1ENXqw/e15J0Q7tWaUfqu5GHdtfzx36FV3utv4wk+r2jRwa8Y1Ni8Xgg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764753610; c=relaxed/simple;
	bh=/N+3OH4zEXtSI0aT412tgrIES75Rk37HQHfGoGfZeF8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uzpOgg+kccDHtCzBUJwF7vR1AOQ5brp/RkigPemiMVcD7OG5sYdtpmDfLETiUpVu7QTbBZr/Z2RCWgBptJE/LGqPi4sDLZKQw6cg631MIyU8ng+cyh3zPuWxfHbLkrDqiBKete5FZhJIOsc928dZqKEBLWgGwxXhblafArBY89A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XufypkaP; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-78802ac2296so58914787b3.3
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 01:20:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764753606; x=1765358406; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JslWvuiajcWzrBB46OuwbdFdQrLoISVONeMt83mMlyE=;
        b=XufypkaP+Gc719ecV1T63mtZ7b1fTRwBgr/t+3OAtkBqsIyfUfyNu69/IDm4ZqhBgq
         T4LS2fKDhMEPB1g6XMzxgzDfmlNHJb5yH47x9MnOIgmRrTdtD7SGlidQnC198Kmy5Hj3
         iKB4Yi48LxhGO/eADUduP8+BvJMzvYEmw0ffL3KbHGebRbdmnKv9bzNDDmdk4XIiICKC
         GW+1hyLnjqg+LQlaEif713CoTHjoD5rvKwsskB33XnnYd1d/BluIEsUNW/xDavfrkJ7i
         EIuvY4GxA8wibMGCxEYv7jIveMzP3HEE2qm8NHCjd4lB7DY3YLg7mPXU0WxGKkBeJfRi
         9drw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764753606; x=1765358406;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JslWvuiajcWzrBB46OuwbdFdQrLoISVONeMt83mMlyE=;
        b=tZxGCsGb+C4BIfN/1K0pctZmMWPDakmN+5ouCKj+1iDAf6wMpDmlh1sd/XPwYlYc1E
         NFlI8Uwze/0lemVcX51Iyv+BgnV80VO89shQGGiJi5SY6qJULWsfmFWyOsEkpkW/7Pmb
         Sh4zxyI+UmGQ3Wc2+id+yJminADBzQcE1bCRsV1EpX1y2cv3H0jiclXDmybvD4vOgh/y
         USrlIYRWQ5MiuQzByceA2EvXmdQmAtOJeV+euIoHfw/VnR34eAKyoBtClOJ5cwRRpZcu
         X9Fx1rbM10hUtydFCJwHklPZMNKhsHklTfwxk81yxuI2sj1U7mNCRx+YrWrF/OUW9pTY
         w8Cw==
X-Forwarded-Encrypted: i=1; AJvYcCXzyJcSJjnr386g8UMIoyOt/xTBS+iQQNq436EBuv0yfvms0VycOKy7RjC3LwoOVZPSTWOOqs9VOuZe@vger.kernel.org
X-Gm-Message-State: AOJu0YzhX3C45uMqjIEn398grLVrZ4lTJU6SJtaK5KnPvV3tPJpqCUD7
	LyCuyRcoWUzbfFXGKolOukgfy1MlI7QVdp6NMsjuxaBDsqZFg3lcaUY3b3DwAFjERJgdnXdqtTk
	B1NAk+8JiT6Isb5usmZYTe7IlWWo9IW+fGliCvVLiNA==
X-Gm-Gg: ASbGncss/+Krsq+yIPdcwyD9JYMhP2t+bytDXYob87z1l9t9f11Ekwu8mLu3XIiZOPj
	XPnRN78oRIR1RU0bVEwpJM2EM1/PRlFG6kMKNW0T+I0jm9HH6bLgZhbbr/wjhu5C0Kld6ae+Gs5
	giWyOjs9ZmN+R++ZiOgHytmV+HadYK3vbUx/Vd1PBxoTRwP42593TgORACn16qqpQrZ6jx0GrOP
	vTosihMTez8Ao1LamMeNjWjgf00a8wepi4t4eZDpUySPh6NMctRehWGFG4h6RKlPy3My9Ue
X-Google-Smtp-Source: AGHT+IFSzqL+IC9+QYrUw6EYhbf9scpk+H7xr3+affMiDHcP3tpwj6GRryyb2WZvwq6cVRpUhZVTIDh41o9Su6/LPuo=
X-Received: by 2002:a05:690c:6f02:b0:786:5620:fad3 with SMTP id
 00721157ae682-78c0beafb49mr13866407b3.11.1764753606355; Wed, 03 Dec 2025
 01:20:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251202-topic-8280_mxc-v2-0-46cdf47a829e@oss.qualcomm.com>
In-Reply-To: <20251202-topic-8280_mxc-v2-0-46cdf47a829e@oss.qualcomm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 3 Dec 2025 10:19:30 +0100
X-Gm-Features: AWmQ_bkBSmPeRpbLaqaQj8COOKMuWq6z818Jj9gJxp5lCrOKChpTcVbxhBjEFv4
Message-ID: <CAPDyKFq24afRddbS3Lbe2o+VYg2wfKaUJ-eHmWk7BkjjJ3mpcQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] Define VDD_MXC for SC8280XP
To: Konrad Dybcio <konradybcio@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
	Imran Shaik <quic_imrashai@quicinc.com>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Dec 2025 at 18:36, Konrad Dybcio <konradybcio@kernel.org> wrote:
>
> This has somehow been omitted, leading to potentially stale votes.
> On the flip side, the domain will now be powered off, which will
> uncover any omissions we've made in the DTs so far.
>
> Reasonably tested on an x13s without pd_ignore_unused (camera still
> works).
>
> Video (not upstream right now) will also need this connection.
>
> This series defines VDD_MXC and wires it up to consumers.
>
> pmdomain patches extracted from:
> https://lore.kernel.org/linux-arm-msm/20250728-topic-gpucc_power_plumbing-v1-0-09c2480fe3e6@oss.qualcomm.com
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

For the series, please add:

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Bjorn, then I assume you will pick this up for fixes - or let me know
if you prefer another route.

Kind regards
Uffe

> ---
> Changes in v2:
> - Remove the CAM_CC bits (thanks Imran for pointing that out, I was
>   beyond sure this also applied to this SoC)
> - Drop the applied rproc dt-bindings patch
> - Pick up tags as appropriate
> - Link to v1: https://lore.kernel.org/r/20251104-topic-8280_mxc-v1-0-df545af0ef94@oss.qualcomm.com
>
> ---
> Konrad Dybcio (3):
>       dt-bindings: power: qcom,rpmpd: Add SC8280XP_MXC_AO
>       pmdomain: qcom: rpmhpd: Add MXC to SC8280XP
>       arm64: dts: qcom: sc8280xp: Add missing VDD_MXC links
>
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi  | 16 ++++++++++++----
>  drivers/pmdomain/qcom/rpmhpd.c          |  4 ++++
>  include/dt-bindings/power/qcom,rpmhpd.h |  1 +
>  3 files changed, 17 insertions(+), 4 deletions(-)
> ---
> base-commit: 47b7b5e32bb7264b51b89186043e1ada4090b558
> change-id: 20251104-topic-8280_mxc-e92cd1c31010
>
> Best regards,
> --
> Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>

