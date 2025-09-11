Return-Path: <devicetree+bounces-215692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84ADFB525EA
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 03:45:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5143C3BE3EA
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 01:45:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC3EE1C7012;
	Thu, 11 Sep 2025 01:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DI0iCh/z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E10954654
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 01:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757555128; cv=none; b=IbDt7/uR3GlbQ/nhbKgvHFEwFrndApGzDL3fuFsCZKTJAnDlh/5W5A5pAKluJmJfD5lLm0u57HEWZeSbTctckrWxZKk7fquFrxZW9F+HWDd3VnVazSN0QGnDZyUlFA25j72ZifoISx9ePyVD3gE3cmpwHcRoOxPfNkDgHE+iA28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757555128; c=relaxed/simple;
	bh=/ybA8rV1EJNP2W7n4pc0WrgmP7vGzSXVOSvxu8gV984=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=qxfiiWjhsDv1fq7kMjfUDvF/cg2c9b+//2/elhwi4a6nmG1A60MwUY00sPrzdw4Lo1CAIUAfB+oe0VnU1GZm6fTgj1xedx9kFJ1yfnJR9ZpNK49+VRkxtLTJYDdluPNGrbcLRR5e58XisKvZcS190nZU30lKnpaW1U6EQ17d2mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DI0iCh/z; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-45de60d39b7so1313975e9.0
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 18:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757555124; x=1758159924; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M/d3COCVOI2+CAvfRN1DBcCvbUT4aDWnGnI7OhpJdo8=;
        b=DI0iCh/zjBsPg9Zf5gIIBs8oo0R6WNy4/3pXrWpcxhEJsimM02G8gjTWtIn7pQveJf
         K2qEiSQK97uXsGfpC0NhnL8TTQpjNI0mAN3Z+f6M70mh+7NiudxTzf3LLgui8YOTOyic
         AaoQFUfAN+wilkKF4cTO8FEf2gb8VDDlT8I/rU2a/0ewPZwh/zQvabCjHJrqoK60BD6j
         slmOgVy2Svk+5KIQ7ErOWegrGeO/GBrpLirMCzjooZ6GedZTPyOk12gGosvtTqV+bPWE
         Lwk7Yd5biCuhZOKqpvAhuqHPog7+jZebre5D8byehh3S6opiMHeTSs9GvVgJi3J4ryl0
         qpRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757555124; x=1758159924;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=M/d3COCVOI2+CAvfRN1DBcCvbUT4aDWnGnI7OhpJdo8=;
        b=AZ7gtE2aF88w5kQnZM14TnqQUI7YqwUN2KbPqfk0CigPZhKssRjkVsLnhJ00GjA3lg
         WO2OqPoPsjZXKPm+bkbffRm28IqA2TfS8wBfxuigV44qXMTJPrSFgnU6XXLYp0/k4fOb
         Kh+pgGcjij7WMSEi/2wzSo2KEALzIyfHLHs6Dy3l51HXJtZJjZn2sQZtbzURbHMhkhWZ
         IxDGnjwU8ZqWG5l7UI91K6swJri8FG1n9GwOctBis0/iCm61pSheslZO/DWRBpNHmd51
         AVkwtGfLFeXkLOLy5aWQD52iX+IWSFtndbn05ASjs3zJgBROCwMCEbxwDHkultzP0JNZ
         lwBg==
X-Forwarded-Encrypted: i=1; AJvYcCWuuHk2SMeWO0NiQdlOJI/ga+1PL1trJWiSFoN4c7fMDpVkCnNr+UkiBaSycVwDp6wYxka7FybjSLg5@vger.kernel.org
X-Gm-Message-State: AOJu0YzYG3PdsqU9iL5+bqHj4MDr/RI49Cw2vE8joA44BDBvrJ3cvUWl
	Qz4MgW9TYJELCuY4c2+JkgxCyF90pEH/cCfwnVSpEuaQyNCrRMr4UXgyqDgbHNGl0A4=
