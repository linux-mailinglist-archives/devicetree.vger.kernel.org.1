Return-Path: <devicetree+bounces-258012-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ILjQCygAcWmgbAAAu9opvQ
	(envelope-from <devicetree+bounces-258012-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 17:34:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C892459F65
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 17:34:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2168376CF45
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 15:12:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1942494A18;
	Wed, 21 Jan 2026 14:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FgyhDwsK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716702494F0
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 14:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769007302; cv=pass; b=A9LQ9C9UqBtju8CvHLL7jVvnsbG6jIYFhVvHAP6e3z6xKaiHJiZI5r/EtLbn6Re5aOHLwJclZa5JEiJsO3j95EAdHLecK3pDHF8NFCG5kzndz0f8nok8mnzc930KC8a9YNtijsk1jStUqJ43+Vf4/lXKcIZKQRm11MQdYMf5bws=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769007302; c=relaxed/simple;
	bh=yNWgMaR8oi9I8/XxPbf7ddsV49C99BlKrBmh1kPGTcc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Z/BaxAvAVPyl1JhLBRm74QYRRGIHssHfI0bmVfQNdnSAg40JnRGCSma6odO7RMP+vbeDsU0eI4Pmff4NaSPUO0GmeCnQZk1BPl5LntYPYeIf2rUYITk1EyWh13bqHBwZN6RA+VD6c3Xf6g3CByjgj0eli/SImXz1hQFE8unn0Ms=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FgyhDwsK; arc=pass smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-59dd3e979ceso670836e87.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 06:55:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769007298; cv=none;
        d=google.com; s=arc-20240605;
        b=bd0WDIqlxjewCJkZiNLFk/TJiH609j1lUEpo+j9+dbJU+9gNfs9FVzkqWYSbg8Dp8N
         k+C3RMrPBtUmk4sEn2R9MzjXdWtp/76tldcDfH713vgMvFfj+bM5o2HhHsdbfiWMagbe
         jnoBLlhldY38d27kwzEotEWvl2KH6sceti9sxq81+Sbea5cXOY+/uQHifG1H07IuyIdu
         W/9zHdWBV0YmAqc4TK6TOyPkvAecP4Jf1hnv9X/gHe56AtaHfJYfth6YsRZCSGBww1w2
         dxu49NuZH02juS0fDEJPADAkqfoQP9RQMeHf4DM89THI7OKpL9eIcWxvBpURMSKDr239
         U0cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=A6330N1LFD4XBCM84aMPcZjMDcowYLAuIIeheUGm2Io=;
        fh=M/s+WBfiYPdJG8oqcnaIuXRwz+S7FErmyrVzp/m+L8I=;
        b=ZhBsygZP/1lWcPgP3tSt5IIC2Ewegu/7jfiLo8tU9IQjQ8CmeaiaR52DKWX7KbiGez
         zLXLbpczEzV25YkWZyZuWxyNDuuzkwpuN+xOljijO989vX+1IFs40fjdHSyNSJd+Y0Oi
         BqCcDaHeuxtsimxB0FyOCpQ3f2TnGMNc5SX+GIvGncBlXF+w1t9O3ER7J+ZTIHoiEzyO
         HznSpLlmyip/l+Ookk9q/OFa/SXIRmQ9kK//BynoN456MOtaQDeUgQQ9yRcgmlo0qgiq
         K76HrZuN+Wi1WVWpQCneOT9TEsa+YxHNgZcfJQh53gE0mcdM8FkJ95H2GAyzSkqb/5fk
         j8iA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769007298; x=1769612098; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=A6330N1LFD4XBCM84aMPcZjMDcowYLAuIIeheUGm2Io=;
        b=FgyhDwsKgrrP5UmJqvirWQO/uKCkovlWtQ1Ss3voJ7tCvyUwrJHN0cQ87A1CVAMWf+
         shmTaO1DZkFfMCypdFYkwyQB3RIHC8NmvXw9FGzYxYdjVWKaBBYquhJgAUIGCk7kXCJ5
         0ZJll1oHKLld5ZBCAqrVF1AZRpStFmF+qXjpWPMZo1HfZXRMWmAeildShh83C3HQQWBQ
         VYXuOss8OYJvbi/4QHkJj1+RVzzVjd56/QSyaFx2tOvJWbdI/YMOg80PnemYh46Dtuij
         XOagpTBq/F1NOleyP4E0fI/JG8SOydwb0raWTqvO8ePomV1C/8n+UJGW4CpVhDa5O5rG
         rueA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769007298; x=1769612098;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A6330N1LFD4XBCM84aMPcZjMDcowYLAuIIeheUGm2Io=;
        b=pRF5uAnZmkouVQO/gxX19l1r9yCX1HTyW45RPzcWzOQQentJlCcvEdvii4SwG+vD/5
         VYk/oif+kyx5dmWBhpAFEtZ6oLGPf4+xOaVr9E6KCOZValcidHkfPCZUZgzgWQ2C1RVK
         qGC47tPsgLy+paqbv+Ed77TX+gxxvPH0sjJk5TRBjYJwiye4bmWnlr8kT3Ss3I8D8tsi
         lNjewfpx8KvM6Ar0Ki2jzTQqvLQCRf7ZKb32lsk8gKGigahgGSK3j1YMOakY9Iy/R3rE
         Nz8z0Zy9f3+QbJ9RIPKqNU9buzXNpB0LguCcEHvUz5fbdn/JPpIyu3MYoxPnHwzLC0zw
         JaVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFdmITM5lpAXKzNlF/hD33VPFd1hVNnuUevBUNPBQLKO7T5eYTindPvmcXjG3yNC5P6Yb7b67le/d/@vger.kernel.org
X-Gm-Message-State: AOJu0YyQdTL9VIo1cC5uqkJTpCMP8z72t0b/gWXtsGttrMVcW5KNSxt6
	csweFIkrJAcvGJ5p4QH6jfNcojxnkEl7BwkAJaoK2BIQeitRdxq0IPYj+TwAIxI7IZmgSmsmUmA
	fHs0nwfdzqT48pwzEWtuRVOu6fwGFt0a4CLwu1DgjaQ==
X-Gm-Gg: AZuq6aI0WmFv/owytizNIOhIz9cYfhzy8wDESJ4DuomO/MbzNfcpPvOL4kjZ9C89DAu
	l/Pf+KE+sDkNLXjVljAP3CRQkml7TPOzQICa9HdidUYUPrkrylVmEpp/3iSKgIjxXRTk6YRQDDi
	6oOUHMIQ34moxxyMDLWVpm4SJqqHthEVlKUslAqbzRL6QK0Ulia9iXDQz9N5Km2oAE1XA6tQxNy
	4dcU65OSJbym/e080UjcUjKtJdMploLSXFrXzFPf86zcXxVN53WfqdP0ODnz6Ebf9acXSb9
X-Received: by 2002:a05:6512:3b07:b0:59b:b3e3:c7fb with SMTP id
 2adb3069b0e04-59bb3e3c825mr5593429e87.9.1769007298426; Wed, 21 Jan 2026
 06:54:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1768524932-163929-1-git-send-email-shawn.lin@rock-chips.com> <1768524932-163929-4-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1768524932-163929-4-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 21 Jan 2026 15:54:21 +0100
X-Gm-Features: AZwV_QhAFWP6FlwdmN7VDr70aTTu8jbqo16cWKBC4DG2eUryPHPCQFlBbqWCxU4
Message-ID: <CAPDyKFqbv0Vrb8a2bHN8gAdY7iEh_Sx8iWF7VWiQ71rjbWGBsg@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] mmc: dw_mmc-rockchip: Fix runtime PM support for
 internal phase support
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	FUKAUMI Naoki <naoki@radxa.com>, Marco Schirrmeister <mschirrmeister@gmail.com>, 
	John Clark <inindev@gmail.com>, Tianling Shen <cnsztl@gmail.com>, 
	Detlev Casanova <detlev.casanova@collabora.com>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258012-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[sntech.de,lists.infradead.org,vger.kernel.org,radxa.com,gmail.com,collabora.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,linaro.org:dkim,mail.gmail.com:mid,rock-chips.com:email]
