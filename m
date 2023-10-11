Return-Path: <devicetree+bounces-7710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C53A7C523E
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:37:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5FE441C20C24
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:37:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3EEF1E531;
	Wed, 11 Oct 2023 11:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DSI5lwUw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E21791078D
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:37:11 +0000 (UTC)
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E4BB98
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 04:37:09 -0700 (PDT)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-5a7db1f864bso9196297b3.3
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 04:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697024228; x=1697629028; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ADnQSRKfiE11Fw6NWJPg4jyr5BhP2bgI5UYJpaw9Vtc=;
        b=DSI5lwUwDGyERG61xBXpUKSy3GvB/kfAiO+etSzyzwvKW7xInaTSA5mMhXMj4UTCGj
         56ph2HQPIykn15aWXu4RdNCQ6i6VnEbzP9NZV6mqxkNXck8kJd7F8BQXN+Ug4RM3FeE2
         OkXA5YAVaHycYoGtI8kUGVIR42GEyf4RQzfTY3JTBW6a84+wuHiIV9Ju5ZIXmFdrvhnR
         +8pHhBHViQZNAWFR6NIwlC8sBhI1oDJaBRLkyV2T7rLbbHeCLKAKDsed9qIUkKfZ9vLG
         wJbHF5vecCFG0w4mzYWYIy6rFyUZl8fB+6goZHXEtnjFpS3LsAhbvojpFkW6pUduu4zg
         NCUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697024228; x=1697629028;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ADnQSRKfiE11Fw6NWJPg4jyr5BhP2bgI5UYJpaw9Vtc=;
        b=rnCWzLP3z48o9vNYPiE4xltvvv0kPcYYNf5RrcrE2Tc6/YvobaYuD5aaD4Ih8pJ3Te
         HXvvFRuKiTFFV+ray+vU1HNx9YSCHyDI3Jowje9tXtOzhOkdlJpjAPKWS4uQyWbKFAiV
         akB5f2em804cTRdGYjM3Zk7spZI5mucjZ2TC1Vo/PCyOMMGWc9x1NiScWKazz6pTaMeM
         eU/8RWCb9wLdUwBFXMEibjCMXXwFWPEq373TlpltbjUPupGagDRsRcBeu8ogRiqfaM7U
         HU6wIXcUkcSln+qampp/PeW6ThXWx/IGwMxMP365aEeJch+XuIG4dwikPbEiNk5kK7LI
         Za5A==
X-Gm-Message-State: AOJu0Yx85q3o4FFMpV2x3MGnVCQanbcO9jAb7sa6z9C0T0bn5vBY921U
	Vz3aEYHB65UQfYwk+tElfkVcSKady2eZwO8KHkHjLQ==
X-Google-Smtp-Source: AGHT+IFRpepGKSGvXbAwCvg5/0it467EZf0qhpiwowhNbkcbVmcXi8gnzAdqnBvYtzILhbVKUdAlRHR97OtZsiekmHc=
X-Received: by 2002:a5b:20d:0:b0:d15:7402:f7cd with SMTP id
 z13-20020a5b020d000000b00d157402f7cdmr19392771ybl.27.1697024228604; Wed, 11
 Oct 2023 04:37:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1697023109-23671-1-git-send-email-quic_msarkar@quicinc.com> <1697023109-23671-3-git-send-email-quic_msarkar@quicinc.com>
In-Reply-To: <1697023109-23671-3-git-send-email-quic_msarkar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 11 Oct 2023 14:36:55 +0300
Message-ID: <CAA8EJpoLxeSvxjcyq1BMR9XuAffrxLmO-eaBYJ+Fhnb4zYmxUQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] phy: qcom-qmp-pcie: add endpoint support for sa8775p
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org, 
	quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com, 
	quic_nayiluri@quicinc.com, robh@kernel.org, quic_krichai@quicinc.com, 
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev, 
	linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, 11 Oct 2023 at 14:19, Mrinmay Sarkar <quic_msarkar@quicinc.com> wrote:
>
> Add support for dual lane end point mode PHY found on sa8755p platform.
>
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c   | 41 ++++++++++++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h |  2 ++
>  2 files changed, 43 insertions(+)

