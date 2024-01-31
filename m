Return-Path: <devicetree+bounces-37104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB81843B28
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 10:31:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B67DE29021E
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 09:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C30F369964;
	Wed, 31 Jan 2024 09:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TTsz9d5D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD0C69955
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 09:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706693431; cv=none; b=GOuon+5OPSx1+CRFZ+xQxUMgudmtCxnXb87y5HbeuvCXyCu7zXIo4fyQfymuSgB/ENpFi05mvCHJbi3gq1f8D/nSyox8YCbXkp+ZtJbzbeJj/DNKbxdIAw+7+FO5/JmOIPqj3/Z4rw7SHa5SBPn/qbzCDEESB4qh4pzp24uAqyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706693431; c=relaxed/simple;
	bh=bmWztwT189Wa+/DkcC1wRGU1L587x8rOhwGOBzjiDSE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r359CbPSeHzqzpfhm5T34ueu0ZuxtmM7GidHLeVbW6b3Zvpi71EETovfE+MlT/gjPuDHyKyjTAHOBOYX+bEI0ELKzNNfCReWVqPY8mwPSHVSOR1em0N7xFOghIe8lu8VLmo755DcMveGUZjtYkHDNynwzMZ4hgPYIslgYpD+kgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TTsz9d5D; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a26f73732c5so614279366b.3
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 01:30:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706693427; x=1707298227; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ICDsKAS7ESjBHyOA4kXHBONHifKEPJQGSK8cycVBuy8=;
        b=TTsz9d5DhZ2WCWzadUMzylvH+Q7QTGkE/do5OxhTMqvvKsWljwmkxM4AqW2uXoRgVu
         QSW5t6G7w6zgV/ypOHecuiJEUgxV0NY9rLlWpBMjLS9vYeKZMwEKJSX9GM+xqaZ+oL40
         FaL956sMXRQSMw4ToJlm0CwVWXBqJkqFa4mXGSygBcjeWrtSKZ+N05mfi96Q6gQSETKW
         yHQPV24eGQ0MzjL4xOLf4cpczMUNevBx/frDbWzi3ocoiABKRSBivQ19t1CoCHSjolBh
         yNKsTtSdp2RR3tTDW4mRZHOO/sssomtJvl4FVSg49KlCmfsmP+kAQdhrk1OBLLIi3x35
         zXxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706693427; x=1707298227;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ICDsKAS7ESjBHyOA4kXHBONHifKEPJQGSK8cycVBuy8=;
        b=Ja8xASRcwyr9FZ3k0miSQ00fMmJZg3G1IjwxkC7p84DR7rVaxGKGlAIJm2M32Oh2HF
         j44h0gXXUUvcEm3wsEWIB0eG8PxuKtGMF8X2j36MgnEemQgh4hz6YvONgr5ijtQMDHgb
         Yp9iKuddtIsXaCO8ep+mm134Q0DvBKabG0oHUppa1ewuWJrd07OL3aFYpaYXWB+i4Vmm
         b/4zyT9UsGPPKhqMOi4/lJpB4ui2m9/B9tY301rJuAn3G8n9ts9L0CNjEQrl4BwnoKiP
         iSFyXKJ1sBf5Xpw2m7LvDAU1WEJwlVM4+eoBy0sD+GLTkHpqb0PH3eJDInO94m2EeeOp
         jXeg==
X-Gm-Message-State: AOJu0YyaIQGoK9PGx7RVpsyCHVSCODbL83A/ceuUmRiBGjKB0oovO/sg
	8PpoKPdiMbiwR3HC/DrpqlDoiwcy4SvMUrC0n/Zob2nFbQFpWSuenqItfdGPb2A=
X-Google-Smtp-Source: AGHT+IGrVcvMI9FoMp3oRRPiCyaZkNJi+u88q8/q2mfDVcBMnWJf/RHpPtrRjkpcY5Fwi1LSRj5hsw==
X-Received: by 2002:a17:906:e2cd:b0:a36:47fa:4b8c with SMTP id gr13-20020a170906e2cd00b00a3647fa4b8cmr772150ejb.9.1706693427367;
        Wed, 31 Jan 2024 01:30:27 -0800 (PST)
