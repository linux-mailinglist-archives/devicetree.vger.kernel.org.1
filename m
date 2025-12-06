Return-Path: <devicetree+bounces-244934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B48CAA4F1
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 12:19:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4AB8430D9868
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 11:19:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE3EF2D6E74;
	Sat,  6 Dec 2025 11:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="OJDgA6oj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B89323E35F
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 11:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765019964; cv=none; b=BN0aJ6VsfBXNQ3QEUedQcImPzwgZ58Kmrj+NDq9CzPgQ5nZl8lWSvp8lenz7aDn4XvsvV4CsNJM4DGFJrSLqGPL8gGeR6HgDbDsjcSfg4ud+OS92GVx3XXcC0CdCAiWs3qpard9oWpaRO2VQK0pLJZcbrbe/B/sA7xl0PNeP9C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765019964; c=relaxed/simple;
	bh=PbeuJZyFzzh09MahW+fNbQ6dbZBeTk2W/c8sGOLB4Mg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IrE+LiDZLy83zRDWtoHg0zNSvs5grBsZqN4zEwEKIFSJWlU5+Sy3ggggp3CltPgtRUSMPw3V79hp7Gj6vLRctwOTZiXrsAHh80TmzYc1dtK9lRq2vHKH+54nRbZeXuJIyLgkhuxacmAyR2tetMFy5qRQB3vxW+vFTmtlhun5CQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=OJDgA6oj; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47774d3536dso28620945e9.0
        for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 03:19:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1765019961; x=1765624761; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y+tHfftO48W6nfjgJOb4B4hvebCxVDzsjtXa/TDx3TU=;
        b=OJDgA6oj64sk4WwAVoYHHxwQoWPJeh7Eb0S37umP6d4GVM3rq/AMUPARJ1NISxWo5w
         g/FJFn2SQ4YFO0HJKizWp8mpQeOfq02W3XrkXnehPJ/27WjA4Yutorz3jtgGu5G0oirS
         cZTo/a4o7ohNgp9j8Getub8THRv7ILokVxyXDbfnib5Qm58rmp7SIWKGMI+XGaYcXadS
         CLQZjSx6ZDv3V3Gd8eQ3ze0bebMW50y8L+7Gf1EdKtqnVi6UbBXvS6zApGJ0E2DjWKhJ
         Ir6lYg1p/fUG8bZxhAzi6bCiUMvPpUFclRTv8Vj+w4tqNpntJE851XgaV6bL2KkWKLbm
         ld7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765019961; x=1765624761;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y+tHfftO48W6nfjgJOb4B4hvebCxVDzsjtXa/TDx3TU=;
        b=Al4nJZHNBh3+8iL/Zs2h4Zk8xjVnrY4VjYCdCnGP16rxFJdVu4iYwKEGF/bg4j2Q6H
         iRT/PR+eMUBTgP6uDnSLrsH8goW2UDBdGki/k1f5I2/Ol74bgDCJPhmwWSZSwha3RMnW
         zaEuBhsxO+IHIHlCW5S3EjkZLV/SMLdnD0uVjpCH1BpXuVX1dCqmJuWhjgERzWbj2se2
         rHuiP7JXn1jPchVvoNJoDngdK3bK7C3tj45lyTjVBg4oyzteDDhPTTmgTUfSkQWpCEbg
         krb0plKZwD8I0jczI9Vrq9fV1elx9R0bmqaE6UrzU89S9bxxCiQD82rPF3q4+WYPdPHh
         S0rw==
X-Forwarded-Encrypted: i=1; AJvYcCWRearCqnetZjnOZfTsELVe9kbMBXpKZumxNQP3vCTl/b4vlGAMGOfBA2Wp2dQWM4wjmqpIjmB6NvgT@vger.kernel.org
X-Gm-Message-State: AOJu0YwkPVfpoIeJKIZ+MSiTqASYJLQtq6vhuAgUJtHsAN4ekWAYYAL8
	uifOhkqsnhTW4VDmSKZH1xFKNEMF1aQ3Nfy9kPo57YjJSw+EzMKrbVPtt3IfdfD6xEM=
X-Gm-Gg: ASbGncsJY2XAWKC1sQd4MlXrEg9MWIaHnBwS/4ftJ/RJmq0zQlcoqDS1QM9Ih12gpuj
	I6Mid+weq6mpI0kYCY31qZca1hKXLZEpH5rFLIHV2b8xXfh4saIacU12mI3gSfolbz7WmFgLnwF
	4uK0sXem1/Yb90mWgF8pnQbB83XK5vCH7+RS1MAnG8MtIMwPvfCA7+sSrH7J4gkfi6pxpnn43rd
	Gzef47o4vEQrGyPVF7esp75hsV8vjgveh6QVa30M1UYPqcUYnBhU/LvmK/k48k4wqr4y66/gzd8
	uXQams5nay9B0JSLShny2bHsEO26PDvUH5j2sMmSuMAPyUBx80hXW7fcsQUqPF11C5BtMBe3exy
	4zHB8l7ShNbACMKZF79OJc4nGiSmbMahogvP/1k4NgBkF84t8xtNTaP1vzTHNlnra+XMoNklbm4
	vQskYq9iT/3V0P7RiejHo=
X-Google-Smtp-Source: AGHT+IFQhZEwtnesdZtzEMw60QGuto1Jk8aN5Q0uD1nL300gD8ap+hhiRTO0P76q1MY51cduyxt10w==
X-Received: by 2002:a05:600c:a11b:b0:477:a71c:d200 with SMTP id 5b1f17b1804b1-4792eb5e5b9mr87841915e9.11.1765019961379;
        Sat, 06 Dec 2025 03:19:21 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47930c747b8sm133725725e9.9.2025.12.06.03.19.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Dec 2025 03:19:20 -0800 (PST)
Message-ID: <5afbf96a-c87f-43cb-8cd1-d7c9970bfd07@tuxon.dev>
Date: Sat, 6 Dec 2025 13:19:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] dt-bindings: clock: mpfs-ccc: Add pic64gx
 compatibility
To: Conor Dooley <conor@kernel.org>, linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor.dooley@microchip.com>,
 Daire McNamara <daire.mcnamara@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
References: <20251121-tartar-drew-ba31c5ec9192@spud>
 <20251121-trade-slacked-5fc7c1139cb2@spud>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20251121-trade-slacked-5fc7c1139cb2@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11/21/25 15:44, Conor Dooley wrote:
> From: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
> 
> pic64gx SoC Clock Conditioning Circuitry is compatibles
> with the Polarfire SoC
> 
> Signed-off-by: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

> ---
>  .../devicetree/bindings/clock/microchip,mpfs-ccc.yaml       | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/microchip,mpfs-ccc.yaml b/Documentation/devicetree/bindings/clock/microchip,mpfs-ccc.yaml
> index f1770360798f..9a6b50527c42 100644
> --- a/Documentation/devicetree/bindings/clock/microchip,mpfs-ccc.yaml
> +++ b/Documentation/devicetree/bindings/clock/microchip,mpfs-ccc.yaml
> @@ -17,7 +17,11 @@ description: |
>  
>  properties:
>    compatible:
> -    const: microchip,mpfs-ccc
> +    oneOf:
> +      - items:
> +          - const: microchip,pic64gx-ccc
> +          - const: microchip,mpfs-ccc
> +      - const: microchip,mpfs-ccc
>  
>    reg:
>      items:


