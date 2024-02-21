Return-Path: <devicetree+bounces-44113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 778AB85CC77
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 01:01:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 329B428510D
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 00:01:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07C7A290A;
	Wed, 21 Feb 2024 00:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wb2/I4f5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A4E4428
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 00:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708473673; cv=none; b=VPvhBg5+v8p/u5QXVUOAHDJsF3rlOhVQ6kfH/Bpm+NToKOWfWIjKKYKMu4LpqHU++K/TgjzIZFTIRq6Caun6jv/7ctcQLPtnPddq0u2+mcsJe6jjI3Djf2me+cAUQu5gXLy59o6jpSJaWEpjcw24fzGG4vudqqt9C4Tk9xPUxZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708473673; c=relaxed/simple;
	bh=YT82tQv36KhBq/RLsxxfjh9daYWJeJ/uSm7Nea0KjLU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=K4pnniBSmdDR0VUbegs+wtkk60oj3qRNS6lysZnV3z8/C/sitIQxACzGUKEXRueYsLKFnmcyI0l0czXkXbh/UEZ6L5dwMJUmzVOtS+YMmj6WCObg6D9aCO7biRWZIvEjD9qsEOxCCwj1xqAVpvRCanrmRHonfZKdNH/suLi68A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wb2/I4f5; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dcc7cdb3a98so6237800276.2
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 16:01:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708473671; x=1709078471; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=G0oPPjBzy9DSg81CmxxzMOi5kgIq+VDsp6cs8swUMVo=;
        b=wb2/I4f5XUL4eTOtOP890jnCmuLgoL/bM8hfrHnSi1IxZyqp642F3V9p1/8BHoq/ve
         e0vJnrGN6bqe0vbUcviZ33IDir90AEhVRiHs088vfrlZ/SRXBXGn/ZLtdRJoE2UKZSVN
         WvcUEKm+g2x1Hy2jTEM/I6cRo+2JQLc6zKpWuKG4tBgTjbNwtHvZmkuIzQgUe/Y9u86k
         +ZVgomfqCqkVSqxFJo7vZN+DSOdaQP3TabnTVdCaWo7JwEuDaCchmRpZ2hUVqn1fzbEU
         o27ci2Ttzz4b3pxhMbFWUC9qFGg8CNA9c87ioTqPOVUO3mJq+IiOETLzpGF5BeV+Rb/j
         eilQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708473671; x=1709078471;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G0oPPjBzy9DSg81CmxxzMOi5kgIq+VDsp6cs8swUMVo=;
        b=iwarNGo7Q9oPXKIygvZkAkjqTfaxR8GBoTg8RF4FFGHjdMJKRAIiR6YLk5dkLFXuGZ
         4M2IfsLUlcBpRXQqNyntZddhJbjakp/t1pnPqPa3zd7B9omJrdK6u8AJ+QgVIBg5Fl8R
         Spfe0W8V3nau445pTPn8WUv7S/OEqUBkohr5zWk4BiqCMyAhLOKRe9ejjzbhC7YwiC0q
         Imv5JXfz3XC3K9/rzadmQaciIm6fWzXIAtNT5RssfNIIuoqe2QEcCINbTUdhP7HL86Vx
         AAmu08O8SrSL/bH+62hBkUcNZh7EsCqJw4gQQX5OcuNArBZe1+fTy4n1sBA9FWqfE671
         1XNA==
X-Forwarded-Encrypted: i=1; AJvYcCVoU0StP5EDJvNR4GALYwkYDTdIYqTo1TBu0dMFXMryH2aA6WCRRPJb+mp4y04W8/Jk4v2YMIE90yfy4wmsdS6llHMqw+1uOa1X1g==
X-Gm-Message-State: AOJu0YzPJr6uNjB4wy0agRqVeH2lx6F2IA3AmBqpCKaTWIfJBw1YK7qN
	gNnHBejtwEDb+nI2F5qvxwxPw6Rb6WiET/RPmA3Z3R/c/8PIBuuomGEHLpZn3GCK+nUuxiC0ub9
	O/z4WqShXRm0yENguh4jzBOijVgebnZdwIWtZKw==
X-Google-Smtp-Source: AGHT+IEqhvu/sPjOF0+od9x3JViU6gBZyp4VAGTIBlbM9Am3DLOO6gj84yHo0rRnj688//9UfY95dj7T/S3qJ8OpFh8=
X-Received: by 2002:a25:cdc7:0:b0:dc6:cbb9:e with SMTP id d190-20020a25cdc7000000b00dc6cbb9000emr14755191ybf.41.1708473671007;
 Tue, 20 Feb 2024 16:01:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221-pm4125-typec-v3-0-fdd0ee0465b8@linaro.org> <20240221-pm4125-typec-v3-3-fdd0ee0465b8@linaro.org>
In-Reply-To: <20240221-pm4125-typec-v3-3-fdd0ee0465b8@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 21 Feb 2024 02:00:59 +0200
Message-ID: <CAA8EJpqMiZDTAkFXuuw0A=-B4jLy_yU2xs4gti_kBcJEgYKmBg@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: qrb2210-rb1: enable USB-C port handling
To: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 21 Feb 2024 at 01:58, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> Plug in USB-C related bits and pieces to enable USB role switching and
> USB-C orientation handling for the Qualcomm RB1 board.
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

I didn't pick it from v2, please excuse me.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/qcm2290.dtsi    | 42 ++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 60 +++++++++++++++++++++++++++-----
>  2 files changed, 94 insertions(+), 8 deletions(-)


-- 
With best wishes
Dmitry

