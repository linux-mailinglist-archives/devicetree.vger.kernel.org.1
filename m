Return-Path: <devicetree+bounces-157923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC4BA63693
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 18:00:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 69FE5188F1A8
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 17:01:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3D0A13B58A;
	Sun, 16 Mar 2025 17:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="uPa3TrZW"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63AE61891A9
	for <devicetree@vger.kernel.org>; Sun, 16 Mar 2025 17:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742144446; cv=none; b=ijC2Q+6hhSJ9bG2KIN79YeBJH9pT5XguqwgDjnO/PMiQG1OF8bdP82FEUMc35o+dkKaJ/00czICnr09TKNLlvp64coQkttz9j+IgsUzyyN2CGk1kTNlaiKArW9ajYPUIYE2tEZuL2m39SzABEQcQ7bGtwL+OMQXZcDt7r0Fhwx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742144446; c=relaxed/simple;
	bh=5LSXYiZ1EWCfm6z0l3ujY/R76DToyGgEomOHbB073zs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gMz5DKL+QPFe6GkxsfYD93fn7b5ML64HUE9JfLNmvYCOOdo+uW1TL+qxXfc2LDVvtAotyCZqIxJgvkaBVqHUTHoLFUard0CLN3T/mbedH5LjmNEJCbE5NWowO+uNFDDODLeyFL6xf5EWEZZIw1VroBZ0vdH4jVHCzFxl/Dx6/tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=uPa3TrZW; arc=none smtp.client-ip=212.227.15.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1742144415; x=1742749215; i=wahrenst@gmx.net;
	bh=Yhk3pke8SopWAqXAXxTbiyqZ9AZFCJbch6mayWxHbQE=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=uPa3TrZWKzNWKY7ui/b1pSw8pXUYaXo+bYDNZ9EIeVbmRrD01vD5IlOiyByTmoiO
	 HmQnxGuoiuURq887GNSGOPZiXlq+2t5jKbkCuA8mf/15FBgYWjjgVRQWMLzRLlWva
	 yA1Usj2jltjypRd0lrxLeia3E/q5Gkik/9s/Fikln7KRoVa9WPGsvtaBhF4CrUmD2
	 VlzDDeotNqxjFNpssVLuCs086XxsQqD+RZPbNMQhX8luAX4flYmcV4W10tPwCA59a
	 PHeIz4p3UDvqc+dbH+iFGfmD4L8Ll7b061Bb80Df5wiuW888OqSW5iyz21UIs/aYv
	 kwuOYoFtQXbb+iDwNw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.107] ([37.4.251.153]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mzhj9-1sybt80tnN-00uJL0; Sun, 16
 Mar 2025 18:00:15 +0100
Message-ID: <493490e8-1ea0-4e10-8fd7-e8f6b10607da@gmx.net>
Date: Sun, 16 Mar 2025 18:00:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/6] dt-bindings: gpu: v3d: Add SMS register to BCM2712
 compatible
To: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Nicolas Saenz Julienne <nsaenz@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, kernel-dev@igalia.com,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250316-v3d-gpu-reset-fixes-v5-0-9779cdb12f06@igalia.com>
 <20250316-v3d-gpu-reset-fixes-v5-3-9779cdb12f06@igalia.com>
Content-Language: en-US
From: Stefan Wahren <wahrenst@gmx.net>
Autocrypt: addr=wahrenst@gmx.net; keydata=
 xjMEZ1dOJBYJKwYBBAHaRw8BAQdA7H2MMG3q8FV7kAPko5vOAeaa4UA1I0hMgga1j5iYTTvN
 IFN0ZWZhbiBXYWhyZW4gPHdhaHJlbnN0QGdteC5uZXQ+wo8EExYIADcWIQT3FXg+ApsOhPDN
 NNFuwvLLwiAwigUCZ1dOJAUJB4TOAAIbAwQLCQgHBRUICQoLBRYCAwEAAAoJEG7C8svCIDCK
 JQ4BAP4Y9uuHAxbAhHSQf6UZ+hl5BDznsZVBJvH8cZe2dSZ6AQCNgoc1Lxw1tvPscuC1Jd1C
 TZomrGfQI47OiiJ3vGktBc44BGdXTiQSCisGAQQBl1UBBQEBB0B5M0B2E2XxySUQhU6emMYx
 f5QR/BrEK0hs3bLT6Hb9WgMBCAfCfgQYFggAJhYhBPcVeD4Cmw6E8M000W7C8svCIDCKBQJn
 V04kBQkHhM4AAhsMAAoJEG7C8svCIDCKJxoA/i+kqD5bphZEucrJHw77ujnOQbiKY2rLb0pE
 aHMQoiECAQDVbj827W1Yai/0XEABIr8Ci6a+/qZ8Vz6MZzL5GJosAA==
