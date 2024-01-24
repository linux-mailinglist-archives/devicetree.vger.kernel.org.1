Return-Path: <devicetree+bounces-34581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CA77A83A3B8
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 09:08:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 096301C22440
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 08:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C8F717542;
	Wed, 24 Jan 2024 08:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nVK5oPfz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97AA5171CD
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 08:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706083689; cv=none; b=K3Cg/giXzit8mg0lk/chjGqkmuJDJy7Ik9rPR769tj5ybboPKMT2+tVNvLG5qt+I5XVv1OKsY1IKOpEfS8orH0/QyrLUWdGre//pKWeGWTpyGiifWcBtdIgqS4Ek3+m4oHE6y+CxjfWX1LiTnGSEi6K+PgBVWwnhDLwi5PVDBZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706083689; c=relaxed/simple;
	bh=91SKWZKxZZJ9JjqBsEeN2LxEmIvX4sQqPRYAQaqFWFI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ED2A7ym/jVzo7MdIQBprf+eyoqXfAocVm1gHIB1orPSqxtG4RrDssXPPrVIZQEy7JvdPSrTydknqqMrVb1aVK4UUWQwQFoUEN+Le27MD3sD8JcNvgTJA5tKr1cHQlsC603HIPU20AxzZfpjw273+ca5OJKVL3yO5XAQ6MNwhsuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nVK5oPfz; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-dc223463ee4so4585245276.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 00:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706083686; x=1706688486; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2oicDxJ90c/wDJuJ0lxNnczG+6khLtrNzAW2IGNICIQ=;
        b=nVK5oPfzig3WsPDO+hAml4Kdf/SzPC0EMKjA6TIbVgAjx+vUbtCV54PVybfwapXHvD
         cGsT39mZjYQ4MV8gPM9TTVBu8QBZhs9jVJvVYGHWtF0T+hN8IxuXSb7Rvw9htO9fTvbc
         wuoK5cBMk9+64KENbLpLLI83JQK7eFbnIzG8wcDeVUFHVl8y+SwVh8AbL9WdKleB8hD1
         QWqaluE1OT2ejxcRHJNvrjgIsV4OokG6RMMlXGxCJvyG9/GOBaITIJ2iS32j9s6Pyy8w
         A0IH9gTyB6yj0uEdHGkcoXYaz1e3S5grxwNzBFoeAtx8ZOanPuxcm6d1tXifljtXDgJh
         qTmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706083686; x=1706688486;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2oicDxJ90c/wDJuJ0lxNnczG+6khLtrNzAW2IGNICIQ=;
        b=BZcWl3ZEsCy8dixzP7xiB4hfGNob2e4eL5OgKgJvX8YoHuyaiLFVu/kbzQh7Wk6g8C
         /+F99o3cF8oPVVsIwmiSEX/xGkID0XUXRHK/54QMxLUnxhtiwHsg97PLRs4kfeOyw4QE
         spXtA47rBtFHCqR77KOSlOPDg+nZnIARecbi9UPmH2KLiGvVkVinfa0/9y364f3FZPnP
         oN+BlrJ0fro1jRP7VI594erZUU4yWZxDpefRmt+9Pul58rIaCjVPuZrq/U6cLT4+6JZA
         o/EsiRt6VtRwpI5aAFe3X/5L2+FL2hEMnxFC9di9VXCAVHpawRB0Vptk7ERB7iNY/XQw
         e/5w==
X-Gm-Message-State: AOJu0YyMk6uotP2dYWh9BENSJJeS4+YBKzJiDSSJ0ZeRL8tFNQDxoZe7
	SOrCTHJrHyZb6eSUQw4EpJESZtxdJD9pxDF9b+sJWJdyH9RD5FNG+9p5f/vm+C6PQHjEZhPU06Q
	sS0soKziLrT3RIea6vTlsc1V8ZN5s1el/7M5csw==
X-Google-Smtp-Source: AGHT+IEBx+hbv8cP9QQzl1nlNfUSW8zsGd6/0L2c4D7VdKAIm+FH6gkg6c1ug2KhF8rkgn0s4KWP1B+MHSfUQwurYAE=
X-Received: by 2002:a25:bfcb:0:b0:dc2:303b:db2f with SMTP id
 q11-20020a25bfcb000000b00dc2303bdb2fmr308783ybm.101.1706083686675; Wed, 24
 Jan 2024 00:08:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240124023305.15755-1-quic_tengfan@quicinc.com>
 <20240124023305.15755-2-quic_tengfan@quicinc.com> <88e8cffb-024d-4f4d-ba1f-e0be9ee85e31@linaro.org>
In-Reply-To: <88e8cffb-024d-4f4d-ba1f-e0be9ee85e31@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 24 Jan 2024 10:07:55 +0200
Message-ID: <CAA8EJpqXS97FXoTwiLaSeHHEDOeBFRPRbCNR6WF-ArDm22tu-Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: qcom: modify the wrong
 compatible name
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Tengfei Fan <quic_tengfan@quicinc.com>, andersson@kernel.org, 
	konrad.dybcio@linaro.org, linus.walleij@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kernel@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Jan 2024 at 08:38, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 24/01/2024 03:33, Tengfei Fan wrote:
> > Use right compatible name "qcom,sm4450-tlmm" instead of
> > "qcom,sm4450-pinctrl".
>
> Why do you claim this one is right and other is wrong? Provide
> arguments. To me the compatible looks correct.

Yeah, but the driver (and the dtsi) use -tlmm


-- 
With best wishes
Dmitry