Two minor questions.

>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index a63ca74..962b4a1 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -2147,6 +2147,38 @@ static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x4_pcie_rc_serdes_alt_tbl[]
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_CLK_SELECT, 0x34),
>  };
>
> +static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl[] = {
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_BG_TIMER, 0x02),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYS_CLK_CTRL, 0x07),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_CP_CTRL_MODE0, 0x27),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_CP_CTRL_MODE1, 0x0a),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_RCTRL_MODE0, 0x17),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_RCTRL_MODE1, 0x19),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_CCTRL_MODE0, 0x00),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_CCTRL_MODE1, 0x03),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYSCLK_EN_SEL, 0x00),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_INTEGLOOP_GAIN0_MODE0, 0xfb),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_INTEGLOOP_GAIN1_MODE0, 0x01),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_INTEGLOOP_GAIN0_MODE1, 0xfb),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_INTEGLOOP_GAIN1_MODE1, 0x01),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_CMN_MODE, 0x14),

I should check whether we miss QSERDES_V5_COM_CMN_MODE in
sm8450_qmp_gen4x2_pcie_ep_serdes_tbl, which is otherwise nearly
identical.
Also do you need to set QSERDES_V5_COM_CORE_CLK_EN here?

> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP1_MODE0, 0xff),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP2_MODE0, 0x04),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP1_MODE1, 0xff),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP2_MODE1, 0x09),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_DEC_START_MODE0, 0x19),
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_DEC_START_MODE1, 0x28),
> +};
> +
> +static const struct qmp_phy_init_tbl sa8775p_qmp_gen4_pcie_ep_pcs_misc_tbl[] = {
> +       QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_OSC_DTCT_MODE2_CONFIG5, 0x08),
> +};

This is the same as sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl

> +
> +static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x2_pcie_ep_pcs_alt_tbl[] = {
> +       QMP_PHY_INIT_CFG(QPHY_V5_PCS_INSIG_MX_CTRL7, 0x00),
> +       QMP_PHY_INIT_CFG(QPHY_V5_PCS_INSIG_SW_CTRL7, 0x00),
> +};

Could you please confirm that these registers belong to the V5
namespace rather than V5_20 one?

> +
>  struct qmp_pcie_offsets {
>         u16 serdes;
>         u16 pcs;
> @@ -3043,6 +3075,15 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x2_pciephy_cfg = {
>                 .pcs_misc_num   = ARRAY_SIZE(sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl),
>         },
>
> +       .tbls_ep = &(const struct qmp_phy_cfg_tbls) {
> +               .serdes         = sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl,
> +               .serdes_num     = ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl),
> +               .pcs_misc       = sa8775p_qmp_gen4_pcie_ep_pcs_misc_tbl,
> +               .pcs_misc_num   = ARRAY_SIZE(sa8775p_qmp_gen4_pcie_ep_pcs_misc_tbl),
> +               .pcs            = sa8775p_qmp_gen4x2_pcie_ep_pcs_alt_tbl,
> +               .pcs_num        = ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_ep_pcs_alt_tbl),
> +       },
> +
>         .reset_list             = sdm845_pciephy_reset_l,
>         .num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
>         .vreg_list              = qmp_phy_vreg_l,
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
> index 36cc80b..6ee1c33 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
> @@ -11,6 +11,8 @@
>  #define QPHY_V5_PCS_PCS_STATUS1                                0x014
>  #define QPHY_V5_PCS_POWER_DOWN_CONTROL                 0x040
>  #define QPHY_V5_PCS_START_CONTROL                      0x044
> +#define QPHY_V5_PCS_INSIG_SW_CTRL7                     0x060
> +#define QPHY_V5_PCS_INSIG_MX_CTRL7                     0x07c
>  #define QPHY_V5_PCS_LOCK_DETECT_CONFIG1                        0x0c4
>  #define QPHY_V5_PCS_LOCK_DETECT_CONFIG2                        0x0c8
>  #define QPHY_V5_PCS_LOCK_DETECT_CONFIG3                        0x0cc
> --
> 2.7.4
>


-- 
With best wishes
Dmitry

