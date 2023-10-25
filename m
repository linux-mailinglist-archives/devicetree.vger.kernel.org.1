Return-Path: <devicetree+bounces-11704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E10A97D65DF
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:54:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D6E91C20B3F
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:54:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE6CB1F607;
	Wed, 25 Oct 2023 08:54:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ix5VLswD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629001F60A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:54:26 +0000 (UTC)
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E382F130
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:54:24 -0700 (PDT)
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-d9c66e70ebdso4874376276.2
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698224064; x=1698828864; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QecDQjqHLVvpHg006tlf1j+vCUfglYL3ZKJX8YIByeY=;
        b=Ix5VLswD/abFH+lep9L719cV7UV9OoAoT1p9bZrB1DIHXk0s2Rpy/72gcvc9kMV4uO
         SQR80C1IWTckMJkKHoQKdLskU1+Vqvbb5mREww4Eu/iVoGQZpDTf78T7hKkUG8ggsYfi
         af1VfqJWOGzEVK7PGmGTs6HaQ95qct3Ur8bGkrysuZcPwNnFUx35jeetHwcSs2kS2RZi
         yKopOacAkb7zptvcjd+chcr+3NmTq6m6JjmYQAH/55abcllOV/rlgcVPojDf4A+hGBMF
         eCU5Cl0DIpuTiwfsXRob/FwJAgPpCp1zBNdumqEWaGrVZCZ3Rs2Ydyo2xOIgGptPCmHp
         1VEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698224064; x=1698828864;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QecDQjqHLVvpHg006tlf1j+vCUfglYL3ZKJX8YIByeY=;
        b=v5aYjvhzSoqg6pGjlGff7tRwyJ6lI8/ACnNKlaBMwtUJ8chWFFB3wgkyQnE0d9HzhN
         V0UB50jGZpIx05a56MNL1jwH/a+S80agvyTugANmrTrDtd1ajB0W9WRDpJM416pe2IRG
         jGJekfQQkZb7y6lf9qOxGHupzKQnLRBPOozqpPiOc0sqwertZvC9qKCWCsI8PVPDCURA
         O0V3hxoV9btDwzXEcHO9OscRLodUDuwrwtnjcr+o9i0v9yhE15kqR08+z7wNODxpmMwk
         OmesLvca0jElpNfQ2N1Bkq5lkBBQP0lJiP9f9VtLoTzvR2fONHR6H+13HtXn5qgYF7L+
         5bsQ==
X-Gm-Message-State: AOJu0Yz5/SR/aEO0oeS8vLyHJJmkSU9vUstMRLuCAOjfAHi/TpbTzxRj
	16gOW9u3waffIESHeYNVrFj2ThCKmo6dpbMuTjiVTg==
X-Google-Smtp-Source: AGHT+IH3K4Q7pknM1I5B7pKsXdsaVUiTIYG6c6iSatv1EUWsCGs8m2b6Zpy65Pq+Q7ybNggFu3TV5l/LRdXBlTF0Kh8=
X-Received: by 2002:a25:cecd:0:b0:da0:4201:6365 with SMTP id
 x196-20020a25cecd000000b00da042016365mr4494885ybe.3.1698224064152; Wed, 25
 Oct 2023 01:54:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org> <20231025-topic-sm8650-upstream-phy-v1-7-6137101520c4@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-phy-v1-7-6137101520c4@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 25 Oct 2023 11:54:13 +0300
Message-ID: <CAA8EJpr4zLPZrTbtPEuTTtRZy2NuCS-=vMeC7K8TLTJnKEf4ZQ@mail.gmail.com>
Subject: Re: [PATCH 7/7] phy: qcom: qmp-combo: add QMP USB3/DP PHY tables for SM8650
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 25 Oct 2023 at 10:46, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Add QMP USB3/DP Combo PHY support for the SM8650 platform.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

