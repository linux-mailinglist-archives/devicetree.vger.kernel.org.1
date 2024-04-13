Return-Path: <devicetree+bounces-58991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2AF8A3E83
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 22:31:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B05BB1C20FFE
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 20:31:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 889EB54645;
	Sat, 13 Apr 2024 20:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="GWfBoP65"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7842B3233
	for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 20:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713040290; cv=none; b=NS7bSfywin417NJFccMf1RhV48ynUq6qyrXh/yE0is3vU7wgjdBGbtTDe6SoI79pcKpWOyJBwvbbWhM8tZTFeQLitk++oJ6V1VzSOzz5eZbhP0l8hU3VMtQlWvxD5oRRbJLVtWllwbncECN+hTAq82Wm72mzXtlT4kn4BvuVriA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713040290; c=relaxed/simple;
	bh=zPnKbyggW02GZFESP1/3jpSugPAH/BCgKb0vmgRJNj0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VxF+Ft+BbIohGSNrhv36sd+LpUearTHzKvlGAVdq07mH4P6DnPihEYV/Fc6j09/zLbskiQNYEzf8gFukhugnhEVBWJ2Rb4EyzLsYI+sCgy0+kcRjSwV8N2F5M0BGvCLT1yuH2nJX1rws/UGT9Bi7mJKXrE/xMLm1gC3pEQHtwhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=GWfBoP65; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2d485886545so30128171fa.2
        for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 13:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713040285; x=1713645085; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TjrMB1ZUNpuer39IbGQklxA6x6b3XJD77HTu/DFLCMk=;
        b=GWfBoP65Hrnfwmvs+4PX6XRSKystDZ9vIqJ0/G4wafC27HJygEG7UJykGwbMLf5KHe
         QaOTKz1fVdTZkefUoXOY8zdqEXI1WFTLk9QXZZBxtYiOJvzkcS+jqkWEFSbuKCe/F8XB
         bhKtGws+GkDEVQtawxCwTmskZD9UroW8RQ3/JX2+VKdto6CEMGO/+xjzBspu/2btYTI0
         v8jWVEgomf/HSpcuJJhwHbQTOasP/t6T+C1TtMWxz82ECWW8b40om2i8BsnSPOB0v5mQ
         3S/lMHE1IFa2Rf3jWMe6d3rJh34iMf5R8UobjJJA6k4p/+87xlU9l9IuEA6EfjjWaaV/
         /ldQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713040285; x=1713645085;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TjrMB1ZUNpuer39IbGQklxA6x6b3XJD77HTu/DFLCMk=;
        b=Q+xOfzv+k2EBCgycI0aJ1pCwOgCeEz8UuOBksEjn/OoehW6aOJP9ynRn7ogWlVaBDc
         XJQlXQ8H7gCXl9Sw3QqFNO0tfNUghLJDAvy8xUl9sa8oi8RCgJJKT3eUulJurOj6By80
         dPju3i9AyH/lGhgU5+4XNgTHPXpMIOFmG6k1COl9tvm2+Fi/CnKtf6de8HhsciFpsRBI
         YMOkgyIcqrregRCeoLNSfExahBECZagEbHKnjoDV7bzRl5epyolzIULrpulhPKKO/Vur
         r7G+hhK/oq8Eq6vmRZeU6Q7n5+8ugFhCeCyqrybn1FhLEiV2tQbbVQqDfE++7XBlZoQC
         i+Qg==
X-Forwarded-Encrypted: i=1; AJvYcCUVFrFuSJmmL9X/nDouzUDH1TdwKgHdFkMW+HCi2qpTX2BB7IywHgr/gNu1oi5rOLo7aB3w4wLr3FYLhw58EI7CKbUPci2SbdPmJQ==
X-Gm-Message-State: AOJu0Yxpz2MSdCn9mc/Gz85YbNrSMjZeWTg3daIoqMCi5qFWJ6onQ9Ny
	NRowZZT9xgGZ3005DLyDsMDziXiV77ABLXyzRxw7ohP2NbRquMDrua52W7owQibwKRCVRnv1vNb
	q5c476r8eeQNg3YLUeitlmQn9ehiOUi67/i71zA==
X-Google-Smtp-Source: AGHT+IENh6flnft8na0SxgvmSEr2Ex5ghZZs7IfT+rp50Hl2MvuV1CwaAQoFIBfCINdUp2BovA24ee7jGaa+eVn/wF4=
X-Received: by 2002:a2e:a451:0:b0:2d8:d972:67e3 with SMTP id
 v17-20020a2ea451000000b002d8d97267e3mr4796053ljn.5.1713040284644; Sat, 13 Apr
 2024 13:31:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240413151152.165682-1-alisa.roman@analog.com> <20240413151152.165682-2-alisa.roman@analog.com>
