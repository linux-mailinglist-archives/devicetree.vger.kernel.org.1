Return-Path: <devicetree+bounces-163131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 692DEA7B9D6
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 11:24:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6508A7A7DF9
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 09:23:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 441191A83E7;
	Fri,  4 Apr 2025 09:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WYIupbwQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E08B81A5BAA
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 09:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743758671; cv=none; b=OyKPfSNGH9mauyu+RMcCA5tFMgSnF8uY8HIjyRdtNbgRiOEPifXeSsRzIl7eJjlAWwxjm+tuXkGeWxv8JmMoGQxHnved/QfuMQO6U1s8v0MJgZhIKQnj9lP1TIdXuYhn1idcS0bXo7XTDFHtxAk8AhAuW+m7rUkvm2Pa4rgCMMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743758671; c=relaxed/simple;
	bh=mhsAKtrtx8q6Kuhdx1gCRLTnQk8BFVldD1RjWRzGuFA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pvtpJaXczfc1KGW2F/AqGqpU/CDbKBQMZlsQhXZ4wbWu2bIbN7GS6vSNbmqrD0Y9Pu5PJT7M5qEUHYPdp5jNxM7H1F4/lS9Jf3AxSSwPWQKIjHkFb4h93+hNGVASDvR9CsyO0DdpPppmy2ZZIyL8zCD0VT7v5jNCAod01P33yFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WYIupbwQ; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5e673822f76so3114175a12.2
        for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 02:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743758667; x=1744363467; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qHqjNgPYjFVoUL5p28toluYm5U5RftH3Zux4QyIsXJM=;
        b=WYIupbwQAl2Bo8bZMP4jLovbTIPyj554nVfS0y+R5j5rTnqWMGrdBzDIJI9hCqUfRT
         Xkv+eYEIlGvv/Gqg4VTDiKcME+FhB6zco5zG6iuVfjXn81CozvJtG840c4snwFmoviPs
         bFRgqY7yVaapMODG9sqTKfF7NYMcpS1tHxYAI96E9PuKT8S03MZKS6S+INl8T3DGpiqO
         YmTgdKJdMDtc4HMRYBOg0Ohv5ySPB5N+YXb6EvqMf2GwmF/HAcELsXSOJlMiPLHa4Spx
         LNQjq//IhGDjth6no/1VTVH5u3ELjHl2pRyltj1Ur1OzFB/j4pEMCCGKZhfeX2ww0M9F
         7+NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743758667; x=1744363467;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qHqjNgPYjFVoUL5p28toluYm5U5RftH3Zux4QyIsXJM=;
        b=iNJ801te1uE9imYc/XkpG+1KJktWuG1dU3dP7DeGXY+zET8MrGb4NSXGnB66Rfxf4O
         fx9FkhdRxN5pZwxZzUMpkYV74dASN22FCZaKhutOt3sVS4B9oESMvl/3nxyvvTYq/O/k
         mJwSA3Z55f1m51NwQOJmzLz55lwbijA7hLsJfDsQIbSab8L3K6RVSmEn2SPBpx9HiNaI
         e4CYhazAgoHQzthddqNIja30p5ZAVYn3yMQqsOUUGEwTQRATfV6z5lvjJ6BJgp4CQPLF
         0FrzCOK4P4dnxHzHcWe4odZc1t2BxeZfrH1tQlwuN5AnaKMu9UYdi1fWybXpMyvdVSzJ
         jnww==
X-Forwarded-Encrypted: i=1; AJvYcCXVSJYg/wfYLHorrKLEPD49UKnVInUtNVJxr5n1c88QoTx/QRYgCNqCddjPL6ZSh39G5lcKCDXuwQD5@vger.kernel.org
X-Gm-Message-State: AOJu0YwxzBu1qScricdbkPU/AQxUzvSYx93o8QTlWcsjmAm/Nc0opiMB
	sitP3OlTeUguuhil1RLwzUZ32Vzz6b+FRok3rvVAAcTCfb1o325bF0mKNLLrZHM=
X-Gm-Gg: ASbGnct1N620ZLOcmlOw8jO25kgv/YeIkcog3BeDlaxpzDYXoPrZ7azQ9wL0iSvi376
	q0q2COM9UXbLjmrxmI602wjsithLpoDVfbhED4HAu4x2/Nm3SL3GUlhZ3RFosHAmoBaqXE8/HY5
	4nB1mhxAeSkDAGww4uIWtDH+FCkD3xOAXl61m43c9EPZT1wNDmweQ/az9R5tKfw5j8Pql4ITB1o
	BB3f60T8reut3RHC+p+AIjLRUnW4+5/XUDn3iXZDr5owObvMWVUsZNcJyOBFINwV/5xKyTPMSaa
	z4tsq4vZrDsoourXlsn5ew0SpN98tQcpOHY50RhUYjEbo9LqzSs1UQRy
