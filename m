Return-Path: <devicetree+bounces-272215-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBKvHq3wqmncYwEAu9opvQ
	(envelope-from <devicetree+bounces-272215-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:20:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CD15E223AA8
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:20:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E6922307BDA3
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 15:12:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B5B63B8BB9;
	Fri,  6 Mar 2026 15:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QuYQw/Gy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6013B8922
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 15:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772809954; cv=pass; b=AQsoa6Qd2NCrQ8GQJ1hVuuhRl8FhUNN3wJWcKXzZxaaWBdz/RLzI9MRUXm2qjuS2ceIZLlHXaUhu6tdvCwu8XIgFtJ4/XfwKGceJ1XGJbx1dnBApefmg64FaF4cZsoAgSw3pQVzy42raxNvWT04W3FedSYe8UmLMpe0kRxIlyb0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772809954; c=relaxed/simple;
	bh=DJIrAPOjzVYlNzQFRb+nPE0bDvEsm0g1GvK4jt7OniE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VBYs34odpQd6QCJdUH1aEsAUtm5j3C7+pNTR1vBGQlJnmzIIEoR36Lu9mdMjCtsvE0gAWMo5MnWj1CXkjZZZkqsHLS7TnYficOeBTFd4HvBFC17Ov1ro/DekBFmyX9Ed3UkdacU99JQ/b5BlNUb6AdPxwoj7c0FES6voAftyGDY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QuYQw/Gy; arc=pass smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-661b16ac011so789589a12.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 07:12:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772809950; cv=none;
        d=google.com; s=arc-20240605;
        b=IuXwE99f4h1bIYI+yB1xm3tyR1zUxaTL1bkYBZxoF5By6TnHZH9m+VC5RyibQQA9Q6
         UpwXyqhfp+UXW0DUrr9DVqzQ6+/A1rLRw9snXAG+2pNnbI78B26XXka/SCiQMw8OEXOe
         mgIOx6GiCKpnO5NUmXBnQvGBL2XFJP35A6ZngSn3Ru6G6hDJAa1bbQJWU99Mk38DyFXC
         qeb5EiChNn1czbRbtC6K6nvufG51XmfIeYfRIE8X9FcgkimFLte7dFkEL9VMMHzOiXv9
         596hNjqlg6ZbW3Y8HHuXlnHrAQyklcoZxU3ruG/4TYLmex4zva1mPXo1Yvms8sL3gYDn
         pKAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HVem0P0AdsDnzJHzIyaxJZEVpAJaMe9yOv2rf1iAdzg=;
        fh=vQOqWg/zskHag+jSUyblzi7xW4rUzCeBqSDuu8A0/Xo=;
        b=cyN6eFX7fiNLeBJJ6pDXltRXa26HazJ/b4nTkIurZmuvCPopcptw+YPRTLrQR4l7Tm
         nqsl6YiOaB1YA2hrLn6G+8UXkhIYHigReDozxOaHPEEw2OCDMS1HAtmdXImIul8YwkbN
         k1DAKN4IJSyTQOd0rCI3n5IN5FOk+1g5H59edP2j+AoK0Pfp972Rwwd/OHO0kZmQQuRi
         KWTeqB75zj73cWyN5UuIy/RTHI/OIB0nU9+EhSBDHP1ZDvQ29lGjEKXTCawyD2+tX8o6
         5uvNaaYFE/I13skd/WX3wZ0bL529IcVzjpo3NzheI/WZ27GL7DPeHwC9evOlSaWrs0rd
         48HQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772809950; x=1773414750; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HVem0P0AdsDnzJHzIyaxJZEVpAJaMe9yOv2rf1iAdzg=;
        b=QuYQw/Gyu/EpV7JIEcs3fH2Hrw9+w5z4nmZLEg0ZhNPjfI3rj02G13db+pu9ZB1Ni2
         RltXTC7qQM2cCgWjXNnjQnAUvgmWy8xjANpGJ19KusWek72cgD7+1A5m9J83K6POGXNY
         eAQMNjoYoHL0gjxU/E+cJ5wUs0R05blqVTlOs8bdIAe4Zh83LpZyUMlwWRtF7EfUXslf
         4qbdAm4+evuJB/cQgSvImPwLTVNYy1LO8jAIZHby/6x/jEehd3inUkmT865S2twyybb4
         Q1yils7YNUbBF233LoVDtq+0Fx/syiJJgla+/6LgjZuZUyorsHR60oqDCTfbvurSexQL
         HDqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772809950; x=1773414750;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HVem0P0AdsDnzJHzIyaxJZEVpAJaMe9yOv2rf1iAdzg=;
        b=hZUhFYXoV9yERtXdyG4mvDETryLJzK8kj+lJrzL7KPlJCdWOaFN4BB8I4Yj7A4hdJg
         ci9ymQZK/hJEjBMr8/WlWMc/urm3ASGljyJMyueVVJ3wvSPc8B3iLCNjFgeEdn/7uXlw
         dkPPC9+URNvhPK6ty0AF9q2sxi4XQb5rEXgruhA+tbqo9V5vM723OlveCnstYQ4iq/rS
         5k/IsnXUvv26NOOEon44t0T1gg4LbPc91mmMy/uVChu2bartdtvuHKkgMrMZzsRNcKpA
         XPpCgHI6pO7YRhE9p2vqYdBjNdSqLC+0t13TniijQokvAV+YX5P2xeBivff3zMXx+rUy
         xqFA==
X-Forwarded-Encrypted: i=1; AJvYcCWwT7s+tlwuVQOMLVnLzQs/cO3Cc46Z13UZG9Ug4vv/AEWRjkYIxDMmGiLhYT7aSwSvgPxytME11Xgq@vger.kernel.org
X-Gm-Message-State: AOJu0YwcGc7KA52jRQQfAbNaH4kftHM7I9e2jTYUt2hy2Sf1Nd2JpFy2
	vTLKKTAi5smgbataXoLbqghu27dWvlJnHGaGaQ0oJr/PaAj1bXEVYHp/4gEroRoR2DJJqHOIxZO
	VUWNHnBhluJgUaoCl1u7FN5TOJ4zK2IicGhl6d+o8Sw==
X-Gm-Gg: ATEYQzxTruF0Vu6XNQbRwa80AnEejkrz5EE/zpRnfCVgXKaqRSrqGaOXRNku/VnjbA4
	eyShtxpPmwmPnpaLKLCycBxS5a7nrEXsHAtO7z+SToF1KcEboALz1NuZ2Ixvyrr/yqlFC1xBEgM
	6d0KOa/YWz47LATUCXd4hNC0DGXfIVpvBVjMXI4NuAWZEeGpTjwrBK9SHKPMZKEGpS5ci54jVPo
	t0llR4WIHXptP0NSLuJ8RDCyr4KZ4AJGN8CVuU3A0mxLEGmbW4PphkTvDemOKlDYT4RHPWLw5Df
	Ewvyas6xr9AR82koMRCDzuRIx40sHKB8DUuPBU5knA==
X-Received: by 2002:a05:6402:3487:b0:660:b913:faa with SMTP id
 4fb4d7f45d1cf-6619d464e36mr1481328a12.7.1772809948849; Fri, 06 Mar 2026
 07:12:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306-gs101-pd-v7-0-03f7c7965ba5@linaro.org> <20260306-gs101-pd-v7-4-03f7c7965ba5@linaro.org>
In-Reply-To: <20260306-gs101-pd-v7-4-03f7c7965ba5@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 6 Mar 2026 15:12:17 +0000
X-Gm-Features: AaiRm50bC_Zr0ksut70Q7jUwSUCXTU_SK0a7CwA46Jn7HCchhyT2HfXFov7-djc
Message-ID: <CADrjBPpiFR-T5SgnOAgt9U279esUYkdVn21Yy2TQnMvrd3VNUA@mail.gmail.com>
Subject: Re: [PATCH v7 04/10] dt-bindings: soc: google: gs101-pmu: allow power
 domains as children
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
X-Rspamd-Queue-Id: CD15E223AA8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272215-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.991];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[1e00:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,1.10.107.32:email,linaro.org:dkim,linaro.org:email,mail.gmail.com:mid,0.0.7.208:email]
X-Rspamd-Action: no action

