Return-Path: <devicetree+bounces-27736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC8481B72C
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 14:19:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E2F4F1C24E29
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 13:19:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5751745E4;
	Thu, 21 Dec 2023 13:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BSZBy9TH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBFA7319B
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 13:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-5e6c8b70766so8350637b3.3
        for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 05:19:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703164740; x=1703769540; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=b8ug5EaGKVW0WhoWSS1hJEcFQ3IAHX23XrOOVlYG8qg=;
        b=BSZBy9THCuKLT8vq5r2/WWdjY93OvKcEpLIa8oDGQOdl6SH8iFts7TLvhgYUz6+5oA
         l0tl9TVdOUI08+3sgmApfHIVBlhvotlUhIgQj0B8l78QxLRU+jtzHl3anLuFi1YzVM7B
         TezxYtFRVtFqN/nfsElRbCujuZ9EK6iGF7MVim9kCECAQ8w3ATLRkqJSRyZmbPNRZgp/
         ykjwIAwEE5ws6imDgmGOj3K9LwUQ1NFJ713SE4n1OU685mUUUG1O4ssMcCL5ML5UYL7X
         0Dk5nwa/60/THi2MbvrgKVErJ27TzqcaHHTe1HDzKEb0zgAn6Hu370hbkJWzYYeUknqP
         ufkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703164740; x=1703769540;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b8ug5EaGKVW0WhoWSS1hJEcFQ3IAHX23XrOOVlYG8qg=;
        b=cTptQvDIa+4QgLCQmF01tzKsANUIMqMGN2w0A65GqacdP/J4VyItgsZkmDQ1SL41n3
         DDUgZomwu4FEjBnJkxeCLOsViekAu0Kfh7SWW4NaJaQ+ei/fCxwzFRDv3xqRrg+IWLyr
         wWKCb3PgwZ1FoAubOxfXCHbGSOak7+XmSQIIXPpELAfJmFOqgtBpev8whpNBwkCBMGyS
         YUi+OeTR4E0T6W+xLR6kNP9mkw6HnJsjYnMvu3MSm1FjDoJnzQv4SO08IGlBe/hfhbbp
         35dstoaeVJhegiZd6bBv5VhtPCc7WuV8hAVtcJbcvtoYO9EjxSFRTUouMglW3VcBJzGI
         ecJQ==
X-Gm-Message-State: AOJu0YwflirWLRTcrOMdcuZCWzX3RLCcwnInmHfhluUf0Fu3ngl3mKzQ
	SxoccmEiqA70AD99xgVD1N8lCeImiPbBzqlYb/u5aQ==
X-Google-Smtp-Source: AGHT+IFYBNlcgadWJtdLtAt234udD6Wwy4RWkjN5vQLR0MWREb+y+GVLkn1MUL0aiMRNq32Ibz3tPDqplZCKm1XH2kE=
X-Received: by 2002:a81:9111:0:b0:5d7:5964:9c01 with SMTP id
 i17-20020a819111000000b005d759649c01mr1122176ywg.26.1703164740359; Thu, 21
 Dec 2023 05:19:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231220-sa8295p-gpu-v1-0-d8cdf2257f97@quicinc.com>
 <20231220-sa8295p-gpu-v1-2-d8cdf2257f97@quicinc.com> <8d206362-7d80-46dc-8474-871fc53abc20@linaro.org>
 <CAA8EJpoEqKv_rWB8468WJzxqPA5w7u_zmGJJ0oKWAyaB9-f0eQ@mail.gmail.com> <35845077-7839-41bf-9eca-82f8b0be29ec@linaro.org>
In-Reply-To: <35845077-7839-41bf-9eca-82f8b0be29ec@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 21 Dec 2023 15:18:49 +0200
Message-ID: <CAA8EJppr0+=JxzXP1e9uP=8mGwCwWyi4wTYkM0ORm1Uf+2FPMA@mail.gmail.com>
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

On Thu, 21 Dec 2023 at 15:16, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 21.12.2023 14:04, Dmitry Baryshkov wrote:
> > On Thu, 21 Dec 2023 at 15:01, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> >>
> >> On 21.12.2023 04:50, Bjorn Andersson wrote:
> >>> The GX GDSC is modelled to aid the GMU in powering down the GPU in the
> >>> event that the GPU crashes, so that it can be restarted again. But in
> >>> the event that the power-domain is supplied through a dedicated
> >>> regulator (in contrast to being a subdomin of another power-domain),
> >>> something needs to turn that regulator on, both to make sure things are
> >>> powered and to match the operation in gdsc_disable().
> >>>
> >>> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> >>> ---
> >>>  drivers/clk/qcom/gdsc.c | 8 +++++++-
> >>>  1 file changed, 7 insertions(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/clk/qcom/gdsc.c b/drivers/clk/qcom/gdsc.c
> >>> index 5358e28122ab..d1139c895503 100644
> >>> --- a/drivers/clk/qcom/gdsc.c
> >>> +++ b/drivers/clk/qcom/gdsc.c
> >>> @@ -557,7 +557,13 @@ void gdsc_unregister(struct gdsc_desc *desc)
> >>>   */
> >>>  int gdsc_gx_do_nothing_enable(struct generic_pm_domain *domain)
> >> I suppose the name is confusing now..
> >>
> >> But at the same time I can't come up with anything that's less than
> >> like 6 words..
> >
> > gdsc_gx_enable() ;-)
> except not really only gx and not really enable :(
>
> gdsc_shared_enable would probably be closer to our current
> nomenclature..

gdsc_dummy_gx_enable*(

Or gdsc_dummy_gmu_gx_enable(). Still less than 6 words. I'm trying my best!


-- 
With best wishes
Dmitry

