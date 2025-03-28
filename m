Return-Path: <devicetree+bounces-161490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E99A744C6
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 08:49:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9ECF118921B4
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 07:49:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E802C212D7C;
	Fri, 28 Mar 2025 07:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="PjgwztCl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06695211A2E
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 07:49:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743148144; cv=none; b=VkeTAPrgPgl8VQH/EFFB/Qblw7886TLWpQi/D8hyuRhx1t0TFo/pXUhKqy18QXPdlDd1YHzn4j0oRzqCOstL4V+rXFgOiPSkKXfAKyPB6sQDlsqaPdjlBAoIMAmqIAmZXDotDzt7ua/jtzGiDrjakaaIS3C068WjXTB9TnRUqy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743148144; c=relaxed/simple;
	bh=qKnrR5bKdA5ZY0IYjXTXXtcdBWXqslK8kbHKGR2H1G4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I+qURt7hswtxXtBwaBIVdI7tjAf7s8HY7sjJjiZsWtjQlsYcvzNbPHVPt9gbnzWbjZuZoq3U9FKU1tfRkhiAtIPwOqlshgxqWCnst7bp0NIjsyAD8kef7bKmFEdXp7GM4Hwf2bPCAh4yhlwSGK45T/3Wt/hJI5AdMfh4YOhZHG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=PjgwztCl; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2ff187f027fso3847719a91.1
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 00:49:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743148141; x=1743752941; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h7ELtixWISfVyPCCwdGnm5LZ7B55xHnCnByUBGZyAU8=;
        b=PjgwztClnNPizNtgg+jZEQ1qCkhjTLE18Up55UPGxe/9eCWjD98EDYoeDzrf8wToLT
         ETj0YEv56kcCLe1zqwC0Ztz6DqWvDFcC0AGLvPhgUD6UN7375nW/u/U37MpunUdbZbVg
         PoGbWOJO51w2jWmnGClodnvi0MeRcq1g47q47zQAIxxEkdRGHmS5dh3SFV60DYJrGA3i
         rMwYB7vbrUriXyKdtxw408nkWJGje369i8w6IuqwC9l9W/16PivrZBkAqIJCj9KseKZh
         upYxQjhWI4rz0qU00wydxSPDOT7Q4RkeSOjfzSETh6BI4k8FIAiChQ1rciEKA8hwZo1A
         lhAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743148141; x=1743752941;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h7ELtixWISfVyPCCwdGnm5LZ7B55xHnCnByUBGZyAU8=;
        b=sDgiwjAq9x/T1oGYwqkQ3jQR7X4E+vMF9rOMq+bhF0c21k+1QuKzziXqIeLNCI92t0
         1vE4i1/mIi9xX4JIflhgILzEPzIkczfQRdO4mE1TZSM9rl832g+ljIApxcK9z3YDrPHA
         aTfFRQESFlkTVFH9qlzm9VLltOfA26WHUAwmsuTx/ObBh/0Ehr8M+wmbLoG+ipsTwNRm
         UsDqSC0s2PYYHRtCgptW6mqIiW28LfnAYIBTZEj4vtoWe8/qKqieR7KNODz4Nyhr1DvF
         ZSUjwfIJrx7+KPMTFcfRvbqoW2YC+pXPbYACxN0ID0jDPFthcI+Mj2PumtV4UXEqfVXX
         nBkw==
X-Forwarded-Encrypted: i=1; AJvYcCVV6zV/BDBL2AZsMClJx4cKsqGRrrMGCGsbzzIG+Q7MPT04xtla8SXkQ4pmFWiYQ2e9XYnaGgcaappg@vger.kernel.org
X-Gm-Message-State: AOJu0YyooItHD0G3D7bB/w6t97Kv8UpNdqZGPQ+AsKWgMtTOBIQf3Xlj
	HnI21FQAPs0sZpNeQSc4cyBtwdgxI6m8Awrv9DbnSkGBxKQcXsyVV0YlAtZftUe7xAqLB1y+8EO
	zSLSgcXJYVq2rUg8Bkzf76GGeg6xKVDTf2OOp
X-Gm-Gg: ASbGnctf4CB2EMD0bGF0Yd8eRNRMcPF/UOeN/4TnWDfMaOyES5QUYDMHY9dKthkGIAU
	YDOM0J9Su8NVcp2w9MeC+IcDO+zKZGcFkWG/XZw5lza8kq78fSecAQrTLLM6jLyJ5KVd64ur9cS
	WDXl8S6l2Ni/XZIrq9DuauQZ+n3ENn8T3ELacfZUveC3k9HGwr8/HDDgp/
