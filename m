Return-Path: <devicetree+bounces-111726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1613A99FC28
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 01:14:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A0041C242A7
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 23:14:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF2221D63CD;
	Tue, 15 Oct 2024 23:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="Lk9BQRUQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f65.google.com (mail-oo1-f65.google.com [209.85.161.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1B7173357
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 23:14:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729034073; cv=none; b=fDoRFPdNNHl6m04dNZWLzADhDJ6YqhAqTevWR24bQ396j+qxLStH/Mh9mAC1JYaZ9dD8qi+jTt2aZm+5I4DG0dUOEE4ax1JntcDmximhPnNJSeBvCwkelWKhyJaM9VROO1bFkG3Rp+zAO0A1SIJ93ds2r6eQTHeHl589K1d4+MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729034073; c=relaxed/simple;
	bh=ogEHVbzNyH+HCUff957laD+Ka1kfBjY9rJxFIsdlQK8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TXNtN3R6M/RD/n5IS65QCbGIun4ZOKN4yWhUZVCmWD0GHn8eXeSVWlIjBBeE8fzeczgG/sUiGXLyUmXWZzVD33MdO7OaNmXbnsdvQKFlXvN+mcwzmEl5T+bd7dCtA08Dc1rzutgfxd9L0XD+njPdgFK1sI/TDU8jbuJLs29Xhj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=Lk9BQRUQ; arc=none smtp.client-ip=209.85.161.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-oo1-f65.google.com with SMTP id 006d021491bc7-5eb5be68c7dso248621eaf.0
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 16:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1729034071; x=1729638871; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a40c0dRP4QAt5OMalDM+OzWwPLNS5aBFNSHZTU61OvQ=;
        b=Lk9BQRUQ91hPXmS8YCZ+4EoND0SbWwWMm9fXKyVhOjFlm5jbeNSp+tLN7rV7QKimrE
         p33JLelQqsZo3SFMjfcjdCnqjtpi0S2JmmLCmh41gKBflmiGJsCJfa2wk1BMkUqG8EjV
         qpwKgJZsoTCWOetol71JCd4OgrBhxVGyo7MXADrm7TatGO7yY7nlROFCvDdeuh/dBGxy
         uSukArOoPqd2XyrSWoq0eoVHTFEoomU/gSUIkcw/dvIPaiDaYkXSaz6YfLWdDi2nAV+N
         ykrWXW7We2nkSKPDMNmmNiYNU0cFSiPXYtWzwV8P3A31ZI3Y74I9y4aYKvOrerjyD3x5
         6Uyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729034071; x=1729638871;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a40c0dRP4QAt5OMalDM+OzWwPLNS5aBFNSHZTU61OvQ=;
        b=Yqsrp9x8txTuClNCDvmwQYmajv2w1hrb5JftPxfYnagpAU440XWuT0nrDcct4Eihrd
         gFJA8Y7Kk0MF36UjxKN/buy1nQhk8Fg/lAsL9UZ28cKPORf1NUQl6Ys/iEKmfbhO+yI4
         nBIC7cHJl5dGhCM0RpvlnX4VaUk/7E9vok3R3YoTqAI01+Rb1T8ymHXypfgTKZssITm9
         kRpL3p/x+n1GmVl1UBklJMWkwkpRLfOpQ7mJPJMxq2z997xtidKY/nhW4X7Rps+Kxpk+
         nKQ3RaHMQVpUcq9+GW/R1ZvpJF7Xh+Yx2pUSBgmBRjVdzhvIksQS4I/m9QToxsDDwxhx
         1j2Q==
X-Forwarded-Encrypted: i=1; AJvYcCV2lT5+Kp54vzBZS8Beb/hLdmLrg/3pkQxEOhAJS+MFs9GyMIUtVakgc36xqB+fa6xN+xz9W8iz7S2r@vger.kernel.org
X-Gm-Message-State: AOJu0Yzx3x+PKxqrqHIf8A9hiLP0YGyMNtS01CM4bwkqnMDQugBT+3cn
	4aCmwInBOVQu7TaHGeQYtJKLCDS5Fo09Q0CH9E3sVw5hlceXgOmepthHjhYoAWA=
X-Google-Smtp-Source: AGHT+IHNlTuRpKyeCtWEZlsUbxvzEehXIl6EErApjPAepLYlHOvauOTDI561VloKg9k2Xc4tF9TEow==
X-Received: by 2002:a05:6870:b253:b0:277:e5a5:3362 with SMTP id 586e51a60fabf-2886df68271mr12434294fac.30.1729034070828;
        Tue, 15 Oct 2024 16:14:30 -0700 (PDT)
