Return-Path: <devicetree+bounces-41877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F041855C58
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 09:22:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 35962B2C958
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 08:21:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A40E13AC8;
	Thu, 15 Feb 2024 08:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qwwcB3zS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9607913AC6
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 08:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707985173; cv=none; b=KVXVG1CIjgXxKL+ohA1WG2sPpdmRkfVmkFLVmK2kF4J8p4GTz95ZthyL4DTFxyoTOBOPVNd12muGE6dC7lhOOr1+lQZcSRrghOWIsIQEGQeLWmWooe6t/oQLFUBedV3A4rN0iYjHU0YiyjrOp0li00WpVHF+sxmV6jfsHuK7WnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707985173; c=relaxed/simple;
	bh=BqII8sLl+bLQlyhO+D8CNbC1gFYjbsADqDSOC1kPc5w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PykjQkqNu3cGZuUj2v2zLNqDBgr4scaxnauAJxSyetVnKwYBvl3RJBN+2IH7dEWUjb0AkpS5zGDBfAt4steetDeIgT4THlw5njO6Ujmtyqb9WMqPlxGguLTfHNMjvkAtnpKtftgrwkUGNhr09watCTYjR7bsKMEsMbut4WBFpYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qwwcB3zS; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-60790e62f90so6369977b3.1
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 00:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707985169; x=1708589969; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=smEYS7WqwFSJ9Pd2kHyuKD+PL+fmgIBnH3NnS3BRkCE=;
        b=qwwcB3zSPGM+jAkOvGTqQe7adNcInrAy+mDcI53w060De2POOq3/LibggB8peCCKhG
         eNDhlLuH1E4ld2vtO7UkRkl/BozKUndgLDVK7xfj10+3mxymr8R6b9pgymHdqPfej3AY
         M8WrklcbGML8gzfWDewm9ltYRvmVG5Gq7YkyRnpe/TDiqRhQkiZsgnt0HDpJVeZqo9FE
         hfTHFOYOrr4lv2SmGOz76Ahmu9QHhrUf5BU8xb4lTu6wC8+jgcSOOokiJs2Z1A3uWWGe
         UeW4ERjCi9FQHgPG4sv4YppD/KnJgOpnqnnoqnaxZ+6I/7+0GM/cbtS1LSSIlGSkR8Ye
         Z4bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707985169; x=1708589969;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=smEYS7WqwFSJ9Pd2kHyuKD+PL+fmgIBnH3NnS3BRkCE=;
        b=stuQj/J3SsVSVfrbvceyEvDl333ixMtHcwu7ViI3Xpwfxpe972uEYLmpwhfqDgsXPl
         5VCaevOqupmce8PywVJ9BcQkE4c58HavgnFB0hC6EkPyaG4525WrkpilFy6li29xlcgd
         47atYSwmCOqvSDE84PABg9LSKDazK+JlhELdjcsfRBwIGfeE1kadMHqHO4URrQGNeUCS
         ju2pIagDJmkJGwjqCnOnHh3uYeXWcrbDS9OK/TFjzWUPlLhshQ2/TrvnPF2eRaPycIBd
         sslN1iCilggF5ND+5nzE+a9aXKeKLxqPiX7dU4245eyoicyZZLhFgzHcCriHLVWcyi08
         Jcpg==
X-Forwarded-Encrypted: i=1; AJvYcCURCk687kdrUwGtM0dnmWZwUdOkBniZk0TJgUsHkyNAZ5yYrYJSWxH8lqy+D14ft5BgXyYM3JYhoR2iy/MWC28/t/6AcH46RMswGA==
X-Gm-Message-State: AOJu0YxqBE5bbNeSozoN4RBa8uNBTfzebLI40Onbkk/xXPsC9WvP+YYN
	VeE0cVckhlw3TuNDuOKEkYPOINWRX2uzAZiLzjCmBXLRLx/gUr+wzqIIOobmY+bddei7K48Q0GN
	ZbJUQWZMXsTQt89Od/pIubqDB54hkHhhxTXpUZQ==
X-Google-Smtp-Source: AGHT+IFQ5xk0zng2QCwMIJqzsnAFQcVsqtYYUFMBaSsSK/qzjxvxnRcCnApdfjbw2VVm3Angga8cG50TFG1YC4IGHYo=
X-Received: by 2002:a25:c581:0:b0:dc6:17d2:3b89 with SMTP id
 v123-20020a25c581000000b00dc617d23b89mr889731ybe.61.1707985169569; Thu, 15
 Feb 2024 00:19:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240213-msm8996-fix-ufs-v2-0-650758c26458@linaro.org>
 <20240213-msm8996-fix-ufs-v2-3-650758c26458@linaro.org> <a0f7de54-7e6b-473e-94ac-bece804bd6e8@linaro.org>
In-Reply-To: <a0f7de54-7e6b-473e-94ac-bece804bd6e8@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 15 Feb 2024 10:19:19 +0200
Message-ID: <CAA8EJpqPpn43bNca9Ld_XtoBYJTTMXcMhHywU8E9CgkeQEbwow@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] arm64: dts: qcom: msm8996: specify UFS core_clk frequencies
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Bjorn Andersson <andersson@kernel.org>, "James E.J. Bottomley" <jejb@linux.ibm.com>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Nitin Rawat <quic_nitirawa@quicinc.com>, 
	Can Guo <quic_cang@quicinc.com>, 
	Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
	Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-scsi@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 14 Feb 2024 at 23:24, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 13.02.2024 12:22, Dmitry Baryshkov wrote:
> > Follow the example of other platforms and specify core_clk frequencies
> > in the frequency table in addition to the core_clk_src frequencies. The
> > driver should be setting the leaf frequency instead of some interim
> > clock freq.
> >
> > Suggested-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> > Fixes: 57fc67ef0d35 ("arm64: dts: qcom: msm8996: Add ufs related nodes")
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/msm8996.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> > index 80d83e01bb4d..401c6cce9fec 100644
> > --- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> > @@ -2072,7 +2072,7 @@ ufshc: ufshc@624000 {
> >                               <&gcc GCC_UFS_RX_SYMBOL_0_CLK>;
> >                       freq-table-hz =
> >                               <100000000 200000000>,
> > -                             <0 0>,
> > +                             <100000000 200000000>,
>
> That's bus_clk, no?

No, it's a core_clk. The "core_clk_src" is removed in one of the next patches.

>
> Konrad
>


-- 
With best wishes
Dmitry

