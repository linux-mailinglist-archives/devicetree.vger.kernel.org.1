Return-Path: <devicetree+bounces-18135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9134B7F54EB
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 00:43:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1026228173B
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 23:43:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57021219E8;
	Wed, 22 Nov 2023 23:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2008E19D
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 15:43:04 -0800 (PST)
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3b2e4107f47so245037b6e.2
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 15:43:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700696583; x=1701301383;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eYvKtH0uC1Xw+emGBJHmqRIg3ESjCNY6W647Zk5nRmU=;
        b=T6XKunEPIiPRS2WhCzSZIVNHALopVe2gtqw0I9QXjYq4FXaXeKKqltFC5eX8w1FSiA
         ybyXQ5rTu8ej6zuCXqJMDV1W2eX/Ebg6aa3KH14oKsY5nOqvc/NiOUq4DdDRSAF/nGE5
         i5Y68h4gdPjozPsKNMbLpI91woqPgag+tsyXjVPwnY+HeSVvPU/NY0ssOAqbFbjwG0aX
         rWXyeah1vXNNfGYAwV7rNl04J/s2I760ssqav7nhJhRlC9KflU52OEtWyecQYj7wM6/G
         I7gjJWSwe/b6rugRIDfPnXF6lZpOLlMHxNKfOOq+9uimRLOFnzpz8byMx0BB4GUrLM8g
         v9sg==
X-Gm-Message-State: AOJu0YzLPDq4+1+o6vVSp3uPIn1/HEzpDlc3FK2psN+fF34K41pGxvmk
	VtvsN4vyq9/Kmcr+ahwFnPq+3A==
X-Google-Smtp-Source: AGHT+IFB3fqlojOjhH+0cBIGDS2/UI/yhNL9SP/079Zuyp5ruQ//yt4GEIYrBmTBUBkVuIaRfwE67A==
X-Received: by 2002:a05:6808:1514:b0:3a6:fbe3:45cf with SMTP id u20-20020a056808151400b003a6fbe345cfmr4863766oiw.35.1700696582784;
        Wed, 22 Nov 2023 15:43:02 -0800 (PST)
Received: from localhost (75-172-121-199.tukw.qwest.net. [75.172.121.199])
        by smtp.gmail.com with ESMTPSA id cm12-20020a056a020a0c00b0058c1383fa8bsm62497pgb.0.2023.11.22.15.43.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 15:43:02 -0800 (PST)
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
 <theo.lebrun@bootlin.com>
Subject: Re: [PATCH v2 2/7] usb: cdns3-ti: remove runtime PM
In-Reply-To: <20231120-j7200-usb-suspend-v2-2-038c7e4a3df4@bootlin.com>
References: <20231120-j7200-usb-suspend-v2-0-038c7e4a3df4@bootlin.com>
 <20231120-j7200-usb-suspend-v2-2-038c7e4a3df4@bootlin.com>
Date: Wed, 22 Nov 2023 15:42:56 -0800
Message-ID: <7hsf4xe4n3.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Th=C3=A9o Lebrun <theo.lebrun@bootlin.com> writes:

> The driver does not use RPM. It enables it & gets a reference at probe.
> It then undoes that on probe error or at remove.

...which is a fairly standard thing to do for a rudimentary runtime PM
support on platforms that use power domains.

This will likely (almost surely) break other platforms.

Without a runtime PM get call, the power domain that this device is in
could be powered off without this driver ever knowing about it, causing
a crash as soon as the driver is used after the domain is turned off.

Kevin

