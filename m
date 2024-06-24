Return-Path: <devicetree+bounces-79308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE29914995
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 14:15:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 317301F24197
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 12:15:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9170613C3D6;
	Mon, 24 Jun 2024 12:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cP4mIub4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE0413B7BC
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 12:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719231284; cv=none; b=Mgg7TcGSx2/db/T2iApYmaXg02bBxo4ppXYZafbAJ3GM5Se1deIhy7rBuxyUIn8YuTmwpDs4LWV9yeaB3dAI2QLJBDE9S0An/UwwwZKV3nzwjFGB1aH0GI4seMXFAGy4Yhk6F3nIf5TFQARKp0LdDoTWdZv4UZOdf8/eFDZgalU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719231284; c=relaxed/simple;
	bh=Gxw2i4Bpr72gUzRUH2vzyv7nhpA9aEHobxKpIugQ5rs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=F0jjHM6USse8xNqOqPimAEUO+/+QgtzGb3AigktA0c8kY0KS8IGc8+buTDQzaP5SfdJzyWLne4Kol7w4e7s6Fc+TPq8hDJQgqdGnzvIBzqfH39477At7BXU9TrEO/UbfxtcgbnJzipnGa1WNuF2NNqPStwQOeW2IbQD8JCuGNZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cP4mIub4; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-63bdb089ffdso32409047b3.3
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 05:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719231282; x=1719836082; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=O6E+NAhE24Vj48sHTkPAWal2XlcL94IcwqY5bFeQzKs=;
        b=cP4mIub408806pBH2sxYcAfwmuOH1nSgoD0fY8zlYItZ5JEgpMnXAT1AS0lK89Z9OR
         vcIU672cAgxYBedP4URuGMzu57+V7V+uYL62BvD6KU82IYws4OiA0fve1D9q32u/UhvM
         EDu03/BhW6UUQiHPko38SJLPcvmiNx9Ccf6oScquWR8LG0q7i1EHrBpK9kFWm3pkOflC
         WjsLkzzELnpX+lAbz5mzzNZL1V2aQQIWF4rREs6U7Omy323C3i3duNOllrWJHrBOOaxp
         XkOzPmNiO6Mr1oH2nTfeSSLLa8z1J58/p8v5ZzFlvgrgD5AlXhPD662i5lt6POcBL7SR
         fwpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719231282; x=1719836082;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O6E+NAhE24Vj48sHTkPAWal2XlcL94IcwqY5bFeQzKs=;
        b=XnfHb54ZXtNTy3EFxh2vJi6wTJ4VGaVHn+sVYnVXIOWYQ9SO6/4Tdpq92tIYcCvsbQ
         ghpaCwa7AurzdIT9rK40lNogo9LYSSUWCS8Tofvdfez0b0j/4tfjRRj2sFQmEDerYX5f
         7DMlAHSpX2DP3dmkUHPZdSchEP4YccBCyjUMeNIyuMDHrfpMIQyK4iBAHeKt39sGFzw/
         FLhrwAx6M6uZyASnwmHENAQo9JpaLPosY9R3SfK2nPoL/mo43bHDil2Ridd1V9+81F7o
         dgs2q3/1KmQc8Pj6sgXeTYmzdFo6f2X9RH4p7WqUF2Bok07KWNdgnDlmsmEUyRW4jeKM
         H0Sg==
X-Forwarded-Encrypted: i=1; AJvYcCVrdCNLdm5xKcE+CDLCfkNtySUcQr5uNFOj4leZx8sSuO8X4ayNlfG3/LNVNwGwz9rJ63f1xeRxKX7qODZhyNPlLS9Ageq4n68ceA==
X-Gm-Message-State: AOJu0YweecJgjI6HMgdC9oRlvt7tBaoUAM/MRTGPW2C+jq+Ca/m/QIco
	erTs5f4ugdJzRHQq2iXklPX0hOrRAMY55dzVECsd+uOBDD76F9yoJS2Ihln1kO/OvNwN8rjFkvZ
	Gzbqrn4nwnwssHlZ2qa6rUb2FdVMGNpKyYVHaXA==
X-Google-Smtp-Source: AGHT+IGQBENYbZC777XGeY3LRTT13xLRxI3cxE38AzllJFwU6q6lBrNDEero0nGMghNsKnGC0bcbVv2XlJykDr+2mZA=
X-Received: by 2002:a81:a803:0:b0:632:7161:d16c with SMTP id
 00721157ae682-643409d7f16mr38317587b3.28.1719231282038; Mon, 24 Jun 2024
 05:14:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240624120849.2550621-2-caleb.connolly@linaro.org>
In-Reply-To: <20240624120849.2550621-2-caleb.connolly@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 24 Jun 2024 15:14:29 +0300
Message-ID: <CAA8EJpp-qCFtPiSVe-+UbYB2BDKH5U3=x+qS_Xb1zn=Pesxmxw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sm6115: add resets for sdhc_1
To: Caleb Connolly <caleb.connolly@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, Alexey Klimov <alexey.klimov@linaro.org>, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 24 Jun 2024 at 15:09, Caleb Connolly <caleb.connolly@linaro.org> wrote:
>
> These are documented and supported everywhere, but not described in DT.
> Add them.
>
> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Cc: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm6115.dtsi | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

