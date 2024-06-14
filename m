Return-Path: <devicetree+bounces-75880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B454908FE0
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 18:17:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 16B79285D9A
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 16:17:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A4A716F845;
	Fri, 14 Jun 2024 16:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bW/jLJBe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2008146D63
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 16:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718381806; cv=none; b=iZYTNg+8t61K1IpMnTAv9GDhY1FdM02LwDTXvs2322tcgPpFqOiMKAR9LUN16H8oUa7HK89Dhnodm3uyDDYxz/btMrXb7AcSTZJ2EIgZ61N388FUY1KWw+bxGwL2tJI8xbUd/i6ZMVSblJf/ywDvmioP6VsCoKDTl9cNfBboG2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718381806; c=relaxed/simple;
	bh=nH13FN57tL3/xFKheVG9Aj1grx4NNK9IzAO/H+c5U88=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JmiXi8Ffyr1J6zZzwmMc5fF+ekmxyYWFa+rQ2D+mP5yO9rvkteR3InpfPyaI7gGvKhL8QhS4UFy4DLfzGFG//cajTaXr0Tcsphd2Ua4ImWlHXzmb3X8ctLQUaM4F2/oUESLaXgHObDCQ9RTvIeEpa1A5JUGJFaboRbHDrrs3GUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bW/jLJBe; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52bc0a9cea4so2100658e87.0
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 09:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718381801; x=1718986601; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DxfXutc6OWPI+LqABeJ5/om1fvUK/kk9/lRBZity8Nk=;
        b=bW/jLJBepBMcJ4rwy2YCHctk2XOM6E8UzlsUff2RvVMggc+DXcjfAqEL4zS2lrfZ/a
         QcIcIjqUvNQTpKccvnhRCZAoRbSuT+lIxm8RLqXp1gwIp/EemAzczyzmFf/hMTTkHI4E
         M8E+iKES6QICx7gnA4WqginO9wyRhMl6OKzkq7O6d8Wqn3SUitInAp43y2IbZuQVw3p0
         brc0EQXGW709usxKfxCyi3mT62oDndJSJdjP0H2+3EjToqRZZ5IR66VX/ysYPHP066ji
         TYr3oGGEvFvUuVv/Ic1Ik/537dJliGxlP5oOJJwsoEn1+6fdAtLOThV1HvLuJaYaKv0T
         JmYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718381801; x=1718986601;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DxfXutc6OWPI+LqABeJ5/om1fvUK/kk9/lRBZity8Nk=;
        b=qzF+SZhmNroI0Hcv8fAx1NpYFVoE1D70mofNqBoc0G9fQ5Vky/v7R4ydHcsvyhKgHE
         4lJE9crMmxGd5/rvhoUT89FTR+kMYK01lCVL2b0akIfOikfL39mtqFdx+qojqB17ufah
         VL5ABWCAt3N3KpN/zk97Bh3BUZR9DrREYXQ4HE5x9wQYD8fpH4eVvc7ELUwpaNypGc/Z
         ls0eijfgP0iRJwvymitGI0zFGlWHVItd5ZiI62oyTCDa72/wY+yWBnY98m6dWEgDoJ5R
         9RDgAn8rphnI5IX5jTm1pjN6Ca0GI8Nt5W1iMvl3WyJQLJOS4S5cESO7WEiN8BAc6Kua
         B3fg==
X-Forwarded-Encrypted: i=1; AJvYcCX8mrj/iIz24EJcOQADqrO3fnp0oqFfUkILZwgGJXdSq1DOqSkHYI706tBKrzMn0hirs13IErHv/gWXmJk5PBkaa6B3aQ13K0aNAg==
X-Gm-Message-State: AOJu0YySEtM3igkeGBYoQpo63oYaGzdY+qGf6DhXk3xIUUtu8gHxpeXp
	mS4VUfLcCgF1W1B1EwnaRqfvIq8wXcHl5jVr+cy9RQoz93D7nY2TVz5huBuJRYA8h+Mzq11hxYY
	/Jew=
