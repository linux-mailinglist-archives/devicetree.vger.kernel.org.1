Return-Path: <devicetree+bounces-40174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A755784F894
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 16:30:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5D94A1F240B1
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 15:30:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3369E74E32;
	Fri,  9 Feb 2024 15:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lzceSyQ4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECE073181
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 15:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707492619; cv=none; b=up2cJWUh15GCbvcBm85hD9wblG1ZMdAiurVdqEdZqC6H2FyLab1fTIzh2qdasAMaDlAdTBs/gC+DlSZOMa1giQuOtYsb+nG/X594waSjesI1wi/u2xeJnXocmoRwC0PiWskwWnE3PLtlA5Ena42UU2xCAuBJgdA0iiKE3N6tESw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707492619; c=relaxed/simple;
	bh=UqDosga1xC4Eo58FYnE3NbWtCialyNbi3wKAbIbdzRk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f2cWOmU35eklRi0wMBRmun9Z25+TryLfkBT2C33erblw5zCZIhChWT/yOXqAPXwZrYNDYU4b3O8BKJA/tbrjrKl8RvLt0aQgPT4iCmJAodUZy8ESnKlGOKulMEBGkwNdo2w5x63p4jw2Yts/JRM8JkehqGDqWUojWwc+zu7vA7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lzceSyQ4; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-6049416cd38so9459737b3.2
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 07:30:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707492615; x=1708097415; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DwPyne/Srr/E0bqYu1xMZ7k+F7q7JB1awfFG2iwj5SM=;
        b=lzceSyQ4FApxjhpXFcUKulGr2Bg+YaO4RooXHeWRKmqQcPfXMxbzBTt4Lu93vNQ+HE
         H0mwuz/zHHcBysPPuT1p4E/HsE+YZ9cE0xw4Skb2YTkS2tBSk8JcXvxZ6BPxwI0o4fkN
         Txd2DpyBpVBne8pYj/+WDsVO7qO6lknBNCUndx6vv2IQQZE2ogO/CMyF9HdaX1U7ZPIo
         q0Q/cFn1M9NwBGoEgubnILbRQwDnPcGfX3YfAh8eX0fSKka0cthSAs3cYJ76Qz2yv+Xh
         qM3ydZEHcKLHo4thBSoFDlgSukvKrOAkv3axTOqBZvmmfBPBYeoHa9bZ9rTLUFynkWD4
         a0OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707492615; x=1708097415;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DwPyne/Srr/E0bqYu1xMZ7k+F7q7JB1awfFG2iwj5SM=;
        b=gVOujspyTf6EkbYotHbY+VxOvq0bOyhEa4zwPwiRuriimtofuQm3rJ4Kxvb7nmpIpT
         iKHP2p8F+XplrSZUmhCIJ80gdzQSqbA3Za0fAuuEm6VLRrnzxxvZZ5l+QKhu7IRTJ+uH
         9iSdfYknMpTqvi4cCcu698WnPM29J2LE0Fd8ODKEDK/40HsxhrKXm3o+1e57Lsbu5IZw
         xd1hecYaK1FmWVe1ywZDpIKVaaWyiu9ZRqQUOFb9SbQ2hyDr4bDow1/OFtQvNBrPZgki
         vqNQBK3XzQkK2ajcd8kapNLz3wKETVZYORn36w6bMIYCkQU4xBIitVnI5fw2q0LU9G3E
         P4/g==
X-Gm-Message-State: AOJu0YyOeRYPJzBrDoFd4Yj67FrmaYF8xPI4yO9loK55ZDG5loj1Ggaj
	fLB63Xye7n0wczRkgYZBHQo8dq4b7MM/QkcL77vCFScVxU1E0TFXUGRG9zU4tIaeYYc+foC1W9z
	EHnNYR9IXqmY5NdV+jTSWgm09VxYRP5BJEdRLTA==
X-Google-Smtp-Source: AGHT+IHKpJlDohaMbxRWC+5/t8hSxuj+YTX27ZF5QMSJPTcosnKN65Lc9QOWzjA950A7MwAeqivc87GvLixD28RNDbI=
X-Received: by 2002:a05:690c:2711:b0:604:cb07:b37 with SMTP id
 dy17-20020a05690c271100b00604cb070b37mr958456ywb.33.1707492613963; Fri, 09
 Feb 2024 07:30:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240209-phy-qualcomm-eusb2-repeater-smb2360-v1-0-af2ca4d95a67@linaro.org>
 <20240209-phy-qualcomm-eusb2-repeater-smb2360-v1-2-af2ca4d95a67@linaro.org>
In-Reply-To: <20240209-phy-qualcomm-eusb2-repeater-smb2360-v1-2-af2ca4d95a67@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 9 Feb 2024 17:30:02 +0200
Message-ID: <CAA8EJppwOjKaRJXj2Re0mugcguAcTZnvEqp_6x-FANrJ__PRTw@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: Add support
 for SMB2360
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 9 Feb 2024 at 17:14, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> The SMB2360 PMICs contain the same eUSB2 repeater as the PM8550B,
> so add dedicated compatible for SMB82360.

"...same repeater as the PM8550B, but requiring different settings..."

With that fixed:
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> index a43e20abb10d..68cc8e24f383 100644
> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> @@ -88,6 +88,12 @@ static const u32 pm8550b_init_tbl[NUM_TUNE_FIELDS] = {
>         [TUNE_USB2_PREEM] = 0x5,
>  };
>
> +static const u32 smb2360_init_tbl[NUM_TUNE_FIELDS] = {
> +       [TUNE_IUSB2] = 0x5,
> +       [TUNE_SQUELCH_U] = 0x3,
> +       [TUNE_USB2_PREEM] = 0x2,
> +};
> +
>  static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
>         .init_tbl       = pm8550b_init_tbl,
>         .init_tbl_num   = ARRAY_SIZE(pm8550b_init_tbl),
> @@ -95,6 +101,13 @@ static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
>         .num_vregs      = ARRAY_SIZE(pm8550b_vreg_l),
>  };
>
> +static const struct eusb2_repeater_cfg smb2360_eusb2_cfg = {
> +       .init_tbl       = smb2360_init_tbl,
> +       .init_tbl_num   = ARRAY_SIZE(smb2360_init_tbl),
> +       .vreg_list      = pm8550b_vreg_l,
> +       .num_vregs      = ARRAY_SIZE(pm8550b_vreg_l),
> +};
> +
>  static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr)
>  {
>         int num = rptr->cfg->num_vregs;
> @@ -271,6 +284,10 @@ static const struct of_device_id eusb2_repeater_of_match_table[] = {
>                 .compatible = "qcom,pm8550b-eusb2-repeater",
>                 .data = &pm8550b_eusb2_cfg,
>         },
> +       {
> +               .compatible = "qcom,smb2360-eusb2-repeater",
> +               .data = &smb2360_eusb2_cfg,
> +       },
>         { },
>  };
>  MODULE_DEVICE_TABLE(of, eusb2_repeater_of_match_table);
>
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry

