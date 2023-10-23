Return-Path: <devicetree+bounces-10789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5A27D2B21
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 09:21:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 016C9B20CAD
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 07:21:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB76B101CD;
	Mon, 23 Oct 2023 07:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Dm2RcdW3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA37ED51F
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:21:21 +0000 (UTC)
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92C67D78
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 00:21:19 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-53ed4688b9fso4225811a12.0
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 00:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1698045678; x=1698650478; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kXFEIIjXJDnknqYDecq1Ocr2lT28f1gIUh/Ja5PDVhY=;
        b=Dm2RcdW3HJJTS8XNSsuRt8EjrCMxPlOMn1KGe6ePNgVOvwgqw6WwAPv2w/CBT0Jt3l
         t9iJpjbMftIA2EWTgRpkpisevKtUJZ/1aaHfTM6rg3/7GRJOhBtkXlhPzVTUBqizcTiR
         xf3ZJVtg14yuhYsrIZmxiQkIdpPuba4fU66EeXaOXjgtD3824p5wVo1ZcTOheewtSsHR
         JQUPlJV2g1r+3Xfw2riWU76W8sjb0L/y5Bv0cWu0vdTehrIvS8GIklPFSYJgHiaEsB2H
         N1bsZmv2doi/Omv62Ii91rwE+AgW0XCDrmMfR8GxekV43I88czzczWCIOHWllKtyk5mM
         meIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698045678; x=1698650478;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kXFEIIjXJDnknqYDecq1Ocr2lT28f1gIUh/Ja5PDVhY=;
        b=R44BBc9eQCYoQPZvR1GZ9fKBnDhZ9LFheCD3BGGvNmhn/Lv1rnk8PvE4QveX49Nm1f
         IUG56Fw/T3a4B5bpOayCgPF+z9DkkzSSN4ht5axANxlEaQrFdre3XC1MXaf+V5ybuN2s
         oPLPxHNx48PuYix0yBEUvga5UJFlF9B9PQusRvSJ0o6sW9PNQ7unv2B4QgrwiOPJF80/
         BPhyc+bpLU9wiS/mQF3wGDZ8nFvK74lTCRGazJifpLMd5WFIFaUj35j8KQ8OhnsGPtqd
         j1I6JbSeJYk1JtVdpHDHtxkY9kq9bGgTujt65SOzP93rNmcvZYksNSGwkXxCFyEDEx9v
         9fZw==
X-Gm-Message-State: AOJu0YzLMFVbj56YOzlIFboFRMAt4RyrizP8CQJ0w6H92wIEurgVn/Lk
	ZU4aunSJ7Npv2P4q8hFYO26Rxg==
X-Google-Smtp-Source: AGHT+IFqe/CmfqfzzIPPiPtZyuMLgmVsNA7lgokJECBM3fv3IMpRzoeLdxIXslrX9gPjd48rEIC4Cw==
X-Received: by 2002:a05:6402:350b:b0:53e:782f:cfa6 with SMTP id b11-20020a056402350b00b0053e782fcfa6mr5958551edd.37.1698045677996;
        Mon, 23 Oct 2023 00:21:17 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id m9-20020aa7d349000000b0053dff5568acsm5829153edr.58.2023.10.23.00.21.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Oct 2023 00:21:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 23 Oct 2023 09:21:17 +0200
Message-Id: <CWFMYF24IN3Z.17JCGT64AHQW5@fairphone.com>
Cc: <konrad.dybcio@linaro.org>, <u.kleine-koenig@pengutronix.de>,
 <quic_subbaram@quicinc.com>, <quic_gurus@quicinc.com>,
 <linux-leds@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-pwm@vger.kernel.org>
Subject: Re: [PATCH v6 5/7] leds: rgb: leds-qcom-lpg: Update PMI632 lpg_data
 to support PPG
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Anjelique Melendez" <quic_amelende@quicinc.com>, <pavel@ucw.cz>,
 <lee@kernel.org>, <thierry.reding@gmail.com>, <robh+dt@kernel.org>,
 <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
 <agross@kernel.org>, <andersson@kernel.org>
X-Mailer: aerc 0.15.2
References: <20231020182218.22217-1-quic_amelende@quicinc.com>
 <20231020182218.22217-6-quic_amelende@quicinc.com>
In-Reply-To: <20231020182218.22217-6-quic_amelende@quicinc.com>

On Fri Oct 20, 2023 at 8:22 PM CEST, Anjelique Melendez wrote:
> Update the pmi632 lpg_data struct so that pmi632 devices use PPG
> for LUT pattern.

Hi Anjelique,

The hw_pattern now works as expected on PMI632, with the commands
written in [0]! Thanks!

Tested-by: Luca Weiss <luca.weiss@fairphone.com>

[0] https://lore.kernel.org/linux-arm-msm/CVX5ZUGU9BVE.2TA819U1AI6BZ@otso/

>
> Signed-off-by: Anjelique Melendez <quic_amelende@quicinc.com>
> Reviewed-by: Lee Jones <lee@kernel.org>
> ---
>  drivers/leds/rgb/leds-qcom-lpg.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/leds/rgb/leds-qcom-lpg.c b/drivers/leds/rgb/leds-qco=
m-lpg.c
> index 0c6d0e593c06..92fee512d965 100644
> --- a/drivers/leds/rgb/leds-qcom-lpg.c
> +++ b/drivers/leds/rgb/leds-qcom-lpg.c
> @@ -1640,11 +1640,13 @@ static const struct lpg_data pm8994_lpg_data =3D =
{
>  static const struct lpg_data pmi632_lpg_data =3D {
>  	.triled_base =3D 0xd000,
> =20
> +	.lut_size =3D 64,
> +
>  	.num_channels =3D 5,
>  	.channels =3D (const struct lpg_channel_data[]) {
> -		{ .base =3D 0xb300, .triled_mask =3D BIT(7) },
> -		{ .base =3D 0xb400, .triled_mask =3D BIT(6) },
> -		{ .base =3D 0xb500, .triled_mask =3D BIT(5) },
> +		{ .base =3D 0xb300, .triled_mask =3D BIT(7), .sdam_offset =3D 0x48 },
> +		{ .base =3D 0xb400, .triled_mask =3D BIT(6), .sdam_offset =3D 0x56 },
> +		{ .base =3D 0xb500, .triled_mask =3D BIT(5), .sdam_offset =3D 0x64 },
>  		{ .base =3D 0xb600 },
>  		{ .base =3D 0xb700 },
>  	},


