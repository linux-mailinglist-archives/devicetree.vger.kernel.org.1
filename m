Return-Path: <devicetree+bounces-52138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49ECB885766
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 11:26:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9AAA0B2123C
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 10:26:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E03205674C;
	Thu, 21 Mar 2024 10:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kg+5ZZLh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F79D56448
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 10:26:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711016796; cv=none; b=AMjuyEj58DsHPBfd0JQ8HqAtWzsGpPxzhWB3CmanJsfsDHybTczUYeeuQ9s0Ay7qOK3lOQwywffUqFaOaAfFcrU2McUn9ITqIOUjSLtjmgQjU+uQ3CpjPuL6FysgaTUQE98DBwcncZehm5NeKoJmlJZLsIHtAjkvc83RbUZ1axY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711016796; c=relaxed/simple;
	bh=+884RlU/GlvwTUa+q87xsqia51wLJdHzo+MtTS+qfuA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H/4K1W1INegaxY6x2M+xKHAUpWthQNqODdRZFKMEQvI13hNtBj7cK/2XQHA0RW/Ut9lfXpLESAYk45nKpf3yMiF90cMyx9z200bV7SdzX9AAuz2RIGxwdqUdtNM9poWgL19tAZute1NkpIjkRQuqq6MZFrk5f2e5SjEfy6swpTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kg+5ZZLh; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-dc25e12cc63so1754918276.0
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 03:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711016794; x=1711621594; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=G1DsQsCfjVXlcreC9mkpHOUXs3G0EDhLcSU9dnMnmlI=;
        b=kg+5ZZLh+doRgTaLkijY08SgBBLjl9YUBJ3oUe9BEryI7Ud81dZkGMzUsR3GI8dIvZ
         Mq/jTO2KhL7ferxBN/HoUIkDXzkjczA1Qzu5+a5+rH+zy/8dNjUPmBHOju8RXLkSuf+G
         J5jBJ4n3ZmbR37wH9pmSu4aqcV6m3ougqSZx8gwPjxEzz0PehxhclKPKUafKBOiku7Yz
         pOEph7nvmuFY15RfYBZCQ8/VO1Hb99KMcFnNFRasyElNltmHdi9Dvi6F1oe1Th5WG+Tr
         EuprPQ7t/Li/2Bn1m3MFDh7pjNzcFZsYkd8jwMkYM3ogqt1WlZ75oihg0vJRv3iNp12N
         Ux+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711016794; x=1711621594;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G1DsQsCfjVXlcreC9mkpHOUXs3G0EDhLcSU9dnMnmlI=;
        b=UL35Ms9mbwnoc/b89kolIwmqj43/9bPkroIRgb78FPgl7Ivt6Zmz5gzmFMyOLm5Fae
         MFWQ/eTSwk8uUuLw8ZgCQAzY72Bd/5vVB39T5xBR6Jx8RgO/Oge+Bd4h7Kw5VtoLI2ul
         lC8vPTIAqWj0sFzvvPix1vsC6uPLlSSxmFJ5bYT5jtdWXSKSz1hQ+BASa7yJk0k6wBmG
         AsA3/HfQd/EwifrUtcLhgE1sHuDaZ7Ix0ftWkaT63cixYfkJdO4PH5y4GqYccNvoEAfu
         6PmpLW/6EGO6hM2UD4tYNI185JnepmKM6VZMhRLdDXcABM2sBWSwtUnO9WZEj93gQQyZ
         USIQ==
X-Forwarded-Encrypted: i=1; AJvYcCWoF2pJRU6WyL/5nHxSyDuzcQ7gTftEYY9fFtVl2i5l3KYJZusGs3YXFHMRjN3kxEUmv96w/uTb63CKBxHOqy1YqG1JH+HDpuZpMA==
X-Gm-Message-State: AOJu0YxehdOt9PEA2m93jygOD641TFUChdoOJqfNH+QBgW+AnKRYnNfF
	zNcONZDxWIVkoWZUQzUk1fl28+vRXSY8S9Z1j9cXd4FRmy/O/WlpCpv//jAKAEg1WT+HlyDJ4Dr
	tiHw2bv6l+pSCiqQMn5Z/0liPnhLzom2821Z4/Q==
X-Google-Smtp-Source: AGHT+IExb+vzGD2UTaSisA7Z8I+voE+Wf1d1MMMQfTeCa1gMgMMvvTYLlKLB30P2jM8a1OlAg5BhSTY31uqzspWQZBA=
X-Received: by 2002:a25:7208:0:b0:dc6:e7f6:254a with SMTP id
 n8-20020a257208000000b00dc6e7f6254amr1505416ybc.8.1711016794255; Thu, 21 Mar
 2024 03:26:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240321092529.13362-1-quic_jkona@quicinc.com> <20240321092529.13362-6-quic_jkona@quicinc.com>
In-Reply-To: <20240321092529.13362-6-quic_jkona@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 21 Mar 2024 12:26:23 +0200
Message-ID: <CAA8EJppoeOgcEoaoAYs0cS9yVTPOOwa7J47GvZ=OHNRZzj69FQ@mail.gmail.com>
Subject: Re: [PATCH V2 RESEND 5/6] clk: qcom: camcc-sm8650: Add SM8650 camera
 clock controller driver
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Taniya Das <quic_tdas@quicinc.com>, 
	Satya Priya Kakitapalli <quic_skakitap@quicinc.com>, Ajit Pandey <quic_ajipan@quicinc.com>, 
	Imran Shaik <quic_imrashai@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 21 Mar 2024 at 11:27, Jagadeesh Kona <quic_jkona@quicinc.com> wrote:
>
> Add support for the camera clock controller for camera clients to
> be able to request for camcc clocks on SM8650 platform.
>
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  drivers/clk/qcom/Kconfig        |    8 +
>  drivers/clk/qcom/Makefile       |    1 +
>  drivers/clk/qcom/camcc-sm8650.c | 3591 +++++++++++++++++++++++++++++++
>  3 files changed, 3600 insertions(+)
>  create mode 100644 drivers/clk/qcom/camcc-sm8650.c
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

