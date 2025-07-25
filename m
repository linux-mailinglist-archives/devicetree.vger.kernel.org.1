Return-Path: <devicetree+bounces-199778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F16B11FDF
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 16:15:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C060D563EBF
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 14:15:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77C832500DE;
	Fri, 25 Jul 2025 14:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="3GNcyl+V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66ABD23A9BE
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 14:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753452890; cv=none; b=ZiKgp1yxSfRL0akVOGkMx2trcRoUiCbZHiM1o6onzay0yf5ygjYlZbcM3eD9XckAj7Qvv84fEIDWo5awdG/T29huVCqZRiiandgd/veY/NHqSqo2xrkqnxzRvFunnGYwXPywwtikrDh1dp6M3WZmsEwg+ZT176PQtTIoUvyiH3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753452890; c=relaxed/simple;
	bh=rNyAWlp56eBFvy36oX5YiZlPyIt11W/cxbD2Iyf2S4s=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=q4BFbTHvqNegKSs3E4fQGmk74l9PlVNE7X4iqThQjwtpjuwkKtVc2nbzZXcSmFebn8S+uBsM2zGR28kSLF1P8+gRzbBj7b5WdXW3SB2WxNUpIynBoeoCrOovduJYz3Nvx5B6A3/myQzCLvtj82hrBqANCgJ1IeNhWkboktPEP9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=3GNcyl+V; arc=none smtp.client-ip=209.85.208.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f65.google.com with SMTP id 4fb4d7f45d1cf-6088d856c6eso4223980a12.0
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 07:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1753452886; x=1754057686; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iSkJyTrv6R3uiwv3q2J4zn3hDj1JQ7Rtyl+OeDRudNc=;
        b=3GNcyl+VN56MLlLZZiFVdso3FYTMvxLqn0YicT4yjc3jDsdFduc6k8L2aJz+z7EMyB
         MwmZZxlrU27kgawqJRkZm2zoQP2golw0YdBQEdxJg3OpVk1uIXLgbBiO2YEe9ssCeyfq
         NEE3TiphHbKz1lK+XfH2G1qBUvZKPPaJv/znEj++VkWiLz9kiBcbgwmdKXKc/juZaz6n
         UkHw63EKc8v0nhrOsyDsAZvXu1g8aeI0CtC6L22yQcvO5DjQdju5F0hof5CO4JJFhDKR
         1va/awzeHy9uwa5YGsdaj0I5nvvekY+MC7BvqIZtc30xXJ7j4vpvZDgX2T5xHDb0Qfib
         /0tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753452886; x=1754057686;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iSkJyTrv6R3uiwv3q2J4zn3hDj1JQ7Rtyl+OeDRudNc=;
        b=e2unGTxtZg1vNbBkVdgA06mhCae+NwF+RLXU71smHp8TrVdHmP2Jup/1IoyVWDyt1X
         3UntiN3jwDNdybuzkDmf3qzB1Ec6xdemuEk63vKnsmesxuXIOMgFC7sQjolOITvW6jEH
         P1uXtU3VUsXyJn16O5aFcViLP3MgXx53mDSFaI+VLuPxafUq4QQkP0xiaZWRkPFeJCtT
         BqztRzhGOq0Kz2Nm7zSbgxJWvZI8G7BZKbPKWzcC4jLeidhONcKvYsZBovXvbjX0hRd9
         hUznQorVlfn3/TRC2onUiSWoQKb1TEaK/Y9lsRkE/bu9A5V61NHjJlrqjtTZcmrQQQCv
         c6Wg==
X-Forwarded-Encrypted: i=1; AJvYcCVVQRryPn7ZEa58Dv0vvzrJnDxRCxKHTSNm53+cR2K1+vwIvyPoPa6Hsjmsjk7oA4kVoTullS50yWQG@vger.kernel.org
X-Gm-Message-State: AOJu0YwPXz5zviO5W5VQ0PfF40RKWbFJrniLzi4oUyXvIu82NXOisbEJ
	UFtQUvHySBlYQdKeW6sG1AIeuXQk/ELYhKWII54OCfC2bB22OjVi4Kt4jdGHvE9pWDc=
