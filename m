Return-Path: <devicetree+bounces-148386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 738A1A3BDB3
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 13:02:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 41EDA16E110
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 12:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ECBD1DF743;
	Wed, 19 Feb 2025 12:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Sipm70qQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF9D1DED57
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 12:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739966553; cv=none; b=GBxjnTO5gb0ebEktJMgrB7MjEq6r4XSWb5Ei0TiMjfwRS4+onZksNyGvZWe2OXOVoYfDGNYuIjhstNxibJLCOcsTgNTkJE48CVSnNzrDh6fVGQv0QF5MJ4crqJmftmi7B3Nsg2viD2HycOF/FoEtmt1ECbAqTgxmunvYIMFJVmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739966553; c=relaxed/simple;
	bh=qNatnVCTXCSUtPNdRQ6TNSVEZF7p6W8BZcQY4/i8Pf8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t35+p3vQ6J+w3bXLMt4TJ3o7Ecs+dS2pOEnBTQiqZEpawN3uA+XDPvEqpK0OW4BiNRceaitRrZLwPyIRJDPmKWB7C08nRZi2wWCDEb9QMcd1AOVUuYdzOyqw23gOHLzRtF7ssXauHNHWIL1OYCnoUrTJ31PVBx26sb10i6ot4Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Sipm70qQ; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-30797730cbdso69252541fa.3
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 04:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739966549; x=1740571349; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=c8xTKanYx+xoZdJey1C0S3ieRvxQW3SxZZcXt2SXB8c=;
        b=Sipm70qQoOL+kvqiXzPEUzpLyytRtOrhsuUb2wZqNuNmJZ4VUpOP9jXIgjaQA8LnGJ
         NaIHjbURJlLBHTM/SIbYDrYYPEVHMZCfXMK3v+RJQOGKpbTcj1caNAryoK+eLqcFEaQR
         WBU7ZEk6hMYkEK4OXYrJshLtEzVTqirmQ8FD3NfqMlFWdCkKDLtm3sXldsKJeLb859Tz
         /qN87dr7X/9mUBhq90mMEautcGqF05sPJV+BbE/SoW3574rufD/FCBkPIEpnwZKaq/x0
         u5A9Kt15JEA/LUBtGzwwykxeATS8PTesdsFgV+Wm7XWhOlWN2oIo8NfF7jD1k1cs6Rqe
         vp0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739966549; x=1740571349;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c8xTKanYx+xoZdJey1C0S3ieRvxQW3SxZZcXt2SXB8c=;
        b=eLEVCabgZloZqHiqEjG1pp8I/syvCNNwSfbCv/pcUS4o3J/dZq3hZDCbMNP3NhZt47
         OrruYhjrYdhJysFJ7so5jPsQM36kPH0DEh9PoP1nZoFk1YE0MHSQjDhlOoBrhl+qha6G
         PUwau8F7QE46+mGStnwJVMPuS43xovjRN4Q955beT+WdAxVJeuI1DYe77IosVJHTZxLW
         GR/jcObmZMBRwoTKqTJhghoA1ar9PZfHnnEkq5RNU+eNOzuEZQat1AA12wb8qOKLtWWL
         pNiZK0anhWi8T6Y8lXgiKq9s1TWFPfLPUJdzzUiZBBKGKzpOEuCgKjtLtfvN4DUWFs7X
         +eSw==
X-Forwarded-Encrypted: i=1; AJvYcCX3YhI/HTLaojnlrhnAuZCPxAURe/rocFupeVy6wqANXLLIqERO8JShLNpettzp8u4v0iFx48Jt5Tl7@vger.kernel.org
X-Gm-Message-State: AOJu0Yzr4MRqUMcvTdhwXyKaGZWT+I9mmwZYlrsoMAjBlnabUOG1he11
	MWoqQ4yyVuuwPUSql7mefk8mWr4MqLwTWaOK60JqcwVPMIFeNqSdKXXj6VWgO3s=
X-Gm-Gg: ASbGncv9rJsnqHQKrSTrFZpB3v5GM7cTIQitdzVfXUB1e6aSKyEqwZC5x/OmGMiWy6W
	2Mnff36mH8WA7RClEnKewXDNnMDU0lrFU8Xy73z/oyd83j+rHnpts2DxRhpcKTk9Y8FGVpxbVdG
	OEhyWzrir/aNInLy5RNpbmnBRMfOcxkyF2ilku/IOY8FCby8Ed84UOIxUsG4MC1h7PWxBrUxhYE
	Ljac1erR+drm9arMwN4GNunvs0do27jwGH+5eKMqcauiDy3tzUoBfk6srs2sRAaNWdG+W7IPnDo
	H01+9LHgy/DZOkOzVmto2ZMblKHVssDCkTayuA9pEuhYAQunoA9jqirTdmX5GoNLBHAPKh0=
X-Google-Smtp-Source: AGHT+IHbk50hGd8GUQwEPPbTJfbgC5WxbsoyaAfYiOyZ8/SynsFsCjbirUJgyZXCdoDx0F42tjrihA==
X-Received: by 2002:a05:6512:281b:b0:545:1d96:d6f7 with SMTP id 2adb3069b0e04-5462ef197d6mr1485538e87.32.1739966549327;
        Wed, 19 Feb 2025 04:02:29 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5456468c28csm1382050e87.122.2025.02.19.04.02.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 04:02:28 -0800 (PST)
