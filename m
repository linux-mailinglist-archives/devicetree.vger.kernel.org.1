Return-Path: <devicetree+bounces-125607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 327319DEB7B
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 18:11:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5F9528241B
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 17:11:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5DC715622E;
	Fri, 29 Nov 2024 17:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="bDOwkwrp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CABC615539A
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 17:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732900284; cv=none; b=XWQJ4fjZz/Q/0nJAK615nkT+kG/rnPFxf0w4d/eIjkje+nN1U6m77rOYFlHSQan7zZ70dvImfGzpluBvtd8OP/fQJf6HbmMaGe1Q+KEtR7UN0ILIA+C7k64nme1Bpk97/OlZHmwjPVd0RU+ExX9woXhsI9DpRmWNO6DiQST0Tug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732900284; c=relaxed/simple;
	bh=u4VeqDNvTWRAhnRMPvx5ZxHgDaIe1hpfxIJoqfWrVgE=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=faIIEEMg8T92sT2m1IlVH2lQudyK+5iwQPKjZCpT+7l7mt7i+ahdVIVwJGtXjEpyIM9ObWEXVH+3uyVB2U6PgqXgGxLO5EXbHEQXX4htQYa76wM9xUmvfoal9We9EyUvratuRWiJCXyGOTDcmvZXCJ7jKrzOLE61m4tBxZp7jQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=bDOwkwrp; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53df80eeeedso2134690e87.2
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 09:11:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1732900281; x=1733505081; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wKStJ4JMYm6/f7jAdkMonmjOHy/XStYH3AHNh9QPw+k=;
        b=bDOwkwrp57+hdJuQM2yuTXFuR2uJQz4KquU51t8PIHqO8eQiDyD9aQNlzcorNorPaT
         xp7YOLadRHiHqNeLg9IJY6J/ulFR/j/syM1NdPODXmEbzVOl5mUR/WOlAKf2q/W7pRWF
         OVISodhH2VoKdzyWp6LX1fXe+h47Uvf/jzI/K4qJMK0C/xvuS5ytvS7xf5oYa3VTLyd7
         VWtiSLzoTH2KjPpjC534rVGaPgyoky1fRIlQrXwp05orw95J08DpqUP7G6xtWuVpeMBw
         wDC8XOyxR1Qfs1jSuK0KTWCb5rsWjIdgrxuwVXnYBHN2hXoRrC0USPiYqn3iDJLpFYf4
         VHpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732900281; x=1733505081;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wKStJ4JMYm6/f7jAdkMonmjOHy/XStYH3AHNh9QPw+k=;
        b=W9dl947sfzFLernF6VL/dQrRiwqf4N5bTFVKUztGWgLdJ4z+kKVR7YdPmXS9rwffNA
         zR6UHiNGT6JM8lA7sMlkd90NnVSMhJ5n98qZW7waDsAN42ab4V/hPnt+9HkccVcufXQv
         X9Cqok2Xdo7ATnvvyCwxKblpyw1648X5WW5+CZogHYM32tZ/SY6q6Aan/v6Y/9qZ5toh
         M92qKWOpDCoFJoQKqGuDo/rb8+eAr0KKB49GeOaiyNHWIUX4CkAmh3iclJaRiuodjLOZ
         u/gi7TFZYUmuWa3dfYac1anQrSg1k2vpjJ8pgFTsFUtFt645vcO0ZB50BHMpHZMGASd/
         39QQ==
X-Forwarded-Encrypted: i=1; AJvYcCWrTaSvYzKSQa4mjX7+ULhdadlx1dOw6tzraHvg+IXHE08wLZ11UL4nsNadBreMxDTsBfrih7r79mjY@vger.kernel.org
X-Gm-Message-State: AOJu0YyNrwyowWRy8Ph7o6qUaILWufE84eg4w1bmEVSIB0mHy6pV+j4R
	E4OjbOYzMBRxPrfstzojTKV2HwaEt4xsaARouSFQSrORwbeeERMYdjWjDnKTCn4=
