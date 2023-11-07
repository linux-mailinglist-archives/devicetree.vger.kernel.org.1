Return-Path: <devicetree+bounces-14389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D1B7E3FC7
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 14:10:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 628F81C20A1F
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 13:10:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BE7B2EB07;
	Tue,  7 Nov 2023 13:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GMhePyp1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAE232DF91
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 13:10:24 +0000 (UTC)
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB807199E
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 05:10:22 -0800 (PST)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-5a82f176860so67560537b3.1
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 05:10:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699362622; x=1699967422; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Wm1Mb5/Vjq9aMkJlsrjTa8/I47O6pvYgHKx9Bcn4a/Q=;
        b=GMhePyp1xSjoCtMzDE13LEVP1aNRD09yC5boje5juuXie05U1E7JcwHAuYp6cMJIEQ
         O58QaTxVxhwvfh3deAsZBik+Et4fRdy+WnI2yMVNtYlgscFkRWkr94NxIaUWTHKqr+bh
         jwR6jv4pqvYaM9ZwKZ3QZSJJoTGlr50iTsx9zicd0otcH+abyYyO9U6b29x3+Df94zQw
         hkMYFAd4dJxHRmTCe5cR3TWrpBrEshrQOUSE9rakadtSUilUEUftY9EGx+h0nVeMvxqf
         3Y1X4kSdPffdpC3CzTPrEHxbDb5Yu+n20XNBl2VZpErC4KjvJHS26c8TLSefY/Yrn+sS
         lHgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699362622; x=1699967422;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wm1Mb5/Vjq9aMkJlsrjTa8/I47O6pvYgHKx9Bcn4a/Q=;
        b=OjWceGTPAiCdHhNP1LUpjgLx7OcJIlOb1l/IsOmL8TzkBP9SeIyKpIC0AuWn4mFNED
         KFMmnYR+MNM5vO0Kzf68nlWS9bTb43ksmFHtbSYI7OY8xZEhZ2S6ZtLWEcXlRgTZO9xU
         6lvmT7B4jyplayqUI3SrlmiTbAzbiC29EqvHdi4EYpdrE7m++3J1bv+ahx4I55d7lojg
         /fIubITUdzriQSnTfZP/Ortg4XjTNlw3CYIbqvXhAz+ocKmw0c0YvEv5JvJzcn5MXYCo
         WG8rtwN9ZHdo3dBuf0sLVJe2H9sPl7PDzVCnIq80EaxXv50se9Dcj1mivyJdzvuL5/IX
         9dQQ==
X-Gm-Message-State: AOJu0Yxc/GFjV4nk33Og0FI1AgXWmAZck5iO8886GMr03+MJ6zQVv4iD
	a5jCNZ1thwzg+Yn2x3yXpVc5/k59m+vYh5Oadp1GHg==
X-Google-Smtp-Source: AGHT+IF5Y2PdTK3EgzgxLoQDJvc7JWtJeaqzhWMhuNj03yIKxJpo/mL6Uhb0mf5EVPARRWo8zNGIUpAEY6Ec32rjXXY=
X-Received: by 2002:a0d:d48a:0:b0:5ad:4975:c860 with SMTP id
 w132-20020a0dd48a000000b005ad4975c860mr13979075ywd.39.1699362621854; Tue, 07
 Nov 2023 05:10:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1699362294-15558-1-git-send-email-quic_msarkar@quicinc.com> <1699362294-15558-2-git-send-email-quic_msarkar@quicinc.com>
In-Reply-To: <1699362294-15558-2-git-send-email-quic_msarkar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 7 Nov 2023 15:10:09 +0200
Message-ID: <CAA8EJpp4E7L0JZjj3mT_2SQHeA6az9uwtaF3_diZ_McpGRg-Jg@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] phy: qcom-qmp-pcie: add x4 lane EP support for sa8775p
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org, 
	robh+dt@kernel.org, quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com, 
	quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com, robh@kernel.org, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com, quic_parass@quicinc.com, 
	quic_schintav@quicinc.com, quic_shijjose@quicinc.com, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 7 Nov 2023 at 15:05, Mrinmay Sarkar <quic_msarkar@quicinc.com> wrote:
>
> Add support for x4 lane end point mode PHY found on sa8755p platform.
> Reusing existing serdes and pcs_misc table for EP and moved
> BIAS_EN_CLKBUFLR_EN register from RC serdes table to common serdes
> table as this register is part of both RC and EP.
>
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index b64598a..7114b4e 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -2099,6 +2099,7 @@ static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x4_pcie_pcs_alt_tbl[] = {
>  };
>
>  static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x4_pcie_serdes_alt_tbl[] = {
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIAS_EN_CLKBUFLR_EN, 0x1c),
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_IVCO, 0x0f),
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_CCTRL_MODE0, 0x36),
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_CCTRL_MODE1, 0x36),
> @@ -2125,7 +2126,6 @@ static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x4_pcie_rc_serdes_alt_tbl[]
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_STEP_SIZE2_MODE0, 0x07),
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_STEP_SIZE1_MODE1, 0x97),
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_STEP_SIZE2_MODE1, 0x0c),
> -       QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIAS_EN_CLKBUFLR_EN, 0x1c),
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_CLK_ENABLE1, 0x90),
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_CP_CTRL_MODE0, 0x06),
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_CP_CTRL_MODE1, 0x06),
> @@ -3114,6 +3114,13 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x4_pciephy_cfg = {
>                 .pcs_misc_num   = ARRAY_SIZE(sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl),
>         },
>
> +       .tbls_ep = &(const struct qmp_phy_cfg_tbls) {
> +               .serdes         = sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl,
> +               .serdes_num     = ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl),
> +               .pcs_misc       = sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl,
> +               .pcs_misc_num   = ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl),
> +       },
> +
>         .reset_list             = sdm845_pciephy_reset_l,
>         .num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
>         .vreg_list              = qmp_phy_vreg_l,
> --
> 2.7.4
>


-- 
With best wishes
Dmitry

