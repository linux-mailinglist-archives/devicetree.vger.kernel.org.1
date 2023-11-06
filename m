Return-Path: <devicetree+bounces-14091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DD07E2093
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 12:58:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF04E28133C
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 11:58:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CB991A703;
	Mon,  6 Nov 2023 11:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VsALbmb6"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9F011A5A4
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 11:58:18 +0000 (UTC)
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FD9CDF
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 03:58:17 -0800 (PST)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-5a82f176860so52276977b3.1
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 03:58:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699271896; x=1699876696; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+DHrhiLn9HOdOplRClwUGQLEk9jhkaaAAmdhl2iHxq8=;
        b=VsALbmb6xJ+cloiQA4d1FbFsD3y5ZfF0AuLDHpNBYZvvJqwIOPMNhX9/5vGHuXQDvD
         7I0ZYokF1mNZj5PRBsjeE4CN2zZpwJqpgNu0xEnvrzJjQbzhQ1eAOxGrtKtqDJKG2A+l
         sf1+r2yJwncKzkXz6+NQVKdV/Nc5dgb8UtmWLVoHThp+OXM5yeC6O9tlpA0hdRgbKX4b
         2EmjpqnJlodrzHO/ylaeAeXdzZW6CpoqNgLeafWPCcFsGMc4q3EbxH9V53HBC9PgdiJ6
         m47yvqXSG4UH/PYWPSh9/SaUEPy2wHPZMcO7At38RKYwrWquxlhfuclzhigQKYkrAQNh
         RKVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699271896; x=1699876696;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+DHrhiLn9HOdOplRClwUGQLEk9jhkaaAAmdhl2iHxq8=;
        b=Vbq9A3tycbchRT5IlrNnI+0/yPwpDJEas7bpxceyTPEq4wxe2uZlSPNOIK7Jr7nKCI
         Tqk3C6KyelQm3tPX5+RL9NAaBbEB0EU4J0K/aC+zQEWkiuXN6oAZVkINeMKPVUA8x5O7
         CaEhe4q1OczeBjUnGw9rNzEwZWf+LWYGYkx1b8SniqsDbJcvMVhHxFLr9bjdtYNe8i5H
         6bGX4zArqPx0rDiXb58CiL2dZbGAaDNusZf2xiyxkrexBIiuyKVg/YBSiCrGaeFjKT/3
         IcJpuAAVQ8UL3F7TvJp/Zd6s5v4eap0mjhVqWEzij1tYCKrvQAj1UBz7C8gcz+Fu7LMp
         vGWw==
X-Gm-Message-State: AOJu0Yzqdxr/jMkiWpIZ2LxXYhL62QFjG/VNcwvi/eAFT3NIP20EoAts
	JuLOiSw9SdKpoccHLk72eyaGSsPovGnW/jzeqwuS8y5XEGwF7Ptq
X-Google-Smtp-Source: AGHT+IEDNyCeg7rftIKH8imNcdC4wxfWz2fHb+vxe9+X00JFqxygWdEvIdBo39mj5SI7JjmR/5Ywnk7szgLfZGlXiVk=
X-Received: by 2002:a0d:ca50:0:b0:5a8:e303:1db2 with SMTP id
 m77-20020a0dca50000000b005a8e3031db2mr11350804ywd.23.1699271896321; Mon, 06
 Nov 2023 03:58:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231106-refclk_always_on-v1-0-17a7fd8b532b@quicinc.com>
In-Reply-To: <20231106-refclk_always_on-v1-0-17a7fd8b532b@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 6 Nov 2023 13:58:04 +0200
Message-ID: <CAA8EJpo3oi20p55CLxacdMJTKgr-6Wrnx=idb_D9U8p482mpgg@mail.gmail.com>
Subject: Re: [PATCH 0/2] phy: qcom-qmp-pcie: Add support to keep refclk always on
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_vbadigan@quicinc.com, quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com, 
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com, quic_parass@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Mon, 6 Nov 2023 at 13:53, Krishna chaitanya chundru
<quic_krichai@quicinc.com> wrote:
>
> This series adds support to provide refclk to endpoint even in low
> power states.
>
> Due to some platform specific issues with CLKREQ signal, it is not being
> propagated to the host and as host doesn't know the clkreq signal host is
> not sending refclk. Due to this endpoint is seeing linkdown and going
> to bad state.

Is this a board issue or an SoC issue? In the latter case this should
go to the PHY configuration structure instead of being specified in
the DT.

> To avoid those ref clk should be provided always to the endpoint. The
> issue is coming only when ep intiates the L1.1 or L1.2 exit and clkreq
> is not being propagated properly to the host.
>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
> Krishna chaitanya chundru (2):
>       dt-bindings: phy: qcom,qmp: Add PCIe qcom,refclk-always-on property
>       phy: qcom-qmp-pcie: Add support for keeping refclk always on
>
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml    |  5 +++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c            | 21 +++++++++++++++++----
>  2 files changed, 22 insertions(+), 4 deletions(-)
> ---
> base-commit: 71e68e182e382e951d6248bccc3c960dcec5a718
> change-id: 20231106-refclk_always_on-9beae8297cb8
>
> Best regards,
> --
> Krishna chaitanya chundru <quic_krichai@quicinc.com>
>


-- 
With best wishes
Dmitry

