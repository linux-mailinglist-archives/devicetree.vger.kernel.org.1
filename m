Return-Path: <devicetree+bounces-48880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED54F874072
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 20:34:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A9424282E68
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 19:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCAED13F00F;
	Wed,  6 Mar 2024 19:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hP/X1F1E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024E213F00C
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 19:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709753677; cv=none; b=p4QiV6LhAuLmjnC66WU0kh+tJ4x4lorHuTFyCxuQLbO6bDMpUCVp76N/0fTvrSzEOYpU3ulXmjBSH/IeXol21PcoslJqb3MlcaAheuwlGIvsumSpE4zsboFqn99Hc2qVrtbrwgZJeymE5310exVVvdl/K2erTDsReKoX7XC7x5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709753677; c=relaxed/simple;
	bh=GPl4f9lkb9zfcnX1eSvWK+7OEpHSENA0ItGNLyBGujs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mTu1PCxFxWrBZ2RhtHjO56C2+sD54c+fNcuPURHPJsSKV80tZWOofyC82tYtzRpfzwC/yPIt21dXXW/UBALmrohW4A3PtEl6/U7DFqAsz+PliWk4YzCokA1/+3t01nqyIHbEm6m63AoVVTl65J57wMxUS0Qi4xrt066LoWHvj48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hP/X1F1E; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-6093e067220so1257987b3.0
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 11:34:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709753675; x=1710358475; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=691+S3DdWk+L0K/JU/znAwv1QVBesVwE/4bn6nlDzxc=;
        b=hP/X1F1Ex/22E2USdubYniRf8BuMzaCcBZAP97njsPWN6akgZ4s0kO2oB76IfGfxxW
         mfLMJA0FVtrmhlgL44EjIl8WjMsaTB6sdPFPX0Mx4QCtx1pRnPNj3JicYiQBs1OPA0Nm
         iWtaiJC7+fHYVfSIvwdKLaWJ61wmM3RvQ0MUn5+fha0SsaIzHhulcjs0B47wyaSS98za
         eEsRNxfHaG4Ahu9AZ0aIAeYc94W1WclfgzmNxDHOLqxLeTP9IDf57Y/WNt+mf4V4nRo/
         BdWHyVk+j1G6w0Tbwpi9/k/s3yMZosK7wFClEytI5/TYT8R1OQikr94eR7cuyEXk9Mkr
         jyPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709753675; x=1710358475;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=691+S3DdWk+L0K/JU/znAwv1QVBesVwE/4bn6nlDzxc=;
        b=Cr6A9q30BX0VGQGZ2bursDf4FqrrTKVPmZgmsZhCK8AxQx5GBHaCbMHUxAeMAEDiRB
         RowEdLh+KOIKNaLqMijH1oXfFFdsc1SPSZOtXWmh+vKTiabDUgfESyLolHgkq/jldAhl
         OSzsEx6Tfy69lg2EkoD2W7QSfes+A1aPeRZXQ/Jz9pD6BQV380a15jMYcFKzevEqUGmV
         dUUtjCU6fzeMWYGGA8TJFeV8ikgZK7g4DTftRRv8T61wiSwU63A3Y+bn7BdlCLznr8yc
         SsnDnK0gV9Gzlcz7xCR8Wjoduq3rPA9+UIPpY/jzW8qoMkX6ZeYKJ/A0gMj80Umf6V+D
         IgWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWF/gQox/OOjEzzmRLBqfGvfoTdHXlQLl+RSPzXfnMYCmaFsnh5Qzt7R4QD+LuXL483/vcz8j617eCyNAn9G+1z5dTc5Sq4f+r+gA==
X-Gm-Message-State: AOJu0YxI7BFs2413L3QtGajEJ5xoswB+CH0GZxjQKwDtKIEWp0JxQDQP
	MMSiIpP7bqs3pBdg93pJnu4cSEb0Rseto0vPGTRRYol6SCwhcFr+1jnl8o0cPLNRY05eVP3RCb2
	frnYf7SNOCyIKC4Ue76XVbc4aFBwV0C8FiBrNMmBgA0EOb++H4Sg=
X-Google-Smtp-Source: AGHT+IGfu6v6iBASHmlnOcH0IML4GeYFVxrMhaEGg0cT57WTqCMrmKobsugqpKnztn7XphhO9id/EyH2W0TGTFiCjtU=
X-Received: by 2002:a25:ce8c:0:b0:dcf:fecd:7d3c with SMTP id
 x134-20020a25ce8c000000b00dcffecd7d3cmr13047837ybe.46.1709753674996; Wed, 06
 Mar 2024 11:34:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAA8EJpreeGWfstEKEFiHM_RJCZbYYdo0H=fY0GqPPtZM-7ZUhA@mail.gmail.com>
 <20240306153610.1289999-1-amadeus@jmu.edu.cn>
In-Reply-To: <20240306153610.1289999-1-amadeus@jmu.edu.cn>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 6 Mar 2024 21:34:23 +0200
Message-ID: <CAA8EJpoghqa5r2vc5XXdfVJy1WDBysXs4LdMybgdgqMTcEPDfA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] arm64: dts: qcom: ipq6018: add 1.2GHz CPU Frequency
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	konrad.dybcio@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, robh@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 6 Mar 2024 at 17:36, Chukun Pan <amadeus@jmu.edu.cn> wrote:
>
> Hi, Dmitry
> > How is it "some"? You are enabling this opp for all IPQ6000 SoC instances.
>
> This is not the case, please see `opp-supported-hw = <0x4>;`.
> Also: https://github.com/torvalds/linux/blob/master/drivers/cpufreq/qcom-cpufreq-nvmem.c#L345
> This 1.2GHz Frequency only takes effect when BIT(2) exists.
> For fused 1.5GHz devices, the 1.2GHz frequency will not appear.
> I have tested this patch on both fused 1.2GHz and 1.5GHz devices.

I did before writing the comment. You have the only IPQ6000 case, it
sets  drv->versions = IPQ6000_VERSION = BIT(2) = 0x4. So, as I said,
you are enabling this for all IPQ6000 SoC versions, unless I miss
something.

-- 
With best wishes
Dmitry

