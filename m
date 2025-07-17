Return-Path: <devicetree+bounces-197134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A8CB084DF
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 08:27:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4428F17B531
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 06:27:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D42C921638D;
	Thu, 17 Jul 2025 06:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="ekMwIdBf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE30E86348
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 06:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752733638; cv=none; b=nrlw2PD3CJuW/jLGMgw4M59Gjg7jLqIsyGSfaQuQYcNNtRS06a895i5HSzlQd/IbdIF/LDwEy9uFG5BPs28t5n6PVDwNzU59N7nNihLny0PJPEZJy4SR/c0fjc7rbtG2+Plb78hsrm9XlupXkL/1lqfcMdvZHCWkpHufEGn7wFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752733638; c=relaxed/simple;
	bh=OwXzItnnsraIcYnVt0zgQl604aTargDqKQyzSiybBRA=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:
	 References:In-Reply-To; b=XvRcAihZRizy0VgWhlLH2rCSPQBU8IhDanqCuP9zIzIcP2wztdwzpcH3M+KuRK5BSDjxod0EbkW7curZG7OaNq/Qy6G0dy6uOHdJuSK7jM26Q77KVNGiYUFCIMmZnF/a2pnKVUK+Oi2v5KIUmbLmegsS2G5rEHgmYq278cW6G9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=ekMwIdBf; arc=none smtp.client-ip=209.85.218.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f67.google.com with SMTP id a640c23a62f3a-ae0c571f137so110855366b.0
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 23:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752733634; x=1753338434; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dMULLTVpVqv7dK7IgKD5UscRXMfGKKGocHzIjlBduJg=;
        b=ekMwIdBfRqT3Cl4PfmI2InsnINddZmMiV6KE4fN7/M/X5dXq81gEspq05a7L31JHOM
         izR9n5uYlOW2OGG1MZ72wNQUXmVq1HMd7ZGLpzI8vxBsha/IKPQkDadC4vU4xeUbdjnc
         a00972zikT/C2ixrBcXMBxarN6EljSjlOCs4wJuRtcr2nL0ClMRnDJ52m8iHEcvFxUyW
         DGmdaGdyDC5c3bfKMLy9SQiE3NLE62YCOhq482LNTwC33dq6IX9TGa0ThD1To607dty/
         Qk1Zow73Z3AxdSOihuHxVPi0I0IKuCmkJTlsPVs99vmGRYLiHgVhzYXAWIKQWZdwBnYG
         p8gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752733634; x=1753338434;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dMULLTVpVqv7dK7IgKD5UscRXMfGKKGocHzIjlBduJg=;
        b=cEt9yPUtINzWhpJoU4vU6/xDlBb6Se9Bt1iVxGov376sUnXBX3bORQ9pBh+kSUOrJp
         KvlAZKJuixhiUjRi1YxDoAjwvkK20wBSgC5mjvlRAucSHPaBqLMKNAUodSG0Un2dLILy
         /YaQBumVaX0JT6TvlKo369IC/N+LuR5loOVQjo6Ze+nQrasZQCNbCKwIrD4tgO6B7ezB
         CiRVFbf6FUdHdhhx7a5RvJDYx3K1cIKBsMIU0yzNhLPV+v5l9aHA864Aufgtm0DTG04Y
         l0DoWRiJLVEVSO7mLk3flDtslN8uoyPmHR36x1QSZFMPAejcZW8XrcYD7+nbApUJNTFO
         WtTw==
X-Forwarded-Encrypted: i=1; AJvYcCU9TEVwnlyvSPG0QZcwBfAQqeW0Hh9V8CC/FI+HqEthb8ZZ3Li4s9O9mW2CJE4OXbo7nRg9qHiPo0jA@vger.kernel.org
X-Gm-Message-State: AOJu0YzATC3eTIqhaHpWZvNr3oG8idwnZllDDP+SFsqgu3fMJeD4afUB
	p5JDPxJF95dDZO4sDoYEtuoCa2TRsAYYpGyBmGHCNZbodCWgHKFDMrXPmNxdBYqtw64=
