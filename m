Return-Path: <devicetree+bounces-18136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B837F54F1
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 00:44:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2DC62816D9
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 23:44:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C54BA2137F;
	Wed, 22 Nov 2023 23:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD4F4110
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 15:44:27 -0800 (PST)
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-285636785ddso75151a91.3
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 15:44:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700696667; x=1701301467;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2P0J5SttnkgeWXDvl05+wv/ksdIcmVI4zrsH7P/axnE=;
        b=ifDSOuhoHBsJ2XPQNMZQhxO+6ZTuuRFPFTy4rrsdPyECLEPBjP/+cxyEurlb/8qDce
         8qNqg5Lew4+DRTUyd9kkU/LfrndwFkq764XScepYileqNBA0gQ03XiiZXK6YDHoTuZSB
         97ctDXr+yKbX3Jq873WrNYGYkx7rxrkgVvw8QT3O78HyZnZgZVfTaJZ1UwD083OdBHsA
         DtkPn9PPWWzfo45D3ZyiUca1EX+T99aoXH9NKf5lvNWGsv5+bFOwZy0eB9Y7gHYtOXNi
         zm2HKU2Sxo/G5NkcL3XZufuYRTXFDpuUKcO3eD3ZdCuO14BlRKraWdqPOPVjhzgWXQXA
         DijA==
X-Gm-Message-State: AOJu0YydITOqN9BgXobXwR6mEi8v5CbM7MSE8XKhC3AumSAPMjF6BML6
	QRC8luQ6a1wonsBKK+spjWLcmw==
X-Google-Smtp-Source: AGHT+IEp+LZXXxf+QQTkTKPl8I5OZqH8VCX7huviDwbnywfNsNaCjTIJJEtqg/msu4rAk83G4GLD2A==
X-Received: by 2002:a17:90b:1c12:b0:285:657b:f17a with SMTP id oc18-20020a17090b1c1200b00285657bf17amr34930pjb.15.1700696667275;
        Wed, 22 Nov 2023 15:44:27 -0800 (PST)
Received: from localhost (75-172-121-199.tukw.qwest.net. [75.172.121.199])
        by smtp.gmail.com with ESMTPSA id j9-20020a17090276c900b001c59f23a3fesm235520plt.251.2023.11.22.15.44.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 15:44:26 -0800 (PST)
From: Kevin Hilman <khilman@kernel.org>
To: =?utf-8?Q?Th=C3=A9o?= Lebrun <theo.lebrun@bootlin.com>, Greg
 Kroah-Hartman
 <gregkh@linuxfoundation.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Roger Quadros <rogerq@kernel.org>, Peter Chen
 <peter.chen@kernel.org>, Pawel Laszczak <pawell@cadence.com>, Nishanth
 Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo
 <kristo@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Thomas
 Petazzoni <thomas.petazzoni@bootlin.com>, =?utf-8?Q?Gr=C3=A9gory?= Clement
 <gregory.clement@bootlin.com>, =?utf-8?Q?Th=C3=A9o?= Lebrun
 <theo.lebrun@bootlin.com>,
 Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2 0/7] usb: cdns: fix suspend on J7200 by assuming
 reset-on-resume
In-Reply-To: <20231120-j7200-usb-suspend-v2-0-038c7e4a3df4@bootlin.com>
References: <20231120-j7200-usb-suspend-v2-0-038c7e4a3df4@bootlin.com>
Date: Wed, 22 Nov 2023 15:44:22 -0800
Message-ID: <7ho7fle4kp.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Th=C3=A9o Lebrun <theo.lebrun@bootlin.com> writes:

> Hi,
>
> Suspend on the TI J7200 platform is broken currently. There are two
> components that need to be patched so that they assume reset on
> resume: (1) the TI wrapper cdns3-ti & (2) the HOST role of the
> controller.
>
> About (1): the TI wrapper only did its hardware configuration at probe
> time. Update so that it is done at resume on J7200 SoC.
>
> About (2): signal from cdns3-ti to cdns3 host to xHCI that the
> controller resets on resume. This way we avoid the following warning:
>
>    xhci-hcd xhci-hcd.1.auto: xHC error in resume, USBSTS 0x401, Reinit
>
> Strictly speaking (2) is not required to have working suspend on J7200;
> its only goal is to silence this warning.
>
> Those patches have been tested on the TI J7200 EVM GP. No need to
> mention that other patches are required for S2R to work, but those will
> be sent later down the road. Those USB patches are rather standalone.
>
> Thanks,
> Th=C3=A9o
>
> --
> Th=C3=A9o Lebrun, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>
> ---
> Changes in v2:
> - Remove runtime PM from cdns3-ti; it brings nothing. That means our
>   cdns3-ti suspend/resume patch is simpler; there is no need to handle
>   runtime PM at suspend/resume.

Sorry I sent comments on v2 before I noticed v3 was out, but this is not
a good idea IMO.  I sent more detailed comment on that specific patch.

Kevin

