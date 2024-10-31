Return-Path: <devicetree+bounces-117808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A66E79B7DF8
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 16:13:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DB34BB229C8
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 15:13:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C32611A0BCF;
	Thu, 31 Oct 2024 15:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KirEsZq+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5991AFB36
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 15:12:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730387580; cv=none; b=pkBoIK93vbg/0I7A9CCLoY69Nw0lHPazICSKRZA1/nc2DKplr3GheyKTwLhG4yPTuWiHu85y1MAZ7fFS31CvJL/M+Y6YwL3xz4TUrwhEN0aKrS7NYhsf/gICi/62oO7HL+vLI+0v3S4z27BXDSFWYIp76DbxpqdivD87XtPDMpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730387580; c=relaxed/simple;
	bh=kr02wbYSWNCkbF9WCD3f3jrehlBz4QKbygRTAdCmEHU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JnU/3Yz+ryUOn4FSKyUS2W6f2iV4Bc2gcsn4RzuJ88Gb89edVOXsAaYsa2blS5omv+5aklUC5wqretUQuuShOMIWyeVd5aUufbloXpXX7n5dli1aD6yMJDHTJczqEgnw99uAl+yO61gA+sVh4bEXWOmKq3ItZP5BEUbxg+WQsjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KirEsZq+; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6e5a5a59094so9262787b3.3
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 08:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730387578; x=1730992378; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3kq/ZfQo178WpGnp7avIFwOb49kRFsd7BrjOS/dXjIo=;
        b=KirEsZq+exLGPoyML4/+40BDpyFtnLYUgF7jco3Fe1XYI/0jgKqasZapXuRrWGVnmA
         KJ5fL0x6RzbYwNUhd+bXV0a7IfNYnYd+p7M5iz0p4fzPVCdf0zdB1hZIvXbIRNPktaFm
         sxgoKbelcctcSVYKGiXMJE0Mzm3Wa413MqdepmZK0BmhKYd3IsvvuDIuJLXNugYfen6x
         3rJhwSztP3HEpKLMdSKfucGYwDDynmj2VAoGJI7y3eTywcWvtJzKKdi6RY/OxZ4nxBd+
         /tYiVel0cV9Su+jLvN3iyyPQQjIZ0+mzeZ35EJe8psIQLCocH2msX/gpeMz3Cwoet5is
         ChCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730387578; x=1730992378;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3kq/ZfQo178WpGnp7avIFwOb49kRFsd7BrjOS/dXjIo=;
        b=YFGSAWrxhJbS9tJZBU/PDQvqv7W95dJ0KUZWE4TC9y4A/JUp+9Ik0V9SgSYElKkDnQ
         zf3vrTaLfIako/qbQgidvNU5DThQbEwKm8Y36FbqpYEH/G47ULbQnHFxvKGfmD4t9vtJ
         8xrvCOYho9JhRu/2WFaMl82sJearbPVGWDjT139b7V9is1bjBdK/hfb0QsqIaOUBdh5Q
         1JUzhd7eiHYFjT8uCn1ELk5IU7PyuGO4RTTBkMBfjooMqF48PSr6qsP84vhTBIlLpAVN
         G/amYpGYTT0jEaQDMOsQJkaADJeFbgPGiFJV5w4PgOINAxWDBaOC8pYiYx5ljvNRoQia
         f7Mw==
X-Forwarded-Encrypted: i=1; AJvYcCVsJCQXYVw2qnWH2bPZpBTeuYHx6T0tbi0cA9m3eKfqgB6byEtiTPSC3gCBmYCzqmWRXLruJ/a4Usef@vger.kernel.org
X-Gm-Message-State: AOJu0YyjbpO8/XOVoj6zWDYfE5wPPrZQ9lC69WNWnyA5DSedTfJxeqEE
	nAv/Bq4Djaz+mq6uZFRQxhFkxJQxpYSJObq+wKGYZ0E5nLTPt4Mj90tUHpprQZ+Wi0xeQbZk57v
	AFMnjtYjfc8NdWufCkPD2DeX79C6+FkNRv3BJzDHGiEjOGeHO
X-Google-Smtp-Source: AGHT+IGlMNJu4DDdD/Y1Axdwvh3uw+1T8q9MjgGCDRsqTJLHxT7tV2PbJ7zg2vq/LGfZxClDt4ZTbCxoj+EvkACSNbE=
X-Received: by 2002:a05:690c:380a:b0:6ea:4d3f:df9d with SMTP id
 00721157ae682-6ea64a8d45bmr3072217b3.4.1730387577820; Thu, 31 Oct 2024
 08:12:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241019-qcs615-mm-clockcontroller-v1-0-4cfb96d779ae@quicinc.com>
 <20241019-qcs615-mm-clockcontroller-v1-6-4cfb96d779ae@quicinc.com>
 <zsgdwc6klccdbytdysgl342zllgmb7ttatjh4tnug3unyl7vl3@tlptei23yozn> <1eaa1fc6-721c-46fd-bcc8-9b575d083dea@quicinc.com>
In-Reply-To: <1eaa1fc6-721c-46fd-bcc8-9b575d083dea@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 31 Oct 2024 17:12:53 +0200
Message-ID: <CAA8EJprhyBpEyQYjCPopgEUVGF3ztGZ_6zo-QUPJ6=4VffEzZQ@mail.gmail.com>
Subject: Re: [PATCH 06/11] clk: qcom: dispcc-qcs615: Add QCS615 display clock
 controller driver
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Abhishek Sahu <absahu@codeaurora.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Ajit Pandey <quic_ajipan@quicinc.com>, Imran Shaik <quic_imrashai@quicinc.com>, 
	Jagadeesh Kona <quic_jkona@quicinc.com>, Stephen Boyd <sboyd@codeaurora.org>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 30 Oct 2024 at 19:59, Taniya Das <quic_tdas@quicinc.com> wrote:
>
>
>
> On 10/19/2024 1:55 AM, Dmitry Baryshkov wrote:
> >> #include "common.h"
> >> +#include "gdsc.h"
> >> +#include "reset.h"
> >> +
> >> +enum {
> >> +    DT_BI_TCXO,
> >> +    DT_GPLL0,
> >> +    DT_DSI0_PHY_PLL_OUT_BYTECLK,
> >> +    DT_DSI0_PHY_PLL_OUT_DSICLK,
> >> +    DT_DSI1_PHY_PLL_OUT_DSICLK,
> > Is there a DSI 1 PLL on this platform?
>
> As per the design of the clock controller it has a DSI1 port.

It's just surprising to have the DSI1 DSICLK and not the BYTECLK. But
if you say so, it's fine.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

