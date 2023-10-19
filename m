Return-Path: <devicetree+bounces-10102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0382E7CFA81
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 15:11:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B05EF281FD9
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 13:11:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D69B225D6;
	Thu, 19 Oct 2023 13:11:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XaPSNc/E"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648C21A290
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 13:11:23 +0000 (UTC)
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50BF4112
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 06:11:19 -0700 (PDT)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-5a7af52ee31so96973447b3.2
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 06:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697721078; x=1698325878; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mKyigxz0xjpNw4M9S8MD6bISZmwbP5guXuL2FXnbjpY=;
        b=XaPSNc/EkHrq7X9uxr8/IsBI0imoaNWGdEVTDqy98z4Hd72So2ByBCBgYbYFeLLnjl
         GA7PZHBCFJx35lN8m6UPkIjGWhv60ncQQs/dP27hF56JFjYN+Z8hIazsPYjoBVbatj0u
         /v8nUTf8ZFj1ldHumvx5VzrhiQOyhb4ftYH/s4eTmV1k3jsyohq9GID0lsQF6HLtNvbd
         4izlaMasNvY56v/WK7zM+CZ7hNe3/oOxxijppHrOVlWwkK9Rcb7B86K1H1WJBWbzC7Lt
         eKR9iIXcKBKR5CUTL2qSEvvdgpTTU5gV4Jl1JXBWy/Ra+9WcusznqEqgJXZggaZR1nYt
         GAEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697721078; x=1698325878;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mKyigxz0xjpNw4M9S8MD6bISZmwbP5guXuL2FXnbjpY=;
        b=mU9XV7gsMGteIUmLD7zqEUmw67oS97de0t4lPeYlj/VznPXltRurTVvPCS1/zWi9NG
         tVXPhrdpHXDla5dMkfEB/vqudsA9LDf22QtFs41W6NR8+oaD7sEMhVP8mnIxLUm9YR5A
         2gN3fJrHIYGpfV4hBSS1qtJ6523x5c+opbrNkV1++VAiQ6fNgx9B6h3PgxfHm2pSF5DV
         LDoq92vlkBktG9QkbCX0PmLAgobRSs8DND1Tr9ZrVDRYllLV3dw3wOTVaUi62ct+uubc
         vIwdU27Q13erloGITW4qPpc5fIGzxyfsSIgGpqwM+wRlenOvd0ATzmlQO1l/boCJOq8I
         +Y6A==
X-Gm-Message-State: AOJu0YxdR1DopbtNhTTLx/NlbREJWTyRMrkLoHPmd4js+y6qN/qZr5uW
	Smla0vAGWSrn5g1ps2On50XbNxCWVhQ/TV/4qbmX0g==
X-Google-Smtp-Source: AGHT+IFTDmViD4G59KbU+RTJg6WzdOrllTZxG71eprBWbjW7yf0Y2TxoOzGTmJh67kNKv4S5EHKdAM9I6+sYql2eQS4=
X-Received: by 2002:a0d:c1c2:0:b0:5a8:1058:5d97 with SMTP id
 c185-20020a0dc1c2000000b005a810585d97mr2524844ywd.45.1697721078519; Thu, 19
 Oct 2023 06:11:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1697715430-30820-1-git-send-email-quic_msarkar@quicinc.com> <1697715430-30820-4-git-send-email-quic_msarkar@quicinc.com>
In-Reply-To: <1697715430-30820-4-git-send-email-quic_msarkar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 19 Oct 2023 16:11:07 +0300
Message-ID: <CAA8EJpoAQbTT6KZWeD4_PSxDCG0tZ_PvGmUXxpAfHxrK5CAUcg@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] phy: qcom-qmp-pcie: add endpoint support for sa8775p
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org, 
	quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com, 
	quic_nayiluri@quicinc.com, robh@kernel.org, quic_krichai@quicinc.com, 
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, mhi@lists.linux.dev, 
	linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 19 Oct 2023 at 14:37, Mrinmay Sarkar <quic_msarkar@quicinc.com> wrote:
>
> Add support for dual lane end point mode PHY found on sa8755p platform.
>
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 37 +++++++++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h |  2 ++
>  2 files changed, 39 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

