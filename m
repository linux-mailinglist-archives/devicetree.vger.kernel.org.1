Return-Path: <devicetree+bounces-272202-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DmhNwTtqmmOYAEAu9opvQ
	(envelope-from <devicetree+bounces-272202-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:04:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A268F223625
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:04:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7EB8130614E9
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 15:00:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC69B3AEF39;
	Fri,  6 Mar 2026 15:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E06WX1nX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57EFF3AEF3E
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 15:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.222.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772809216; cv=pass; b=FwwWVvK8zBBdL5WQxD/HGEnzoF1qncrPSiIGE3q241rqIHvvWXRZDecQb1TRxurfg0t8ULOFXZRPiJhCS193RwOMFZt00H1wZKQOJLBCVYIS2p6L7Z1rcTXnoF4D5tlcGAPE5wpsYbPbs7Zoygt63EcrJFSseGSG3gS7dDmO5lY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772809216; c=relaxed/simple;
	bh=uura52BWg09fTSKw/snQHdZ0LDso4ffMBuCWX5PPr7E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Er77iwbD+GGYzn5Yf5C7KByfHg7CAcdYE1ODu3m8i8RkvcaGqo0sqO3W3j3Cxdj0F1vU8Gxi9ihxSZHlHZwQzq9tgh86tl7CF03VlMTgMsMu67erpzphRPnZ+b0JE/A/f9vKE7zZWfr+mabDuSRQ22ZLJSZyEjI8zlUyRhejYbo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E06WX1nX; arc=pass smtp.client-ip=209.85.222.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-94d5f90c8b6so5428926241.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 07:00:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772809213; cv=none;
        d=google.com; s=arc-20240605;
        b=cvpyxmEDKJ8YX8orgG6IzuWsQs4HupuSnDILr46QDTW4/vzZnPKMp59YNCaQnjlv1r
         R+oGluzNwmLkQXnwKVbh//GsTTwdLEpZEMYoZQlPoBN9a6mO2wmLBr1uid2l3xlUgB/X
         N4b0zA1yV3JILlYDojPFjWSqPdoijkKVs/FtbWN0Mw1Gs/x1Tu4i6Jg9BtPUuv9e5D10
         tY8FihYgoBQFDoyyqzBgxco4UhOjn88PaLRMvn+OuB1dnzCjP2dSXD0H8iEpia9RJnPm
         5zI7scSb2hwQYvjyE4ai+7aSPU8sBj8KCkkqEMYV7c/X6BO4c8R5nUnquCcvjvM5EXAx
         mwkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=J/Bpufq2xekGRgCcsd2+UGC/FPMgrs977MI+bXws1l0=;
        fh=8aOj7aR3omChI2E+uK3sWTbqAJpbLE61blUjgAUkOK4=;
        b=ZyVurola4Cxi0m8zOHQQuMqkck1ZhHitvxdQWlVMNR/GHpGmX4MhwjitS3YwJZDpFF
         Ekm0KfLSEzu4pUcgISY7gQE+me+MeneURxfVdq6LSWR2YsNIcoko9lZF/m9HTpNWYg6P
         tjunwyCIMp5/PKos4WgsivCi0FHMOf48SfrC4RNQKFAF6tVKmKWaEq6sK1o8hUcqG8bC
         1I0vmNt57gNlcLjWcU93lpYGIB63sLLHF5BxrP4+4yxmkT2h5mpWU0K2negQFhGcsLas
         hykNLDyOkQei4M3TwdsT1sS/X8ov3w0Jfa1TR/qCfkPqrek36CjoPHREa6sE7HrS2OYb
         QxMg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772809213; x=1773414013; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J/Bpufq2xekGRgCcsd2+UGC/FPMgrs977MI+bXws1l0=;
        b=E06WX1nXcE4hSb9+D0BmRGd/uAqyLIZgN6gvpJqj5a/f+JLIIW2kWq3H2y12V2b4hE
         r4g5KVl1nfm6MNV5KxhXldbLodtTKzM811zXErjwFZRVkgZwBvBo73/w2YEJes3lPvIB
         fFzUyDuAgyEaxi1cv2LYIOcwLFEfZ6RoPOlh1S4CxZ3bPzZvhlWpBJd+BQJkVzTqSrEs
         GxhGjK/sIJtI92LPhKc8EpenM3WAUaoLRgMqph6LrryY8VEOeHe7eiK8+i3R3VIFcKY5
         FVVTcy19mM/6CRSLHgeAVJ2D0ayvP8Tsd72X4yg5WI05f2MwLwmnrvcnNJnGus3/Fiq5
         HZMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772809213; x=1773414013;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=J/Bpufq2xekGRgCcsd2+UGC/FPMgrs977MI+bXws1l0=;
        b=KBmPbu9757oJinqfIgPCL6vTMVB8kVWV3PLkPL34xD0Tr0LtuTOFKfqIH9DTRGBsMM
         SUkIUC1ZUnm0fxbYCm/+09lvIg1DAmbqYcbz6hJF8+Q7FSzmJ2zzZcirG7rosijR9Uid
         DG6ubSVSOl6U884PEPpzVfP3hqakk5SMEQpQHDHk+iO747eBGPk7eo3Kf3jBw0HnE187
         qH8A1OsSPKhBodC90bwZA+dxv/AkcawUIuCUVVQp6zI+vL4wHq1YUJoWUGBv+kZ5jpMA
         9xRwehftu8EuqRwivb5T8z2nTkTPJG4F4z/B0mQGfeDNQw/ZJInBxzxOnPIzfvqkV/mp
         B1Sw==
X-Forwarded-Encrypted: i=1; AJvYcCWVcJISScrPmCSDY7nDOpKJkrjQegC8UWCYLrCAP6vrievT3XbRvYcGAXWk7Iz3MSEGHMysau6wvGw2@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq+mLtmq2rvsVSonYlYiPXyHcfZ/MwxkBv3R66mAt+L9ntMWoL
	So3UUd4pgjlpA9Q0b9ZQBrvEJYiv1o1E7OY4o3ihls+U9fmv/CN908UvmAaMyy+366Njc268lLA
	4sF5L1prXAydTi0Qfv9eQMaTtUYYsXE4rpNWx+5sd6g==
X-Gm-Gg: ATEYQzzGwOg75OxK8oTCKHppVY6RgqxBwN4n5qEG7DnZ1AF9VZLPYfiWEoIp8mojGv0
	DQ41AqKdOKhQ+LMwZwodyiGb0yg4ZyAPM0Nxu4VEgLGnT/hYGySgeMPKqXbaipZ9QimJ5JomhJb
	KBwUbxcECt9ffeUK1kFg6Sn8Di9Ye1Al8VQeGJkwRJn2UrpzJ8IuXh3++LZ8VgNtQOUF1mJKIvQ
	RPxd9DMMag4z/AlMNZwBozW6HDE+TR17Km+0NUK3dzCW0S0MiPBZhDT07bomoMAZ6x9UFZ+ydQp
	fdv9uYPvModcryQaT4dSRWb4HHfZwyBEWyWp1H/tqA==
X-Received: by 2002:a05:6102:4194:b0:5ff:b8d8:b40b with SMTP id
 ada2fe7eead31-5ffe5f5af96mr976076137.11.1772809211966; Fri, 06 Mar 2026
 07:00:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306-gs101-pd-v7-0-03f7c7965ba5@linaro.org> <20260306-gs101-pd-v7-3-03f7c7965ba5@linaro.org>
In-Reply-To: <20260306-gs101-pd-v7-3-03f7c7965ba5@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 6 Mar 2026 14:59:55 +0000
X-Gm-Features: AaiRm52iLKW20Iji1D2QiNvWLmb7shRdq2i6p-ERiHTNgGNSGFd7-_UUwIqk2YY
Message-ID: <CADrjBPoN65zKrgZ-Hm7exbPK6-7DMSwUKjZ-zvkg_GG3fhn-jQ@mail.gmail.com>
Subject: Re: [PATCH v7 03/10] dt-bindings: soc: samsung: exynos-pmu: move
 gs101-pmu into separate binding
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: A268F223625
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272202-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[kernel.org,samsung.com,linaro.org,gmail.com,google.com,android.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peter.griffin@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,devicetree.org:url,mail.gmail.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,1.10.107.32:email]
X-Rspamd-Action: no action

On Fri, 6 Mar 2026 at 10:29, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> The gs101-pmu binding is going to acquire various additional (pattern)
> properties that don't apply to other PMUs supported by this binding.
>
> To enable this, move google,gs101-pmu into a separate binding.
>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

> v7:
> - drop invalid tested-by tag (Krzysztof)
>
> v4:
> - update since 'syscon' was removed from gs101-pmu compatibles
> - update since 'select:' was removed from google,gs101-pmu.yaml
>
> v3:
> - use additionalProperties, not unevaluatedProperties
> - fix path in $id (Rob)
> - drop comment around 'select' (Rob)
> ---
>  .../bindings/soc/google/google,gs101-pmu.yaml      | 56 ++++++++++++++++=
++++++
>  .../bindings/soc/samsung/exynos-pmu.yaml           | 20 --------
>  MAINTAINERS                                        |  1 +
>  3 files changed, 57 insertions(+), 20 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/soc/google/google,gs101-pm=
u.yaml b/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml
> new file mode 100644
> index 000000000000..a06bd8ec3c20
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml
> @@ -0,0 +1,56 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/google/google,gs101-pmu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Google GS101 Power Management Unit (PMU)
> +
> +maintainers:
> +  - Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> +
> +properties:
> +  compatible:
> +    const: google,gs101-pmu
> +
> +  reg:
> +    maxItems: 1
> +
> +  reboot-mode:
> +    $ref: /schemas/power/reset/syscon-reboot-mode.yaml
> +    type: object
> +    description:
> +      Reboot mode to alter bootloader behavior for the next boot
> +
> +  syscon-poweroff:
> +    $ref: /schemas/power/reset/syscon-poweroff.yaml#
> +    type: object
> +    description:
> +      Node for power off method
> +
> +  syscon-reboot:
> +    $ref: /schemas/power/reset/syscon-reboot.yaml#
> +    type: object
> +    description:
> +      Node for reboot method
> +
> +  google,pmu-intr-gen-syscon:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to PMU interrupt generation interface.
> +
> +required:
> +  - compatible
> +  - reg
> +  - google,pmu-intr-gen-syscon
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    system-controller@17460000 {
> +        compatible =3D "google,gs101-pmu";
> +        reg =3D <0x17460000 0x10000>;
> +
> +        google,pmu-intr-gen-syscon =3D <&pmu_intr_gen>;
> +    };
> diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yam=
l b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
> index 76ce7e98c10f..09368dbb6de6 100644
> --- a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
> +++ b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
> @@ -12,8 +12,6 @@ maintainers:
>  properties:
>    compatible:
>      oneOf:
> -      - enum:
> -          - google,gs101-pmu
>        - items:
>            - enum:
>                - samsung,exynos3250-pmu
> @@ -110,11 +108,6 @@ properties:
>      description:
>        Node for reboot method
>
> -  google,pmu-intr-gen-syscon:
> -    $ref: /schemas/types.yaml#/definitions/phandle
> -    description:
> -      Phandle to PMU interrupt generation interface.
> -
>  required:
>    - compatible
>    - reg
> @@ -176,19 +169,6 @@ allOf:
>        properties:
>          dp-phy: false
>
> -  - if:
> -      properties:
> -        compatible:
> -          contains:
> -            enum:
> -              - google,gs101-pmu
> -    then:
> -      required:
> -        - google,pmu-intr-gen-syscon
> -    else:
> -      properties:
> -        google,pmu-intr-gen-syscon: false
> -
>  examples:
>    - |
>      #include <dt-bindings/clock/exynos5250.h>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 611fa8fb9f8f..6a00d97ccd09 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -10884,6 +10884,7 @@ C:      irc://irc.oftc.net/pixel6-kernel-dev
>  F:     Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
>  F:     Documentation/devicetree/bindings/phy/google,lga-usb-phy.yaml
>  F:     Documentation/devicetree/bindings/soc/google/google,gs101-dtzpc.y=
aml
> +F:     Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yam=
l
>  F:     Documentation/devicetree/bindings/soc/google/google,gs101-pmu-int=
r-gen.yaml
>  F:     Documentation/devicetree/bindings/usb/google,lga-dwc3.yaml
>  F:     arch/arm64/boot/dts/exynos/google/
>
> --
> 2.53.0.473.g4a7958ca14-goog
>

