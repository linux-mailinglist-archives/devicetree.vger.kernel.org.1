Return-Path: <devicetree+bounces-27729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A287981B6EB
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 14:05:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 43079B22582
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 13:05:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 890097347C;
	Thu, 21 Dec 2023 13:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YRxZzmPb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE34D73170
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 13:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-35fcea0ac1aso3451845ab.1
        for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 05:04:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703163887; x=1703768687; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Fs/e9MeZesfWpR0gJSq5W4MUhBlmQTRQN91KHpHRCXc=;
        b=YRxZzmPbX3MoQv1tzLDq2yeekIvP/jzpSOT3NzQIH2ttKWlk1+wimM7uf3ej9giYlt
         uKAVxZYdgwMx7MrUiyoPcGX143hYZU2HLaCFP1JZ9cm0lWv2HoUWQV3qsqXUk2ERk3Tm
         ri+6TN+vq1lBZR0lZuYZUG+YkHnFj7cXnLbItDHE8MwtIHIm/xvdXO1Uhp2tAkckQPcX
         W3nrwW2esxMxBPwjcCC8Y/OwFZQTaXcUTPkvoiUWODXEOfBxR8z4dv87MvMfvfoUO0KA
         HFBJB8Ugj3Vw0XKqXvXMltYQbOgLmD1iyQyu7bfl7qk5izeoGFolQpaGmidahNhto7jg
         qfqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703163887; x=1703768687;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fs/e9MeZesfWpR0gJSq5W4MUhBlmQTRQN91KHpHRCXc=;
        b=V7xCVgWcjauRtm+kppM17fCegOaiKNBoQCLY7UqVo1PNMV+E+amgkRNvB5NPrasfpg
         wu7TKTOoeRCFWEKKFf74U5xx4f9cels0mldqSYe1Rog74Qoa6wrvaM30cxMsmTM8I15D
         Uhtkaw/PTdf92W0POGT5nN2soAS78kCC52GI0QABGj7xvDYN/WcsOjDoSdPywdTf5ABP
         nbw/1fipcQYwwuG4UdSZDKaRaOKGnNU47xOUBCVRnJ7qKqVDhs6X8klLPY1qFH/v4zHZ
         GNgvphb9R/KYPLi7TAxkfVDkaPeERA1jxW4jp1lIO5aZLCf9UlbjYZt+OADYZgkZDWUe
         p7qw==
X-Gm-Message-State: AOJu0YwkNeNJSdgKEkm2KFffgEmjje0M4BpnCASUzMB6YdoFUZnd5rA3
	lFH3ohEH/7YpSVMiy8qs5tPiuPiPr5gMzGq40qUu1w==
X-Google-Smtp-Source: AGHT+IEcQ/qhM/HCfkhU+7e5HDDYE3nEr4TsCdNTTfentyyhZrmbiraH3QVG51wo4jYGji9DPRWtOoqov3OVlKaVhMM=
X-Received: by 2002:a05:6e02:3d05:b0:35f:ab11:1289 with SMTP id
 db5-20020a056e023d0500b0035fab111289mr6672760ilb.114.1703163886562; Thu, 21
 Dec 2023 05:04:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231220-sa8295p-gpu-v1-0-d8cdf2257f97@quicinc.com>
 <20231220-sa8295p-gpu-v1-2-d8cdf2257f97@quicinc.com> <8d206362-7d80-46dc-8474-871fc53abc20@linaro.org>
In-Reply-To: <8d206362-7d80-46dc-8474-871fc53abc20@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 21 Dec 2023 15:04:35 +0200
Message-ID: <CAA8EJpoEqKv_rWB8468WJzxqPA5w7u_zmGJJ0oKWAyaB9-f0eQ@mail.gmail.com>
Subject: Re: [PATCH 2/8] clk: qcom: gdsc: Enable supply reglator in GPU GX handler
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <quic_bjorande@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Taniya Das <quic_tdas@quicinc.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Johan Hovold <johan+linaro@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 21 Dec 2023 at 15:01, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 21.12.2023 04:50, Bjorn Andersson wrote:
> > The GX GDSC is modelled to aid the GMU in powering down the GPU in the
> > event that the GPU crashes, so that it can be restarted again. But in
> > the event that the power-domain is supplied through a dedicated
> > regulator (in contrast to being a subdomin of another power-domain),
> > something needs to turn that regulator on, both to make sure things are
> > powered and to match the operation in gdsc_disable().
> >
> > Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> > ---
> >  drivers/clk/qcom/gdsc.c | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/clk/qcom/gdsc.c b/drivers/clk/qcom/gdsc.c
> > index 5358e28122ab..d1139c895503 100644
> > --- a/drivers/clk/qcom/gdsc.c
> > +++ b/drivers/clk/qcom/gdsc.c
> > @@ -557,7 +557,13 @@ void gdsc_unregister(struct gdsc_desc *desc)
> >   */
> >  int gdsc_gx_do_nothing_enable(struct generic_pm_domain *domain)
> I suppose the name is confusing now..
>
> But at the same time I can't come up with anything that's less than
> like 6 words..

gdsc_gx_enable() ;-)

-- 
With best wishes
Dmitry