Date: Wed, 19 Feb 2025 14:02:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Ajit Pandey <quic_ajipan@quicinc.com>, 
	Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>, 
	Satya Priya Kakitapalli <quic_skakitap@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/5] clk: qcom: videocc: Add support to attach multiple
 power domains
Message-ID: <v744bey7hvqkhzx4f6tb7sqds4yh5ggpv2ftuhbjbose3wossd@hjf6sqaitjfx>
References: <20250218-videocc-pll-multi-pd-voting-v1-0-cfe6289ea29b@quicinc.com>
 <20250218-videocc-pll-multi-pd-voting-v1-4-cfe6289ea29b@quicinc.com>
 <eec2869a-fa8f-4aaf-9fc5-e7a8baf0f864@linaro.org>
 <huluiiaqmunvmffoqadrhssd3kl2toutqtcw7rzamv3sqdglsf@7lz66x4sj3gv>
 <a8350d0f-2a63-46de-86f3-c156809cca0e@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a8350d0f-2a63-46de-86f3-c156809cca0e@quicinc.com>

On Wed, Feb 19, 2025 at 05:08:52PM +0530, Jagadeesh Kona wrote:
> 
> 
> On 2/18/2025 10:49 PM, Dmitry Baryshkov wrote:
> > On Tue, Feb 18, 2025 at 03:46:15PM +0000, Bryan O'Donoghue wrote:
> >> On 18/02/2025 14:26, Jagadeesh Kona wrote:
> >>> During boot-up, the PLL configuration might be missed even after
> >>> calling pll_configure() from the clock controller probe. This can
> >>> happen because the PLL is connected to one or more rails that are
> >>> turned off, and the current clock controller code cannot enable
> >>> multiple rails during probe. Consequently, the PLL may be activated
> >>> with suboptimal settings, causing functional issues.
> >>>
> >>> To properly configure the video PLLs in the probe on SM8450, SM8475,
> >>> SM8550, and SM8650 platforms, the MXC rail must be ON along with MMCX.
> >>> Therefore, add support to attach multiple power domains to videocc on
> >>> these platforms.
> >>>
> >>> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> >>> ---
> >>>   drivers/clk/qcom/videocc-sm8450.c | 4 ++++
> >>>   drivers/clk/qcom/videocc-sm8550.c | 4 ++++
> >>>   2 files changed, 8 insertions(+)
> >>>
> >>> diff --git a/drivers/clk/qcom/videocc-sm8450.c b/drivers/clk/qcom/videocc-sm8450.c
> >>> index f26c7eccb62e7eb8dbd022e2f01fa496eb570b3f..b50a14547336580de88a741f1d33b126e9daa848 100644
> >>> --- a/drivers/clk/qcom/videocc-sm8450.c
> >>> +++ b/drivers/clk/qcom/videocc-sm8450.c
> >>> @@ -437,6 +437,10 @@ static int video_cc_sm8450_probe(struct platform_device *pdev)
> >>>   	struct regmap *regmap;
> >>>   	int ret;
> >>> +	ret = qcom_cc_attach_pds(&pdev->dev, &video_cc_sm8450_desc);
> >>> +	if (ret)
> >>> +		return ret;
> >>> +
> >>>   	ret = devm_pm_runtime_enable(&pdev->dev);
> >>>   	if (ret)
> >>>   		return ret;
> >>> diff --git a/drivers/clk/qcom/videocc-sm8550.c b/drivers/clk/qcom/videocc-sm8550.c
> >>> index 7c25a50cfa970dff55d701cb24bc3aa5924ca12d..d4b223d1392f0721afd1b582ed35d5061294079e 100644
> >>> --- a/drivers/clk/qcom/videocc-sm8550.c
> >>> +++ b/drivers/clk/qcom/videocc-sm8550.c
> >>> @@ -542,6 +542,10 @@ static int video_cc_sm8550_probe(struct platform_device *pdev)
> >>>   	int ret;
> >>>   	u32 sleep_clk_offset = 0x8140;
> >>> +	ret = qcom_cc_attach_pds(&pdev->dev, &video_cc_sm8550_desc);
> >>> +	if (ret)
> >>> +		return ret;
> >>> +
> >>>   	ret = devm_pm_runtime_enable(&pdev->dev);
> >>>   	if (ret)
> >>>   		return ret;
> >>>
> >>
> >> What's the difference between doing the attach here or doing it in
> >> really_probe() ?
> > 
> > I'd second this. If the domains are to be attached before calling any
> > other functions, move the call to the qcom_cc_map(), so that all drivers
> > get all domains attached before configuring PLLs instead of manually
> > calling the function.
> > 
> 
> I earlier tried moving the attach PDs call to qcom_cc_map(), but I faced the below issues
> 1. desc passed to qcom_cc_map() has const qualifier, so updating desc->pd_list
>    inside qcom_cc_map() is leading to a warning.

And? Can you fix the warning?

> 2. If we attach the PDs after calling get_sync() on device, I observed
>    that PDS are not getting enabled during probe. Currently qcom_cc_map()
>    is called after get_sync() is already called on device.

Move PM handling into qcom_cc_map(). Then together with the Bryan's
proposal most of the probe() functions can just call qcom_cc_probe()

> 
> Probably, we can add a new function qcom_cc_attach_pds_map() where we can
> attach PDs and call qcom_cc_map() inside it. We can then invoke this new
> function at the start of probe before get_sync(). I will post this change
> in next version if this aligns with your thoughts.
> 
> Thanks,
> Jagadeesh

-- 
With best wishes
Dmitry