X-Google-Smtp-Source: AGHT+IEbZ0qteYBHU5qhFmsOW68PoLBHHt2USrYRKQFaW1GqrElYp+1C0YMsYmQ1IWjIEbQX5zJvdTFc9EsKsjVT/4o=
X-Received: by 2002:a17:90a:dfc7:b0:2fa:42f3:e3e4 with SMTP id
 98e67ed59e1d1-3051c85e607mr3062834a91.3.1743148140746; Fri, 28 Mar 2025
 00:49:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250319005141.312805-1-quic_wcheng@quicinc.com> <20250319005141.312805-9-quic_wcheng@quicinc.com>
In-Reply-To: <20250319005141.312805-9-quic_wcheng@quicinc.com>
From: Puma Hsu <pumahsu@google.com>
Date: Fri, 28 Mar 2025 15:47:00 +0800
X-Gm-Features: AQ5f1JofWcF_GfjK5GKdSJic-DMlF-I_Ti_mbmoYNzFQEA4M7vpQFdiy9GHI5pc
Message-ID: <CAGCq0LYs5=Re74G99n3=Vbdu1Q2M5-SKZqXTgPKJZYtSHjXZPA@mail.gmail.com>
Subject: Re: [PATCH v36 08/31] ALSA: usb-audio: Export USB SND APIs for modules
To: Wesley Cheng <quic_wcheng@quicinc.com>
Cc: srinivas.kandagatla@linaro.org, mathias.nyman@intel.com, perex@perex.cz, 
	conor+dt@kernel.org, dmitry.torokhov@gmail.com, corbet@lwn.net, 
	broonie@kernel.org, lgirdwood@gmail.com, krzk+dt@kernel.org, 
	pierre-louis.bossart@linux.intel.com, Thinh.Nguyen@synopsys.com, 
	tiwai@suse.com, robh@kernel.org, gregkh@linuxfoundation.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-doc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 19, 2025 at 8:52=E2=80=AFAM Wesley Cheng <quic_wcheng@quicinc.c=
om> wrote:
>
> Some vendor modules will utilize useful parsing and endpoint management
> APIs to start audio playback/capture.
>
> Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>

Tested-by: Puma Hsu <pumahsu@google.com>

