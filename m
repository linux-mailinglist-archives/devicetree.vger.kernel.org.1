Return-Path: <devicetree+bounces-262187-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KIPpFeTQgWl1JwMAu9opvQ
	(envelope-from <devicetree+bounces-262187-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:41:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F13E8D7E07
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:41:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 39E2B30268D9
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 10:41:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A63EA322B69;
	Tue,  3 Feb 2026 10:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u9df9jAd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC69318ECF
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 10:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770115285; cv=pass; b=UNA0DBsyErH43M1geDCWOVhLPb85CFPp78Q0w9RX8XTXWmbCs2c63/ooBovSvZZ/f5adJUeRl73fFddrmK6PibzyOflKls3xFtSYPm1VI3s+GTqytIzXfK9uaVI5tNh0LpI+//n/x+fG41YcSW21ZcL7eFnjvesS80Y2zmWuvvg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770115285; c=relaxed/simple;
	bh=EZhZoolcVsnf21eiX4kAKedgHHgjheaIc5imb+clfpA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AhMu/2rGpHm/SQrrYG3/BMJ1mJu57+pbLtM0b7gxiZIohAqUP4v6pWP4pQGdOswWrCw7Yekla4U0RWnRvXXWVczp21Z1hrVtt5lUGTGUb+0taeTe4v+uOsNB5z0rmoYTWR9qDQpC3MvX9ceaNOUQvce31qsvu0c1HV7KtYNhRho=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u9df9jAd; arc=pass smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-59e2cb21520so1877509e87.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 02:41:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770115281; cv=none;
        d=google.com; s=arc-20240605;
        b=afoR0H30WlSu3SBbtP1q57HUj+9O5I11uuUxLS/BTl5cXdYY7aIBL36tDomOp6ZMzm
         xcXT81wMbZ6hEh/7VgrdVQbye4m9F/fXdBQk4Z30b4lqaq5sO/bIPiAR88k9IBNy9AE3
         dlJcZ6neWivcTDH0vuwExv4RbnWHjmarOOOgzxptqcO6H/tIkeGuGnLgxZTvhP6YzeZ9
         jr6Pqq19oJVcsftV50o9d+GXtAAnMQTDrLy5PVSEDi8mA0fD8nVJ4Lq2pIebUM3lOPIM
         rsfyVLhALnJV6IGu0yKfwMTYqsvRg6LzhAUULpJICBnujJGBxBsoyOUp1w5QcCgThxAe
         t3fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EZhZoolcVsnf21eiX4kAKedgHHgjheaIc5imb+clfpA=;
        fh=1CInlHfKMmlbrgCVD1e9HBAWREKTJIMrpp92cJId1wk=;
        b=LGFfHqjbflhayesGrJ/8IR0gc2V2wrVGbCVIPC8l4dh8YMjHzg0jV72C9PIpvtDYd/
         J0eZhLn+8SjLvak51oVa2dDWHeQmlaabL0+VxxnDn4dnuZYCgSVUgR0TEwO1FEtQAWwD
         V6Pvekam7tE3Wc4muMJMscCkYefpwleUYgCmDhxLvOCQ6ygIZs69Agb25Jm++EI5c2Zv
         cf011TSLEw3FyX3V9Ew4tXvlBsODn135Z77ZbHzG6wVqpUayQCrwT4FLneV8q/xtytmE
         RL4RRuonn2uXLjaQh+s/LZCG/hMEAdc1/g4esVsjp8JYHYFvVc0J+GvitSNIieMp9WmU
         QhQw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770115281; x=1770720081; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EZhZoolcVsnf21eiX4kAKedgHHgjheaIc5imb+clfpA=;
        b=u9df9jAd3ocwpNvTkerjq/5EwbpvelscXEhWSwC3ym80s8IjbgyHdQcqBp45X9nu4F
         NYiYPgWEx4f31cBTrYoFs0mdyAasZdSRvrSGXQx6fAsr6ikCHnpvjoQgP/nNWsE2SJwo
         yTfIIy7K2s35FAt3R959t8mjWSPYNXL1u2sMNnKKypKrwfPGRHk9vzGlihZ/vPEqpu8a
         kJzg9L3Xvo49f0c4ypDqDWW4hPmIy6mkoI/NefVKGICLNXwOEmhaapKDgO1AvB2v8d5E
         pRWPz16LCsYRVVFuNtLdietKnxRklo/lTYqOiCEWmeVFsTJ3Z+BFSR87ren4mP988TBd
         7eeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770115281; x=1770720081;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EZhZoolcVsnf21eiX4kAKedgHHgjheaIc5imb+clfpA=;
        b=wk5vAf4QLN0u1sh2yXKU1wt7hTWwF8uIa8AeD/fSU4tn3tOxeiCRw3OS0HG0ZiX7G0
         riCG4kPYe88E4WY8CbW+dwdtUNXmwFRtw1CKAkdltVd4ti/ID0lQYA7he0sw4nYSuAup
         htYXrFgJ/0a5c53FgHi3gA+exnMGd1Kt0TuGP/2ql8RB+XGW6wam/zKYXmyrY1ooEnI1
         tRaJOuYbCBrcIknA9AjA4w6TVi9FAiwms1wQ1FfRnUxtAKQLwPsgMYNLz4w5saqg406f
         mIq0J6ntyxTuQRQx/sGVZjeqeJ7S9SBoBGM2s5sTJLpnqz5or+R6ZW4vhiS6bpR+9UC6
         aRNA==
X-Forwarded-Encrypted: i=1; AJvYcCUWLcw6SE2zcPu1KPUiklXaaLi5XwZlRzM5rlgtTIcWU2PsjybQJ0n7BXArmH9NtiLj4MdPPmd/RdgP@vger.kernel.org
X-Gm-Message-State: AOJu0YwqDQgAj0g7c0Ggzy5mGOuw5H/mFKeRim1uQ30UHPcD3QtlYfMY
	oEIAKpor8oL7gF1//xcuQSe4gqIvPR9TF/rBG9XCBRnk9P9ifEwivaECNwwUMelTQDb62zVmncy
	2pV0YTdhmOPTUE4WvgkhIwa+5gY79n2NPD5CNfwv59Q==
X-Gm-Gg: AZuq6aIXoJK2ORSpgs3zjjeWqo2B8cdHoYpcmx+TYai12AjQFvSUXnqH0voUilzOJp7
	jVs3I1yqEPPn5d1d0hev8a4RPAkTaNi9Ay6RYMmAPIdxsejwhPOMZLWIQG1GrYQdrRTaTbbw9Ye
	9767nnMJsfkATz6mYiM9VQnV6PlCkJZz5vcs0NA8V0yJVXLUOgLCRK4qEetYSkbWZbXgyeuwOMp
	mtbpxzT3PWbojro2mZsTpKgIy9PzxZ1yuyPg3Pcr8JIKOmGDlX4edkUu8GC+E4Q259DlHqk
X-Received: by 2002:a05:6512:615:10b0:59e:1704:e0d3 with SMTP id
 2adb3069b0e04-59e1704e0edmr3493618e87.14.1770115281299; Tue, 03 Feb 2026
 02:41:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260201-iris-venus-fix-sm8250-v2-0-6f40d2605c89@oss.qualcomm.com>
 <CAPDyKFoNX087ZhLkQ_n8-42WNQcL06noSuPJPDG87y0andVdNg@mail.gmail.com>
 <CAO9ioeXkhxjghtGVGsOH=1hwC5FvS_4LEXt3hmAEuAbwVjct3g@mail.gmail.com> <l6o4lv2sy7x4g33mjigeh6sb6cmrfyz3xshhmbc3el6qvw3oep@okwpfykypawa>
In-Reply-To: <l6o4lv2sy7x4g33mjigeh6sb6cmrfyz3xshhmbc3el6qvw3oep@okwpfykypawa>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 3 Feb 2026 11:40:45 +0100
X-Gm-Features: AZwV_Qi-wgYVrdRqK589mxNzs1gxGV1Oudp9yxPTCOEtASkncTUH7LC0VHPXYJs
Message-ID: <CAPDyKFrX7NieYszgEZXFyQJr+PA266MJZTvJcGFmrQ2oy7Mj3A@mail.gmail.com>
Subject: Re: [PATCH v2 0/8] media: qcom: iris/venus: fix power domain handling
 on SM8250
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Taniya Das <quic_tdas@quicinc.com>, Jonathan Marek <jonathan@marek.ca>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, "Bryan O'Donoghue" <bod@kernel.org>, 
	Vikash Garodia <vikash.garodia@oss.qualcomm.com>, 
	Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Stanimir Varbanov <stanimir.varbanov@linaro.org>, 
	Abhinav Kumar <abhinav.kumar@linux.dev>, Hans Verkuil <hverkuil@kernel.org>, 
	Stefan Schmidt <stefan.schmidt@linaro.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, Dikshita Agarwal <dikshita@qti.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-media@vger.kernel.org, 
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262187-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,mail.gmail.com:mid,linaro.org:email,linaro.org:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F13E8D7E07
X-Rspamd-Action: no action

On Mon, 2 Feb 2026 at 20:22, Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Mon, Feb 02, 2026 at 05:51:16PM +0200, Dmitry Baryshkov wrote:
> > On Mon, 2 Feb 2026 at 16:46, Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > >
> > > On Sun, 1 Feb 2026 at 11:49, Dmitry Baryshkov
> > > <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > > >
> > > > As pointed out by Konrad during the review of SM8350 / SC8280XP
> > > > patchset, Iris aka Venus description has several flows. It doesn't scale
> > > > MMCX, the frequencies in the OPP table are wrong, etc.
> > > >
> > > > Let's correct the Iris/Venus enablement for SM8250 (unfortunately also
> > > > stopping it from being overclocked).
> > > >
> > > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > >
> > > Do you want me to pick up patch2 for v7.0 - or what do you suggest at
> > > this point?
> >
> > I'd prefer it if it is picked through the immutable tag/branch.
>
> Another option would be to ack merging it through the media tree.

I didn't think the series was considered as material for v7.0 as it's
getting late for that.

Anyway, I have queued patch2 to v7.0 and the patch is also available
to pull in via an immutable "core" branch in my pmdomain tree.

Kind regards
Uffe

