Return-Path: <devicetree+bounces-36819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E30B842C33
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 19:58:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 012A8B21F0B
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 18:57:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F35A7994C;
	Tue, 30 Jan 2024 18:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EccT5Ixo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299FB79946
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 18:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706641073; cv=none; b=s2p5NmvsAO6eLjpjl+nrHdgp+nvafQpqSCqv5PxzHJcxzyVcG46AEX68CB/V3oj4CsxpxA8qHseyxvg8t/3IrCg80ut90JLA7pmRv6FFgMOugB2BC4biUtj1nC87sWJQFqeIfpgx0Uepb0U+UwSwhlerUAtUcH2bRgkYvylfaM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706641073; c=relaxed/simple;
	bh=jAHe/bqbJadmU4TvDkDOaZtMbRENEK4klEwd/zd6gPc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=C8Hdmlp+ZnWG2DYOREEZo0ipXNbrGzrnPcE9C7Vva/TK+pfetLozLNCmQxGTrjKSqVA5da/ZH+4HTo2Srgf1kXYX9wuOMZKafC4apWf8Zp+jwh137ZL888ADovKuTtPFzUgOOV4exopIaHomBO1v6trOzvmPBLQi1NL/yMUVXvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EccT5Ixo; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dc6af9a988eso327300276.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 10:57:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706641070; x=1707245870; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dsbFe8FBaKHb+tw+RNh+eDmmWEjj1nJ8rNLVyRLVN3o=;
        b=EccT5IxoNTwZL9tmDX7yhKIhB01LFZgSkLRFwwltwD/1SN5qTx80x+4CXOfq1+peYF
         os/S9/gCcV7eGFRBSdsPSa9tElUmGde2zVOexM56nBIgYUoUX5pCBt/amHyYIf94a+00
         S68QsxZCe/jW5aF/K+FXuy3sMQu+Tiq9MWgkGznRNmZKf0Xe8+fls0q8/PYuRaXevVfR
         yQXaQlNPyGGB1pMeGWIKZLUVCNtc8d/0XP3YPWzzPmBsuhSS45RkBtFJ7V51KY0tLNEB
         S8NaL+MgyAi3c7AztDU9UI4Ox61JlZefmVYmBbSSZiGKOqhO7c4sY/55dExY4I+D+95o
         ptWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706641070; x=1707245870;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dsbFe8FBaKHb+tw+RNh+eDmmWEjj1nJ8rNLVyRLVN3o=;
        b=BPg93V4t4dQVdc0pOw390ZhDiWgppLaGYUt6c7JYdCv8TrE1pRxaAqdQmcCWzcqlSb
         tgPJ/USUxVYZvxA2b4PmZHDlQcl4X2or5qDHdqd50Gw/DU0cNaxJQ3SkLTVuKzVNIjE4
         SRkf/HQy2C1CR8DEunxRD91Eheu1j9Qo0Gzw6dzXztD5qO1P5pAZZKEf8/MrelBxPDQt
         IPjRTGtqVMCytJ4pNEiXVA6sBHuTA/KY21sMdJhbpLJtbZ7EcVofGJe2BdfQ9eTs2o+s
         m3vTHgBb4IAvfJGYsYx7eXXpCDrP3bNrokixJqWLB7V4LJ6DxSb5zlYgvTfH29HDxaCo
         PYfw==
X-Gm-Message-State: AOJu0YwCTEo2NdwPAFC08SzyGuuXrnpYpdLHTS2TDV56iqqPvLwgZX5k
	+Iv8fukLCC9O5F5k5WUKQtEVcX+nqaqqnHikCmGXT7HEAhHExMGNb75tWGjUiJy0HyDXg/OfPVs
	Q94+A7TE8EM3xFyCDPAeBE5CdPUVwVf+8hJlwhQ==
