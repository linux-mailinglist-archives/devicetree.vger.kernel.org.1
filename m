Return-Path: <devicetree+bounces-7753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5109F7C54EB
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 15:09:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 75B5B1C20DBC
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:09:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 668351F195;
	Wed, 11 Oct 2023 13:09:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I5YSYZ4q"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD421F198
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 13:09:31 +0000 (UTC)
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29E9BD8
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 06:09:30 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-59f6492b415so8472437b3.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 06:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697029769; x=1697634569; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PfPqdxr3xTk/B3lsOeG+GMaOaJ7iVKD4Sx4SQuaCBgM=;
        b=I5YSYZ4qO3uCQgEmMo0XJ6rtG3qFWzYQcT+hCNNjEqE+cn23u8d1kEQMI2TmzV3mEm
         W/TBvTQsDfa0Q6zpM6FiMkPm8CbHzp0Shkc7am5iwlE06UfBw13rHZYMQKXPwIECXfk/
         RE8upz9zflT6piqzhLKENG9xp7VFO6b7Ri6NwkPoQroeUTbrobJfXaCw6A8spd8VPJjb
         NOSXTdDXsyIGd8zbqbP9ujSkt2Pqj2k8CnvpvPBKXsZBawRJif2+yXjfZQvCjFDRrlxc
         h7zddrVbxMPPNxBn5yzk154LQha7yjo/1Q0/dboQTvkpvvqF1vTHDbG6eB7qesQkMQ8c
         a1gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697029769; x=1697634569;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PfPqdxr3xTk/B3lsOeG+GMaOaJ7iVKD4Sx4SQuaCBgM=;
        b=Cv77Y5YE5J9FZxD0dFtoEYQjQ/jheKr3/3gbqIlO4EhfRk6H4JLGnf8ZkDbV1nWWyJ
         aS7S4U10XMSy6qMazNnl2/+T8o1JRw7wGPMvX+kjq3j5FVpun3RLbw78doAuNa9I6hDq
         CFbrgOYgXFv+4QqDhDXeQv2PYPQeOHQ5DgZEm4r29DIT1NAhxuR88LCqdejTNpEe3wEZ
         N0se1XVYpOO+NNTTX0OBBLk7NV44TH0YWb8dmLdhIZkXElD20aZQYg9ngwH++gNlC5sa
         V17PRr2+eAClfSPY7/ovCSdzP+7fyoQUnaG5bc2amZczd0G6HNu1nJNAaHDG8LRDywZr
         QALQ==
X-Gm-Message-State: AOJu0YxzCXpwoEU0ve3i7SXn+GWO5qpcihipEo0QPss2D3WM683resZc
	56aJv06fHSwDfyQGdzAPBX5cCQdCIdKgXD5e803uTw==
X-Google-Smtp-Source: AGHT+IFswPBlcYNQL1CYPz5KfOjXULTHd35mYz4MleTy/lNTPkJMrGknvU2d1TxHVQUHvUKz9z2FzCKG+mqt/P0zb+0=
X-Received: by 2002:a81:6c92:0:b0:5a7:ba3e:d1d1 with SMTP id
 h140-20020a816c92000000b005a7ba3ed1d1mr3190162ywc.25.1697029769307; Wed, 11
 Oct 2023 06:09:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011122543.11922-1-manivannan.sadhasivam@linaro.org> <20231011122543.11922-5-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20231011122543.11922-5-manivannan.sadhasivam@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 11 Oct 2023 16:09:18 +0300
Message-ID: <CAA8EJprQvw3B_jyHLgB0GyJi_DKrhyq8gVGfcXraShD4tVCO5w@mail.gmail.com>
Subject: Re: [PATCH v5 4/5] arm64: dts: qcom: sdm845: Add OPP table support to UFSHC
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, myungjoo.ham@samsung.com, 
	kyungmin.park@samsung.com, cw00.choi@samsung.com, andersson@kernel.org, 
	konrad.dybcio@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, alim.akhtar@samsung.com, avri.altman@wdc.com, 
	bvanassche@acm.org, linux-scsi@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	quic_asutoshd@quicinc.com, quic_cang@quicinc.com, quic_nitirawa@quicinc.com, 
	quic_narepall@quicinc.com, quic_bhaskarv@quicinc.com, 
	quic_richardp@quicinc.com, quic_nguyenb@quicinc.com, 
	quic_ziqichen@quicinc.com, bmasney@redhat.com, krzysztof.kozlowski@linaro.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, 11 Oct 2023 at 15:27, Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> UFS host controller, when scaling gears, should choose appropriate
> performance state of RPMh power domain controller along with clock
> frequency. So let's add the OPP table support to specify both clock
> frequency and RPMh performance states replacing the old "freq-table-hz"
> property.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> [mani: Splitted pd change and used rpmhpd_opp_low_svs]
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 42 +++++++++++++++++++++-------
>  1 file changed, 32 insertions(+), 10 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

