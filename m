Return-Path: <devicetree+bounces-118656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D659BB2B2
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 12:15:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 99343B27DA5
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 11:14:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 025581B85D2;
	Mon,  4 Nov 2024 10:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hznSesPa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB981B85CC
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 10:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730717916; cv=none; b=dRrwzcdlQMGRmPaX4axdDfY+XZW9bJqfkg/ARQ6RCnwx0zXcri6JUHicMp8O+z3/Jd/vwHWBWDTb6igvUZMzEX75vLUpf7VFHCtqCGDRTy7qn3u68gvqsU1Zod/mcQhH6GccHwWmLmxr12cdUwqEnOxpHu4ctNmOOdMCzZvcwkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730717916; c=relaxed/simple;
	bh=HXRqLnDDtJW6cTQrcmKnH1WqFgEaTawJdcXZ4z9WS+0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m5FAGF21pJsiu8Y2Aq/B7GkmVp2/2blbgcbF6yZnC7ZkyMVoFfFXzZHV9zepVWeEnjAmnXORx4apsMsMjJQpLRxYSnOAfCDzM6u+80xioOHCKuWKYHgCBwCtKSYiKgQx3cq/aojYe4dBx3Y5iUdEUhqjJb8kVAw5+Un59OyM5mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hznSesPa; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-6e9ba45d67fso36863457b3.1
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 02:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730717914; x=1731322714; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=A8OEwwbndwQP7wHdh9ISRQA4yW5gd+UJ76JpEPhxfag=;
        b=hznSesPaYJXF1pGvJjwrrVmxvphKVCUfNmrKb2iCfbiWWY5k3gS+xlD1zTSNmQZhj5
         Pk9PA7sDOG/UE1Ou9ycYFMNrlsyfTz5oznWIQ3QspNTsKVf41Wn2ItSpo2Om9gaGAn0X
         lgZWP3f/5M7FJs8hD2yo/MGEYG4HaPwOmmXe+2+R+uD1eg3a4ePmmPeV7f1DjrnylHyR
         B/Spg3PXyEf5Ra53MRAPH/98LDyUQLEIUTkJXkCPrXVdRL6rTvFDsNDipxvHCVm87d5w
         hvWnp7zqa0A5lyEfGjZrRTDc2dghK6Ef6s1Oj0dRDJskCmlW8+7QHk8MNZ1D+Iy1ZgT3
         OYtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730717914; x=1731322714;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A8OEwwbndwQP7wHdh9ISRQA4yW5gd+UJ76JpEPhxfag=;
        b=Hab//d+/Cw0TcGL/FlaKbPlyw5dBMvwZMHRy57ieq0WyP1OEkUolYOVSd2EAPzo76Z
         43HtpQNSbh6Op9G7X2w0zCO6K+YIQd6IZm8/4kIfzXhRHtSL7GjUrK1LEtJniD9XgGuK
         I03doAUZr/h3mTihFW2iFiig9e+1VFe7MURPbMsGcvoCbdSOUMjaalSMc6QmhWB3d/hJ
         N1JOVa0lg+vIydrjRcZ9WGIaUJ5lYDxSAUcjKdRRTMZRON0hVmzLG+DMvP5VXYJo1+xq
         Un6rpXvhvH90SpK7Y0FnCB+trZTK2EQs2YTXTzZtLYlnqata2EOwtr+eUEIxeYIxXEbv
         eYhw==
X-Forwarded-Encrypted: i=1; AJvYcCXw5NHm1iKJoYoKjIOAXF3y1vj9S/U3zwGYuVr+2TgUK31TC8Npi2Bzxog7xim6h+QJo5JLO4ObhgQp@vger.kernel.org
X-Gm-Message-State: AOJu0Yziqc1gBQZGZCtawU9/aJhHElrp++ziWPnbyJ5BF+4mp9OnUDk9
	ZZH+V92coQWCdLfXNNTOjMz0qxmLI30gB3dU0y9vunVu6NFSU1NXNYMQnXdlD6GLBPnS4hM1iY6
	tuD1Rrllln4fyTAs8ZCzFNd1dTbd9kFqtyLh3oQ==