X-Gm-Gg: ASbGnctIDYvW0g4U+zblv9e771oMy4ZlAInv3KlhjbbSTBT+NJLibMpT5qZD05gnwAj
	jrXJEL+EEXbGUi148EzHfxFR6xvWCkTml3Y8hA3KFLYOuEVCyT3wsWFVyx1sAJUw6jMGU3+5kbx
	NXtfcSnqN0briA/y7fx4N6lMhzmNdkXb6pQLhEd9DkmZ8W3aeomt/5HjrTwNz25GiBbPUQtQtA0
	Dx/WrE01WhjffHQpGwcG6hGixLfSckMgEEC5eOdN/eevlEQLM6r4FGUthmeHxUiNiART743OxE1
	SmVH1MXJUfaPG8oA+e4PctHVy/Qfa58DUoYWWDR5+En2Dk9UmWJkYtMYSc6ijmOCGCIPgmJXZzp
	tiBcAG9xWAwnHwiO4C/ILtf+DJLA6d3exjtpU7g==
X-Google-Smtp-Source: AGHT+IH4eMVXJCTPangdeJtchrAmKu6Lteh/vHgi48PICpOXu0flxxJARIoGuHWpxATLSXYCQLGOzA==
X-Received: by 2002:a05:600c:1c8b:b0:45d:f81e:6258 with SMTP id 5b1f17b1804b1-45df81e6532mr38124815e9.29.1757555124017;
        Wed, 10 Sep 2025 18:45:24 -0700 (PDT)
Received: from localhost ([2a02:c7c:7259:a00:a727:6a46:52e3:cac2])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607870cfsm480074f8f.19.2025.09.10.18.45.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Sep 2025 18:45:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 11 Sep 2025 02:45:21 +0100
Message-Id: <DCPLAK9BYI9D.256FT1VOPLSW3@linaro.org>
Cc: <lgirdwood@gmail.com>, <tiwai@suse.com>, <vkoul@kernel.org>,
 <srini@kernel.org>, <yung-chuan.liao@linux.intel.com>,
 <pierre-louis.bossart@linux.dev>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <dmitry.baryshkov@oss.qualcomm.com>,
 <linux-sound@vger.kernel.org>, <Stable@vger.kernel.org>
Subject: Re: [PATCH v5 01/13] ASoC: codecs: wcd937x: set the comp soundwire
 port correctly
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Srinivas Kandagatla" <srinivas.kandagatla@oss.qualcomm.com>,
 <broonie@kernel.org>
X-Mailer: aerc 0.20.0
References: <20250909121954.225833-1-srinivas.kandagatla@oss.qualcomm.com>
 <20250909121954.225833-2-srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20250909121954.225833-2-srinivas.kandagatla@oss.qualcomm.com>

On Tue Sep 9, 2025 at 1:19 PM BST, Srinivas Kandagatla wrote:
> For some reason we endup with setting soundwire port for
> HPHL_COMP and HPHR_COMP as zero, this can potentially result
> in a memory corruption due to accessing and setting -1 th element of
> port_map array.
>
> Fixes: 82be8c62a38c ("ASoC: codecs: wcd937x: add basic controls")
> Cc: <Stable@vger.kernel.org>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>

Reviewed-by: Alexey Klimov <alexey.klimov@linaro.org>


> ---
>  sound/soc/codecs/wcd937x.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/sound/soc/codecs/wcd937x.c b/sound/soc/codecs/wcd937x.c
> index 3b0a8cc314e0..de2dff3c56d3 100644
> --- a/sound/soc/codecs/wcd937x.c
> +++ b/sound/soc/codecs/wcd937x.c
> @@ -2046,9 +2046,9 @@ static const struct snd_kcontrol_new wcd937x_snd_co=
ntrols[] =3D {
>  	SOC_ENUM_EXT("RX HPH Mode", rx_hph_mode_mux_enum,
>  		     wcd937x_rx_hph_mode_get, wcd937x_rx_hph_mode_put),
> =20
> -	SOC_SINGLE_EXT("HPHL_COMP Switch", SND_SOC_NOPM, 0, 1, 0,
> +	SOC_SINGLE_EXT("HPHL_COMP Switch", WCD937X_COMP_L, 0, 1, 0,
>  		       wcd937x_get_compander, wcd937x_set_compander),
> -	SOC_SINGLE_EXT("HPHR_COMP Switch", SND_SOC_NOPM, 1, 1, 0,
> +	SOC_SINGLE_EXT("HPHR_COMP Switch", WCD937X_COMP_R, 1, 1, 0,
>  		       wcd937x_get_compander, wcd937x_set_compander),
> =20
>  	SOC_SINGLE_TLV("HPHL Volume", WCD937X_HPH_L_EN, 0, 20, 1, line_gain),


