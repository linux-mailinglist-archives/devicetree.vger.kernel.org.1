Return-Path: <devicetree+bounces-66984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 257CC8C60B0
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 08:20:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F4021C20C8B
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 06:20:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 381B93BB4D;
	Wed, 15 May 2024 06:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="bkpscqxp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB063BB24
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 06:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715754002; cv=none; b=NOYvkQpbuZ4Nm15rlSSVqxpEcA7hHHBTToVrcL/tVoPa4/0tZCpxXNOW3Vt63oSufwkx+8RmzD3siXatv50Zjic5rm3LL3fN73ciWijlrFXCnbgXinVmDs4DGWcjc/A3ebGio7w3jYWOp5+P7YRrdQDtUKwZeMp0StKQYHlIU7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715754002; c=relaxed/simple;
	bh=UyrQgiGxpVTwgJtSrbHRBf9lE+OZP6cY2tzhDaA4YlM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fykXg9Wv3p3iJK/0PUQ3TvJi+WszaB1mMIh/NXcQxL+3zqUOjqtmiI9nBAP4msuAEfDup41PPiQGIJqhTIUSPTbUOgnmvGPxa6qeKx2klfODp9XuwxtsaA5enGpTCzUutxppkQAszt53hweUdj9EoELTFNm3f4W5vWkdrQb6LyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=bkpscqxp; arc=none smtp.client-ip=209.85.166.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-io1-f42.google.com with SMTP id ca18e2360f4ac-7e1c06191d0so133753839f.1
        for <devicetree@vger.kernel.org>; Tue, 14 May 2024 23:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1715754000; x=1716358800; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DXBk01eAYtbUsAxjAP5iGYBzxJrtGgpchSjyGGop1NU=;
        b=bkpscqxpboI0T8i3xvZR8yiGwgMJq5IXEBKUfkc6jsgH2QQVDn7im6PXOqmyngrZme
         8Bt8ZQ7yCgADITlNp5E9aAXPY30MFlv/wP8X5Ef8eJKuw6L7ciFuhZn9i3OBqAcWlEmc
         2E8XdPuXfKvV8eouyH52hY/1aqpvJzYkuVm78idGZ8RQ58dvAtWWlKYP9urtSuzu+E8H
         9YG8H8wtfQRGmEbyiuM5xHfG5Kiv11hYLyVCvLlAsxRohktKfpcnPrJb0Md7TiOzNL4E
         5MlZxBcgPVxv6B3rl3dXFKecB1VdTs8teWzHZr+eLREVAeLceO395wiSrImmOjNe0K6W
         H9qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715754000; x=1716358800;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DXBk01eAYtbUsAxjAP5iGYBzxJrtGgpchSjyGGop1NU=;
        b=YVRclJFaJRBoltHcg9964oeHFKFvFj2AkAeUCo8Zcr9zQuK4AlNlG+0EjBtJJsnyLO
         qdYJBuREjg5mttHIMxzsecXpF4QfwhVvwSxO7+H31jKfOSg0P2sQXl5ufKjFvJANnC+U
         xIJmHqvZZlH7tRzsovxWQkHAmWMnj1QiJGoSwSUkmOb0wt0z7z+nreapVw9KAiDjcDWT
         hvWbyCN8ZGNY+XAmFg8Z6VkuLq9ATOqH354ru1Bu0QhtOhqJvDJ7HvMBeG7O339AzA6Z
         7NsAl7fJEtCfwjS0EKrE8OCoCu0RIu6/STRPJaOsxOdX1u9bMJhm2v//jw5HyjmnZ5fc
         al8g==
X-Forwarded-Encrypted: i=1; AJvYcCUs7UyeErN17+12WI/t7fLNoPUAWGawcktqKHm/MJxLzoWc1MGmr4WsWVCPcmc9f3F7mkmrzmk6IEQAgG8fRQ/OX53j0m6618Zohw==
X-Gm-Message-State: AOJu0YzpOkCYytZZzSAuTYpxg3n7aYVfJnMNL2XRRiwQZSjYozGa8VY9
	osgMpfqZDNV4awIWoOi7N46Hmwp0bTwL3dmjyc1HxcVbzSrIZKaCz+MzldAoeeGjzAwEgX5Bpz1
	i+X0RGDAbsCsaLKnPgckDlEZDUHWWOnRoaRV4jw==
X-Google-Smtp-Source: AGHT+IFkE8DQwyCj3o5jxhZZChCPfs/heM6LGJLIaFfgGkAUVO7wCCuZJPaCHqr48cEbTVMpVAMjeT1LwCMTCZfprkA=
X-Received: by 2002:a05:6e02:1a01:b0:36b:31d2:f148 with SMTP id
 e9e14a558f8ab-36cb7757227mr129234915ab.15.1715753999877; Tue, 14 May 2024
 23:19:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <PH7PR20MB4962C6D8FD6989BC79F9483FBB1D2@PH7PR20MB4962.namprd20.prod.outlook.com>
 <IA1PR20MB4953F852CB7A9C5FE45E18EBBB1D2@IA1PR20MB4953.namprd20.prod.outlook.com>
In-Reply-To: <IA1PR20MB4953F852CB7A9C5FE45E18EBBB1D2@IA1PR20MB4953.namprd20.prod.outlook.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 15 May 2024 11:49:48 +0530
Message-ID: <CAAhSdy2uSAA4TLmCvjuLsZT26wJyCQ0L61m5vg3BbBCSvHxVqg@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: hwmon: Add Sophgo SG2042 external
 hardware monitor support
To: Inochi Amaoto <inochiama@outlook.com>
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, linux-hwmon@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, May 5, 2024 at 6:48=E2=80=AFAM Inochi Amaoto <inochiama@outlook.com=
> wrote:
>
> Due to the design, Sophgo SG2042 use an external MCU to provide
> hardware information, thermal information and reset control.
>
> Add bindings for this monitor device.
>
> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Applied this patch to the riscv/opensbi repo.

Thanks,
Anup

> ---
>  .../hwmon/sophgo,sg2042-hwmon-mcu.yaml        | 43 +++++++++++++++++++
>  1 file changed, 43 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/hwmon/sophgo,sg2042=
-hwmon-mcu.yaml
>
> diff --git a/Documentation/devicetree/bindings/hwmon/sophgo,sg2042-hwmon-=
mcu.yaml b/Documentation/devicetree/bindings/hwmon/sophgo,sg2042-hwmon-mcu.=
yaml
> new file mode 100644
> index 000000000000..f0667ac41d75
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/sophgo,sg2042-hwmon-mcu.yam=
l
> @@ -0,0 +1,43 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/hwmon/sophgo,sg2042-hwmon-mcu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sophgo SG2042 onboard MCU support
> +
> +maintainers:
> +  - Inochi Amaoto <inochiama@outlook.com>
> +
> +properties:
> +  compatible:
> +    const: sophgo,sg2042-hwmon-mcu
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#thermal-sensor-cells":
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#thermal-sensor-cells"
> +
> +allOf:
> +  - $ref: /schemas/thermal/thermal-sensor.yaml#
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        hwmon@17 {
> +            compatible =3D "sophgo,sg2042-hwmon-mcu";
> +            reg =3D <0x17>;
> +            #thermal-sensor-cells =3D <1>;
> +        };
> +    };
> --
> 2.45.0
>
>