X-Rspamd-Queue-Id: C892459F65
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 16 Jan 2026 at 01:56, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> RK3576 is the first platform to introduce internal phase support, and
> subsequent platforms are expected to adopt a similar design. In this
> architecture, runtime suspend powers off the attached power domain, which
> resets registers, including vendor-specific ones such as SDMMC_TIMING_CON0,
> SDMMC_TIMING_CON1, and SDMMC_MISC_CON. These registers must be saved and
> restored, a requirement that falls outside the scope of the dw_mmc core.
>
> Fixes: 59903441f5e4 ("mmc: dw_mmc-rockchip: Add internal phase support")
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Tested-by: Marco Schirrmeister <mschirrmeister@gmail.com>

Following Heiko's approach, applied for next and by adding a stable-tag, thanks!

Kind regards
Uffe


> ---
>
> Changes in v3: None
> Changes in v2: None
>
>  drivers/mmc/host/dw_mmc-rockchip.c | 38 +++++++++++++++++++++++++++++++++++++-
>  1 file changed, 37 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> index 879188f..2fe0896 100644
> --- a/drivers/mmc/host/dw_mmc-rockchip.c
> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> @@ -36,6 +36,8 @@ struct dw_mci_rockchip_priv_data {
>         int                     default_sample_phase;
>         int                     num_phases;
>         bool                    internal_phase;
> +       int                     sample_phase;
> +       int                     drv_phase;
>  };
>
>  /*
> @@ -573,9 +575,43 @@ static void dw_mci_rockchip_remove(struct platform_device *pdev)
>         dw_mci_pltfm_remove(pdev);
>  }
>
> +static int dw_mci_rockchip_runtime_suspend(struct device *dev)
> +{
> +       struct platform_device *pdev = to_platform_device(dev);
> +       struct dw_mci *host = platform_get_drvdata(pdev);
> +       struct dw_mci_rockchip_priv_data *priv = host->priv;
> +
> +       if (priv->internal_phase) {
> +               priv->sample_phase = rockchip_mmc_get_phase(host, true);
> +               priv->drv_phase = rockchip_mmc_get_phase(host, false);
> +       }
> +
> +       return dw_mci_runtime_suspend(dev);
> +}
> +
> +static int dw_mci_rockchip_runtime_resume(struct device *dev)
> +{
> +       struct platform_device *pdev = to_platform_device(dev);
> +       struct dw_mci *host = platform_get_drvdata(pdev);
> +       struct dw_mci_rockchip_priv_data *priv = host->priv;
> +       int ret;
> +
> +       ret = dw_mci_runtime_resume(dev);
> +       if (ret)
> +               return ret;
> +
> +       if (priv->internal_phase) {
> +               rockchip_mmc_set_phase(host, true, priv->sample_phase);
> +               rockchip_mmc_set_phase(host, false, priv->drv_phase);
> +               mci_writel(host, MISC_CON, MEM_CLK_AUTOGATE_ENABLE);
> +       }
> +
> +       return ret;
> +}
> +
>  static const struct dev_pm_ops dw_mci_rockchip_dev_pm_ops = {
>         SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend, pm_runtime_force_resume)
> -       RUNTIME_PM_OPS(dw_mci_runtime_suspend, dw_mci_runtime_resume, NULL)
> +       RUNTIME_PM_OPS(dw_mci_rockchip_runtime_suspend, dw_mci_rockchip_runtime_resume, NULL)
>  };
>
>  static struct platform_driver dw_mci_rockchip_pltfm_driver = {
> --
> 2.7.4
>

