Return-Path: <devicetree+bounces-1786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA577A8435
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:56:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C96E3281F5F
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 13:56:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AFB03AC1F;
	Wed, 20 Sep 2023 13:56:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A546A3AC0C
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 13:56:30 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DA17EB
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 06:56:29 -0700 (PDT)
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B10F366071F1;
	Wed, 20 Sep 2023 14:56:27 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695218188;
	bh=+7S4NMiv+np81ToK3JyeIZNiCivkP3XpM4WJFaNSwmo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=MrdMhU5PgEMu5SqCLcujP0bdYtf0CnePgScpro5cDowAF1qFxYa1rl2T3J0Ulk457
	 cTOFVpvjr3tr0wXrPtFKuhLM8oUMRb1IoMl95ivjeBNw+h8F7qIbthUsWJCIwZygTA
	 tOkSuHUdPXUnN3WdSSDUhoMZrwLx/VCQjv/Lnj/UYDcm8IIwChXOtF7raqPA6pXzZ3
	 E5l8A2zDltv2aRcDds256TYNTq3OEin7JK7hNSWWvxIpzbVIUh9m29S6m4PAtQ3jlE
	 cZcAphZt9pWL/C5rZSpNPQox2sdLX3IK6UhAJirVloXfiIrpTggYckvR9d/bvYbQEY
	 B6J6HDEgy93AQ==
Date: Wed, 20 Sep 2023 15:56:24 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Liviu Dudau <Liviu.Dudau@arm.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 dri-devel@lists.freedesktop.org, Conor Dooley <conor+dt@kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>, Daniel Stone
 <daniels@collabora.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Steven Price <steven.price@arm.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>, "Marty E .
 Plummer" <hanetzer@startmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Faith Ekstrand <faith.ekstrand@collabora.com>
Subject: Re: [PATCH v2 14/15] dt-bindings: gpu: mali-valhall-csf: Add
 initial bindings for panthor driver
Message-ID: <20230920155624.1934eb34@collabora.com>
In-Reply-To: <ZQr2cTMz1-PsOMRP@e110455-lin.cambridge.arm.com>
References: <20230809165330.2451699-1-boris.brezillon@collabora.com>
	<20230809165330.2451699-15-boris.brezillon@collabora.com>
	<3517f2e9-d9d7-5bf8-1905-62f52d68c512@linaro.org>
	<ZQr2cTMz1-PsOMRP@e110455-lin.cambridge.arm.com>
Organization: Collabora
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, 20 Sep 2023 14:41:05 +0100
Liviu Dudau <Liviu.Dudau@arm.com> wrote:

> > 
> > Please describe also power domains - constrains and names.  
> 
> I'm not sure the power domains and how to handle them have been
> entirely settled for Rockchip, hence why they were not included. Will
> check with Collabora to see if they have anything to add here,

On rk3588, it's just one power domain feeding all GPU blocks.

> but
> for non-Rockchip platforms (like Juno with FPGAs) the constraints
> are going to be different.