On Fri, 6 Mar 2026 at 10:29, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> The power domains are a property of / implemented in the PMU. As such,
> they should be modelled as child nodes of the PMU.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

> v7:
> - really be consistent with quoting (Krzysztof)
> - drop invalid tested-by tag (Krzysztof)
>
> v4:
> - consistent quoting using " (Krzysztof)
> - add samsung,dtzpc to example
>
> Note:
> Because the properties added are 'required', this commit breaks DT
> validation of the existing DT for Pixel 6, but a) that's simply because
> the DT is incomplete and b) a DT update will be posted once the binding
> is accepted.
> It is not possible to write the binding such that it supports old
> (incomplete) DTs in addition to the full version, but as per above
> it's not required to keep supporting old DTs.
> ---
>  .../bindings/soc/google/google,gs101-pmu.yaml      | 41 ++++++++++++++++=
++++++
>  1 file changed, 41 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/soc/google/google,gs101-pm=
u.yaml b/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml
> index a06bd8ec3c20..dfe6f87e5949 100644
> --- a/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml
> +++ b/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml
> @@ -16,6 +16,14 @@ properties:
>    reg:
>      maxItems: 1
>
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 1
> +
> +  ranges: true
> +
>    reboot-mode:
>      $ref: /schemas/power/reset/syscon-reboot-mode.yaml
>      type: object
> @@ -39,9 +47,23 @@ properties:
>      description:
>        Phandle to PMU interrupt generation interface.
>
> +patternProperties:
> +  "^power-domain@[0-9a-f]+$":
> +    type: object
> +    description: Child node describing one power domain within the PMU
> +
> +    additionalProperties: true
> +
> +    properties:
> +      compatible:
> +        const: google,gs101-pd
> +
>  required:
>    - compatible
>    - reg
> +  - "#address-cells"
> +  - "#size-cells"
> +  - ranges
>    - google,pmu-intr-gen-syscon
>
>  additionalProperties: false
> @@ -51,6 +73,25 @@ examples:
>      system-controller@17460000 {
>          compatible =3D "google,gs101-pmu";
>          reg =3D <0x17460000 0x10000>;
> +        #address-cells =3D <1>;
> +        #size-cells =3D <1>;
> +        ranges;
>
>          google,pmu-intr-gen-syscon =3D <&pmu_intr_gen>;
> +
> +        pd_g3d: power-domain@1e00 {
> +            compatible =3D "google,gs101-pd";
> +            reg =3D <0x1e00 0x80>;
> +            #power-domain-cells =3D <0>;
> +            label =3D "g3d";
> +            samsung,dtzpc =3D <&pd_g3d>;
> +        };
> +
> +        power-domain@2000 {
> +            compatible =3D "google,gs101-pd";
> +            reg =3D <0x2000 0x80>;
> +            #power-domain-cells =3D <0>;
> +            power-domains =3D <&pd_g3d>;
> +            label =3D "embedded_g3d";
> +        };
>      };
>
> --
> 2.53.0.473.g4a7958ca14-goog
>