In-Reply-To: <20240413151152.165682-2-alisa.roman@analog.com>
From: David Lechner <dlechner@baylibre.com>
Date: Sat, 13 Apr 2024 15:31:13 -0500
Message-ID: <CAMknhBH8UewSoZu-V6ERda=q8wO2NYg8RinnC2+RMF3LhKwtUg@mail.gmail.com>
Subject: Re: [PATCH v5 1/5] iio: adc: ad7192: Use standard attribute
To: Alisa-Dariana Roman <alisadariana@gmail.com>
Cc: michael.hennerich@analog.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	alexandru.tachici@analog.com, lars@metafoo.de, jic23@kernel.org, 
	robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	lgirdwood@gmail.com, broonie@kernel.org, andy@kernel.org, nuno.sa@analog.com, 
	marcelo.schmitt@analog.com, bigunclemax@gmail.com, okan.sahin@analog.com, 
	fr0st61te@gmail.com, alisa.roman@analog.com, marcus.folkesson@gmail.com, 
	schnelle@linux.ibm.com, liambeguin@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 13, 2024 at 10:12=E2=80=AFAM Alisa-Dariana Roman
<alisadariana@gmail.com> wrote:
>
> Replace custom attribute filter_low_pass_3db_frequency_available with
> standard attribute.
>
> Store the available values in ad7192_state struct.
>
> The function that used to compute those values replaced by
> ad7192_update_filter_freq_avail().
>
> Function ad7192_show_filter_avail() is no longer needed.
>
> Note that the initial available values are hardcoded.
>
> Signed-off-by: Alisa-Dariana Roman <alisa.roman@analog.com>
> ---

With the question below addressed:

Reviewed-by: David Lechner <dlechner@baylibre.com>