X-Gm-Gg: ASbGncv+LWj4PHnOgh5tK2jQKxq6Ziq6/Jhbbd0ebOesmMzoi83SWRhcMpgARTl2Ycb
	0ktSPm2INb7CozSPXOClkpnuZVA4HfuY+GxVR03iRWxwfcOI6j3G2RAlbkfwQUxiBm4T67GPTAr
	eBQBJBI16xSSQFLq+pvpY/zNHHYZR6f0SlJuFz7JgS7hFiq3ACS9SLYAABkYgPtX2uiNkNv4as0
	xeJCuQevUL6yPO8mFMhqFd8Z93F+X6RAGkjufKAfyLhBLVwqNOFQ3lygnspc9XqNwyM4BFxUgHR
	vYUPm6KPiM1W6W+BvuTXHzxVe81TqMtVAJsrenpULqzx7gPtdFg5Xv7mNF4cgfG0XbDG+rJP+Hm
	wFg8ACxmf3Q2w+JSAutcY/d84Bap641czGXOpSWZrd856Fzrq4T/95xwYG+aU/IrbPgc=
X-Google-Smtp-Source: AGHT+IGz463msOz8qJcurxvgKtRb5VKMVkS2t8llkd59+2lECxEEVtdl6gBW3cfbqM7OYO38KYCWFg==
X-Received: by 2002:a05:6402:3595:b0:604:e440:1d0b with SMTP id 4fb4d7f45d1cf-614f1a88810mr1744941a12.4.1753452885513;
        Fri, 25 Jul 2025 07:14:45 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-614d907a40csm1635236a12.15.2025.07.25.07.14.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 07:14:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 25 Jul 2025 16:14:44 +0200
Message-Id: <DBL766O111UP.1IBG5Q30DCEQS@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <iommu@lists.linux.dev>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-pm@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-crypto@vger.kernel.org>, <dmaengine@vger.kernel.org>,
 <linux-mmc@vger.kernel.org>
Subject: Re: [PATCH 06/14] dt-bindings: mailbox: qcom-ipcc: document the
 SM7635 Inter-Processor Communication Controller
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Luca Weiss" <luca.weiss@fairphone.com>, "Will Deacon"
 <will@kernel.org>, "Robin Murphy" <robin.murphy@arm.com>, "Joerg Roedel"
 <joro@8bytes.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Rafael J.
 Wysocki" <rafael@kernel.org>, "Viresh Kumar" <viresh.kumar@linaro.org>,
 "Manivannan Sadhasivam" <mani@kernel.org>, "Herbert Xu"
 <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>,
 "Vinod Koul" <vkoul@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konradybcio@kernel.org>, "Robert Marko"
 <robimarko@gmail.com>, "Das Srinagesh" <quic_gurus@quicinc.com>, "Thomas
 Gleixner" <tglx@linutronix.de>, "Jassi Brar" <jassisinghbrar@gmail.com>,
 "Amit Kucheria" <amitk@kernel.org>, "Thara Gopinath"
 <thara.gopinath@gmail.com>, "Daniel Lezcano" <daniel.lezcano@linaro.org>,
 "Zhang Rui" <rui.zhang@intel.com>, "Lukasz Luba" <lukasz.luba@arm.com>,
 "Ulf Hansson" <ulf.hansson@linaro.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250625-sm7635-fp6-initial-v1-0-d9cd322eac1b@fairphone.com>
 <20250625-sm7635-fp6-initial-v1-6-d9cd322eac1b@fairphone.com>
In-Reply-To: <20250625-sm7635-fp6-initial-v1-6-d9cd322eac1b@fairphone.com>

Hi Jassi,

On Wed Jun 25, 2025 at 11:23 AM CEST, Luca Weiss wrote:
> Document the Inter-Processor Communication Controller on the SM7635 Platf=
orm.
>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

I see you picked up this patch[0], but "qcom,sm7635-ipcc" should be
dropped. Only "qcom,milos-ipcc" from v2 should land.

[0] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?id=3D872798f61d8bfea857e54aa17baa7b0d3ee24b65

Regards
Luca

> ---
>  Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml b/D=
ocumentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
> index f69c0ec5d19d3dd726a42d86f8a77433267fdf28..6e86ec36a82254ebd73c3067d=
e495795c36c6bee 100644
> --- a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
> +++ b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
> @@ -34,6 +34,7 @@ properties:
>            - qcom,sdx75-ipcc
>            - qcom,sm6350-ipcc
>            - qcom,sm6375-ipcc
> +          - qcom,sm7635-ipcc
>            - qcom,sm8250-ipcc
>            - qcom,sm8350-ipcc
>            - qcom,sm8450-ipcc


