Return-Path: <devicetree+bounces-52132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 420A88856AF
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 10:45:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 73E5A1C20FE4
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 09:45:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E01D353E1E;
	Thu, 21 Mar 2024 09:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YZmR/82u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C841EC2E6
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 09:45:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711014305; cv=none; b=gGQlzwh1plBEE6qGmFQSsChhtXg89J5dOHZ4ush/35DirZtt1K6atDKVJnf/OdSU0yHytslEKS+w6BBoQA0Vahg1q2PAcdSf2mrpbq3NKvz5wo23wFkpjoNp1XmGKzK8AZzSRiXjSwQmmuEV6JmWECnBVjMZe+JOf4dcrrBcbWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711014305; c=relaxed/simple;
	bh=USv2fOw88lYmsXLEAJsg9gUy2ptDgrHgVv9Sgni5eFU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rfqGBY5uG3XOo10YK/znti/6B4h/yOPvRFYv6PXwdvIgu9/OPn7MHVnmk8DMPfB+NgOlr+ofPHmN91R0uAaFPrHud9beDBVqBQxunoRNCnTHdog1YiDmv7dvfeFy8qtpUshYrcg1bBHD9oL/NhbjoQypGqeVcijqNGk90R/OtKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YZmR/82u; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-d9b9adaf291so667258276.1
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 02:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711014302; x=1711619102; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wsq6huHxMXFKmsQE0mL/RER+3c0d8PlFp7FnnyoJiEE=;
        b=YZmR/82uRfmQtV/WX6IQlMczh7Ac9gJHx6eRJtpJOTf9ZojtwyKMwDw/BeZ9oPP7vD
         5W8jCqW3Eca8b8HDksAOu+EdXs6gW9d5uCDiHNB37NdFiEscYGPPcVOvzBw30pX26CUF
         KX2B9/1Du+riMrWgYPr0gkKkQxRzldc23Aoug8eOelaqtpaqTW65zljuakXEAoiS7RT9
         Ybs5AyRUHiVBg/2uh6xvIsWomag3MlGkcQNjiJ2Aeh9nfCPknblfd7iSkfQao9BDe4D2
         eZ42mV9udbjHycM5JoNfcX5Df8icELJy4hNVMX01T/hWvmKIvBziC2/hmFJxTvQdIJt0
         eX9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711014302; x=1711619102;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wsq6huHxMXFKmsQE0mL/RER+3c0d8PlFp7FnnyoJiEE=;
        b=xB3hgKldQAzyhWL9KCweXJfHHIpflw2XHajrshVJ/VxXe3KrqeAUHfT5IdXI3iH6d4
         8+HguPMRD3F6YXX7vDit1SDBD9guPXMADdeZ7X0gp/LfUJ7fvvhOHpWGKr3RMqwA9nk+
         uOfsSziOlu+sUNgOZHik/+u/lQQg6bZScnwyB2YU3ZKrNobWBw6p+lzSBFzCIbQHWfLh
         5fLDBQtE9szT2kJHG1e2vHvSztUyeC/x0dfyz1SRtiJZGckiaP0FW/Y3/wEM2HDiH1ZI
         lg8p1oMgEBAntf8wY71Pnw1cMwz1O/qC9bcWniVHERgf8EgbMn4gldOSdI31JKip6cYr
         u/MA==
X-Forwarded-Encrypted: i=1; AJvYcCUm8KNrzBPwNTu07Nrzi8dEtR5CHW+UrGzRM57J7uCNu7Rfx9CCsIzNkKU4eBp/46xgCTPiIpkpiPS/SQhajsMOS+ymckVQM/U2vQ==
X-Gm-Message-State: AOJu0Ywex2pUlNOD3gSyl5mBDeYTIb8x+FRZd5HNUZIj4fJnIBzc8Lk+
	skkr2vm9oVtuX3064jgZAussnf9uKCG6Fh+XnOtp+Pz4CTJlGwWQDwWhPgeBaqHT+l4XBEGaOwM
	/tsnqZJ2VNB8W5CjmfKjnsKCo137AZKbue7JLUg==
X-Google-Smtp-Source: AGHT+IHYhhmTdh8jHR73tDxXGEyjQHJf8EIgdwjfMRiP3YSKMMj9MKe6GuvrydG88IgBd8VMu6yZcI70K5Z7Y418EUo=
X-Received: by 2002:a25:ae84:0:b0:dcb:e82c:f7d with SMTP id
 b4-20020a25ae84000000b00dcbe82c0f7dmr1349884ybj.41.1711014301808; Thu, 21 Mar
 2024 02:45:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240321092529.13362-1-quic_jkona@quicinc.com> <20240321092529.13362-3-quic_jkona@quicinc.com>
In-Reply-To: <20240321092529.13362-3-quic_jkona@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 21 Mar 2024 11:44:50 +0200
Message-ID: <CAA8EJpqrJ1bh3hdS8Gm-QRe1iEYj34Wwz+=vOtONUgAF=hOZYw@mail.gmail.com>
Subject: Re: [PATCH V2 RESEND 2/6] clk: qcom: videocc-sm8550: Add support for
 videocc XO clk ares
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Taniya Das <quic_tdas@quicinc.com>, 
	Satya Priya Kakitapalli <quic_skakitap@quicinc.com>, Ajit Pandey <quic_ajipan@quicinc.com>, 
	Imran Shaik <quic_imrashai@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 21 Mar 2024 at 11:26, Jagadeesh Kona <quic_jkona@quicinc.com> wrote:
>
> Add support for videocc XO clk ares for consumer drivers to be
> able to request for this reset.

Nit: s/for//

>
> Fixes: f53153a37969 ("clk: qcom: videocc-sm8550: Add video clock controller driver for SM8550")
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/clk/qcom/videocc-sm8550.c | 1 +
>  1 file changed, 1 insertion(+)


-- 
With best wishes
Dmitry

