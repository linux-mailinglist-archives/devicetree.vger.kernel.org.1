Return-Path: <devicetree+bounces-29347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E5FFD82264C
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 02:07:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 766CFB21A7D
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 01:07:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C257C7F2;
	Wed,  3 Jan 2024 01:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PQn6IGhw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA42A38
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 01:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-dbdacafe012so6425991276.1
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 17:07:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704244023; x=1704848823; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xl/hmmhK6zc+yGDB0wn93QSTd4cePCvfCqLWBamZSPw=;
        b=PQn6IGhwXSN4zjCejuk3mk5xkz4YQTfFQ9EcyEhkXzvg0QKSsur3/DKdAkMW2+jo31
         oZQnbtn8F4k9bUWC6mihMQYYSooUIAq8ImdRjf+a/0T3J9E/J/bkfyAm7wFFjIl8V+y8
         Cqc/5wUObYwI7EQLYDldHanQi4RLgDmNx83/E1ml8TCGnQLi01gEpcU2qJ6vyfZaNINP
         GqHYDfGO0g/WZ035ltd9kcHqxHhXGTs8OoaJXt9p3yufjzzpFXTNc5lPfadREOGgdegO
         0VmfTCuVQKVUqyft4Hc+YSX81V4T/We2aHpghGdFYrpGtigVGoRhmnJTeXJk3cbhQM0N
         RCKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704244023; x=1704848823;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xl/hmmhK6zc+yGDB0wn93QSTd4cePCvfCqLWBamZSPw=;
        b=QwG0o4oGjX5v5EzeB60zDzmM7es/zbtpyqpLh5qH3WkrabfVMxnOFUu26cg1sy6xJd
         WzJVM7ooMLJGkT5Z5iFMSUVmzmIKGSP00nXUNd0unaRQXuQGUN5jgDIOXgiqSU/xxHGa
         JtUf2K02HtrJqye9Rz4yw+JWsvgGbtZL5ksFdhYgfSsiUO1d8q2yqorVro0iogikcvbh
         yjsYIWBQ2OzxcgZ1oUk2Bn98UqOFSeJnrlMjyUFPZzDqHsZIU+dDPfspb1CezoFya7xM
         f4D+VlZdIW9x0aQ08ZgPcNRumvI3XIfvq+78jgA31QBhNSVUxJGm5GsdDpqCe2yXhzWr
         Ga1w==
X-Gm-Message-State: AOJu0YycAvFzr0Bic0QZmVg3jx7lzJ62vI/vZZfOGwH5bMMlHslm2h50
	FEM8/gxIe3lZBlL7/o5KMZem/+sg2cvkP0dl3y0efkN1MT0DRw==
X-Google-Smtp-Source: AGHT+IFfxHqbsKBYmeZKaMuyhFdWd2IGAVo8dC2ioxb07yMgSL9PMZPmpybg0UqJykGsPruSNWXJmMAM++RnlZbAP+o=
X-Received: by 2002:a05:690c:3745:b0:5ea:e8d:df85 with SMTP id
 fw5-20020a05690c374500b005ea0e8ddf85mr10806988ywb.35.1704244023567; Tue, 02
 Jan 2024 17:07:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240102-topic-gpu_cooling-v1-0-fda30c57e353@linaro.org> <20240102-topic-gpu_cooling-v1-6-fda30c57e353@linaro.org>
In-Reply-To: <20240102-topic-gpu_cooling-v1-6-fda30c57e353@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 3 Jan 2024 03:06:52 +0200
Message-ID: <CAA8EJpprtV8v4md_MVgNcHivM+hB9=ZV5kk9htVkrHfpOB8vxA@mail.gmail.com>
Subject: Re: [PATCH 06/12] arm64: dts: qcom: sm6115: Mark GPU @ 125C critical
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2 Jan 2024 at 15:36, Konrad Dybcio <konrad.dybcio@linaro.org> wrote=
:
>
> If the GPU ever reaches this temperature, the "critical" signal shuold
> definitely be propagated. Fix the wrong type.

I hope it will be shut down before reaching 125=C2=B0C

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm6115.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/q=
com/sm6115.dtsi
> index a8c819d53104..be51cbaeeb7e 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> @@ -3313,7 +3313,7 @@ gpu_alert0: trip-point0 {
>                                 trip-point1 {
>                                         temperature =3D <125000>;
>                                         hysteresis =3D <1000>;
> -                                       type =3D "passive";
> +                                       type =3D "critical";
>                                 };
>                         };
>                 };
>
> --
> 2.43.0
>
>


--=20
With best wishes
Dmitry