In-Reply-To: <20250316-v3d-gpu-reset-fixes-v5-3-9779cdb12f06@igalia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:lFOB0ncZFagvFOKWhTD6YhlfvUaIIs/VcOPeqRK0MjSD7fWyTzw
 CIsXcOkmHeWGMVvne00z48ZGTA3WIh3AxIAF4bvvqK7hSLsL2qR82mQO+F5wfSQP3sdU5jE
 uwZqmYPbM6VofNoJz8nBJDKWDlj2EEgyjP0eXTE6ioN+u6u58dYUzo4zxnabi24hfUDYiQp
 PNH3ouN8hZlCJjWfAJI0A==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:TyJgRGz42kE=;rJwc3rIHTgKAp46FZcApxyuzHGK
 I40hnSFUXEKGYsOg1mgvsAWJ6U5cMMW9VzrUFHbr3qC124fuyfg2g/+bHJUmj9o8tG3mNCkg6
 HqZZDfJqCsqHu0u4JC9hpB2q6AtBlMbNCzHUzDXyu0Yrw5UuTnWj/u/reDl9UP+czmYqhxWVz
 DO6jzioDPjG9t+3eMWZETzwpIJ6ixaJmNtT19gDoecAg3T/tPdaxNsPL8hg4h6DnU70vimLCt
 9JzGcuDmSOcrhrdvQ0P4p2y4FWSkF9p2f2Vdj5hkUsmOjGDPW9kz1vyrU2GMqNaNKubud1/5s
 CTf3X83FkC6+qClCWEifhNVKA/47IwaW567Wz2qPg+oPrxAQYq38Lr5BKm/ZtZPtbHk6MLhWQ
 dHOlX/5OBaNrO9vqNG/fmvqrhmS8tn8OfQ0EFLT4vxQm6WWAgEt/Y6g8km7u0EPUavPRYh7Bz
 MvKoQJjGrJ3h8VZzhl7w50aEwaqpTK77hiiFm7twg4/ipNzpGbwt6oDXLxTuI82BDPjeOC6kE
 ECaJ/cfSNgTKJh5wvP6JgO7H9aKJYPb++BMYlZ2E3CBnZ+WjO94UHui08a/AZ+Z+FbBHufn4C
 YVobMRg/LMzgZShlY69Z5Vs91QbWcYTY+XMP0yJmm99xdae37XUX5ASNx2tkg1+WU7OREVDp/
 vLnKKp62XrXE1OlTmvcPl9vwHuACoBvl1+k8q7rlbgnUceHQ2oBGBOjEJPaMk6czN476ljesq
 Zea+CnzWYtEvnF/NzpCiCJI73d/fR2aP3QfQNdZi15Iq28HZDguZb1ERNlhYlA4Jt+Mjvj5ib
 jh1d1aKAVjL3JziRiBqxNxN7fMYbcsvOX7bbE26UIp2i34AHqZD+qaPD8oubLhoYvlei9c0B9
 se0gk/PrsgaunMymkTDimoej+1aw/nRcNwZVTxQmaESF5GnW1fD9mSSWEgilh+2WhQLjqUdUO
 MLFyGSE9VFz4u5+Sv0XARWQ4bsi8N6aSI9Ow3ilKuoY/vp4EFFuXLwI7Q685EJEzOukJ7t5V4
 q8jX6yajZjmegF8OTdrmpPJnD9tJ+q1FHO0k3qQk3OfsLjPkh7ZPwJBJ067276H4eexQsBWJR
 TMRD6Cpv9U/mFOLD2QrAazOCqfi+dlSUsJEZuaN3KwVKaCZCAPgxHWXQ6Nab9pIvQZrk2SFx6
 qy6NYtuqq6EC3O7olvxkxdQSjPDA1apucZsBpCUJpMQK8mYcqig8v4xwayrpv4nHEb2mGyoJs
 LKOzR8oophdJ/nUR0JwpGeke86gdTXpoCuhFnS4v86qaUUQEPDKSLUKyL8Gt4ax9hNX0Oxzdo
 zgsn7o1FebuHKgdNVpgp/3d2icD2W4+NMWYv4bIB1vA52P3wcQqRyHgF2ayLqAP6GWthjnPxR
 P82ed1VUw1KwpMsQbTKsGqM3UAURSQ0QBZtB6w7UnBgR7bEqGrTLjG+Hi4Cbd3tdtGCo/Sof+
 n8Fvpu1IKicbr4ClO6EySGRIvQSE=

Hi Ma=C3=ADra,

Am 16.03.25 um 15:15 schrieb Ma=C3=ADra Canal:
> V3D 7.1 exposes a new register block, called V3D_SMS. As BCM2712 has a
> V3D 7.1 core, add a new register item to its compatible. Similar to the
> GCA, which is specific for V3D 3.3, SMS should only be added for V3D 7.1
> variants (such as brcm,2712-v3d).
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Ma=C3=ADra Canal <mcanal@igalia.com>
> ---
>   Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/D=
ocumentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> index c736b3b00ed2c259c263615bdc2bc1899c8961f8..766a310ab653855d7cc9a80f=
18c2083218fe307e 100644
> --- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> +++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> @@ -77,10 +77,12 @@ allOf:
>             items:
>               - description: hub register
>               - description: core0 register
> +            - description: SMS register
maybe we can use this opportunity to explain what the acronym SMS means
in this context?

Thanks
>           reg-names:
>             items:
>               - const: hub
>               - const: core0
> +            - const: sms
>     - if:
>         properties:
>           compatible:
>


