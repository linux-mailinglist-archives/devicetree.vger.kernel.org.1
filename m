Return-Path: <devicetree+bounces-129263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 866A49EB0B1
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 13:24:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66C97284263
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 12:24:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9026D1A3BA1;
	Tue, 10 Dec 2024 12:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BcHQwKEH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D8A31A38F9
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 12:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733833427; cv=none; b=e1hdB8MG97vAK2t+AmwCMkF7V72mfCNrzmPphE6ludSg2SxA7apxXzckNN8VZ9D1WO05/0D4dL4Tcd12HnvMv+6jV7Av1VTAmuNEuhviw+8eQzwDdjjSznoCEmHQvRBR0UfbOS2U2z3qnuowOoEwvbjAFhDczan+c0QWg7IyjEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733833427; c=relaxed/simple;
	bh=lUtYIb9FWysANuBVRjGqvIA7tKeEyU84yMrXWdg5+fY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jZftZl6Jbfs1Z0CVAh0s1gUhkq1lJxhFrNnhtIWjUQS8AQjF6zNfodJYEXnGA6ppqmsUWNloNuVyNCF3cWGlkk2pmLMd419dTFmdz2SBmDRWen3SrLWgXaJIW4/1HyL0Hat/pdxlFxxats6Vz4OHUckEfoaNwcTvxajiKtbXZso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BcHQwKEH; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-aa69077b93fso270000566b.0
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 04:23:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733833424; x=1734438224; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kXv1q2+I00SEA4qivPj7ki5hHn17ZgKv03WB0L5X0HI=;
        b=BcHQwKEHVqSPK0XUnBzCrM8R2LizwxAzY+Qcz0h8Wqi+CmKHPK17OqqEcTSfsHUU3y
         SjZe/AwFEVW+knc3JwCubVg1J2R3Y/VitEOcIU0atswcZTWzABzXeXvfv+yNMTQ9QhYd
         0ofhE7+SDbXkAoR6WkLe+iKDBcUOYzSNBU8LMY05xpgSZ+b/e2JM4BA8U6J4iw7mekNG
         mTucQyG4yH3Qa/PpmkWqYAIujNOe+dfTh4zqyNZyhVetbIPhmFg8lZ7/U8xPWWr9O8+6
         pjbhFliDmZQi7hKjmpOlYkUI0zw/5rjmMh5QPzYGwlHehxHvZiZTsO5aMyHb4rO+CPls
         pNZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733833424; x=1734438224;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kXv1q2+I00SEA4qivPj7ki5hHn17ZgKv03WB0L5X0HI=;
        b=XQIvatGc4Vj8neLOVR3db/EwcU9EhMQFzpAKb7/8TTQ5rTqTCnhOL6M0rHviMBs0Dg
         O9y3rlnAu9K3b269Ms2xQkjKLJHB9b9Z0g0X0iiVG6kb6g3h6G6+LGEpCBYKoRQ3dxxD
         pzBjx8xlYU88I9CmKObYTAHCiryLSIK4FC8+HNyZfkdkXMuAG94M1LKS9Kxc6gIcv8OV
         a8t5ZbUMGLkgGiwqwk0F49H2u9KIa2rVPo4rnStYQqjxFpgvuQHulUsEBygmVbvTb8Uj
         r9U4uUjdYattCv73b+agKbzhwzW9JmOXbs72OYve9tTBAevulutaMEe96grZCXpE/cF9
         n4qA==
X-Forwarded-Encrypted: i=1; AJvYcCUb7isZOkSWKlMoBjo7/9mdpSaant6yPh/12ZVSUW95lICmsIcmRg3r9uMmn36srqx+RFdMKsS8JZcO@vger.kernel.org
X-Gm-Message-State: AOJu0YwPjqJhJFBasNXjef3i0lyDYyB38xmfMiknCch8pzLtUTrx1U+b
	ifkiZRNMxifpBPZOkusVOnKpi8IwECDrz66uMkMFuoFX+hVgD1nfMrApvEgxSGgkVf8LznzwHKD
	k/CmKZCPq5mqddyEcZuK+JdICNe+Mbno2IkGAXw==
