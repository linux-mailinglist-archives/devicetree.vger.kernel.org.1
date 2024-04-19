Return-Path: <devicetree+bounces-61023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC978AB4D9
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 20:12:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B08F1F22E55
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 18:12:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFB2913B780;
	Fri, 19 Apr 2024 18:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y5jhVdXZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 784BA77F13
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 18:12:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713550367; cv=none; b=FpndQ6ThycX077b80/MZy9ap3HflFg41Z7f0C7A19ICIjxQKzTwZB3f6M+z2hhXxsFvvd/pQs2maM+tbVXkNuN02O2WnPtc6U2lovfJqsWziO4axVpN8rUoAA3ln06lhgUgZsSN7NPdKTnTx/kzSX9vrgIJg6RtBvFU9UO9qOnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713550367; c=relaxed/simple;
	bh=bcFICBmin4/tFtAgRJRkk8O34T3w5c4G9w2ytkNfj7s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eEqspOv4B33TxR5A8B62RVtMy33k+a/o1uuJXxBHD4ceO/WJkmhFJThCoH3Icl0850lyJWo7V8lHwEgk9nkjt1Z8BL76Ts8HYEsKNKlNaIjPf2+F7nun8KjnLDS7VkqbzNrffDXQWofzsp9/wM4O3YXNO15NxCpPEuc+C1soNMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Y5jhVdXZ; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dcc6fc978ddso1973075276.0
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 11:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713550366; x=1714155166; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lGEtTj/vH2KpXzCwJtz87h7PGuGLo80xWA52Z7kyHqs=;
        b=Y5jhVdXZIGCn5kTEAlpr6Is5d6bGprOLt98hcW8VF1LbDaZcYy3v+mFTpsxumdQItl
         ICG8Bpfc57/+3JTm5Xg6hoSYdcg8xh1iJ/QHFLOe1iugNynsq29Q29YvEEQ8icpksdq6
         DCN7syVYTjm8PYqeoGgRfsRIZGl+M9yYn0++GbCs0xTKTotqR8QM9/Ok338n8YQlLiTp
         K8HC+t1j0tlI0h/jN0eMY/WxmevDf6XocypjelXmEiNVbvxJZMVvFjFn/eY1v/Gt8FQz
         8KX1oRL29DcZIC+lpi1dQ6xRUdq9BqEL9ED4MoWNrp9eoGUEuRoSoTnyHl3H7/EszXm9
         uTjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713550366; x=1714155166;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lGEtTj/vH2KpXzCwJtz87h7PGuGLo80xWA52Z7kyHqs=;
        b=OHlJumYqDiPt4UWV6XBo5MY/QQwqG0o/VhOcdOxzuqC6hPGS+JL1RQFTkjlsDmdKMU
         9I+84VQaSXe84kMxB7KF38Z2oPXBZ2Y2iQobPhSElF7jvEJRSWqdxRSWuNtTOaVNdKya
         BbjkKDim/+CGwGFpaE9vVYSaKyY8FBzLmRAhbuQXclkmpFKxJbvyh3On7FzM9Y22FHUU
         RXH0K0/9oqGQ2ux1hWAOvfKV3dOUbfaMcIWSdbgM87nf3UxQSYsFu/3psQ6aWi5KzhKt
         wltxIm1t6iKPIE2gDkgAZ0r55j17saYfSP+T/+viabwsFzY/oB3bOVjq3ubZ8ZySg6Tc
         Y1kw==
X-Forwarded-Encrypted: i=1; AJvYcCXqMRoHSX82E+V6UhribaOH6YlFkRxSRfPKeqk8L7/R5Ltzvy5qeLZZuzWDr5b3Fl+ArubXyYdFtUuy/lfSQGGXRaiPOSdJmhybSg==
X-Gm-Message-State: AOJu0YyPYjczDeSG6h3c5hw6JrK1TouEk6piQuyWyCvNQAYHKZVYF+JJ
	DoFOWclbqLXrmUTdZMHZdb8oXp5CRGASwwaZky+GvVWbayHkaulZd6WJyOjXIwU2MHmtJE+BHV1
	eoOb/v2jXBu3GKGkWBxdH2kx8+pTufrFrKrxWRQ==
X-Google-Smtp-Source: AGHT+IGQ4xZAlrLZPCqIX2Z5PVXFtctMByQgz4M8JwmgU34xnfsoRSL8OUzYibOugChD+d3y0VfIk2HrGsMA0Iq2jVk=
X-Received: by 2002:a25:8051:0:b0:dc6:f0ac:6b53 with SMTP id
 a17-20020a258051000000b00dc6f0ac6b53mr2627365ybn.15.1713550365672; Fri, 19
 Apr 2024 11:12:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240419-x1e80100-dts-fix-mdss-dp3-v2-0-10f4ed7a09b4@linaro.org> <20240419-x1e80100-dts-fix-mdss-dp3-v2-3-10f4ed7a09b4@linaro.org>
In-Reply-To: <20240419-x1e80100-dts-fix-mdss-dp3-v2-3-10f4ed7a09b4@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 19 Apr 2024 21:12:35 +0300
Message-ID: <CAA8EJppWZ0uvjHwiLkKFPsEm+0FVF8Wa7zbm=npVmkcTHvEicw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: x1e80100-qcp: Add data-lanes and
 link-frequencies to DP3
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rajendra Nayak <quic_rjendra@quicinc.com>, Sibi Sankar <quic_sibis@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 19 Apr 2024 at 19:14, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> The data-lanes are a property of the out remote endpoint, so move them
> from mdss_dp3 to the mdss_dp3_out. Also add the link-frequencies to
> mdss_dp3_out and make sure to include all frequencies.
>
> Fixes: f9a9c11471da ("arm64: dts: qcom: x1e80100-qcp: Enable more support")
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