> ---
>  sound/usb/card.c     |  4 +++
>  sound/usb/endpoint.c |  1 +
>  sound/usb/helper.c   |  1 +
>  sound/usb/pcm.c      | 75 +++++++++++++++++++++++++++++++-------------
>  sound/usb/pcm.h      | 11 +++++++
>  5 files changed, 71 insertions(+), 21 deletions(-)
>
> diff --git a/sound/usb/card.c b/sound/usb/card.c
> index 9c411b82a218..a0087bde684c 100644
> --- a/sound/usb/card.c
> +++ b/sound/usb/card.c
> @@ -1030,6 +1030,7 @@ int snd_usb_lock_shutdown(struct snd_usb_audio *chi=
p)
>                 wake_up(&chip->shutdown_wait);
>         return err;
>  }
> +EXPORT_SYMBOL_GPL(snd_usb_lock_shutdown);
>
>  /* autosuspend and unlock the shutdown */
>  void snd_usb_unlock_shutdown(struct snd_usb_audio *chip)
> @@ -1038,6 +1039,7 @@ void snd_usb_unlock_shutdown(struct snd_usb_audio *=
chip)
>         if (atomic_dec_and_test(&chip->usage_count))
>                 wake_up(&chip->shutdown_wait);
>  }
> +EXPORT_SYMBOL_GPL(snd_usb_unlock_shutdown);
>
>  int snd_usb_autoresume(struct snd_usb_audio *chip)
>  {
> @@ -1060,6 +1062,7 @@ int snd_usb_autoresume(struct snd_usb_audio *chip)
>         }
>         return 0;
>  }
> +EXPORT_SYMBOL_GPL(snd_usb_autoresume);
>
>  void snd_usb_autosuspend(struct snd_usb_audio *chip)
>  {
> @@ -1073,6 +1076,7 @@ void snd_usb_autosuspend(struct snd_usb_audio *chip=
)
>         for (i =3D 0; i < chip->num_interfaces; i++)
>                 usb_autopm_put_interface(chip->intf[i]);
>  }
> +EXPORT_SYMBOL_GPL(snd_usb_autosuspend);
>
>  static int usb_audio_suspend(struct usb_interface *intf, pm_message_t me=
ssage)
>  {
> diff --git a/sound/usb/endpoint.c b/sound/usb/endpoint.c
> index a29f28eb7d0c..1fed039b10ed 100644
> --- a/sound/usb/endpoint.c
> +++ b/sound/usb/endpoint.c
> @@ -1524,6 +1524,7 @@ int snd_usb_endpoint_prepare(struct snd_usb_audio *=
chip,
>         mutex_unlock(&chip->mutex);
>         return err;
>  }
> +EXPORT_SYMBOL_GPL(snd_usb_endpoint_prepare);
>
>  /* get the current rate set to the given clock by any endpoint */
>  int snd_usb_endpoint_get_clock_rate(struct snd_usb_audio *chip, int cloc=
k)
> diff --git a/sound/usb/helper.c b/sound/usb/helper.c
> index 72b671fb2c84..497d2b27fb59 100644
> --- a/sound/usb/helper.c
> +++ b/sound/usb/helper.c
> @@ -62,6 +62,7 @@ void *snd_usb_find_csint_desc(void *buffer, int buflen,=
 void *after, u8 dsubtype
>         }
>         return NULL;
>  }
> +EXPORT_SYMBOL_GPL(snd_usb_find_csint_desc);
>
>  /*
>   * Wrapper for usb_control_msg().
> diff --git a/sound/usb/pcm.c b/sound/usb/pcm.c
> index 08bf535ed163..18467da6fd9e 100644
> --- a/sound/usb/pcm.c
> +++ b/sound/usb/pcm.c
> @@ -148,6 +148,16 @@ find_format(struct list_head *fmt_list_head, snd_pcm=
_format_t format,
>         return found;
>  }
>
> +const struct audioformat *
> +snd_usb_find_format(struct list_head *fmt_list_head, snd_pcm_format_t fo=
rmat,
> +                   unsigned int rate, unsigned int channels, bool strict=
_match,
> +                   struct snd_usb_substream *subs)
> +{
> +       return find_format(fmt_list_head, format, rate, channels, strict_=
match,
> +                       subs);
> +}
> +EXPORT_SYMBOL_GPL(snd_usb_find_format);
> +
>  static const struct audioformat *
>  find_substream_format(struct snd_usb_substream *subs,
>                       const struct snd_pcm_hw_params *params)
> @@ -157,6 +167,14 @@ find_substream_format(struct snd_usb_substream *subs=
,
>                            true, subs);
>  }
>
> +const struct audioformat *
> +snd_usb_find_substream_format(struct snd_usb_substream *subs,
> +                             const struct snd_pcm_hw_params *params)
> +{
> +       return find_substream_format(subs, params);
> +}
> +EXPORT_SYMBOL_GPL(snd_usb_find_substream_format);
> +
>  bool snd_usb_pcm_has_fixed_rate(struct snd_usb_substream *subs)
>  {
>         const struct audioformat *fp;
> @@ -461,20 +479,9 @@ static void close_endpoints(struct snd_usb_audio *ch=
ip,
>         }
>  }
>
> -/*
> - * hw_params callback
> - *
> - * allocate a buffer and set the given audio format.
> - *
> - * so far we use a physically linear buffer although packetize transfer
> - * doesn't need a continuous area.
> - * if sg buffer is supported on the later version of alsa, we'll follow
> - * that.
> - */
> -static int snd_usb_hw_params(struct snd_pcm_substream *substream,
> -                            struct snd_pcm_hw_params *hw_params)
> +int snd_usb_hw_params(struct snd_usb_substream *subs,
> +                     struct snd_pcm_hw_params *hw_params)
>  {
> -       struct snd_usb_substream *subs =3D substream->runtime->private_da=
ta;
>         struct snd_usb_audio *chip =3D subs->stream->chip;
>         const struct audioformat *fmt;
>         const struct audioformat *sync_fmt;
> @@ -499,7 +506,7 @@ static int snd_usb_hw_params(struct snd_pcm_substream=
 *substream,
>         if (fmt->implicit_fb) {
>                 sync_fmt =3D snd_usb_find_implicit_fb_sync_format(chip, f=
mt,
>                                                                 hw_params=
,
> -                                                               !substrea=
m->stream,
> +                                                               !subs->di=
rection,
>                                                                 &sync_fix=
ed_rate);
>                 if (!sync_fmt) {
>                         usb_audio_dbg(chip,
> @@ -579,15 +586,28 @@ static int snd_usb_hw_params(struct snd_pcm_substre=
am *substream,
>
>         return ret;
>  }
> +EXPORT_SYMBOL_GPL(snd_usb_hw_params);
>
>  /*
> - * hw_free callback
> + * hw_params callback
>   *
> - * reset the audio format and release the buffer
> + * allocate a buffer and set the given audio format.
> + *
> + * so far we use a physically linear buffer although packetize transfer
> + * doesn't need a continuous area.
> + * if sg buffer is supported on the later version of alsa, we'll follow
> + * that.
>   */
> -static int snd_usb_hw_free(struct snd_pcm_substream *substream)
> +static int snd_usb_pcm_hw_params(struct snd_pcm_substream *substream,
> +                                struct snd_pcm_hw_params *hw_params)
>  {
>         struct snd_usb_substream *subs =3D substream->runtime->private_da=
ta;
> +
> +       return snd_usb_hw_params(subs, hw_params);
> +}
> +
> +int snd_usb_hw_free(struct snd_usb_substream *subs)
> +{
>         struct snd_usb_audio *chip =3D subs->stream->chip;
>
>         snd_media_stop_pipeline(subs);
> @@ -603,6 +623,19 @@ static int snd_usb_hw_free(struct snd_pcm_substream =
*substream)
>
>         return 0;
>  }
> +EXPORT_SYMBOL_GPL(snd_usb_hw_free);
> +
> +/*
> + * hw_free callback
> + *
> + * reset the audio format and release the buffer
> + */
> +static int snd_usb_pcm_hw_free(struct snd_pcm_substream *substream)
> +{
> +       struct snd_usb_substream *subs =3D substream->runtime->private_da=
ta;
> +
> +       return snd_usb_hw_free(subs);
> +}
>
>  /* free-wheeling mode? (e.g. dmix) */
>  static int in_free_wheeling_mode(struct snd_pcm_runtime *runtime)
> @@ -1746,8 +1779,8 @@ static int snd_usb_substream_capture_trigger(struct=
 snd_pcm_substream *substream
>  static const struct snd_pcm_ops snd_usb_playback_ops =3D {
>         .open =3D         snd_usb_pcm_open,
>         .close =3D        snd_usb_pcm_close,
> -       .hw_params =3D    snd_usb_hw_params,
> -       .hw_free =3D      snd_usb_hw_free,
> +       .hw_params =3D    snd_usb_pcm_hw_params,
> +       .hw_free =3D      snd_usb_pcm_hw_free,
>         .prepare =3D      snd_usb_pcm_prepare,
>         .trigger =3D      snd_usb_substream_playback_trigger,
>         .sync_stop =3D    snd_usb_pcm_sync_stop,
> @@ -1758,8 +1791,8 @@ static const struct snd_pcm_ops snd_usb_playback_op=
s =3D {
>  static const struct snd_pcm_ops snd_usb_capture_ops =3D {
>         .open =3D         snd_usb_pcm_open,
>         .close =3D        snd_usb_pcm_close,
> -       .hw_params =3D    snd_usb_hw_params,
> -       .hw_free =3D      snd_usb_hw_free,
> +       .hw_params =3D    snd_usb_pcm_hw_params,
> +       .hw_free =3D      snd_usb_pcm_hw_free,
>         .prepare =3D      snd_usb_pcm_prepare,
>         .trigger =3D      snd_usb_substream_capture_trigger,
>         .sync_stop =3D    snd_usb_pcm_sync_stop,
> diff --git a/sound/usb/pcm.h b/sound/usb/pcm.h
> index 388fe2ba346d..c096021adb2b 100644
> --- a/sound/usb/pcm.h
> +++ b/sound/usb/pcm.h
> @@ -15,4 +15,15 @@ void snd_usb_preallocate_buffer(struct snd_usb_substre=
am *subs);
>  int snd_usb_audioformat_set_sync_ep(struct snd_usb_audio *chip,
>                                     struct audioformat *fmt);
>
> +const struct audioformat *
> +snd_usb_find_format(struct list_head *fmt_list_head, snd_pcm_format_t fo=
rmat,
> +                   unsigned int rate, unsigned int channels, bool strict=
_match,
> +                   struct snd_usb_substream *subs);
> +const struct audioformat *
> +snd_usb_find_substream_format(struct snd_usb_substream *subs,
> +                             const struct snd_pcm_hw_params *params);
> +
> +int snd_usb_hw_params(struct snd_usb_substream *subs,
> +                     struct snd_pcm_hw_params *hw_params);
> +int snd_usb_hw_free(struct snd_usb_substream *subs);
>  #endif /* __USBAUDIO_PCM_H */
>

