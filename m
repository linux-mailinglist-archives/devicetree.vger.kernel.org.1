Return-Path: <devicetree+bounces-272194-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCAVMPXsqmlxYwEAu9opvQ
	(envelope-from <devicetree+bounces-272194-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:04:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB7F2235FF
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:04:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EBB2A311129B
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:56:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19F2D322768;
	Fri,  6 Mar 2026 14:56:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OMOPNNur"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2C33384231
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 14:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.182
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772809015; cv=pass; b=d3ypYnhvD9WGAPZNXT9mgdIEEFdpWsRak3FHcs1Efp7KczROeSLg6VKv7qRrZlbQao/dGgAKegCYXpra9lgKoIhwYNS6pNUKe4GKPcAhf46gjBD61ucdYt7uRkYWYG8/TzPJQuI3iyU+90aV7uu3lTV0IqE2wWrd4zA4EfOUdaM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772809015; c=relaxed/simple;
	bh=goBpoJ28faoQ8XYgq6WhtkSGFlcd+YD90udJy5DZgkY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CTKVaOW+kCiim7W9mYKh+tbMUY5Ea3qmeA+obeFJpEGSxcBATpaNz6MpXYP4HzvJLyssc9f75IZgmOF/W9dZZZ62dwVbeo/H506z7RASNFGLjIe/sMl9M9h2vdpv0dsAngUhatMrB56dOZ+fe5u4Ytf6ME+6STYyFvb4v54dCcY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OMOPNNur; arc=pass smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-5637886c92aso5009247e0c.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:56:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772809013; cv=none;
        d=google.com; s=arc-20240605;
        b=humeKgsjbmYI+fW3KhIaoOE6TJX61GPmj+U6ClxnzesMB9X1jNYmnuNWtsDOFx2Wtz
         DWIcNhxIu/urBfrTruP0cZwEV9gQL6QceLupAQcAg1DiqopiDrKuDi37N9o8/eQkzlB4
         VEJ1GzlbHsyfoBPjcGJ57FrGddDht7sg0JZLkYyL2uqddY8oJG9YhzkAVvOOfkzhPB1n
         thBsa3zIXsWEACIYKXl8nSXK54A+FmVi9Zr09GAeP/afjrkHpw0mS5ylSp3/PyhbBZe/
         9+8U5dNAI/yra+r0rM7okBI52FnT5BGz3VlkxMiU5hc2lB9hIelzu0c2qS8jWBs20Zsi
         KIrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ZeEoT4aQ4mi2vgbSEY9kBw8Y3Q/OpPZnH0cNhdXpb+E=;
        fh=6rDXpdafkMWaf3ItYW3nNYaPgWWWrE9M21j2OLUCBhw=;
        b=U49hLsJajAwFt9jZtP8iRmQ9Xqf2XPv26Ru/J0IlCBRD0iF2SOKEZjOcy7P7lh0M5E
         I9VhpMr8BVGrKPN00mOy6Nfg+7ENhwFgfkauQ/RGYLmJJLj/L/m1j3c8Stg8PVN6CuxG
         BhTW0pcIXuxqRLy+mxnHSi5CiuB9p5QImLKnKhHrASAV1bZF8ib1lG22vbCLOMfF3ZIf
         d01xYvl1MFXcelBIaEuyzVVttDJXjhOrbYs8rVh0de6PXVMyLFroq/qocarnP51IF7iI
         p4EiS7ABcLW/nkH5z8nNF2BO3/+Gv41LPC1PrdSSEnXIfXPyAbAkgRJV60NJUkknXR2c
         7weQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772809013; x=1773413813; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZeEoT4aQ4mi2vgbSEY9kBw8Y3Q/OpPZnH0cNhdXpb+E=;
        b=OMOPNNurmksofM6hthi26u33qkRP1VGQTiSNwb+x4OiJzXiPfZQB3Spv62Oo/6yEjm
         lMaibKVzkClOHXR4GED0quj9b4ipSiowfl9/TDAiDmWqm+qfzd5YdCAQpdApfMThn7Sa
         gxUAV1ttvtBcW34SyuS05nn8ktuTplgWJ3ydNw795GZoAvubaopYQi7zMoC8yfo/LkzP
         8Q6N1I+ZVEtgRm6Gu8aFfrjwypa+IOH9ZAKPym/Jn/SfoMbFZre8sb8MPpd5QNQ6LoDU
         H5EucT6+OWNJKTZaWa2ahOJIui8dHDBySrKGg+SdqECsBmoIVJ2UmbkHY5FtfONLXSEP
         r5eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772809013; x=1773413813;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZeEoT4aQ4mi2vgbSEY9kBw8Y3Q/OpPZnH0cNhdXpb+E=;
        b=v+W670f41aoiht2Ed04AVFV8U0psYi2wkxIIg27C6tYTQImLgsS0liBRKK7bcRu54H
         wCPXQ6LaLWAnD83RorXNaGlD9iqMlbvKF67Mgm7RckDtldKYq72i6XLSaFjgwvIvr3Oe
         emoH8UYipJ9r2LVFF/EMay2F7Q1FA00afuERa1cwxI8Rb2YjjOdPdgEc43SopldcDDC4
         b+NsWLX6xthqXQPEEuda26VlmgOcNSlLmDgpuQR9F7iOK99DQWFIM4YDXMbqHviGN78t
         xQUQxJ9t+N0Cr4Oy3QDJlzASpTbwfofkyTpL+gmYUG+xlndtJ+WodWOcwzf+by3qP9sh
         JDZA==
X-Forwarded-Encrypted: i=1; AJvYcCWkRmgWYhGQll6SKq7FuLIh83MHmfYVlXTZriqW5Wo8Ok1mVZ+n4eXtdGHpiPzcAqvsndnAvXYLGN8X@vger.kernel.org
X-Gm-Message-State: AOJu0YylJ9kJbYT3DrHS+QAJx3PqCxDq13WktRBEN7N+CPjCKNFj89WZ
	wTLn4zAKtP7dJa1fSW3Hu+FcTMMrovsmq2Gmqdr6KAKtegZeZUs0m0bMuvDy+VoW1xODstvMqwF
	NVU5oBW/eTGglvYeHm3IOC60ancdFep4FIQhu3b0w9g==
X-Gm-Gg: ATEYQzzd3YkMRx8wpyTOtEQ9X67BbiG9DFUI+dwiFQh8GMW7JIYJxd9FGf5I3wNsptQ
	56yUmvIzAGY5Pr1E4mMlKaEk4JIZXHTEx6L2CSVVPLukUcJ+NhGRg7M3eg4bgjMW8pUCP0RFVtl
	lcicCnQogjJ0X4O50LUFurb7hnX3yYma7rb2gHfdTjHpaCoRt88b52XiSm5LVR8ByC6po1S15WC
	L0nECPkBQy68N492yjkvFgWm6hAxRx/fQQTsxbKIGgidyhFAehLTbB6WRCSNoA+Ry+2fWlErJfK
	qD2azlqq1sa2Buncs8spXeZ9Euma6sqAxJheCxT9vg==
X-Received: by 2002:a05:6102:2908:b0:5f5:459f:9860 with SMTP id
 ada2fe7eead31-5ffe61b0681mr982266137.28.1772809012534; Fri, 06 Mar 2026
 06:56:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306-gs101-pd-v7-0-03f7c7965ba5@linaro.org> <20260306-gs101-pd-v7-2-03f7c7965ba5@linaro.org>
In-Reply-To: <20260306-gs101-pd-v7-2-03f7c7965ba5@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 6 Mar 2026 14:56:38 +0000
X-Gm-Features: AaiRm53uvHQccafGc4pUCi7QdXkQtBc4s9nxRYsP2kqD6MjlxpYsHiREsE46KEE
Message-ID: <CADrjBPqsQhmL+7tFQQdFDq=xbWKMUcADXiGoWehKXgWe1FVhnQ@mail.gmail.com>
Subject: Re: [PATCH v7 02/10] dt-bindings: power: samsung: add google,gs101-pd
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
X-Rspamd-Queue-Id: CFB7F2235FF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272194-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.8.32:email,linaro.org:dkim,linaro.org:email,mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Fri, 6 Mar 2026 at 10:29, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> Add support for the Google gs101 version of the Exynos power domains. A
> new compatible is needed because register fields have changed and
> because power domain operations involve interfacing with the TrustZone
> protection control on newer Exynos SoCs.
>
> Power domains can also have a power supply linked to them, so add
> optional support for that, too. It is believed that all (existing)
> platforms could benefit from this, hence it's not being limited to
> gs101-pd.
>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

> v5:
> - add domain-supply and update commit message
>
> v4:
> - add new vendor property samsung,dtzpc
> - drop previous tags due to that
> ---
>  .../devicetree/bindings/power/pd-samsung.yaml      | 33 ++++++++++++++++=
++++--
>  1 file changed, 30 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/power/pd-samsung.yaml b/Do=
cumentation/devicetree/bindings/power/pd-samsung.yaml
> index 9c2c51133457..3f1a2dc17862 100644
> --- a/Documentation/devicetree/bindings/power/pd-samsung.yaml
> +++ b/Documentation/devicetree/bindings/power/pd-samsung.yaml
> @@ -13,12 +13,10 @@ description: |+
>    Exynos processors include support for multiple power domains which are=
 used
>    to gate power to one or more peripherals on the processor.
>
> -allOf:
> -  - $ref: power-domain.yaml#
> -
>  properties:
>    compatible:
>      enum:
> +      - google,gs101-pd
>        - samsung,exynos4210-pd
>        - samsung,exynos5433-pd
>
> @@ -33,6 +31,9 @@ properties:
>      deprecated: true
>      maxItems: 1
>
> +  domain-supply:
> +    description: domain regulator supply.
> +
>    label:
>      description:
>        Human readable string with domain name. Will be visible in userspa=
ce
> @@ -44,11 +45,28 @@ properties:
>    power-domains:
>      maxItems: 1
>
> +  samsung,dtzpc:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Distributed TrustZone Protection Control (DTZPC) node.
> +
>  required:
>    - compatible
>    - "#power-domain-cells"
>    - reg
>
> +allOf:
> +  - $ref: power-domain.yaml#
> +  - if:
> +      not:
> +        properties:
> +          compatible:
> +            contains:
> +              const: google,gs101-pd
> +    then:
> +      properties:
> +        samsung,dtzpc: false
> +
>  unevaluatedProperties: false
>
>  examples:
> @@ -66,3 +84,12 @@ examples:
>          #power-domain-cells =3D <0>;
>          label =3D "MFC";
>      };
> +
> +    power-domain@2080 {
> +        compatible =3D "google,gs101-pd";
> +        reg =3D <0x2080 0x80>;
> +        #power-domain-cells =3D <0>;
> +        label =3D "hsi0";
> +        domain-supply =3D <&ldo7m>;
> +        samsung,dtzpc =3D <&dtzpc_hsi0>;
> +    };
>
> --
> 2.53.0.473.g4a7958ca14-goog
>

