Return-Path: <devicetree+bounces-23735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C2180C2D0
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 09:12:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C0D081F20F09
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 08:12:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17DF920B35;
	Mon, 11 Dec 2023 08:12:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="IWzoCn5Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2759FED
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 00:12:24 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-550dd0e3304so2328940a12.1
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 00:12:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1702282342; x=1702887142; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i2VetfWENefg3NNH186dWhmbJJvG28uTk+9EusPe8Vs=;
        b=IWzoCn5QVb3w1w2lMSzZnMBn5t9TP5Aqik7RyQP14t/Wwf+c9Bs7mVgGR9UVhKFqLt
         metGWAbyRoK0ZwDTWwypTUttdtS8dRgGc87bqYfqc3aGdvjOX2oa3Ue77XQS86kMhtg8
         aX5OSVGUANn9JaA/rWKiLVAgTDPYTWzS1TwdLAM1f0LHMLioLoqeH+1NHJNno0IYKrzT
         m8siL/3r6XHkbPwJIrJGB4oE6QgSyLFj48fVAtsNaVBehXRwbJQBw8uNJ+znoFVZLMGo
         8OKVEHs4seK2wT7egtr2R+9qcgvNaWiv4eIEUQ2r/Ub2ThsxMDQ3t2ZWr4akCNGebAuv
         DMuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702282342; x=1702887142;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=i2VetfWENefg3NNH186dWhmbJJvG28uTk+9EusPe8Vs=;
        b=ZYAoeD0M8ee1nw9BfxHNJfLphNISsKFj6scVYttBEqgDp+7LM+/Dlkm+EhM/HDCqxU
         GUQzdD7ry8b8JnHGvwCNq33zLxxMI9vX+T5xOfJjKEB+c0d2jFIC85qK3JhySG1IbDs2
         oJ803TN0neLpg8nYH22lGUNR6lDgJ38Qcu6nZ1ef5kkRkTSPHic8uuNZkSACXFVDUKUT
         LkZS4wiDcP2lm6mLAaw8pnkKFCOATthVGik7o9lZ/013srePHw4R/hvfOCs42PlAEjQz
         ZYi79yEpDFqHl5lgNvTfYIhqB9Fvpyp0ZyjqxgxVvRRU4XwHZWF4YAZti9flHIVgBKt0
         bE5A==
X-Gm-Message-State: AOJu0YzL8LErOcg40VdN0P17ycpgJZeO1UuqaX1mW2WD/bwCCb9rZoeX
	JygwQ7hMMQdsvy7Ut/ICd3AzXA==
X-Google-Smtp-Source: AGHT+IG4I/qnppSWLttR4KLdZdwYth/8ysJQzdDaMQv6IkPfpXivrhMdOVuG36BLT3aWZ2Qa9tUkeA==
X-Received: by 2002:a50:ab5a:0:b0:54c:4837:8b72 with SMTP id t26-20020a50ab5a000000b0054c48378b72mr2555831edc.64.1702282342593;
        Mon, 11 Dec 2023 00:12:22 -0800 (PST)
Received: from localhost (dhcp-089-099-055-216.chello.nl. [89.99.55.216])
        by smtp.gmail.com with ESMTPSA id m27-20020a50d7db000000b0054c0264a7fasm3502968edj.64.2023.12.11.00.12.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Dec 2023 00:12:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 11 Dec 2023 09:12:21 +0100
Message-Id: <CXLCQ7VTPXN3.3SX0FHWBB1MQK@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-media@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH v3 1/3] media: venus: core: Set up secure memory ranges
 for SC7280
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Luca Weiss" <luca.weiss@fairphone.com>, "Stanimir Varbanov"
 <stanimir.k.varbanov@gmail.com>, "Vikash Garodia"
 <quic_vgarodia@quicinc.com>, "Bryan O'Donoghue"
 <bryan.odonoghue@linaro.org>, "Andy Gross" <agross@kernel.org>, "Bjorn
 Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konrad.dybcio@linaro.org>, "Mauro Carvalho Chehab" <mchehab@kernel.org>,
 <cros-qcom-dts-watchers@chromium.org>, "Rob Herring" <robh+dt@kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Hans Verkuil" <hverkuil-cisco@xs4all.nl>
X-Mailer: aerc 0.15.2
References: <20231201-sc7280-venus-pas-v3-0-bc132dc5fc30@fairphone.com>
 <20231201-sc7280-venus-pas-v3-1-bc132dc5fc30@fairphone.com>
In-Reply-To: <20231201-sc7280-venus-pas-v3-1-bc132dc5fc30@fairphone.com>

On Fri Dec 1, 2023 at 10:33 AM CET, Luca Weiss wrote:
> Not all SC7280 devices ship with ChromeOS firmware. Other devices need
> PAS for image authentication. That requires the predefined virtual
> address ranges to be passed via scm calls. Define them to enable Venus
> on non-CrOS SC7280 devices.
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Reviewed-by: Vikash Garodia <quic_vgarodia@quicinc.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/media/platform/qcom/venus/core.c | 4 ++++
>  1 file changed, 4 insertions(+)

Hi Hans,

Is there anything missing for this to be applied or could you pick this
up for v6.8?

Regards
Luca

>
> diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/pla=
tform/qcom/venus/core.c
> index 9cffe975581b..a712dd4f02a5 100644
> --- a/drivers/media/platform/qcom/venus/core.c
> +++ b/drivers/media/platform/qcom/venus/core.c
> @@ -881,6 +881,10 @@ static const struct venus_resources sc7280_res =3D {
>  	.vmem_size =3D 0,
>  	.vmem_addr =3D 0,
>  	.dma_mask =3D 0xe0000000 - 1,
> +	.cp_start =3D 0,
> +	.cp_size =3D 0x25800000,
> +	.cp_nonpixel_start =3D 0x1000000,
> +	.cp_nonpixel_size =3D 0x24800000,
>  	.fwname =3D "qcom/vpu-2.0/venus.mbn",
>  };
> =20


