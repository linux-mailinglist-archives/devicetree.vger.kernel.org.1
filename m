Return-Path: <devicetree+bounces-112913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 398A79A3DC6
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 14:04:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA5AE1F231E9
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 12:04:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC55C29A1;
	Fri, 18 Oct 2024 12:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P863KZue"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09105E555
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 12:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729253047; cv=none; b=HfdmCIg5xFRIlGz7HfQhXxHBw6pLuNueFSVSNMeZfMHYIZQcUGSn0Gey1fjIR+IUxm5exFUnrW3f4tA7FReM8bGHIO6jfOymaKbospMbC68GXv4TYCwtTElTzOdPbIkkOPAtNGhZEvdius81tIgAdRKJ/y26r/Ce0u+6PhLboWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729253047; c=relaxed/simple;
	bh=G16VMFkYo1lJYiUjqoV5uhRSbc4X8d7pUahQxY3PU5E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dAoR+fKQlHpAX/f7Sh9fjo7dEVHiKLgNRivsdCQGjqscSgZ/32/k1Gibnf63V1ajnFdbTHduCmjPICLGlidkpb8covRJwMYTUTzdlCCo2DHrSZ87f3tjdaiNIheBF5/om0MqnylSlH3HYSWZCuFe4EYYrN/THyJzVhIWHIi9NQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P863KZue; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-539e13375d3so2364506e87.3
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 05:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729253044; x=1729857844; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bfCb0bhd7A40KUaBz9hRRbX867xrYglHoInu7Xbi7mI=;
        b=P863KZuerXkZdbLl5rJ/cHc3/qW1KoLQ/hNwp1zw22XA0Rqu26VhMQNshyHfcSvAO4
         WydpmmSZgTuAmoFauANM6hZ9/NfDXWp4tYmmF89zijPUfDcDabBaMkhqPpQ73HAUDskW
         AWMOI/TmCK192E/8P5XJ5qK5A2KzcTqPmAdLAhFQyRQrcJRSnvc+qjMDWgP/NVUcdhPz
         bZ8/fFZr5xwK8MdwUG6FY+24GNyalMs1Qod3C9QFpe1+v5MpMDrlCJoTmO4l/SV9LU90
         9kUWhYltEOfip8qPvfRvF7G3kLRoW4tPJvypVR6bPtjFHPprCMUqq+vDyeOF3KgFDh6J
         uxoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729253044; x=1729857844;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bfCb0bhd7A40KUaBz9hRRbX867xrYglHoInu7Xbi7mI=;
        b=R33Ocg4ekIaMOf+3aWELMiJ8S2xUltBhdCJ+BRI6AR5HrUZ6fUU8eTtT4ZF9kVOJ/7
         tTpkLLccnbr196qCuW850HEGAkGx5G5ZeL4gtL1LWq57qFRt3g5kw7cQ0MSXgpKifrFn
         GgAB5ao9dKLh+k4k/b0uV9yloFvBTFfQGyMoaGpSotj6d021QMswlNswsVC3apfyi01P
         INGiFKAFAuGTlIijQ2pMQRXMTBXfumaHRBV9GazYdNSGQpDbFSmRf8fhqXI/7VPawGVK
         V9lH5pdLQAxXnl0PKZnS+1SQFi9QwyW8hSUrO41OxtsiNikDp9l2jP2oggHYcfdG893A
         muZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXI79iOgZE4QwkSZKhB1GdX3EP6lBE6qCVYTLMYGqVx69UszvvJEWhqKsta+o0MpWJzS92g1CzqhrJt@vger.kernel.org
X-Gm-Message-State: AOJu0YxKKEa0EBI8TmrJGssFGGtigxY0gdJ28A6HxEd52DyKidCB/yWD
	n9jotQekaUoWtuXRkgzDxl+KvL7qO1i2z3NT4fOaGzVfXJgbHCw2agpfaGxwTwk=
X-Google-Smtp-Source: AGHT+IF0p+EHb3y6Bb15TCfxTx2WBchcnW+np0ZaXW6dvAlcadVgamxMd0Nd/+bgKh+CYw0YxRaxNQ==
X-Received: by 2002:a05:6512:39cd:b0:535:699b:b076 with SMTP id 2adb3069b0e04-53a15467b88mr1514958e87.16.1729253044002;
        Fri, 18 Oct 2024 05:04:04 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a151b00fbsm203981e87.31.2024.10.18.05.04.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 05:04:03 -0700 (PDT)
Date: Fri, 18 Oct 2024 15:04:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Imran Shaik <quic_imrashai@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ajit Pandey <quic_ajipan@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>, 
	Jagadeesh Kona <quic_jkona@quicinc.com>, Satya Priya Kakitapalli <quic_skakitap@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/6] clk: qcom: Add support for GPU Clock Controller on
 QCS8300
Message-ID: <l53g7hbjxg2fe2rezghearuf4bllem5ubn2pn6f4qf2nd3wthg@v2a7pd5zquns>
References: <20241018-qcs8300-mm-patches-v1-0-859095e0776c@quicinc.com>
 <20241018-qcs8300-mm-patches-v1-2-859095e0776c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241018-qcs8300-mm-patches-v1-2-859095e0776c@quicinc.com>

On Fri, Oct 18, 2024 at 04:42:30PM +0530, Imran Shaik wrote:
> Add support to the QCS8300 GPU clock controller by extending
> the SA8775P GPU clock controller, which is mostly identical
> but QCS8300 has few additional clocks and minor differences.
> 
> Signed-off-by: Imran Shaik <quic_imrashai@quicinc.com>
> ---
>  drivers/clk/qcom/gpucc-sa8775p.c | 47 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