>  drivers/iio/adc/ad7192.c | 67 ++++++++++++++++++----------------------
>  1 file changed, 30 insertions(+), 37 deletions(-)
>
> diff --git a/drivers/iio/adc/ad7192.c b/drivers/iio/adc/ad7192.c
> index 7bcc7e2aa2a2..ac737221beae 100644
> --- a/drivers/iio/adc/ad7192.c
> +++ b/drivers/iio/adc/ad7192.c
> @@ -190,6 +190,7 @@ struct ad7192_state {
>         u32                             mode;
>         u32                             conf;
>         u32                             scale_avail[8][2];
> +       u32                             filter_freq_avail[4][2];
>         u32                             oversampling_ratio_avail[4];
>         u8                              gpocon;
>         u8                              clock_sel;
> @@ -473,6 +474,16 @@ static int ad7192_setup(struct iio_dev *indio_dev, s=
truct device *dev)
>         st->oversampling_ratio_avail[2] =3D 8;
>         st->oversampling_ratio_avail[3] =3D 16;
>
> +       st->filter_freq_avail[0][0] =3D 600;
> +       st->filter_freq_avail[1][0] =3D 800;
> +       st->filter_freq_avail[2][0] =3D 2300;
> +       st->filter_freq_avail[3][0] =3D 2720;
> +
> +       st->filter_freq_avail[0][1] =3D 1000;
> +       st->filter_freq_avail[1][1] =3D 1000;
> +       st->filter_freq_avail[2][1] =3D 1000;
> +       st->filter_freq_avail[3][1] =3D 1000;
> +
>         return 0;
>  }
>
> @@ -586,48 +597,24 @@ static int ad7192_get_f_adc(struct ad7192_state *st=
)
>                                  f_order * FIELD_GET(AD7192_MODE_RATE_MAS=
K, st->mode));
>  }
>
> -static void ad7192_get_available_filter_freq(struct ad7192_state *st,
> -                                                   int *freq)
> +static void ad7192_update_filter_freq_avail(struct ad7192_state *st)
>  {
>         unsigned int fadc;
>
>         /* Formulas for filter at page 25 of the datasheet */
>         fadc =3D ad7192_compute_f_adc(st, false, true);
> -       freq[0] =3D DIV_ROUND_CLOSEST(fadc * 240, 1024);
> +       st->filter_freq_avail[0][0] =3D DIV_ROUND_CLOSEST(fadc * 240, 102=
4);
>
>         fadc =3D ad7192_compute_f_adc(st, true, true);
> -       freq[1] =3D DIV_ROUND_CLOSEST(fadc * 240, 1024);
> +       st->filter_freq_avail[1][0] =3D DIV_ROUND_CLOSEST(fadc * 240, 102=
4);
>
>         fadc =3D ad7192_compute_f_adc(st, false, false);
> -       freq[2] =3D DIV_ROUND_CLOSEST(fadc * 230, 1024);
> +       st->filter_freq_avail[2][0] =3D DIV_ROUND_CLOSEST(fadc * 230, 102=
4);
>
>         fadc =3D ad7192_compute_f_adc(st, true, false);
> -       freq[3] =3D DIV_ROUND_CLOSEST(fadc * 272, 1024);
> +       st->filter_freq_avail[3][0] =3D DIV_ROUND_CLOSEST(fadc * 272, 102=
4);
>  }
>
> -static ssize_t ad7192_show_filter_avail(struct device *dev,
> -                                       struct device_attribute *attr,
> -                                       char *buf)
> -{
> -       struct iio_dev *indio_dev =3D dev_to_iio_dev(dev);
> -       struct ad7192_state *st =3D iio_priv(indio_dev);
> -       unsigned int freq_avail[4], i;
> -       size_t len =3D 0;
> -
> -       ad7192_get_available_filter_freq(st, freq_avail);
> -
> -       for (i =3D 0; i < ARRAY_SIZE(freq_avail); i++)
> -               len +=3D sysfs_emit_at(buf, len, "%d.%03d ", freq_avail[i=
] / 1000,
> -                                    freq_avail[i] % 1000);
> -
> -       buf[len - 1] =3D '\n';
> -
> -       return len;
> -}
> -
> -static IIO_DEVICE_ATTR(filter_low_pass_3db_frequency_available,
> -                      0444, ad7192_show_filter_avail, NULL, 0);
> -
>  static IIO_DEVICE_ATTR(bridge_switch_en, 0644,
>                        ad7192_show_bridge_switch, ad7192_set,
>                        AD7192_REG_GPOCON);
> @@ -637,7 +624,6 @@ static IIO_DEVICE_ATTR(ac_excitation_en, 0644,
>                        AD7192_REG_CONF);
>
>  static struct attribute *ad7192_attributes[] =3D {
> -       &iio_dev_attr_filter_low_pass_3db_frequency_available.dev_attr.at=
tr,
>         &iio_dev_attr_bridge_switch_en.dev_attr.attr,
>         NULL
>  };
> @@ -647,7 +633,6 @@ static const struct attribute_group ad7192_attribute_=
group =3D {
>  };
>
>  static struct attribute *ad7195_attributes[] =3D {
> -       &iio_dev_attr_filter_low_pass_3db_frequency_available.dev_attr.at=
tr,
>         &iio_dev_attr_bridge_switch_en.dev_attr.attr,
>         &iio_dev_attr_ac_excitation_en.dev_attr.attr,
>         NULL
> @@ -665,17 +650,15 @@ static unsigned int ad7192_get_temp_scale(bool unip=
olar)
>  static int ad7192_set_3db_filter_freq(struct ad7192_state *st,
>                                       int val, int val2)
>  {
> -       int freq_avail[4], i, ret, freq;
> +       int i, ret, freq;
>         unsigned int diff_new, diff_old;
>         int idx =3D 0;
>
>         diff_old =3D U32_MAX;
>         freq =3D val * 1000 + val2;
>
> -       ad7192_get_available_filter_freq(st, freq_avail);
> -
> -       for (i =3D 0; i < ARRAY_SIZE(freq_avail); i++) {
> -               diff_new =3D abs(freq - freq_avail[i]);
> +       for (i =3D 0; i < ARRAY_SIZE(st->filter_freq_avail); i++) {
> +               diff_new =3D abs(freq - st->filter_freq_avail[i][0]);
>                 if (diff_new < diff_old) {
>                         diff_old =3D diff_new;
>                         idx =3D i;
> @@ -826,6 +809,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev=
,
>                 st->mode &=3D ~AD7192_MODE_RATE_MASK;
>                 st->mode |=3D FIELD_PREP(AD7192_MODE_RATE_MASK, div);
>                 ad_sd_write_reg(&st->sd, AD7192_REG_MODE, 3, st->mode);
> +               ad7192_update_filter_freq_avail(st);
>                 break;
>         case IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY:
>                 ret =3D ad7192_set_3db_filter_freq(st, val, val2 / 1000);
> @@ -846,6 +830,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev=
,
>                                 break;
>                         }
>                 mutex_unlock(&st->lock);
> +               ad7192_update_filter_freq_avail(st);

Does this need to go inside of the mutex guard to avoid potential race
conditions?

>                 break;
>         default:
>                 ret =3D -EINVAL;
> @@ -888,6 +873,12 @@ static int ad7192_read_avail(struct iio_dev *indio_d=
ev,
>                 /* Values are stored in a 2D matrix  */
>                 *length =3D ARRAY_SIZE(st->scale_avail) * 2;
>
> +               return IIO_AVAIL_LIST;
> +       case IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY:
> +               *vals =3D (int *)st->filter_freq_avail;
> +               *type =3D IIO_VAL_FRACTIONAL;
> +               *length =3D ARRAY_SIZE(st->filter_freq_avail) * 2;
> +
>                 return IIO_AVAIL_LIST;
>         case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
>                 *vals =3D (int *)st->oversampling_ratio_avail;
> @@ -956,7 +947,9 @@ static const struct iio_info ad7195_info =3D {
>                         BIT(IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY) =
| \
>                         (_mask_all), \
>                 .info_mask_shared_by_type_available =3D (_mask_type_av), =
\
> -               .info_mask_shared_by_all_available =3D (_mask_all_av), \
> +               .info_mask_shared_by_all_available =3D \
> +                       BIT(IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY) =
| \
> +                       (_mask_all_av), \
>                 .ext_info =3D (_ext_info), \
>                 .scan_index =3D (_si), \
>                 .scan_type =3D { \
> --
> 2.34.1
>

