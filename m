Return-Path: <devicetree+bounces-129274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E009C9EB138
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 13:50:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 80A641887684
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 12:50:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DAEA1A3AB8;
	Tue, 10 Dec 2024 12:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c7gKtQZZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2541A4E70
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 12:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733835051; cv=none; b=L+R9e6KgrVScLfrVkRpR3LukRde60IYyzjR2x96Wk8B6A5UwZ8N20UDIP7pPmjOZIWjsx8eQQfnQ1+whEA4159OFtaVbZjYYoQHs3A+O7CUa/kPZ/GWDK4+TnjP6x1vot6/ro5GxU10QDHVEbdZy0KJGW2dNA4pA4CGpBCRp80M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733835051; c=relaxed/simple;
	bh=bY/aA+IWQ3QxQ2sZnjjb5W3DKLhLKSXmN8peYI/pr7s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JMUjk6g4VCsz1yzj4YDDrRKa4dZVOwGB4kThxFMNr+P7rPF1M9YZJLoTjwotTUj9H4iB7ZecrUEW7Cv6PucIMn6n7GasiHMZfO/qR9bHetAUoZ1ed9gpEIaVx4WOHUL5MrLp6sHDYObXv00FHmvJLKkusuC0P9jdEbytNyRrF9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c7gKtQZZ; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-aa6aad76beeso30707666b.2
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 04:50:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733835048; x=1734439848; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Y7qRHcucb3bJvZLwoVQ1HjlEAIx4MF32wL8i5hALjhQ=;
        b=c7gKtQZZEwP5pZT1e3RFifBctv/PUanT5oTBJpmb0cnAHLazwA0MwVIeG9noVNbp+2
         zQP29p8WS7rwVhBMsRpb4CVHnKi7chADGfw6Do9GjceB8oW0ErLa/3QT1ulSaKmkviEU
         WGBxMgyjMgqM0oS476OyqVb4vMyaLyKtsoJQKawKzcUqXAUCZ9CgM1jmAdGskMpc/1jc
         AzjR9CDxPoEpkv14KHUPcZGuv/ds4+Tm6Hdi1pyJ58UNA5SJjUAEftUvrFOQ2CJj6vBj
         H96huddPu6PSHN7UIXmHetguWX56iIKNLlo20kKtaS8b7QrHmRtfF6XKmo70TO+oelJ7
         91vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733835048; x=1734439848;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y7qRHcucb3bJvZLwoVQ1HjlEAIx4MF32wL8i5hALjhQ=;
        b=wbA2B+xO8zZyFwjQGEpvWHkeMkTTXuOsS98tGY/9OqYNPCH6o/L4FXsVSR4nPMKG4N
         5/xCaU1rB2Dk6xLAf/XLJH5NDy8taXvwar+ZkvFOkcuwTPGtNvmsO+kzSjugXkpe3qfz
         /nIlB8jvvn29tGw6tPgv3HQ2o4UEIY6E9KLObo31UA38fRpzOQFeaw1xP703bdGQTTpX
         1AebAU7k5sVg8D8PxsVbR7/pDaklh+S9VhCUUQh9+3+HN0YwNiLaW/zl1QzKDxg+++ju
         u4L9NIVwN2g4UnMAhl8yQ4GxPSeB+V1wnys0xFhS9ojr6tvFHczHnOfbJPOzI/U3NNOa
         PJFw==
X-Forwarded-Encrypted: i=1; AJvYcCVVkIlRv9iq+Ga8ZkTLjFuYJcVVGV+MErFYI8iLlcVAOAQM31he+ZYLbfbsu0f9maZ7SQBlkcsn+eqv@vger.kernel.org
X-Gm-Message-State: AOJu0YxuDk5s58EbEHsG69Pl9W00gbq4Tc1MBTRjKDhEa/OkFDR9TfRu
	oa75x0JSFXIPpaqOh2kcnaAB6j6IivLic6YfFcG4CumJGKMAJCmv9ZteZcAN669EL0zTKK6nnw6
	aYVBptQHkiBW7q1rdxmwyPPBgI9GTH7OB0hvVxg==