X-Gm-Gg: ASbGnctJwS0yiD0ejcg8gmn7X4CZyR/8114FpQKV3D3n6RuGrFFZyYjnYqncUrc1Ibr
	8znVqueACDtfpjRKP9bp+4Nq793CiEHvflYOMZZiIuafEfLojeSo68Wwi5CwR68+pFVcBVhrGmi
	T4oWyK4tf477IHXcMgFlg43UHFYhlM4PNC72YvCTRyVRPGVsgvPrmpAb1uy5Ue75/M0jZWardVV
	cdG3Et9koLfPmmmUIsN3KVxw3IdA0DcdNnA5k/OvhRpYk7HBofhzS+nph/b4a/rPcaTT487OPWT
	4oYtQB252KuxfSdX07gC
X-Google-Smtp-Source: AGHT+IHZ3oTCh7gVSsmHhrZ3fiOp7cXkhyrNMHuydkCIk2tz2qxDfVIno+QP7oK2bTxacMEqt16MJg==
X-Received: by 2002:a05:6512:39d2:b0:53d:ec9a:138f with SMTP id 2adb3069b0e04-53df0112687mr8431697e87.57.1732900280754;
        Fri, 29 Nov 2024 09:11:20 -0800 (PST)
Received: from localhost (host-79-49-220-127.retail.telecomitalia.it. [79.49.220.127])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5998e63a2sm192130166b.113.2024.11.29.09.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Nov 2024 09:11:20 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Fri, 29 Nov 2024 18:11:53 +0100
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v4 02/10] dt-bindings: pinctrl: Add RaspberryPi RP1
 gpio/pinctrl/pinmux bindings
Message-ID: <Z0n12a6irbXQomdD@apocalypse>
References: <cover.1732444746.git.andrea.porta@suse.com>
 <9b83c5ee8345e4fe26e942f343305fdddc01c59f.1732444746.git.andrea.porta@suse.com>
 <4ufubysv62v7aq53qfzxmup5agmqypdvemd24vm6eentph46qq@3kveluud3zd3>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4ufubysv62v7aq53qfzxmup5agmqypdvemd24vm6eentph46qq@3kveluud3zd3>

Hi Krzysztof,

On 08:55 Wed 27 Nov     , Krzysztof Kozlowski wrote:
> On Sun, Nov 24, 2024 at 11:51:39AM +0100, Andrea della Porta wrote:
> > +  '#interrupt-cells':
> > +    description:
> > +      Specifies the Bank number [0, 1, 2] and Flags as defined in
> > +      include/dt-bindings/interrupt-controller/irq.h.
> > +    const: 2
> > +
> > +  interrupt-controller: true
> > +
> > +patternProperties:
> > +  "-state$":
> > +    oneOf:
> > +      - $ref: "#/$defs/raspberrypi-rp1-state"
> > +      - patternProperties:
> > +          "-pins$":
> > +            $ref: "#/$defs/raspberrypi-rp1-state"
> > +        additionalProperties: false
> > +
> > +$defs:
> > +  raspberrypi-rp1-state:
> > +    allOf:
> > +      - $ref: pincfg-node.yaml#
> > +      - $ref: pinmux-node.yaml#
> > +
> > +    description:
> > +      Pin controller client devices use pin configuration subnodes (children
> > +      and grandchildren) for desired pin configuration.
> > +      Client device subnodes use below standard properties.
> > +
> > +    properties:
> > +      pins:
> > +        description:
> > +          List of gpio pins affected by the properties specified in this
> > +          subnode.
> > +        items:
> > +          pattern: "^gpio([0-9]|[1-5][0-9])$"
> 
> You have 54 GPIOs, so up to 53.

Ack.

> 
> Use also consistent quotes, either ' or ".

Ack.

> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Many thanks,
Andrea

> 
> Best regards,
> Krzysztof
> 

