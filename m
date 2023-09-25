Return-Path: <devicetree+bounces-3240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BD17ADD62
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 18:48:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 0097A1C2083C
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 16:48:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F9EC1D526;
	Mon, 25 Sep 2023 16:48:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA4210949
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 16:48:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56A93C433C7;
	Mon, 25 Sep 2023 16:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695660484;
	bh=wBWKMKBUI+Tl4EZBh+b126NH8pUhWxb26K1nSRFw1oE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WQfuy/a9Wj3IAzwDSQphRJXNp/8LoT0aM+9+2BvxMeDI3VFeJVXb9caEp9yT5mGzW
	 ZfY3HDy02lWkqJ1YEvXK9q43eQEWe/kQUhdZayjNZ/tzKfjEfL8c2wGd4CEtykXmFF
	 d+JveidUWQwTRA0Sz/dKNCDHD9xyuTzjJd0X5SpR5J2Gxxot7BnRGitzuvcJINMnu4
	 sabH2oL7xQI560riOvpF2NyarmhevHczCu9SgyyJWfoAHDw2PY8ACnb6TGJt73NMUZ
	 kt7RRDeehS7g7EYmXIzt9APpUdcGWth4CU/hR0BdnSSmyay9pzS0h75wYrLhsuOFD4
	 I3VI14zla3IkA==
Received: (nullmailer pid 1494825 invoked by uid 1000);
	Mon, 25 Sep 2023 16:48:01 -0000
Date: Mon, 25 Sep 2023 11:48:01 -0500
From: Rob Herring <robh@kernel.org>
To: Max Filippov <jcmvbkbc@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, Jiri Slaby <jirislaby@kernel.org>
Subject: Re: [PATCH v3 2/5] dt-bindings: serial: document esp32-uart
Message-ID: <169566048115.1494738.1252654770235463635.robh@kernel.org>
References: <20230925084825.4160708-1-jcmvbkbc@gmail.com>
 <20230925084825.4160708-3-jcmvbkbc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230925084825.4160708-3-jcmvbkbc@gmail.com>


On Mon, 25 Sep 2023 01:48:22 -0700, Max Filippov wrote:
> Add documentation for the ESP32xx UART controllers.
> 
> Signed-off-by: Max Filippov <jcmvbkbc@gmail.com>
> 
> ---
> Changes v2->v3:
> - add a reference to serial.yaml
> 
> Changes v1->v2:
> - drop '|' from description
> - change 'compatible' property type to enum
> - drop label from the example node
> - fix example indentation
> 
>  .../bindings/serial/esp,esp32-uart.yaml       | 51 +++++++++++++++++++
>  1 file changed, 51 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/serial/esp,esp32-uart.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


