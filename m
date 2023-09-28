Return-Path: <devicetree+bounces-4286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 90ACD7B1E7B
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 15:33:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 48E2228233B
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:33:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29D7A3B781;
	Thu, 28 Sep 2023 13:33:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1948938DCD
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 13:33:42 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1E6E18F
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 06:33:40 -0700 (PDT)
Received: from mail.denx.de (unknown [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: festevam@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 830C286E3D;
	Thu, 28 Sep 2023 15:33:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1695908018;
	bh=y5JGSv6DpEC74QSeclrQ4bLk3VBmq3xBBBe2uR7Lsvw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=fIInVKloKQXraVyayEw3m/TVc7Jsw2mhFOMAmRukn2on9utezTq3CIT4MQYOEvLij
	 YsabUfJgorcnIuql/a/BE623nfbrC3/EhYvB0+Liwe69bbygTKhsjyxnOn4W4lESMP
	 vp+NPHPUVrNi7KbfvC/M91+dr+EiXGw39OyfyB8FML6X6MDaNvmp4iu4HObc4scSey
	 ynaIwMrvQz8Y+05n3oS1bJjeVbrwM/Odkph6cnUfX7aWUrgMaAdDH2mGk9OrBlW1fz
	 o7qQu5QiYNgbAzSyEYYH12YLbvbQnITmxaO0mNDR2wxxLecdL4uWMOWUXQwx7oiNNk
	 u54kQ1ldamIhg==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Thu, 28 Sep 2023 10:33:38 -0300
From: Fabio Estevam <festevam@denx.de>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-imx@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, "Rafael J . Wysocki"
 <rafael@kernel.org>, Amit Kucheria <amitk@kernel.org>
Subject: Re: [PATCH 5/8] dt-bindings: thermal: fsl,scu-thermal: Document
 imx8dl
In-Reply-To: <1e81197e-7f69-b716-4cb9-23639db83235@linaro.org>
References: <20230926122957.341094-1-festevam@gmail.com>
 <20230926122957.341094-5-festevam@gmail.com>
 <1e81197e-7f69-b716-4cb9-23639db83235@linaro.org>
Message-ID: <a6c481466648dd09bd8c4f030787a1c8@denx.de>
X-Sender: festevam@denx.de
User-Agent: Roundcube Webmail/1.3.6
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Daniel,

On 28/09/2023 10:32, Daniel Lezcano wrote:

> May I apply this patch or do you want it to be applied with the series
> it belongs?

Please apply it, thanks.

