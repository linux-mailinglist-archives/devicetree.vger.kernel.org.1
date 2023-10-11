Return-Path: <devicetree+bounces-7752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF077C54E9
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 15:09:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FA8E1C20DFB
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:09:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7624E1F198;
	Wed, 11 Oct 2023 13:09:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YAGAYYCh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91DFF1F195
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 13:09:16 +0000 (UTC)
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6346CAF
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 06:09:15 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-5a7cc03dee5so18846607b3.3
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 06:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697029754; x=1697634554; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yiWRUyEiDpWCGNyAPRXmmc17YAfusk8TYErSchfY5T8=;
        b=YAGAYYCh2MIsJ5rlANlBlKlOj+sXXSBdEPr7TrDIJiUk8CrVTLvjvdu3ZFSCJXFC8a
         MZPqjVTvwz/1ZTXryqbv3iLRde0sB/XJzjT4O/Ifd96SuukmTHwoWJIL38Ut1upk7F9n
         fUadhd0LG04oz9Yc8EHBkgud8gX8Aim9e9NlsUaxkKp+xJJvCf1w9nTJ5Z2KOp0aWvmb
         TTeciIF3iPbHvZkiyr5DurxHYWHMlvicfGxEyRnL7XnLFC01ibyjxjSk1mzQ7c5Rv4UC
         wihvtC2emlYUwNfKJ2pEadRcoTxSIT++oxGhN/LlIg+8e1fvRAo4Yh/wq2ZxyzxlRG/O
         7VGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697029754; x=1697634554;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yiWRUyEiDpWCGNyAPRXmmc17YAfusk8TYErSchfY5T8=;
        b=UmDN4VREd9TStmHmyMo2inb+/c7/l5WeoWJdmKQsz+YtcUc3RO8FIFC/u6yXjs/oSD
         w/sKp3ZYMyhYWDjUk4QhrGuMX7djRSp1Trt+4HJS/CkQCEiQ7lS7Z8A54Iz2nuqkX4Kv
         6ndX5svMj2A8GerTtDdpAYirDmP/PVOyyKoFzPfNBRc4PHkghNqF223lXREd2geOg83E
         PIXCwxIfGn2tbloMq9SdfZid8f+bcfuoKROS1dz104Eqe64e2tde63fMiORFIQvUpLoA
         0hK456F9EyvnTVgsqICX7/ldI7peOdAFzwOk2NuwGfRG9vUvIvTmhFXl9nuCxnMAzpQh
         7rtQ==
X-Gm-Message-State: AOJu0YxxcaqJ7nBFk1plqigwWQHKjsGJVB/t085vpCYei+Q2czu3UCfU
	rTMbv+QdIsl1x4a5QJTL4lZQHfl1JzYmzqsLu7Cz0g==
X-Google-Smtp-Source: AGHT+IHPeYGW++8x+sjpixD4qx2spNUFG0w29RwTYjN1/EfQS3maABvYM9h8FieFcy0MebMY2EQIXWY+wRKbOMFmN2s=
X-Received: by 2002:a05:690c:fc8:b0:5a7:ed69:120 with SMTP id
 dg8-20020a05690c0fc800b005a7ed690120mr943754ywb.6.1697029749566; Wed, 11 Oct
 2023 06:09:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011122543.11922-1-manivannan.sadhasivam@linaro.org> <20231011122543.11922-6-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20231011122543.11922-6-manivannan.sadhasivam@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 11 Oct 2023 16:08:58 +0300
Message-ID: <CAA8EJpoKPq2sVcudb84YRDGUtDtS3YMhNPejNeOtSr_7uU84qA@mail.gmail.com>
Subject: Re: [PATCH v5 5/5] arm64: dts: qcom: sm8250: Add OPP table support to UFSHC
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
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, 11 Oct 2023 at 15:27, Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> UFS host controller, when scaling gears, should choose appropriate
> performance state of RPMh power domain controller along with clock
> frequency. So let's add the OPP table support to specify both clock
> frequency and RPMh performance states replacing the old "freq-table-hz"
> property.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 39 +++++++++++++++++++++-------
>  1 file changed, 30 insertions(+), 9 deletions(-)

-- 
With best wishes
Dmitry

