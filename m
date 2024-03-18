Return-Path: <devicetree+bounces-51252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC32987E9A5
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 14:01:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 135DBB21900
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 13:01:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC08A381C5;
	Mon, 18 Mar 2024 13:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="guNOzgPG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1E922091
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 13:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710766854; cv=none; b=da6Tm0xCaR7HHkSimqw8NKejweeXq5rTkaRiPchSnO6ZHJ7eopwCkhCO8aq9y6rl/SSeWXrq0QSAS9v+tHwCsFVnKK4VX7JPQ3cuuESYhI8QtNf7g1ZPk3AzxU78eqjxacEp1T42mFrKCv45rD1bH0FsBJZfAexq2U+O9FexzpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710766854; c=relaxed/simple;
	bh=abNTLKYcLXIhe2eOSU6DyOpFwTK4BPqk/0FE1JzWnEQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hAyDWbdtzWgHNnuQauCp4efFLEN5ghofnTUUeo9Jc7EAj3rOCWiC0ifGxCj2Xp2Uj3mMQ3pBrbYYcehggxULTvZR4xIlgceNXmWZjNpGIO3VvR89SP+OdaJs5/ITkjIBnK2ctcijO8k7eD6VDhujUGFdEH6n99k1Rhk81Af9OLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=guNOzgPG; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-609ff069a40so50395947b3.1
        for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 06:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710766852; x=1711371652; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=krtW4aUuwrjQ2jkX8A4jBdsmWsZ29REGKZPPhdTh9uc=;
        b=guNOzgPGHeiyycfe5bqDTRCmhhmnzjQVZ21JIJnG+IdNfTFILcG6WbmBcWnYwHg3dk
         QcnRhwO27DMW/DFy4bCUQYqPpQElRSt6/Baq8IjYSx1iDiiwWZ5fejxRfd+B/CCLVKz5
         2CJSZ5IFz3xDMNS5+VbDD15FcNP8CuZBtAn0+3tZ9Ad2I65nhDHA0oHgvVoGqkcW8XwE
         ehDTgkvHvzE8GI6DA0Dgidf3jt7D9lRs6C5No2H2IhA2UxAHxvnDi9TXwT4qekPdKOVU
         lwWWG2c23SUjzg53W75uUzPXlOIJevBw9+8Pa4/shbVfkv3Xy05uyQqG03Treuq/R5Cy
         gNqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710766852; x=1711371652;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=krtW4aUuwrjQ2jkX8A4jBdsmWsZ29REGKZPPhdTh9uc=;
        b=VxgDbCKaYV7G56n4JPg3MrVxLZLdXQHRJO+pemqZLh6mOcbrJHwt3/qcyIoz+AM6D5
         WjxBokuAEq9G2SN90jw6CQuNjR/u8deJxrN5oiVZXUzT/NQkmfr0RmriRGH0rxOmAToT
         IA3sHp00ANOmc/HxH2X+/BxnjG9E1E6tCr7aHoGHmmOhlJz9v4gctdoaiUMOEJQ4qpCf
         HzC1lm3cEjtsB/nV2MLx2PHoOXe5nUHEvMXSpb+TCQ88Ri7+mOXDh7nF3BHOn9UzOiEt
         L+qWkAs1pN8ZSMeaBtCa/L9xI6IUPPnQSPble6o3D3vUI8Kpw8/iJGptK3LdKb0NsDcB
         hD/Q==
X-Forwarded-Encrypted: i=1; AJvYcCXHP4qy6QNjnXgFruniEBqd5bU0ak/ggsSWdsVtWD+jEqYWc1EnlOdEHPkUNUm+KYJi5bfsiB1ib7zBQrHxN+nf5NKm3Ptg0cq8Gw==
X-Gm-Message-State: AOJu0YxjYQN7tK/z7fKrLHAEgfGCTqZ9Gc0HVV/tb4Jl1VZDRwVYmgYA
	yE62ovYI82lKr7AjXzuNDl6g7RHV3ovnUljVG/5mPa6ZsL11Ts6rTSRSkQ9liCi2z0G1DNjBElB
	/cMgQaUZ2Gkl7nkxhwKlu3CC7RvkyFshXXpQx5Q==