X-Gm-Gg: ASbGnctYWv9l7jY2ggvDVzVI3Nl6deRWH6B4yWyganpZYgb+tlR33VDA0UxDuoHKHGH
	ThDwmL9bV6ALBBO4MYuaZNON2CweeMOEb9I4=
X-Google-Smtp-Source: AGHT+IGPQzofPCSKwnJOzRNwnbqypQHGaVFPVRHAbVBETWyHajWU00pxqxU268Qgqllb0B6W2GZfn17ZSH3AScx5ITE=
X-Received: by 2002:a17:906:311b:b0:aa6:9217:fcd1 with SMTP id
 a640c23a62f3a-aa692180342mr561378166b.52.1733833423910; Tue, 10 Dec 2024
 04:23:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241209-qcom-video-iris-v7-0-05c6bdead47b@quicinc.com> <20241209-qcom-video-iris-v7-14-05c6bdead47b@quicinc.com>
In-Reply-To: <20241209-qcom-video-iris-v7-14-05c6bdead47b@quicinc.com>
From: Stefan Schmidt <stefan.schmidt@linaro.org>
Date: Tue, 10 Dec 2024 13:23:33 +0100
Message-ID: <CAEvtbuuObqiXMVeaxHu0LLsT3G4Nr-byMSR2drVQq+S8fN5uVQ@mail.gmail.com>
Subject: Re: [PATCH v7 14/28] media: iris: implement iris v4l2_ctrl_ops
To: Dikshita Agarwal <quic_dikshita@quicinc.com>
Cc: Vikash Garodia <quic_vgarodia@quicinc.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Sebastian Fricke <sebastian.fricke@collabora.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	Jianhua Lu <lujianhua000@gmail.com>, linux-media@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Vedang Nagar <quic_vnagar@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

Hello Dikshita,

On Mon, 9 Dec 2024 at 13:57, Dikshita Agarwal <quic_dikshita@quicinc.com> wrote:

> +static struct platform_inst_fw_cap inst_fw_cap_sm8550[] = {
> +       {
> +               .cap_id = PROFILE,
> +               .min = V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE,
> +               .max = V4L2_MPEG_VIDEO_H264_PROFILE_CONSTRAINED_HIGH,
> +               .step_or_mask = BIT(V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_PROFILE_CONSTRAINED_HIGH) |

Would it make sense to have
V4L2_MPEG_VIDEO_H264_PROFILE_CONSTRAINED_HIGH as the maximum as last
item here?
You have this sorting in the LEVEL list below and even here in the
profiles only CONSTRAINED_HIGH is out of order.
I realise this is technically not needed, but I had to go and look it
up in the v4l2 enum to check if CONSTRAINED_HIGH is really bigger than
HIGH and should be listed as .max.

> +                               BIT(V4L2_MPEG_VIDEO_H264_PROFILE_CONSTRAINED_BASELINE) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_PROFILE_MAIN) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_PROFILE_HIGH),
> +               .value = V4L2_MPEG_VIDEO_H264_PROFILE_HIGH,
> +               .hfi_id = HFI_PROP_PROFILE,
> +               .flags = CAP_FLAG_OUTPUT_PORT | CAP_FLAG_MENU,
> +       },
> +       {
> +               .cap_id = LEVEL,
> +               .min = V4L2_MPEG_VIDEO_H264_LEVEL_1_0,
> +               .max = V4L2_MPEG_VIDEO_H264_LEVEL_6_2,
> +               .step_or_mask = BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_0) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1B) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_1) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_2) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_3) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_LEVEL_2_0) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_LEVEL_2_1) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_LEVEL_2_2) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_LEVEL_3_0) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_LEVEL_3_1) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_LEVEL_3_2) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_LEVEL_4_0) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_LEVEL_4_1) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_LEVEL_4_2) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_LEVEL_5_0) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_LEVEL_5_1) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_LEVEL_5_2) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_LEVEL_6_0) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_LEVEL_6_1) |
> +                               BIT(V4L2_MPEG_VIDEO_H264_LEVEL_6_2),
> +               .value = V4L2_MPEG_VIDEO_H264_LEVEL_6_1,
> +               .hfi_id = HFI_PROP_LEVEL,
> +               .flags = CAP_FLAG_OUTPUT_PORT | CAP_FLAG_MENU,
> +       },

regards
Stefan Schmidt

