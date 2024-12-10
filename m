Return-Path: <devicetree+bounces-129357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 375319EB630
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 17:24:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6AE511629A5
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 16:24:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4A381BC09A;
	Tue, 10 Dec 2024 16:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ta+vKn2r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C23DD23DEA7
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 16:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733847850; cv=none; b=okiA/JN+qCYiNYB3dOrW2MyBIbGCiNx4ncEnCHviD4pURCNU7lm0JPuLLedNIPiLDA0jXWVVy9Pnxm9xdM/oASGY01HDiPeXsBRFAMlmuW/J6oKkSHnLBcVZjcA938GGtRtidquHfC/XIUtpfkiCktIys3Q/tJ8qjkx36EzMVwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733847850; c=relaxed/simple;
	bh=lqZ6jfWQv518JCCW7cIDrKpuYmAnQVHmRlFDMQF5Ifg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=D8hSyZkZ/dQkVF+KQtkhfLHkdRf4M6zDGU2YYmP8YBMd6vP9sTegp+xEpMF1E9Jfyl7ObqnTXTGpXmfzeEDJxNfY395ybdTQBQzXAuWTBIcO+v+5uAdk7+a4RijfLEPWFe2jmk9Rl9kEwxmm6TIhuRayc3VunMLLqVXS22zQSTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ta+vKn2r; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a9ec267b879so1111245266b.2
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 08:24:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733847847; x=1734452647; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=l1Zl6mnBjiQBNeF1Q3VMTAkh1KaygVJextd08NrJPLQ=;
        b=Ta+vKn2r6vus4DWqB4e7Mp2tp0yqU5NWY5BVE9UuqdXHqRjo193jP7ZZVYRL3wYqQa
         KACoAFyF6kE3oERfdu8r3Re3yb2CzH1IjWeLAuYzay7bypjBE6Ax4hV7nI5hCOkK0cn2
         TAdzpdqZtQwflhVCn4WlDPXNgzOstm8lYyEjb/S+4DHUFOQqWb0Uc9Ial65LSsUhHbfp
         +x2gkiNGziimVWfjhqnt3WVxGSwBOyyj/i0UmEGUhT0LC/a9jnD6Xr3pb3DC1DUf7xAW
         i0sy2kNugbSn7ufck5Ei4FpZjB7kgN91MN1fAtvviXVe/5pq3WWF0WbIZJSTqJ5SxDkA
         TjEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733847847; x=1734452647;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l1Zl6mnBjiQBNeF1Q3VMTAkh1KaygVJextd08NrJPLQ=;
        b=RtuNf7IVnuClzukLYAFFsRc3LR46tZuV7ImOjcSlYynXE5zn1wpE0QpZ9J+vHuISIK
         LR3MdfTH9DPf2nIMIKMwAa21k0Tr1lOVjbprn+JOZ0mwn/mI+cWkmGUvEKUWT9toj3NX
         yemUBhmcFBf1mPoFYcZ/EN6gQRclIkxx6KHP6XJlHyXgXAUUoRDwvsIg4TYg9sNmincQ
         y5XsenqqxH43qCXC33CYv8Xkvo6VctKHDiH72yBKoYW6EC3sVApycPC1IykAzzpF3Ysl
         ws3hqL90BBnYxfxBpharRs9TU7JWslh8fProCOny29uVFcHvpHgTRbQbCquP76rYORe7
         ex9A==
X-Forwarded-Encrypted: i=1; AJvYcCXdG4dsBrSMsejIbtiYVsy/DuUOPlNlkBo+0+35XeIW6CHOtK+lrp3XfzWcpyPmfmLVdEZv/6cRzZBW@vger.kernel.org
X-Gm-Message-State: AOJu0YxoU9zS9eQE7Avzz5N46EuTXJ+AghEJNKixPwZawQlsZhZfoE79
	Q5kg5tosDlmY7nEK3GpkWvvqbNPW9qEAdHnN4Bh1MfhFnSrmGxourpZggx5QomkmRBiLMRITNIc
	FoZlbPrL180Bn+2rRO+8Hcfo3txqixZyrJj1trA==
X-Gm-Gg: ASbGnct6gZe7EQLP/PrblzOy32Zaya8PjeYGX1A9F7TqDFiwqJppNvAg48k54PDloVh
	0GYogPtJptCS3/Oz+nIpzFhlPaj5UuSBoZjo=
X-Google-Smtp-Source: AGHT+IEDe+ZlasDaSk7kkMNC2p4PajKO8n+r9pHmoj0mnmgFy9RuiKu/RGzpGKCUoMbkgvfshlUA8vwl2fXnyVlspYY=
X-Received: by 2002:a17:907:6ea0:b0:aa6:7285:469b with SMTP id
 a640c23a62f3a-aa69cd5c6cdmr593652366b.18.1733847847098; Tue, 10 Dec 2024
 08:24:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241210-qcom-video-iris-v8-0-42c5403cb1a3@quicinc.com> <20241210-qcom-video-iris-v8-27-42c5403cb1a3@quicinc.com>
In-Reply-To: <20241210-qcom-video-iris-v8-27-42c5403cb1a3@quicinc.com>
From: Stefan Schmidt <stefan.schmidt@linaro.org>
Date: Tue, 10 Dec 2024 17:23:56 +0100
Message-ID: <CAEvtbuuO5Ga+wW9rstX_e_RGnm5jSNSHmyy3w3M9FTopNhKttQ@mail.gmail.com>
Subject: Re: [PATCH v8 27/28] media: iris: enable video driver probe of SM8250 SoC
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
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

hello Dikshita,

On Tue, 10 Dec 2024 at 12:08, Dikshita Agarwal
<quic_dikshita@quicinc.com> wrote:
>
> Initialize the platform data and enable video driver probe of SM8250
> SoC. Add a kernel param to select between venus and iris drivers for
> platforms supported by both drivers, for ex: SM8250.
>
> Signed-off-by: Dikshita Agarwal <quic_dikshita@quicinc.com>

[...]

> --- a/drivers/media/platform/qcom/iris/iris_ctrls.c
> +++ b/drivers/media/platform/qcom/iris/iris_ctrls.c
> @@ -17,6 +17,8 @@ static inline bool iris_valid_cap_id(enum platform_inst_fw_cap_type cap_id)
>  static enum platform_inst_fw_cap_type iris_get_cap_id(u32 id)
>  {
>         switch (id) {
> +       case V4L2_CID_MPEG_VIDEO_DECODER_MPEG4_DEBLOCK_FILTER:
> +               return DEBLOCK;
>         case V4L2_CID_MPEG_VIDEO_H264_PROFILE:
>                 return PROFILE;
>         case V4L2_CID_MPEG_VIDEO_H264_LEVEL:
> @@ -32,6 +34,8 @@ static u32 iris_get_v4l2_id(enum platform_inst_fw_cap_type cap_id)
>                 return 0;
>
>         switch (cap_id) {
> +       case DEBLOCK:
> +               return V4L2_CID_MPEG_VIDEO_DECODER_MPEG4_DEBLOCK_FILTER;
>         case PROFILE:

The handling for DEBLOCK does not seem to be part of the SM8250
enablement. Or did I miss something?
It seems they should be part of a different patch that makes use of
the DEBLOCK cap.

regards
Stefan Schmidt