X-Google-Smtp-Source: AGHT+IEaYodn/Q89C7K0adlmfoOMuodOzseFeUPVohsEX4n8FnBRqPy5wPCCe0ARrP3xquBqgynpHQ==
X-Received: by 2002:a17:907:86a8:b0:ac2:a50a:51ad with SMTP id a640c23a62f3a-ac7d6d22c0fmr167315566b.14.1743758666891;
        Fri, 04 Apr 2025 02:24:26 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:e124:1321:48a4:8c63])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7c01bf898sm221290366b.164.2025.04.04.02.24.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 02:24:26 -0700 (PDT)
Date: Fri, 4 Apr 2025 11:24:20 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Wesley Cheng <quic_wcheng@quicinc.com>
Cc: srinivas.kandagatla@linaro.org, mathias.nyman@intel.com, perex@perex.cz,
	conor+dt@kernel.org, dmitry.torokhov@gmail.com, corbet@lwn.net,
	broonie@kernel.org, lgirdwood@gmail.com, krzk+dt@kernel.org,
	pierre-louis.bossart@linux.intel.com, Thinh.Nguyen@synopsys.com,
	tiwai@suse.com, robh@kernel.org, gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-sound@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-input@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH v37 22/31] ASoC: qcom: qdsp6: Introduce USB AFE port to
 q6dsp
Message-ID: <Z--lRII_5_rp9tDf@linaro.org>
References: <20250404002728.3590501-1-quic_wcheng@quicinc.com>
 <20250404002728.3590501-23-quic_wcheng@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250404002728.3590501-23-quic_wcheng@quicinc.com>