X-Gm-Gg: ASbGncsQReGXEBjQun1os61bqgb61bkVRRuBrYNPV8jEwFT55KSjfSGhqdlY1Gch5KU
	+OD7VNsVdTWs/19PaWfgmoKDD9/Wv9gIU8Yg=
X-Google-Smtp-Source: AGHT+IGUyenOeDiJ6ElklP7HzZFpKG0ehemH7byFc2hBRRMkI05xaWuzUu/O9qFlx4Kz7Wofw600OMm2prli/4lUsnk=
X-Received: by 2002:a17:906:30d5:b0:aa6:abb2:31f4 with SMTP id
 a640c23a62f3a-aa6abb2322bmr37782966b.25.1733835047677; Tue, 10 Dec 2024
 04:50:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241210-qcom-video-iris-v8-0-42c5403cb1a3@quicinc.com> <20241210-qcom-video-iris-v8-16-42c5403cb1a3@quicinc.com>
In-Reply-To: <20241210-qcom-video-iris-v8-16-42c5403cb1a3@quicinc.com>
From: Stefan Schmidt <stefan.schmidt@linaro.org>
Date: Tue, 10 Dec 2024 13:50:36 +0100
Message-ID: <CAEvtbuus3scTvcjMuxxrfcqnd61+vqM5G=os-aUuM3+SLp2abQ@mail.gmail.com>
Subject: Re: [PATCH v8 16/28] media: iris: implement vb2 streaming ops
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

Hello Dikshita,

On Tue, 10 Dec 2024 at 12:07, Dikshita Agarwal
<quic_dikshita@quicinc.com> wrote:
>
> +static int iris_hfi_gen1_session_stop(struct iris_inst *inst, u32 plane)
> +{
> +       struct hfi_session_flush_pkt flush_pkt;
> +       struct iris_core *core = inst->core;
> +       struct hfi_session_pkt pkt;
> +       u32 flush_type = 0;
> +       int ret = 0;
> +
> +       if ((V4L2_TYPE_IS_OUTPUT(plane) &&
> +            inst->state == IRIS_INST_INPUT_STREAMING) ||
> +           (V4L2_TYPE_IS_CAPTURE(plane) &&
> +            inst->state == IRIS_INST_OUTPUT_STREAMING) ||
> +           inst->state == IRIS_INST_ERROR) {
> +               reinit_completion(&inst->completion);
> +               iris_hfi_gen1_packet_session_cmd(inst, &pkt, HFI_CMD_SESSION_STOP);
> +               ret = iris_hfi_queue_cmd_write(core, &pkt, pkt.shdr.hdr.size);
> +               if (!ret)
> +                       ret = iris_wait_for_session_response(inst, false);
> +
> +               reinit_completion(&inst->completion);
> +               iris_hfi_gen1_packet_session_cmd(inst, &pkt, HFI_CMD_SESSION_RELEASE_RESOURCES);
> +               ret = iris_hfi_queue_cmd_write(core, &pkt, pkt.shdr.hdr.size);
> +               if (!ret)
> +                       ret = iris_wait_for_session_response(inst, false);
> +       } else if (inst->state == IRIS_INST_STREAMING) {
> +               if (V4L2_TYPE_IS_OUTPUT(plane))
> +                       flush_type = HFI_FLUSH_ALL;
> +               else if (V4L2_TYPE_IS_CAPTURE(plane))
> +                       flush_type = HFI_FLUSH_OUTPUT;

Below there is also HFI_FLUSH_OUTPUT2 defined. Do we need to handle
this flush type here as well?

[...]

> +#define HFI_FLUSH_OUTPUT                               0x1000002
> +#define HFI_FLUSH_OUTPUT2                              0x1000003

regards
Stefan Schmidt