Received: from [100.64.0.1] ([147.124.94.167])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71801832e71sm313670a34.37.2024.10.15.16.14.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2024 16:14:30 -0700 (PDT)
Message-ID: <f1c1af8c-18e0-433d-a61c-90080919378f@sifive.com>
Date: Tue, 15 Oct 2024 18:14:28 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] dt-bindings: mailbox: Add thead,th1520-mailbox
 bindings
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, drew@pdp7.com,
 guoren@kernel.org, wefu@redhat.com, jassisinghbrar@gmail.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 m.szyprowski@samsung.com
References: <20241014123314.1231517-1-m.wilczynski@samsung.com>
 <CGME20241014123411eucas1p1f93d64ac9db9a6f77982500d4a0157f7@eucas1p1.samsung.com>
 <20241014123314.1231517-3-m.wilczynski@samsung.com>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <20241014123314.1231517-3-m.wilczynski@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Michal,

On 2024-10-14 7:33 AM, Michal Wilczynski wrote:
> Add bindings for the mailbox controller. This work is based on the vendor
> kernel. [1]
> 
> Link: https://github.com/revyos/thead-kernel.git [1]
> 
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/mailbox/thead,th1520-mbox.yaml   | 80 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 81 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/thead,th1520-mbox.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/thead,th1520-mbox.yaml b/Documentation/devicetree/bindings/mailbox/thead,th1520-mbox.yaml
> new file mode 100644
> index 000000000000..12507c426691
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mailbox/thead,th1520-mbox.yaml
> @@ -0,0 +1,80 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mailbox/thead,th1520-mbox.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: T-head TH1520 Mailbox Controller
> +
> +description:
> +  The T-head mailbox controller enables communication and coordination between
> +  cores within the SoC by passing messages (e.g., data, status, and control)
> +  through mailbox channels. It also allows one core to signal another processor
> +  using interrupts via the Interrupt Controller Unit (ICU).
> +
> +maintainers:
> +  - Michal Wilczynski <m.wilczynski@samsung.com>
> +
> +properties:
> +  compatible:
> +    const: thead,th1520-mbox
> +
> +  reg:
> +    items:
> +      - description: Mailbox local base address
> +      - description: Remote ICU 0 base address
> +      - description: Remote ICU 1 base address
> +      - description: Remote ICU 2 base address

From the SoC documentation, it looks like these are four different instances of
the same IP block, each containing 4 unidirectional mailbox channels and an
interrupt output. So these should be four separate nodes, no? The C910 would
receive on channels 1-3 of instance 0, and send on channel 0 of instances 1-3.

> +
> +  reg-names:
> +    items:
> +      - const: local
> +      - const: remote-icu0
> +      - const: remote-icu1
> +      - const: remote-icu2
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  '#mbox-cells':
> +    const: 2
> +    description: |
> +      Specifies the number of cells needed to encode the mailbox specifier.
> +      The mailbox specifier consists of two cells:
> +        - Destination CPU ID.
> +        - Type, which can be one of the following:
> +            - 0:
> +                - TX & RX channels share the same channel.
> +                - Equipped with 7 info registers to facilitate data sharing.
> +                - Supports IRQ for signaling.
> +            - 1:
> +                - TX & RX operate as doorbell channels.
> +                - Does not have dedicated info registers.
> +                - Lacks ACK support.

It appears that these types are not describing hardware, but the protocol used
by the Linux driver to glue two unidirectional hardware channels together to
make a virtual bidirectional channel. This is really the responsibility of the
mailbox client to know what protocol it needs, not the devicetree.

Regards,
Samuel

> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - interrupts
> +  - '#mbox-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +
> +    soc {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +      mailbox@ffffc38000 {
> +        compatible = "thead,th1520-mbox";
> +        reg = <0xff 0xffc38000 0x0 0x4000>,
> +              <0xff 0xffc44000 0x0 0x1000>,
> +              <0xff 0xffc4c000 0x0 0x1000>,
> +              <0xff 0xffc54000 0x0 0x1000>;
> +        reg-names = "local", "remote-icu0", "remote-icu1", "remote-icu2";
> +        interrupts = <28>;
> +        #mbox-cells = <2>;
> +      };
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 0655c6ba5435..7401c7cb6533 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -19951,6 +19951,7 @@ L:	linux-riscv@lists.infradead.org
>  S:	Maintained
>  T:	git https://github.com/pdp7/linux.git
>  F:	Documentation/devicetree/bindings/clock/thead,th1520-clk-ap.yaml
> +F:	Documentation/devicetree/bindings/mailbox/thead,th1520-mbox.yaml
>  F:	arch/riscv/boot/dts/thead/
>  F:	drivers/clk/thead/clk-th1520-ap.c
>  F:	drivers/mailbox/mailbox-th1520.c