Received: from linaro.org ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id hd11-20020a170907968b00b00a31906f280asm5985711ejc.193.2024.01.31.01.30.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 01:30:26 -0800 (PST)
Date: Wed, 31 Jan 2024 11:30:25 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sibi Sankar <quic_sibis@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Sibi Sankar <quic_sibis@quicinc.com>
Subject: Re: [PATCH 3/3] remoteproc: qcom_q6v5_pas: Unload lite firmware on
 ADSP
Message-ID: <ZboTMVx7SN1BBoaz@linaro.org>
References: <20240129-x1e80100-remoteproc-v1-0-15d21ef58a4b@linaro.org>
 <20240129-x1e80100-remoteproc-v1-3-15d21ef58a4b@linaro.org>
 <CAA8EJporoBQQtrRWL5SS4qwpmu0rF6UMpaZXQ5t-qdvoW53XOA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA8EJporoBQQtrRWL5SS4qwpmu0rF6UMpaZXQ5t-qdvoW53XOA@mail.gmail.com>

On 24-01-29 17:17:28, Dmitry Baryshkov wrote:
> On Mon, 29 Jan 2024 at 15:35, Abel Vesa <abel.vesa@linaro.org> wrote:
> >
> > From: Sibi Sankar <quic_sibis@quicinc.com>
> >
> > The UEFI loads a lite variant of the ADSP firmware to support charging
> > use cases. The kernel needs to unload and reload it with the firmware
> > that has full feature support for audio. This patch arbitarily shutsdown
> > the lite firmware before loading the full firmware.
> >
> > Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  drivers/remoteproc/qcom_q6v5_pas.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
> > index 083d71f80e5c..4f6940368eb4 100644
> > --- a/drivers/remoteproc/qcom_q6v5_pas.c
> > +++ b/drivers/remoteproc/qcom_q6v5_pas.c
> > @@ -39,6 +39,7 @@ struct adsp_data {
> >         const char *dtb_firmware_name;
> >         int pas_id;
> >         int dtb_pas_id;
> > +       int lite_pas_id;
> >         unsigned int minidump_id;
> >         bool auto_boot;
> >         bool decrypt_shutdown;
> > @@ -72,6 +73,7 @@ struct qcom_adsp {
> >         const char *dtb_firmware_name;
> >         int pas_id;
> >         int dtb_pas_id;
> > +       int lite_pas_id;
> >         unsigned int minidump_id;
> >         int crash_reason_smem;
> >         bool decrypt_shutdown;
> > @@ -210,6 +212,10 @@ static int adsp_load(struct rproc *rproc, const struct firmware *fw)
> >         /* Store firmware handle to be used in adsp_start() */
> >         adsp->firmware = fw;
> >
> > +       /* WIP: Shutdown the ADSP if it's running a lite version of the firmware*/
> 
> Why is it still marked as WIP?

AFAIU, there was more to be done here w.r.t. preloaded lite version
firmware.

Later, was agreed that that is not case.

So maybe I just need to drop the comment.

Sibi, can you confirm?

> 
> > +       if (adsp->lite_pas_id)
> > +               ret = qcom_scm_pas_shutdown(adsp->lite_pas_id);
> > +
> >         if (adsp->dtb_pas_id) {
> >                 ret = request_firmware(&adsp->dtb_firmware, adsp->dtb_firmware_name, adsp->dev);
> >                 if (ret) {
> > @@ -693,6 +699,7 @@ static int adsp_probe(struct platform_device *pdev)
> >         adsp->rproc = rproc;
> >         adsp->minidump_id = desc->minidump_id;
> >         adsp->pas_id = desc->pas_id;
> > +       adsp->lite_pas_id = desc->lite_pas_id;
> >         adsp->info_name = desc->sysmon_name;
> >         adsp->decrypt_shutdown = desc->decrypt_shutdown;
> >         adsp->region_assign_idx = desc->region_assign_idx;
> > @@ -990,6 +997,7 @@ static const struct adsp_data x1e80100_adsp_resource = {
> >         .dtb_firmware_name = "adsp_dtb.mdt",
> >         .pas_id = 1,
> >         .dtb_pas_id = 0x24,
> > +       .lite_pas_id = 0x1f,
> >         .minidump_id = 5,
> >         .auto_boot = true,
> >         .proxy_pd_names = (char*[]){
> >
> > --
> > 2.34.1
> >
> >
> 
> 
> -- 
> With best wishes
> Dmitry

