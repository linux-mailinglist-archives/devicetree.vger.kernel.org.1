Return-Path: <devicetree+bounces-171699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 445E2A9FDDF
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 01:46:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC4BC3AB3D1
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 23:45:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CE27213245;
	Mon, 28 Apr 2025 23:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="FUDiRG1l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C8B7082D
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 23:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745883964; cv=none; b=F9YxdRUjEKpB2/eCr3hXkVaJF7Ixh/mWURSGoHeqM8qdGCV1drOu2jFZ6QEST2U/r3LKg60geFe2PrVuUwPTJZdQw7UBWnnEXzJn1wYVVjELqiKCM1yNLiW9yUl9uCwWv/BHERqqfDsPMyOopH+iS7FPs5f6hGEmdin2BC2Ek2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745883964; c=relaxed/simple;
	bh=by91SW8m0U7AG3e8tvW7sekaz3lZRJOY/esWgdxCMJM=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gQrh0izVK0JwaqxZqnWYp7Xy0J3Rfc+AM3EuzHMefgK5QT9UTSHA8k498PZfvDKVkULNDNx3Qr2ejLPL9+fQc4l5CFwi+us8h6CedoiezvqM3Nr8BXC6BqHeRjJ/2mlxUeuztScIcXtuA0VsaU52jCEoDpeErxigeSVQV720LPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=FUDiRG1l; arc=none smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-6f0c30a1ca3so63994476d6.1
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 16:46:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745883961; x=1746488761; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2VE8Je+jYUaDWSmFxs8ADixhFpj6cC8hZZDrQSJNeCU=;
        b=FUDiRG1lo4/H91J1D8aDQihTEgARVJGqF7zohvZZW1KquyaU/yMAp0KXM7IRHfRrK2
         65Vx5HIc+SSpWeWh1osws/xAHIIhGu+c4jfqjKTZkZntKm6KqUFj6BnTbLLad8v910FA
         isHK0uX+2tc6F/uF0Qbw7tH2L6IjcaZn1SVPQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745883961; x=1746488761;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2VE8Je+jYUaDWSmFxs8ADixhFpj6cC8hZZDrQSJNeCU=;
        b=TLgOXiV+j/x9cq8H/7jBiGHBqgB9bAXk8i4qK6LWFJqIa+E8ICEjpWd4P6SAq5VnA8
         AGWvUXy7GgufFxIO4A2jt9L81aPZBp+ZJK8WDlCbrXWC/LivpiScSqrO8w4VQr5p2c9+
         5SC43QfqCAQ/2p7HbGtvJxaQIyR8W+16xBi7khc4e63l8hwigvH7KORjdaWZXyAGyWBF
         06N0ftdJaaNtBsqIpIf6TjJDVd/V7f/jLOwyc7GMqOdDRz3aAWFRymtNmv8xKjFeZ7m9
         LDj0NnTdyThCT2Z3bIDriEw2KVwWU0stKAA2Wjyy+vSwnfLDTie8HNiXE+jsu+IgqzL5
         5weQ==
X-Gm-Message-State: AOJu0YwytlzsomMOen3vO7vxmpcaLvU9d4gRcIC7gXEWqeoB33SdaO87
	JFT49Y3cyOfRwFSI+/tEli/oARidXHzReoS9e2n4ZmQz5KvlfX81NX41HAlDAv6EY/G13aA5gnE
	xlcRCIdIe3DWWB5CGEMGlSTAoUwxWtOcClcdL
X-Gm-Gg: ASbGncugaSSJDX31H5w4GPJoP4RpcTRFC/0fTJDLFDlaUc6mi55HO14QJHXenSdprVv
	Om9ntPYqCtyNke2gbiA4pbCFZN1IA8C3qXw89bAvg53IYljtUCv0p3Nx5Hu3cWoFByaWQvJLEo6
	FDUFk3oUWKk6z3wy5gHYjrmR+KaOQNnf84B7RHwmNPeqtS0hD6FA==
X-Google-Smtp-Source: AGHT+IFT3g0BYPOptg37k21ZoiyICUp9dUnCNnXOjhOeBejDgO2ZHYly94hoOyehQ8LteVC6kVaQQcW7F1AvS61YrSk=
X-Received: by 2002:ad4:5ccc:0:b0:6d8:ada3:26c9 with SMTP id
 6a1803df08f44-6f4f1ba925amr20159256d6.10.1745883961685; Mon, 28 Apr 2025
 16:46:01 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 28 Apr 2025 16:45:59 -0700
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 28 Apr 2025 16:45:59 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20250422082957.2058229-4-treapking@chromium.org>
References: <20250422082957.2058229-1-treapking@chromium.org> <20250422082957.2058229-4-treapking@chromium.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.12.dev8+g17a99a841c4b
Date: Mon, 28 Apr 2025 16:45:59 -0700
X-Gm-Features: ATxdqUGhJ84Msn7xBIME_dKVHCYNJ-hlMGgL-TiHFD5bx9lm_Zsl3wWl5GrA3mA
Message-ID: <CAE-0n52cwBxJ3gYzSi1+nNcRRSgbMToYBFLJwdVWSMOxBmUN1A@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: usb: realtek,rts5411: Adapt usb-hub.yaml
To: Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Matthias Kaehlcke <mka@chromium.org>, 
	Pin-yen Lin <treapking@chromium.org>, Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Pin-yen Lin (2025-04-22 01:28:29)
> diff --git a/Documentation/devicetree/bindings/usb/realtek,rts5411.yaml b/Documentation/devicetree/bindings/usb/realtek,rts5411.yaml
> index 6577a61cc07531..a020afaf2d6e7a 100644
> --- a/Documentation/devicetree/bindings/usb/realtek,rts5411.yaml
> +++ b/Documentation/devicetree/bindings/usb/realtek,rts5411.yaml
> @@ -10,7 +10,7 @@ maintainers:
>    - Matthias Kaehlcke <mka@chromium.org>
>
>  allOf:
> -  - $ref: usb-device.yaml#
> +  - $ref: usb-hub.yaml#
>
>  properties:
>    compatible:
> @@ -19,61 +19,35 @@ properties:
[...]
>
> -      port@4:
> -        $ref: /schemas/graph.yaml#/properties/port
> -        description:
> -          4th downstream facing USB port
> -
> -patternProperties:
> -  '^.*@[1-4]$':
> -    description: The hard wired USB devices
> -    type: object
> -    $ref: /schemas/usb/usb-device.yaml
> -    additionalProperties: true
> +additionalProperties:
> +  properties:
> +    reg:
> +      minimum: 1
> +      maximum: 4

Is this limiting the 'reg' property of the hub node and not the child
usb-device nodes?

>
>  required:
>    - peer-hub
>    - compatible
>    - reg

Can 'reg' be dropped because usb-hub.yaml requires it?