On Thu, Apr 03, 2025 at 05:27:19PM -0700, Wesley Cheng wrote:
> The QC ADSP is able to support USB playback endpoints, so that the main
> application processor can be placed into lower CPU power modes.  This adds
> the required AFE port configurations and port start command to start an
> audio session.
> 
> Specifically, the QC ADSP can support all potential endpoints that are
> exposed by the audio data interface.  This includes isochronous data
> endpoints, in either synchronous mode or asynchronous mode. In the latter
> case both implicit or explicit feedback endpoints are supported.  The size
> of audio samples sent per USB frame (microframe) will be adjusted based on
> information received on the feedback endpoint.
> 
> Some pre-requisites are needed before issuing the AFE port start command,
> such as setting the USB AFE dev_token.  This carries information about the
> available USB SND cards and PCM devices that have been discovered on the
> USB bus.  The dev_token field is used by the audio DSP to notify the USB
> offload driver of which card and PCM index to enable playback on.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> ---
>  sound/soc/qcom/qdsp6/q6afe-dai.c         |  60 +++++++
>  sound/soc/qcom/qdsp6/q6afe.c             | 192 ++++++++++++++++++++++-
>  sound/soc/qcom/qdsp6/q6afe.h             |  36 ++++-
>  sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c |  23 +++
>  sound/soc/qcom/qdsp6/q6dsp-lpass-ports.h |   1 +
>  sound/soc/qcom/qdsp6/q6routing.c         |  10 +-
>  6 files changed, 319 insertions(+), 3 deletions(-)
> 
> diff --git a/sound/soc/qcom/qdsp6/q6afe-dai.c b/sound/soc/qcom/qdsp6/q6afe-dai.c
> index 7d9628cda875..0f47aadaabe1 100644
> --- a/sound/soc/qcom/qdsp6/q6afe-dai.c
> +++ b/sound/soc/qcom/qdsp6/q6afe-dai.c
> [...]
> +static int afe_port_send_usb_params(struct q6afe_port *port, struct q6afe_usb_cfg *cfg)
> +{
> +	union afe_port_config *pcfg = &port->port_cfg;
> +	struct afe_param_id_usb_audio_dev_lpcm_fmt lpcm_fmt;
> +	struct afe_param_id_usb_audio_svc_interval svc_int;
> +	int ret;
> +
> +	if (!pcfg) {
> +		dev_err(port->afe->dev, "%s: Error, no configuration data\n", __func__);
> +		ret = -EINVAL;
> +		goto exit;

Nitpick: drop the goto here, just do "return -EINVAL;"

> +	}
> +
> +	memset(&lpcm_fmt, 0, sizeof(lpcm_fmt));
> +	memset(&svc_int, 0, sizeof(svc_int));
> +
> +	lpcm_fmt.cfg_minor_version = AFE_API_MINOR_VERSION_USB_AUDIO_CONFIG;
> +	lpcm_fmt.endian = pcfg->usb_cfg.endian;
> +	ret = q6afe_port_set_param_v2(port, &lpcm_fmt,
> +				      AFE_PARAM_ID_USB_AUDIO_DEV_LPCM_FMT,
> +				      AFE_MODULE_AUDIO_DEV_INTERFACE, sizeof(lpcm_fmt));
> +	if (ret) {
> +		dev_err(port->afe->dev, "%s: AFE device param cmd LPCM_FMT failed %d\n",
> +			__func__, ret);
> +		goto exit;

return ret;

> +	}
> +
> +	svc_int.cfg_minor_version = AFE_API_MINOR_VERSION_USB_AUDIO_CONFIG;
> +	svc_int.svc_interval = pcfg->usb_cfg.service_interval;
> +	ret = q6afe_port_set_param_v2(port, &svc_int,
> +				      AFE_PARAM_ID_USB_AUDIO_SVC_INTERVAL,
> +				      AFE_MODULE_AUDIO_DEV_INTERFACE, sizeof(svc_int));
> +	if (ret)
> +		dev_err(port->afe->dev, "%s: AFE device param cmd svc_interval failed %d\n",
> +			__func__, ret);
> +
> +exit:

drop

> +	return ret;
> +}
> +
> [...]
> diff --git a/sound/soc/qcom/qdsp6/q6routing.c b/sound/soc/qcom/qdsp6/q6routing.c
> index 90228699ba7d..0def036ed3c9 100644
> --- a/sound/soc/qcom/qdsp6/q6routing.c
> +++ b/sound/soc/qcom/qdsp6/q6routing.c
> @@ -435,6 +435,7 @@ static struct session_data *get_session_from_id(struct msm_routing_data *data,
>  
>  	return NULL;
>  }
> +
>  /**
>   * q6routing_stream_close() - Deregister a stream
>   *
> @@ -515,6 +516,9 @@ static int msm_routing_put_audio_mixer(struct snd_kcontrol *kcontrol,
>  	return 1;
>  }
>  
> +static const struct snd_kcontrol_new usb_rx_mixer_controls[] = {
> +	Q6ROUTING_RX_MIXERS(USB_RX) };
> +
>  static const struct snd_kcontrol_new hdmi_mixer_controls[] = {
>  	Q6ROUTING_RX_MIXERS(HDMI_RX) };
>  
> @@ -933,6 +937,9 @@ static const struct snd_soc_dapm_widget msm_qdsp6_widgets[] = {
>  	SND_SOC_DAPM_MIXER("RX_CODEC_DMA_RX_7 Audio Mixer", SND_SOC_NOPM, 0, 0,
>  		rx_codec_dma_rx_7_mixer_controls,
>  		ARRAY_SIZE(rx_codec_dma_rx_7_mixer_controls)),
> +	SND_SOC_DAPM_MIXER("USB Mixer", SND_SOC_NOPM, 0, 0,

As I wrote on v36:

I think it would be more clear if you call this "USB_RX Audio Mixer"
instead for consistency with the other playback mixers. This would also
avoid confusion later when USB_TX is added in addition to USB_RX.

The "Audio" part in the name is redundant, but looks like all the other
playback mixers have it as well ...


> +			   usb_rx_mixer_controls,
> +			   ARRAY_SIZE(usb_rx_mixer_controls)),
>  	SND_SOC_DAPM_MIXER("MultiMedia1 Mixer", SND_SOC_NOPM, 0, 0,
>  		mmul1_mixer_controls, ARRAY_SIZE(mmul1_mixer_controls)),
>  	SND_SOC_DAPM_MIXER("MultiMedia2 Mixer", SND_SOC_NOPM, 0, 0,
> @@ -949,7 +956,6 @@ static const struct snd_soc_dapm_widget msm_qdsp6_widgets[] = {
>  		mmul7_mixer_controls, ARRAY_SIZE(mmul7_mixer_controls)),
>  	SND_SOC_DAPM_MIXER("MultiMedia8 Mixer", SND_SOC_NOPM, 0, 0,
>  		mmul8_mixer_controls, ARRAY_SIZE(mmul8_mixer_controls)),
> -
>  };
>  
>  static const struct snd_soc_dapm_route intercon[] = {
> @@ -1043,6 +1049,8 @@ static const struct snd_soc_dapm_route intercon[] = {
>  	{"MM_UL6", NULL, "MultiMedia6 Mixer"},
>  	{"MM_UL7", NULL, "MultiMedia7 Mixer"},
>  	{"MM_UL8", NULL, "MultiMedia8 Mixer"},
> +
> +	Q6ROUTING_RX_DAPM_ROUTE("USB Mixer", "USB_RX"),

Put this below "Q6ROUTING_RX_DAPM_ROUTE("RX_CODEC_DMA_RX_7 Audio Mixer".

Thanks,
Stephan

