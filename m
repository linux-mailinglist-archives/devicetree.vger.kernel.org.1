Return-Path: <devicetree+bounces-3249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2807ADE2B
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 19:57:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id B369C1C204D6
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 17:57:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 246A0219F6;
	Mon, 25 Sep 2023 17:57:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FFA219EA
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 17:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 530BDC433C7;
	Mon, 25 Sep 2023 17:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695664629;
	bh=gu84MV14kgINMupwSI+2Lf8n14Xc8CuSlYzvB+lIaAE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jVAvGwCM5r7G+NXm8onSVszBufuhcKD8cs8bfswFndPYecBF24lr/gTcgW+2Z6PNV
	 r6LtkbA3mOh9Ef01ms8jTM17ZqeZYegZlvbS4xeJf8NDjP3JEXzLWTh1B1EfedUMij
	 T2/aGCpuZdQN5x5LMDfFNoCImF+o/gBE3BuFvdTpCGv2wGgrGgD5oVHImq+kOr1QsQ
	 OQiguAbHlmWisIkMXr7DOoii/ysXJq6bxTpKy3fTXX7pX1tb2++LDakF8M9Qr0OkxG
	 +V4hGcOIEkB4kqCE7MZ18iTcF9mkc3bgIg+JIflFnznrvPvTyzTKyG9tI4xtxMfcqf
	 wG1JAIH8o43vQ==
Received: (nullmailer pid 1642965 invoked by uid 1000);
	Mon, 25 Sep 2023 17:57:06 -0000
Date: Mon, 25 Sep 2023 12:57:06 -0500
From: Rob Herring <robh@kernel.org>
To: Max Filippov <jcmvbkbc@gmail.com>
Cc: devicetree@vger.kernel.org, Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>, linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-serial@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, Jiri Slaby <jirislaby@kernel.org>
Subject: Re: [PATCH v3 4/5] dt-bindings: serial: document esp32s3-acm
Message-ID: <169566462582.1642906.11148927426124876101.robh@kernel.org>
References: <20230925084825.4160708-1-jcmvbkbc@gmail.com>
 <20230925084825.4160708-5-jcmvbkbc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230925084825.4160708-5-jcmvbkbc@gmail.com>


On Mon, 25 Sep 2023 01:48:24 -0700, Max Filippov wrote:
> Add documentation for the ESP32S3 USB CDC-ACM controller.
> 
> Signed-off-by: Max Filippov <jcmvbkbc@gmail.com>
> 
> ---
> Changes v2->v3:
> - add a reference to serial.yaml
> 
> Changes v1->v2:
> - fix description
> - rename node in the example
> - fix example indentation
> 
>  .../bindings/serial/esp,esp32-acm.yaml        | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/serial/esp,esp32-acm.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