X-Google-Smtp-Source: AGHT+IHNIqyRYAx97Bsm8icZ7FibD5CfXZy6+AclCn9jOAbIEUGiVoB04TJFOEhgeti/W3RP6sRcFIurJfwvOEdKwzA=
X-Received: by 2002:a5b:845:0:b0:dcc:96db:fc0d with SMTP id
 v5-20020a5b0845000000b00dcc96dbfc0dmr6407441ybq.25.1710766851867; Mon, 18 Mar
 2024 06:00:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240318110855.31954-1-johan+linaro@kernel.org> <20240318110855.31954-2-johan+linaro@kernel.org>
In-Reply-To: <20240318110855.31954-2-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 18 Mar 2024 15:00:40 +0200
Message-ID: <CAA8EJprywWbdoyfAbys=0WzEdAkp0UK1fzzCPzxKRjyk9DrC6Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: bluetooth: add new wcn3991 compatible
 to fix bd_addr
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hedberg <johan.hedberg@gmail.com>, Matthias Kaehlcke <mka@chromium.org>, 
	Doug Anderson <dianders@google.com>, Bjorn Andersson <quic_bjorande@quicinc.com>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-bluetooth@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 18 Mar 2024 at 13:09, Johan Hovold <johan+linaro@kernel.org> wrote:
>
> Several Qualcomm Bluetooth controllers lack persistent storage for the
> device address and instead one can be provided by the boot firmware
> using the 'local-bd-address' devicetree property.
>
> The Bluetooth bindings clearly says that the address should be specified
> in little-endian order, but due to a long-standing bug in the Qualcomm
> driver which reversed the address some bootloaders have been providing
> the address in big-endian order instead.
>
> The only device out there that should be affected by this is the WCN3991
> used in some Chromebooks. To maintain backwards compatibility, mark the
> current compatible string as deprecated and add a new
> 'qcom,wcn3991-bt-bdaddr-le' for firmware which conforms with the
> binding.
>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../net/bluetooth/qualcomm-bluetooth.yaml     | 29 +++++++++++--------
>  1 file changed, 17 insertions(+), 12 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> index eba2f3026ab0..b6fce6d02138 100644
> --- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> +++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
> @@ -15,18 +15,22 @@ description:
>
>  properties:
>    compatible:
> -    enum:
> -      - qcom,qca2066-bt
> -      - qcom,qca6174-bt
> -      - qcom,qca9377-bt
> -      - qcom,wcn3988-bt
> -      - qcom,wcn3990-bt
> -      - qcom,wcn3991-bt
> -      - qcom,wcn3998-bt
> -      - qcom,qca6390-bt
> -      - qcom,wcn6750-bt
> -      - qcom,wcn6855-bt
> -      - qcom,wcn7850-bt
> +    oneOf:
> +      - enum:
> +          - qcom,qca2066-bt
> +          - qcom,qca6174-bt
> +          - qcom,qca9377-bt
> +          - qcom,wcn3988-bt
> +          - qcom,wcn3990-bt
> +          - qcom,wcn3991-bt-bdaddr-le

This compatible doesn't describe new hardware kind. As such, I think,
the better way would be to continue using qcom,wcn3991-bt compatible
string + add some kind of qcom,bt-addr-le property.

> +          - qcom,wcn3998-bt
> +          - qcom,qca6390-bt
> +          - qcom,wcn6750-bt
> +          - qcom,wcn6855-bt
> +          - qcom,wcn7850-bt
> +      - enum:
> +          - qcom,wcn3991-bt
> +        deprecated: true
>
>    enable-gpios:
>      maxItems: 1
> @@ -122,6 +126,7 @@ allOf:
>                - qcom,wcn3988-bt
>                - qcom,wcn3990-bt
>                - qcom,wcn3991-bt
> +              - qcom,wcn3991-bt-bdaddr-le
>                - qcom,wcn3998-bt
>      then:
>        required:
> --
> 2.43.2
>
>


-- 
With best wishes
Dmitry

