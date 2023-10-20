Return-Path: <devicetree+bounces-10484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22EA57D1674
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 21:42:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 497421C2040D
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 19:42:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3CBC2232D;
	Fri, 20 Oct 2023 19:42:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7JArPzG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA30C1802E
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 19:42:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 251FAC433C9;
	Fri, 20 Oct 2023 19:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697830940;
	bh=qIjDdNn6tW/Z1KM4goLEX3ZPlV6MIF2Hzz0OmkttADE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=p7JArPzGTHSfiL1qYArrwUyX5pB5PNtg8qFfVWn5qcF0F2etOM3YxB0InOCY34zqs
	 oW7czuqLlMW44f6wpqHtr1dcWZj0DKJgEDxraiQWJ9s4N3m7PoEhWioS6bY2HQL0ox
	 9jHT4wlrqLdReF6rZSN8KOXQH8qmtKu6cLnv/IE/geYQEJYl6Xu5C9JWBJtw0fARt5
	 BOECllFLDrRAlnXem2+7GuKXJJSaqSyfQjDZGMOf3U0FCj2BKARMJntZM/w8MArwzu
	 EDEver2a7LRCgLnRySpnWLtkdV5fTXVe1810FqwocOyVlu+wsteM8QFBwu/LMOa+UM
	 wykw0dbz/gA2w==
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5079c846dcfso1482569e87.2;
        Fri, 20 Oct 2023 12:42:20 -0700 (PDT)
X-Gm-Message-State: AOJu0YybwDAfcGZ1p0nFvOMzHJ735j2LTcMeCMugX3otGRPp5olWFiFQ
	1DEIgZ1cpe/bGq2NyB0yd3ZQU7cevuh0PxDrag==
X-Google-Smtp-Source: AGHT+IE/SttWYtk6O+YVKNHEBNdGBPVfwkufXCF0xMXDizYo4sopafYgp9I25iAHV/JyHlXdGXPLZXpKBWd+M2uTT2c=
X-Received: by 2002:ac2:550b:0:b0:507:a86d:89bb with SMTP id
 j11-20020ac2550b000000b00507a86d89bbmr1933075lfk.23.1697830938350; Fri, 20
 Oct 2023 12:42:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230824091737.75813-1-davidwronek@gmail.com> <20230824091737.75813-4-davidwronek@gmail.com>
In-Reply-To: <20230824091737.75813-4-davidwronek@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 20 Oct 2023 14:42:06 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKG0icvs1y1SMpdgk9mTk9pFziPo2YFjwhcgdkHdaV6KQ@mail.gmail.com>
Message-ID: <CAL_JsqKG0icvs1y1SMpdgk9mTk9pFziPo2YFjwhcgdkHdaV6KQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/4] arm64: dts: qcom: Add SM7125 device tree
To: David Wronek <davidwronek@gmail.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
	phone-devel@vger.kernel.org, cros-qcom-dts-watchers@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 24, 2023 at 4:17=E2=80=AFAM David Wronek <davidwronek@gmail.com=
> wrote:
>
> The Snapdragon 720G (sm7125) is software-wise very similar to the
> Snapdragon 7c with minor differences in clock speeds and as added here,
> it uses the Kryo 465 instead of Kryo 468.
>
> Signed-off-by: David Wronek <davidwronek@gmail.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm7125.dtsi | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sm7125.dtsi
>
> diff --git a/arch/arm64/boot/dts/qcom/sm7125.dtsi b/arch/arm64/boot/dts/q=
com/sm7125.dtsi
> new file mode 100644
> index 000000000000..12dd72859a43
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sm7125.dtsi
> @@ -0,0 +1,16 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2021, The Linux Foundation. All rights reserved.
> + */
> +
> +#include "sc7180.dtsi"
> +
> +/* SM7125 uses Kryo 465 instead of Kryo 468 */
> +&CPU0 { compatible =3D "qcom,kryo465"; };
> +&CPU1 { compatible =3D "qcom,kryo465"; };
> +&CPU2 { compatible =3D "qcom,kryo465"; };
> +&CPU3 { compatible =3D "qcom,kryo465"; };
> +&CPU4 { compatible =3D "qcom,kryo465"; };
> +&CPU5 { compatible =3D "qcom,kryo465"; };
> +&CPU6 { compatible =3D "qcom,kryo465"; };
> +&CPU7 { compatible =3D "qcom,kryo465"; };

This compatible is not documented. Please add it.

Rob