X-Google-Smtp-Source: AGHT+IFWh49tFkOdBloSDX4IJrQng477dOMe80RX0kExz3XThklhLq1u8q6ZcYalsgMEcQ+B5wozZg==
X-Received: by 2002:ac2:5b10:0:b0:52c:8355:422a with SMTP id 2adb3069b0e04-52ca0227784mr2017409e87.9.1718381800964;
        Fri, 14 Jun 2024 09:16:40 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca282dd55sm552715e87.65.2024.06.14.09.16.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 09:16:40 -0700 (PDT)
Date: Fri, 14 Jun 2024 19:16:39 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org, 
	benjamin.tissoires@redhat.co, dianders@google.com, hsinyi@google.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] drm/panel: jd9365da: Modify the method of sending
 commands
Message-ID: <5nsbxkuoka7gnnvbvmvjxqpec47glfusz4hrvk4qqdofbgcppy@3u32y2xsh33m>
References: <20240614145510.22965-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240614145510.22965-2-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240614145510.22965-2-lvzhaoxiong@huaqin.corp-partner.google.com>

On Fri, Jun 14, 2024 at 10:55:07PM GMT, Zhaoxiong Lv wrote:
> Currently, the init_code of the jd9365da driver is placed
> in the enable() function and sent, but this seems to take
> a long time. It takes 17ms to send each instruction (an init
> code consists of about 200 instructions), so it takes
> about 3.5s to send the init_code. So we moved the sending
> of the inti_code to the prepare() function, and each
> instruction seemed to take only 25μs.

Additional details about the DSI host would be appreciated. I guess that
the difference in time used to send the command is due to the DSI host
interleaving commands between video frames, but it would be nice to have
that spelled in the commit message.

> 
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
> ---
>  .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 781 +++++++++---------
>  1 file changed, 393 insertions(+), 388 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> index 4879835fe101..b39f01d7002e 100644
> --- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> +++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> @@ -19,17 +19,13 @@
>  #include <linux/of.h>
>  #include <linux/regulator/consumer.h>
>  
> -#define JD9365DA_INIT_CMD_LEN		2
> -
> -struct jadard_init_cmd {
> -	u8 data[JD9365DA_INIT_CMD_LEN];
> -};
> +struct jadard;
>  
>  struct jadard_panel_desc {
>  	const struct drm_display_mode mode;
>  	unsigned int lanes;
>  	enum mipi_dsi_pixel_format format;
> -	const struct jadard_init_cmd *init_cmds;
> +	int (*init)(struct jadard *jadard);
>  	u32 num_init_cmds;
>  };
>  
> @@ -52,21 +48,9 @@ static int jadard_enable(struct drm_panel *panel)
>  {
>  	struct device *dev = panel->dev;
>  	struct jadard *jadard = panel_to_jadard(panel);
> -	const struct jadard_panel_desc *desc = jadard->desc;
>  	struct mipi_dsi_device *dsi = jadard->dsi;
> -	unsigned int i;
>  	int err;
>  
> -	msleep(10);
> -
> -	for (i = 0; i < desc->num_init_cmds; i++) {
> -		const struct jadard_init_cmd *cmd = &desc->init_cmds[i];
> -
> -		err = mipi_dsi_dcs_write_buffer(dsi, cmd->data, JD9365DA_INIT_CMD_LEN);
> -		if (err < 0)
> -			return err;
> -	}
> -
>  	msleep(120);
>  
>  	err = mipi_dsi_dcs_exit_sleep_mode(dsi);
> @@ -117,9 +101,21 @@ static int jadard_prepare(struct drm_panel *panel)
>  	msleep(10);
>  
>  	gpiod_set_value(jadard->reset, 1);
> -	msleep(120);
> +	msleep(130);
> +
> +	ret = jadard->desc->init(jadard);
> +	if (ret < 0)
> +		goto poweroff;

Plese don't mix refactoring with functional changes. Please split this
into two patches, one for using _multi and another one for moving init
to prepare()

>  
>  	return 0;
> +
> +poweroff:
> +	gpiod_set_value(jadard->reset, 0);
> +		/* T6: 2ms */
> +	usleep_range(1000, 2000);
> +	regulator_disable(jadard->vccio);
> +
> +	return ret;
>  }
>  


-- 
With best wishes
Dmitry