X-Google-Smtp-Source: AGHT+IGFbNRvX1c0g7KFMGIUZkFDnCVorda7sQg6uNa6gXQNAmsegdvHK0bMtYtkTHbpwFb96V3zwgnLMs50QEEUTMk=
X-Received: by 2002:a05:6902:2388:b0:dc2:5573:42df with SMTP id
 dp8-20020a056902238800b00dc2557342dfmr5697186ybb.25.1706641070040; Tue, 30
 Jan 2024 10:57:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1706296015.git.quic_uchalich@quicinc.com>
 <12bfdd23772c49530b8b0993cc82bc89b3eb4ada.1706296015.git.quic_uchalich@quicinc.com>
 <CAA8EJppapW5nOFphBWove1ni8nbkA=xHON9D13NYeYHhyqL1Fg@mail.gmail.com>
 <94b097d4-dcfa-4136-ba75-f665f5bc747d@quicinc.com> <CAA8EJpqa5YArFk893nDz_oibbV=oqGEeYq6_jw582rQs=O_WpA@mail.gmail.com>
 <30d972b1-9685-408b-a87c-98352c4a2449@quicinc.com>
In-Reply-To: <30d972b1-9685-408b-a87c-98352c4a2449@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 30 Jan 2024 20:57:38 +0200
Message-ID: <CAA8EJprPZThviO0vZfyYz+YShPKxg9YcuOUUCv4B_ePghuB8XA@mail.gmail.com>
Subject: Re: [PATCH 5/5] soc: qcom: llcc: Add regmap for Broadcast_AND region
To: Unnathi Chalicheemala <quic_uchalich@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 30 Jan 2024 at 19:52, Unnathi Chalicheemala
<quic_uchalich@quicinc.com> wrote:
>
> On 1/29/2024 2:03 PM, Dmitry Baryshkov wrote:
> > On Mon, 29 Jan 2024 at 20:17, Unnathi Chalicheemala
> > <quic_uchalich@quicinc.com> wrote:
> >>
> >>
> >>
> >> On 1/26/2024 12:29 PM, Dmitry Baryshkov wrote:
> >>> On Fri, 26 Jan 2024 at 21:48, Unnathi Chalicheemala
> >>> <quic_uchalich@quicinc.com> wrote:
> >>>>
> >>>> To support CSR programming, a broadcast interface is used to program
> >>>> all channels in a single command. Until SM8450 there was only one
> >>>> broadcast region (Broadcast_OR) used to broadcast write and check
> >>>> for status bit 0. From SM8450 onwards another broadcast region
> >>>> (Broadcast_AND) has been added which checks for status bit 1.
> >>>>
> >>>> Update llcc_drv_data structure with new regmap for Broadcast_AND
> >>>> region and initialize regmap for Broadcast_AND region when HW block
> >>>> version is greater than 4.1 for backwards compatibility.
> >>>>
> >>>> Switch from broadcast_OR to broadcast_AND region for checking
> >>>> status bit 1 as Broadcast_OR region checks only for bit 0.
> >>>
> >>> This breaks backwards compatibility with the existing DT files, doesn't it?
> >>>
> >>
> >> It shouldn't as checking for status bit 1 is happening only when the block
> >> version is greater than 4.1, which is when Broadcast_AND region support
> >> is added.
> >
> > Let me reiterate, please: with the existing DT files. You are patching
> > DT files in patches 2-4, but this is not enough. DT files are
> > considered to be ABI. As such old DT files must continue to work with
> > newer kernels.
> >
>
> I'm sorry, I think I'm not understanding this right.
>
> >>
> >>>> While at it, also check return value after reading Broadcast_OR
> >>>> region in llcc_update_act_ctrl().
> >>>
> >>> Separate patch, Fixes tag.
> >>>
> >>
> >> Ack. Will remove this from existing patch.
> >> Thanks for the review Dmitry!
> >>
> >>>>
> >>>> Signed-off-by: Unnathi Chalicheemala <quic_uchalich@quicinc.com>
> >>>> ---
> >>>>  drivers/soc/qcom/llcc-qcom.c       | 12 +++++++++++-
> >>>>  include/linux/soc/qcom/llcc-qcom.h |  4 +++-
> >>>>  2 files changed, 14 insertions(+), 2 deletions(-)
> >>>>
> >>>> diff --git a/drivers/soc/qcom/llcc-qcom.c b/drivers/soc/qcom/llcc-qcom.c
> >>>> index 4ca88eaebf06..5a2dac2d4772 100644
> >>>> --- a/drivers/soc/qcom/llcc-qcom.c
> >>>> +++ b/drivers/soc/qcom/llcc-qcom.c
> >>>> @@ -849,7 +849,7 @@ static int llcc_update_act_ctrl(u32 sid,
> >>>>                 return ret;
> >>>>
> >>>>         if (drv_data->version >= LLCC_VERSION_4_1_0_0) {
> >>>> -               ret = regmap_read_poll_timeout(drv_data->bcast_regmap, status_reg,
> >>>> +               ret = regmap_read_poll_timeout(drv_data->bcast_and_regmap, status_reg,
> >>>>                                       slice_status, (slice_status & ACT_COMPLETE),
> >>>>                                       0, LLCC_STATUS_READ_DELAY);
>
> Above if condition will be true only for SM8450, 8550 and 8650 - whose DT files have been changed.
> It would never check for other existing DT files - I guess I'm failing to understand why the code
> would break with other DeviceTree files.

I'm saying that the driver must continue to work (well, at least not
to crash) even if somebody runs the kernel with older DT.

>
> >>>>                 if (ret)
> >>>> @@ -859,6 +859,8 @@ static int llcc_update_act_ctrl(u32 sid,
> >>>>         ret = regmap_read_poll_timeout(drv_data->bcast_regmap, status_reg,
> >>>>                                       slice_status, !(slice_status & status),
> >>>>                                       0, LLCC_STATUS_READ_DELAY);
> >>>> +       if (ret)
> >>>> +               return ret;
> >>>>
> >>>>         if (drv_data->version >= LLCC_VERSION_4_1_0_0)
> >>>>                 ret = regmap_write(drv_data->bcast_regmap, act_clear_reg,
> >>>> @@ -1282,6 +1284,14 @@ static int qcom_llcc_probe(struct platform_device *pdev)
> >>>>
> >>>>         drv_data->version = version;
> >>>>
> >>>> +       if (drv_data->version >= LLCC_VERSION_4_1_0_0) {
> >>>> +               drv_data->bcast_and_regmap = qcom_llcc_init_mmio(pdev, i + 1, "llcc_broadcast_and_base");
> >>>> +               if (IS_ERR(drv_data->bcast_and_regmap)) {
> >>>> +                       ret = PTR_ERR(drv_data->bcast_and_regmap);
> >>>> +                       goto err;
> >>>> +               }
> >>>> +       }
>
> I have added a similar check in the probe function above; are you saying this too will break with
> existing DT files?
>
> >>>> +
> >>>>         llcc_cfg = cfg->sct_data;
> >>>>         sz = cfg->size;
> >>>>
> >>>> diff --git a/include/linux/soc/qcom/llcc-qcom.h b/include/linux/soc/qcom/llcc-qcom.h
> >>>> index 1a886666bbb6..9e9f528b1370 100644
> >>>> --- a/include/linux/soc/qcom/llcc-qcom.h
> >>>> +++ b/include/linux/soc/qcom/llcc-qcom.h
> >>>> @@ -115,7 +115,8 @@ struct llcc_edac_reg_offset {
> >>>>  /**
> >>>>   * struct llcc_drv_data - Data associated with the llcc driver
> >>>>   * @regmaps: regmaps associated with the llcc device
> >>>> - * @bcast_regmap: regmap associated with llcc broadcast offset
> >>>> + * @bcast_regmap: regmap associated with llcc broadcast OR offset
> >>>> + * @bcast_and_regmap: regmap associated with llcc broadcast AND offset
> >>>>   * @cfg: pointer to the data structure for slice configuration
> >>>>   * @edac_reg_offset: Offset of the LLCC EDAC registers
> >>>>   * @lock: mutex associated with each slice
> >>>> @@ -129,6 +130,7 @@ struct llcc_edac_reg_offset {
> >>>>  struct llcc_drv_data {
> >>>>         struct regmap **regmaps;
> >>>>         struct regmap *bcast_regmap;
> >>>> +       struct regmap *bcast_and_regmap;
> >>>>         const struct llcc_slice_config *cfg;
> >>>>         const struct llcc_edac_reg_offset *edac_reg_offset;
> >>>>         struct mutex lock;
> >>>> --
> >>>> 2.25.1
> >>>>
> >>>>
> >>>
> >>>
> >
> >
> >
> --
> Thanks & Warm Regards,
> Unnathi



-- 
With best wishes
Dmitry

