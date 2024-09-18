Return-Path: <devicetree+bounces-103608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3E797B89F
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 09:39:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 06E941F229A4
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 07:39:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2478D16D30B;
	Wed, 18 Sep 2024 07:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="CsIwwC/W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDB1166F0C
	for <devicetree@vger.kernel.org>; Wed, 18 Sep 2024 07:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726645143; cv=none; b=o+t0aPpfr+VF7oh3AZSlBV0t/W3abH2taXmeAQAHhwM+IJLy1enIHlDqDvVvBNi49x281QhJhG9bR/TZ9jXthqaoaI9sHJ9bXZXWljV4XK3BEL4C0ex/lPudUVz7jBFz/3uTXoQFLXN5TNetQ8xfEBnPC9jKm5VCpT8jkg/seFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726645143; c=relaxed/simple;
	bh=//pIglqzc8dzYvGNeS5Ko9SdNk4llqFHy43hfE20ldg=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=hNdDCf21MM/i9AjBqdHAvkg7jbEi02RALzEwuCu/wFYNmNObtnD+6xUTBm22QMyswEF095f2zo6jsLqSaFRWtVhH+U4RLWsF1A0ZiPHd+l3oLwalYIXJ1esQFPRQhrymwHZzwIGd0U+Enab39tHiJJ8bXIAvQWWHScTYY7cN+2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=CsIwwC/W; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a8d4093722bso36154466b.0
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2024 00:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1726645140; x=1727249940; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A2jmoIVe7y4meKOlJ6qsYCF/E/rFl2kVumr9vup8PFw=;
        b=CsIwwC/WO3/MQf/eFaHNW9ztHmDu02PBTLoAGqnfoHlELVZuxJEXhfBdZPxcZAHJE8
         mXAIso9Qlh2sHlEYFbZdRv0BYYApoW3VyIw7wPFOpOrc6NhwocZHMCQUh6wHueYTxEe4
         bTT06dAwJGkqQGqRWmL+dVwKOMu7y9KkUXwGIDip/jhWWx4fzjwKC/r+uaYrVi332vAF
         0qgpwK9cz6FdAEjYjtnTBRM6yUjZkw9UKzScl6dnhPDapOx6zqmXHqExGPwjLsWWX7kW
         LeD5BcFgA9nTFqkNjPRVpGvvFXLqWYKYhEuTUbVNYRndXZ3YnQx4nmcUl1YkXSHF4/18
         tM/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726645140; x=1727249940;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A2jmoIVe7y4meKOlJ6qsYCF/E/rFl2kVumr9vup8PFw=;
        b=X0DzKKhRDxaDl+ZEqS4C3bm89/ETod7VQNDcauNfZPKRqDQLx4IGqQimo63wCt0BJ+
         rIqVIYhlpcfQn7lMPP0+fzjrxbkjZFFenORzaJ5qfeIKDUJztKoqzZ4reAcpE8tATEMb
         J1XcmBVnndk/0dEXguRW1WAuk/fYcre00hJZflwujUCVtB/22ajy9qxEKXR1GxYba10B
         etjzFdEGBWxIppe/gImWdDtAKW5knZpWzAPlrA3404v7x5ZlTLGHo2b/GdLfmGh7pDdI
         uhthBv+UptIES3qjGDxSAuto3bC9M+S+v4ybqxl1ArSOpDu7wQojMNxiBB9Qpo7kJ6u7
         2ABw==
X-Forwarded-Encrypted: i=1; AJvYcCWw0WgM8iB28Ych+1oD8s8zIXJs7RzL+oqYWECZFuNoz3PipvzzXkpbgIeK7U3Sjmb7MtYohEZzEptT@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/XAhaf7jvwPa89BHlQialyqRI2rEn390dG8M1hNRFtBl25/uZ
	kqe8WGVVuVrMHy/NNun3K0J4zD83hLEziyM4xTC0O1IuEi4hFBTY/zdRAIRrLzc=
X-Google-Smtp-Source: AGHT+IFinsfrLJxQPIM62bR1nTdw6sMrl8MRa9zZrqsJ/V6spvPBZm85g7rw3MsYHtujZaGQwgKEDQ==
X-Received: by 2002:a17:907:c882:b0:a89:c8db:3810 with SMTP id a640c23a62f3a-a9029492510mr2239940366b.30.1726645139623;
        Wed, 18 Sep 2024 00:38:59 -0700 (PDT)
Received: from localhost (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a90612e1a1csm543157866b.156.2024.09.18.00.38.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2024 00:38:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 18 Sep 2024 09:38:57 +0200
Message-Id: <D498M9YSOTE8.2LB8FJBSBBLT2@fairphone.com>
To: <quic_vnagar@quicinc.com>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>
Cc: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: qcom: qcs6460-rb3gen2: enable venus node
From: "Luca Weiss" <luca.weiss@fairphone.com>
X-Mailer: aerc 0.18.2-0-ge037c095a049
References: <20240917-venus_rb3_gen2-v1-1-8fea70733592@quicinc.com>
In-Reply-To: <20240917-venus_rb3_gen2-v1-1-8fea70733592@quicinc.com>

Hi Vedang!

On Tue Sep 17, 2024 at 11:24 AM CEST, Vedang Nagar via B4 Relay wrote:
> From: Vedang Nagar <quic_vnagar@quicinc.com>
>
> Enable the venus node on Qualcomm Rb3gen2 so that the
> video decoder will start working.
>
> Signed-off-by: Vedang Nagar <quic_vnagar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/bo=
ot/dts/qcom/qcs6490-rb3gen2.dts
> index 0d45662b8028bff475024cff37c33e01d2ee251b..d52a7e0a35bf941c66ccaa004=
25147781976b359 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -790,6 +790,10 @@ &ufs_mem_phy {
>  	status =3D "okay";
>  };
> =20
> +&venus {
> +	status =3D "okay";

Don't you want to set firmware-name property here?

Regards
Luca

> +};
> +
>  &wifi {
>  	memory-region =3D <&wlan_fw_mem>;
>  };
>
> ---
> base-commit: 3f52e32445a1f63b788bc8969b7dc2386a80a24d
> change-id: 20240917-venus_rb3_gen2-502e672d0e20
> prerequisite-change-id: 20240913-qcm6490-clock-configs-0239f30babb5:v1
> prerequisite-patch-id: faac726ebdf08240ab0913132beb2c620e52a98a
>
> Best regards,


