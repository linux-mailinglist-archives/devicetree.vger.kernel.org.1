Return-Path: <devicetree+bounces-55606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F49895C6A
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 21:25:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 694BA1F2433C
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 19:25:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 828A115B57E;
	Tue,  2 Apr 2024 19:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eRUKtcdW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2D715B544
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 19:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712085945; cv=none; b=M2KaHL71U1NPDGDsVxu7uvZow0Qz2SE4KU6MDN+SwLKyB/wAFnARiY+3bvXZBardAStCufjuMubuXnPc2X0CJjdIeaFCinlMUVNpqIkGrqH/8h7afxDrH8t02roZm8zT7KX5swZCbCuEbUJkrQvK98HtVjTyoo97eyoClvHumzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712085945; c=relaxed/simple;
	bh=nuVk2rrPA+78ak46RlwfYXTFyzdDDE2jrqhHVoV+Z1A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rYLXGfum8yjisYoIVYEw/72WHBCB8+H2jJNcTQDxdXERcuIXZNM51DGMUz9oytqlVOzSPPPIn8b6hQncgZuH67iOKFxZLOgRigXkM10SXR+uqhx+y7Mcknetps+jsnWrUhYr2ghV7Y+nJ9ltZ57GGl+XyWr/5Au2ceiTitO+FAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eRUKtcdW; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-dc6dcd9124bso5238566276.1
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 12:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712085943; x=1712690743; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Wt5s0i3Bf+a37LH9mW+EUzfbFaTvXfHBxqu8Vrd66jY=;
        b=eRUKtcdWpe86riGzbCKgEMCvzWTToENpdJAPyKlfdEsr5PvWRL3utQ9r8TpBC7focN
         j07zITPYqxGQRBL+l1Y4LFCUWZRVsv3h7iiDAqzKB2hKYt7EpYJfvDT2P4HFBl8zOkdj
         V5AqF6oJ90MXGqdSsA2AAvv3q3yVeaY/vMkgcFUCUtX24PYWVSI4uXanASX1+EK/eipd
         CKPiHMPgfO/+7VRw3s483x0njYoF4HaFXv4Qc/9SDT7YxBViSeyaAvK1HmwYT8zdxhKD
         lX1KmDoIn3YEpBXpV/vqrOhV7jdbRtgjc1KvprkdxSwMzUiejJChi51BC8kFEcwylNww
         fMmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712085943; x=1712690743;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wt5s0i3Bf+a37LH9mW+EUzfbFaTvXfHBxqu8Vrd66jY=;
        b=ipWXK1sXNXRVYOtWv3vuMCHcOWG4cpHY05pxNxywlnJF69Ybyj04gddY5WRqMMBNx6
         pPD7Ff5jeIbEWkVsjpoBddwrziJDQ/2sjxEJW+XO+TaykvxM31+5SepNR/8XUcn234zE
         cjJmS/tigU3/zt1Vz0y76QOFL4p+iZzZpJr6lBiW0PC1KjOGBduNCYxHHHDzrC254f6z
         e5DbL48x6cC0ePgMqfzkRaucYbEg1Ih+faugvQLGbLu8e5Bk2eTLT/LcUqh70Ri2VWf6
         bsLcbxiIJFkVzzUEfQ3E+jljdtX5bVKczc251DPEaksxZLze6EfNcK+/fP7tvTwTFEwu
         vvrg==
X-Forwarded-Encrypted: i=1; AJvYcCUtiLk0opBIr3Q2ljGmwh6HCG355B8T70WSKC25TfWIYK4ls0hqdHaRb2yvEVhmsZnnslFbGs5L7eWn2aFORBoIlvLxXiV3BhHBfw==
X-Gm-Message-State: AOJu0YwaT/IIx0GLkWiaRlXze96G90Irhgq+HE65db0bhvjHD5UM7LgG
	0T716gB9EKE4z9mZ6Hr/k8/f3DxDmAfm+MbeFB9drASYfRgzhKOTUF5xTuJ36Rs4sdKSv6dWeQc
	r6KSDm9hAkMWQ3MkOOsgI608jg3tsWRxkc+8sxQ==
X-Google-Smtp-Source: AGHT+IF0NCPeZnC/FxDzoqpqrxq4T4tmylOUOl34+HGr8LAiprE09JWVEjadMflb9rYYLe9n6G9XkDK88BIiin+WUmw=
X-Received: by 2002:a25:b90d:0:b0:dd1:2f58:292b with SMTP id
 x13-20020a25b90d000000b00dd12f58292bmr10593508ybj.9.1712085942918; Tue, 02
 Apr 2024 12:25:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240129-ufs-core-reset-fix-v1-0-7ac628aa735f@linaro.org>
 <20240129-ufs-core-reset-fix-v1-3-7ac628aa735f@linaro.org>
 <CAA8EJpphzwoCaetGfnM8dE478ic1-BMqXKA3XVLeC9j5BBu3SA@mail.gmail.com>
 <20240130065550.GF32821@thinkpad> <CAA8EJpqZYp0C8rT8E=LoVo9fispLNhBn8CEgx1-iMqN_2MQXfg@mail.gmail.com>
 <g4a6gl47kfjx47ww36qnwp7zgvbd5gi5r7d26ibitfrybaa3l4@gvnz2mhsdf4s>
In-Reply-To: <g4a6gl47kfjx47ww36qnwp7zgvbd5gi5r7d26ibitfrybaa3l4@gvnz2mhsdf4s>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 2 Apr 2024 22:25:32 +0300
Message-ID: <CAA8EJppOPrSfD=VkHm8M0P07=mN_BikT=cGvLe6UFL3OpKVWzA@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: msm8996: Add missing UFS host
 controller reset
To: Bjorn Andersson <andersson@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andy Gross <agross@kernel.org>, Andy Gross <andy.gross@linaro.org>, 
	"James E.J. Bottomley" <jejb@linux.ibm.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, 
	linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Apr 2024 at 20:35, Bjorn Andersson <andersson@kernel.org> wrote:
>
> On Fri, Feb 09, 2024 at 10:16:25PM +0200, Dmitry Baryshkov wrote:
> > On Tue, 30 Jan 2024 at 08:55, Manivannan Sadhasivam
> > <manivannan.sadhasivam@linaro.org> wrote:
> > >
> > > On Mon, Jan 29, 2024 at 11:44:15AM +0200, Dmitry Baryshkov wrote:
> > > > On Mon, 29 Jan 2024 at 09:55, Manivannan Sadhasivam
> > > > <manivannan.sadhasivam@linaro.org> wrote:
> > > > >
> > > > > UFS host controller reset is required for the drivers to properly reset the
> > > > > controller. Hence, add it.
> > > > >
> > > > > Fixes: 57fc67ef0d35 ("arm64: dts: qcom: msm8996: Add ufs related nodes")
> > > > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > >
> > > > I think I had issues previously when I attempted to reset the
> > > > controller, but it might be because of the incomplete clocks
> > > > programming. Let met check whether it works first.
> > > >
> > >
> > > Sure. Please let me know.
> >
> > With the clocking fixes in place (I'll send them in a few minutes) and
> > with this patch the UFS breaks in the following way:
> >
>
> Was this further reviewed/investigated? What would you like me to do
> with this patch?

I'd say, hold until we can understand what is going on.

Mani, If you have any ideas what can be causing the issue, I'm open to
testing any ideas or any patches from your side.
Judging that the UFS breaks after toggling the reset, we might be
missing some setup steps.



-- 
With best wishes
Dmitry