X-Google-Smtp-Source: AGHT+IHi7UAsQfjAiAGv3Fbp4VDCnNLJgrXpVXyVg0zWty3KS6vdc/17EwBBZWalLVopb7bNmLcxY/IvP/w/XllPp6g=
X-Received: by 2002:a05:690c:3005:b0:6e7:e92d:6c0c with SMTP id
 00721157ae682-6ea3b8954cdmr141759517b3.10.1730717914161; Mon, 04 Nov 2024
 02:58:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1730705521-23081-1-git-send-email-shawn.lin@rock-chips.com> <1730705521-23081-8-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1730705521-23081-8-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 4 Nov 2024 11:57:58 +0100
Message-ID: <CAPDyKFrig236e5xTSeOHfNR5Z3840o6u_h7LnoAG2P8Ck348WQ@mail.gmail.com>
Subject: Re: [PATCH v4 7/7] scsi: ufs: rockchip: initial support for UFS
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 4 Nov 2024 at 08:34, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> RK3576 SoC contains a UFS controller, add initial support for it.
> The features are:
> (1) support UFS 2.0 features
> (2) High speed up to HS-G3
> (3) 2RX-2TX lanes
> (4) auto H8 entry and exit
>
> Software limitation:
> (1) HCE procedure: enable controller->enable intr->dme_reset->dme_enable
> (2) disable unipro timeout values before power mode change
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>
> Changes in v4:
> - deal with power domain of rpm and spm suggested by Ulf
> - Fix typo and disable clks in ufs_rockchip_remove
> - remove clk_disable_unprepare(host->ref_out_clk) from
>   ufs_rockchip_remove
>

[...]

> +#ifdef CONFIG_PM
> +static int ufs_rockchip_runtime_suspend(struct device *dev)
> +{
> +       struct ufs_hba *hba = dev_get_drvdata(dev);
> +       struct ufs_rockchip_host *host = ufshcd_get_variant(hba);
> +
> +       clk_disable_unprepare(host->ref_out_clk);
> +
> +       /* Shouldn't power down if rpm_lvl is less than level 5. */
> +       dev_pm_genpd_rpm_always_on(dev, hba->rpm_lvl < UFS_PM_LVL_5 ? true : false);
> +
> +       return ufshcd_runtime_suspend(dev);
> +}
> +
> +static int ufs_rockchip_runtime_resume(struct device *dev)
> +{
> +       struct ufs_hba *hba = dev_get_drvdata(dev);
> +       struct ufs_rockchip_host *host = ufshcd_get_variant(hba);
> +       int err;
> +
> +       err = clk_prepare_enable(host->ref_out_clk);
> +       if (err) {
> +               dev_err(hba->dev, "failed to enable ref out clock %d\n", err);
> +               return err;
> +       }
> +
> +       reset_control_assert(host->rst);
> +       usleep_range(1, 2);
> +       reset_control_deassert(host->rst);
> +
> +       return ufshcd_runtime_resume(dev);
> +}
> +#endif
> +
> +#ifdef CONFIG_PM_SLEEP
> +static int ufs_rockchip_system_suspend(struct device *dev)
> +{
> +       struct ufs_hba *hba = dev_get_drvdata(dev);
> +
> +       if (hba->spm_lvl < 5)
> +               device_set_wakeup_path(dev);

Please use device_set_awake_path() instead.

Ideally all users of device_set_wakeup_path() should convert into
device_set_awake_path(), it's just that we haven't been able to
complete the conversion yet.

> +       else
> +               device_clr_wakeup_path(dev);

This isn't needed. The flag is getting cleared in device_prepare().

> +
> +       return ufshcd_system_suspend(dev);

Don't you want to disable the clock during system suspend too? If the
device is runtime resumed at this point, the clock will be left
enabled, no?

> +}
> +#endif
> +
> +static const struct dev_pm_ops ufs_rockchip_pm_ops = {
> +       SET_SYSTEM_SLEEP_PM_OPS(ufs_rockchip_system_suspend, ufshcd_system_resume)
> +       SET_RUNTIME_PM_OPS(ufs_rockchip_runtime_suspend, ufs_rockchip_runtime_resume, NULL)
> +       .prepare         = ufshcd_suspend_prepare,
> +       .complete        = ufshcd_resume_complete,
> +};
> +

[...]

Kind regards
Uffe

