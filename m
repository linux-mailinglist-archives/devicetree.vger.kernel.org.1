Return-Path: <devicetree+bounces-61021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E710E8AB4D1
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 20:11:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 249F51C210AB
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 18:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93E7A13B5B5;
	Fri, 19 Apr 2024 18:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qdQauAQd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 964C2137920
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 18:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713550311; cv=none; b=OK3Oa3mk31oDcv8dMCIG6BxWsaX7jjIomLJXuR+iJ3fc1gU0jHKzvDQFvPcYyh5VLPLCH2IxHjQ4cpFz6kQLzlNe3Ev3wNCSuTodyyCZdW+CWE0DQUk5EF7T1wGJBrMhnh1/yVM9tktLwrOmABHEnHv/jw5kNTu4cqPypn/hynY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713550311; c=relaxed/simple;
	bh=kpDp/tDKF6u8aQQFzTlCZlZ2nmv/pCiyMG5DCRNEMH4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BDDf4K2sHkODUmm2zZgff7UO9bSLtoqlHmr//fS9jdm+kh5ESDNkyovBv6adyodMt05U3doUYWE3epM4KB0gUCOazL/7Koxv01FAnpvcHacdZviSY7AVdH+6B4K8SKAV0R/hT6l3sUdvQVVz2YAand3aKDE4C0/Zo6uQ8Fh4e8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qdQauAQd; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-dcd7c526cc0so2583263276.1
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 11:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713550308; x=1714155108; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hyxqidtiL/NTat07i5sxE7s0Wa8dugW75yP7YmoWNV8=;
        b=qdQauAQdielGwknHNSZDpQqZT4cnbb1pz34Rtwk3LcuLpI78LuA1eagJnUytdXq3kF
         CfZx5rzs10T3ZCVwibjYxE3MDqq5b+FDEIhYBEvygRDIre8gN7/bybyeyiUwAUMwx1C5
         /O6Xha+bVb2yphtRC/lW/W3fhhXqU7galr57vZGkSEJJU+PdO1ntJpavUiOTdJ1M9M32
         YlXByQIQ+/nnbReU1HaOAcF0jDXWCbyjgjTxBytdQXpIY6hDrC2U3OXm0FKbCw/PYODU
         3wzhydkE0ERsfmD6sQd2p7cjXXMjz6rhocpAIDpf9dcYDzIHtGLSJTf5r4tHkm45zKoU
         T+Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713550308; x=1714155108;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hyxqidtiL/NTat07i5sxE7s0Wa8dugW75yP7YmoWNV8=;
        b=Eu0/bLh4n45RGGghKAMvY/nUMg9noVU4ZOiKiPIP1FOv2/2O5FUcc4Tvu/YPJkyiO7
         8IMazsGJW57mRV6Ng0Cran/gavbuXyCnkHL0WsYLnP6U4uqfSnTBpRAPgxFkReWQV+FY
         xpxfHaf9Lw0mdeG3aLI9f2H4qOFcYVZ/3GosLacR+SvIzFqg7f5kv4rKNsoMmiYNDLz7
         FzcU3QubG7HQzDTCtx5h7YZnQlzdQ/f4LAhXky0cNGNmab/nBVtLNezxkrEAk99q0WNk
         oEQE6CTPZ/s8qvpTIF+LztLAd5A0BSXaPJzBdoBhTUB70ww3dyw1TIRzewWaQ7k6VqJz
         7kwg==
X-Forwarded-Encrypted: i=1; AJvYcCUU6SvfGrCxFa+aMiR4yWsVkVw+D8Gho1HIOnOzH7SZCqdN6AHOcQiFplrlQIMM1Gx2AAeLNVmmnIUKqQljUbqNRONZmfynqaThqA==
X-Gm-Message-State: AOJu0YymNpGfp52Aeq2qwOQXKBAulvWfj0iMjZQMpcwtFZN5PFdik5NQ
	F9dD7aw62kiS4IQfnLGqjKfkk4veU4rnCRdhOzCfu0aGxZBQKn0Z5MFjGQ+nfatSDkGhRcfofBM
	hn2VHM1xN5b3mLOre59Zf8TJbwh73tcP4UFyZu5dt0AZwGJlS
X-Google-Smtp-Source: AGHT+IGcWi/OG56+hiuPqFqYIVOD3gn8BVTrYH92OTVBqaeRKs+lfGtmgMgHUQk5ZN8KQBFfqn+s6lCL73G+tbty58A=
X-Received: by 2002:a25:8548:0:b0:dc6:c32f:6126 with SMTP id
 f8-20020a258548000000b00dc6c32f6126mr2862185ybn.22.1713550308636; Fri, 19 Apr
 2024 11:11:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240419-x1e80100-dts-fix-mdss-dp3-v2-0-10f4ed7a09b4@linaro.org> <20240419-x1e80100-dts-fix-mdss-dp3-v2-1-10f4ed7a09b4@linaro.org>
In-Reply-To: <20240419-x1e80100-dts-fix-mdss-dp3-v2-1-10f4ed7a09b4@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 19 Apr 2024 21:11:38 +0300
Message-ID: <CAA8EJpomLDLf0QwKXV1s2VTqxxQsKLJEGdyYYbWKGEP8A4uyyw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: x1e80100: Drop the
 link-frequencies from mdss_dp3_in
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rajendra Nayak <quic_rjendra@quicinc.com>, Sibi Sankar <quic_sibis@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 19 Apr 2024 at 19:14, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> The link-frequencies belong in mdss_dp3_out. Drop them from mdss_dp3_in.
>
> Fixes: 1940c25eaa63 ("arm64: dts: qcom: x1e80100: Add display nodes")
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index f5a3b39ae70e..5f90a0b3c016 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -4095,8 +4095,6 @@ port@0 {
>
>                                                 mdss_dp3_in: endpoint {
>                                                         remote-endpoint = <&mdss_intf5_out>;
> -
> -                                                       link-frequencies = /bits/ 64 <8100000000>;
>                                                 };
>                                         };
>

Not to mention that limiting DP output to HBR3 only is wrong.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

