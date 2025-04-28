Return-Path: <devicetree+bounces-171700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B690DA9FDE2
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 01:48:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 23522465E58
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 23:48:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A05832135CE;
	Mon, 28 Apr 2025 23:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="a7H/flpV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06ACE8BE7
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 23:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745884079; cv=none; b=INW4dyG9zYqdHw99ADm4dI3ty17Y1Rkk5Tla35rNHpBQt0omCwACRaqE0eJO3Jax9ii1K/Jf7/h2z4t2zhgLwIkz6s7Oy4sQ7yoowcisJoNxR0C4APvQVuI0ls5SA7J5Dh28/iClVocswhor3LZW5O+X7vyaATMoP26uf/GvxIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745884079; c=relaxed/simple;
	bh=WZj44QHQBnk6/jl3xb6TT+AiJGLpd1Hrwoo45YNQDy0=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FCVMrQrOblfpbauH3R9JRuRD/HJ+9+BYwWg8kwsmg480jLw83bnSGYz0MUaRjRMdYjnNsd876JX8FZ8gmaWa4FGDT2sEmZNglXOBeSlo9+1IgVjKATSny6XHYx52ho7+1aCdGkwCzORrRN+u+R6Cy5Nb9+/qalyS+3T8up4i4tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=a7H/flpV; arc=none smtp.client-ip=209.85.222.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-7c58974ed57so592304885a.2
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 16:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745884077; x=1746488877; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ak6BhAJ6X0RHy54tG0/xdLDkXO0ZMwVkyD18C7XTCJw=;
        b=a7H/flpVap2HExlt3SXbVZznTZrAdeg9AAZDlh5Eo9+KPK8HjYtwsO5DHT5+2iFX2i
         Lw8Qm+Uoh6rcJMvWpzQ50ZOIN+M33MTOkFLWygCAEhUgLS3T4+6DWA8t/SLCu2b91nD1
         Moy4Y2yHBO0RHgGBCmzFWc+aQMomHOFH1kSeQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745884077; x=1746488877;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ak6BhAJ6X0RHy54tG0/xdLDkXO0ZMwVkyD18C7XTCJw=;
        b=tNlo+lsPVkE50gtBrM7icWXKCNduyInrev4PzplNOU+xmtoGafy/21LCms9qbEEUZJ
         TKEqA4mTkzv66GN4Nn/B3xOIiDTka+dP31SPd7yByBIhQn2pAzaJPsYSY9wkYxvYOhOS
         1GsfRYhhCmoCOKRwcgvP0IsAQ3HpN9n4kpRLHt+SgAiPTySK2Rf6hq3zrOVoMFIKVHDV
         HOJEaQQo6YhNR6ZSU1PKGlNZ5I0ePAHk9SQ/Z9466R5HGWjH4ol66TSC/PLxvG7WK/vu
         nxlixSzv47r0+3Ty7pWqAJXjWf9NoZNVfHs9kL+zVxtJaWmhELQxbFAwRxdlr3gSbBDn
         ynQA==
X-Gm-Message-State: AOJu0YxbD09MkadJH23aSDodymWUdkJRSZs5YSYIZq+AmSUFO2a9sGzf
	FXj7ubs9BOKFw6XYaUJBAn8LYwxXvUYPo21NfcqhWH0S1dEE/r0QxefcTxZ9tOAziTvNOh2exR1
	Zjr+1OqeBCQi7CrHvvK/gTIuXQ3dYOqp74Eva
X-Gm-Gg: ASbGncskc/EgUm6ll0t9dnOSu9ZF6Z2j4YqEovTjUtkvHU0bjxTSaHgFYcAbIwOcnZo
	cUP043EoanKjTki5lGIShItDD8fHbrSF44YVIMAU8U22BCXr6hWGXtt6YYFj6loOASPoCpMT7SS
	b5sULA/0bJkEE0yFpFcSeb1E7fazjIBXEl5f3MiIO1K91d8THRwVsb7+xoNxfl
X-Google-Smtp-Source: AGHT+IEOwwLCnV38tgYzdwBpHh/iuQ/Dg5WIoTl/PdYaLVHLxP22Y6T/XnZs7REl2/ug1JMK2C7MjZvEkwHCSYTEpTA=
X-Received: by 2002:a05:620a:d95:b0:7c7:b4de:12f0 with SMTP id
 af79cd13be357-7cabe6042dbmr154141985a.32.1745884076974; Mon, 28 Apr 2025
 16:47:56 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 28 Apr 2025 16:47:56 -0700
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 28 Apr 2025 16:47:56 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20250422082957.2058229-2-treapking@chromium.org>
References: <20250422082957.2058229-1-treapking@chromium.org> <20250422082957.2058229-2-treapking@chromium.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.12.dev8+g17a99a841c4b
Date: Mon, 28 Apr 2025 16:47:56 -0700
X-Gm-Features: ATxdqUGt6hXcRm7OLJk9Kd93IRb1IeGk61Kri8RoIXMe8x8uCjahMbyGOUSl8Co
Message-ID: <CAE-0n52fsf37Xg+Qpj-VwAiUO-kOWFRXKtqLL4VmxtCzAck2dA@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: usb: Introduce usb-hub.yaml
To: Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Matthias Kaehlcke <mka@chromium.org>, 
	Pin-yen Lin <treapking@chromium.org>, Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Pin-yen Lin (2025-04-22 01:28:27)
> diff --git a/Documentation/devicetree/bindings/usb/usb-hub.yaml b/Documentation/devicetree/bindings/usb/usb-hub.yaml
> new file mode 100644
> index 00000000000000..5238ab10576308
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/usb-hub.yaml
> @@ -0,0 +1,84 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/usb-hub.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Generic USB Hub
> +
> +maintainers:
> +  - Pin-yen Lin <treapking@chromium.org>
> +
> +allOf:
> +  - $ref: usb-device.yaml#
> +
> +properties:
> +  '#address-cells':
> +    const: 1
> +
> +  peer-hub:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      phandle to the peer hub on the controller.
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    description:
> +      The downstream facing USB ports
> +
> +    patternProperties:
> +      "^port@[1-9a-f][0-9a-f]*$":
> +        $ref: /schemas/graph.yaml#/properties/port
> +
> +patternProperties:
> +  '^.*@[1-9a-f][0-9a-f]*$':
> +    description: The hard wired USB devices
> +    type: object
> +    $ref: /schemas/usb/usb-device.yaml
> +    additionalProperties: true
> +
> +required:
> +  - compatible
> +  - reg

Can 'reg' be dropped because usb-device.yaml requires it?