X-Gm-Gg: ASbGncthdHPUpWHizcLTeY+KZKxixoWrq75201haqe8C0/w/fMDh1bDGWGtI4aOwGGi
	/3zVnrFHvPt9IBQyrjMPhNPCIzMN8uSuU2+upZXFwA+7Q1sDgOP2W9CKjjC5DJNe6afBE3N868k
	z7ujpGM8Ix7DW0FEMBLR3zhwdmYJOpoPnLk8p+k/CN39psWsm17iy1HdiOYybECFNHyhdQ+IMfO
	P/MXZHv/BYEEeAwl4b9wU5vD4p45BlLDyPMWR1NLcKAGyIO8WvlU6mVhspUtnv/TmZW5DBR3gNv
	/8UGwtIt8ERGvob5eHOrH7l/yaIukHT0Vh1D+6U/gvVL/xHC+n5/W09e5463Lh8m+Abx3TgWgHY
	YLeYPq/blz7bZY2FTDHGVfiHpUmqMV148kGEKl6GPLwEXD6m8T6PJxhH7
X-Google-Smtp-Source: AGHT+IF9a43om4qwgcmFxHyk8twYfyDWlHEsMHaoiDb9jvi+87ZzfY3SJkjrZxOIH7xwJwnMChdjOg==
X-Received: by 2002:a17:907:7b9d:b0:ade:9b6d:779f with SMTP id a640c23a62f3a-ae9c9b13e4dmr648808166b.32.1752733634110;
        Wed, 16 Jul 2025 23:27:14 -0700 (PDT)
Received: from localhost (212095005146.public.telering.at. [212.95.5.146])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7e90a16sm1295669566b.24.2025.07.16.23.27.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jul 2025 23:27:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 17 Jul 2025 08:27:11 +0200
Message-Id: <DBE47UNGCDLE.3AZF5XENB5BEB@fairphone.com>
Subject: Re: [PATCH] dt-bindings: arm: qcom-soc: Document new Milos and
 Glymur SoCs
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>, "Bjorn
 Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250716162412.27471-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250716162412.27471-2-krzysztof.kozlowski@linaro.org>

On Wed Jul 16, 2025 at 6:24 PM CEST, Krzysztof Kozlowski wrote:
> Extend the schema enforcing correct SoC-block naming to cover Milos
> (compatibles already accepted by some maintainers for next release) and
> Glymur (posted on mailing lists [1]) SoCs.
>
> Link: https://lore.kernel.org/linux-devicetree/20250716152017.4070029-1-p=
ankaj.patil@oss.qualcomm.com/ [1]
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> ---
>
> I asked for documenting the Milos name at v2 of Milos patchset... it did
> not happen and patches are already being accepted.

Sorry about that, I seem to have missed that.

However I did not see any dt validation errors with my milos dts or
dt_binding_check on the bindings, where are these patterns relevant, in
case I should touch it again in the future?

Regards
Luca

>
> Cc: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  Documentation/devicetree/bindings/arm/qcom-soc.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/arm/qcom-soc.yaml b/Docume=
ntation/devicetree/bindings/arm/qcom-soc.yaml
> index a77d68dcad4e..27261039d56f 100644
> --- a/Documentation/devicetree/bindings/arm/qcom-soc.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
> @@ -23,7 +23,9 @@ description: |
>  select:
>    properties:
>      compatible:
> -      pattern: "^qcom,.*(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sar|sc|sd[amx=
]|sm|x1[ep])[0-9]+.*$"
> +      oneOf:
> +        - pattern: "^qcom,.*(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sar|sc|sd=
[amx]|sm|x1[ep])[0-9]+.*$"
> +        - pattern: "^qcom,.*(glymur|milos).*$"
>    required:
>      - compatible
> =20
> @@ -34,6 +36,7 @@ properties:
>        - pattern: "^qcom,(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sc|sd[amx]|sm=
|x1[ep])[0-9]+(pro)?-.*$"
>        - pattern: "^qcom,sar[0-9]+[a-z]?-.*$"
>        - pattern: "^qcom,(sa|sc)8[0-9]+[a-z][a-z]?-.*$"
> +      - pattern: "^qcom,(glymur|milos)-.*$"
> =20
>        # Legacy namings - variations of existing patterns/compatibles are=
 OK,
>        # but do not add completely new entries to these:


