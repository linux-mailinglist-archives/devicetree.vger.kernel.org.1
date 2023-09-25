Return-Path: <devicetree+bounces-3092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 049B07AD4CB
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 11:49:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B621828187F
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 09:49:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 009AD13FFB;
	Mon, 25 Sep 2023 09:49:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CC9134DC
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 09:49:02 +0000 (UTC)
Received: from out-198.mta0.migadu.com (out-198.mta0.migadu.com [91.218.175.198])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D21CA3
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:49:01 -0700 (PDT)
Date: Mon, 25 Sep 2023 19:48:39 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1695635339;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4dRdGkWCi+7rtuoY3VfupvdbW14yuz7oH4cStDJMMaw=;
	b=q529K7DaZTmoYJ4kW1UJ7DKPrrYj/pzpJQycIPKy9rQR72b+inomsCrccRrt1nwAj63o9W
	McJDn3CuN723tMvH3iwG/bU1QgJ4jm2VQJLj6AHxpuUcpBUH8395T+oKnFgCMKjx30Dv3H
	JBoxQ1mwnAkZktaYaGfyLvLqTjz6DTxJpUwYCo2AT7f1UsYMSlmlbpKlSeBistP1vdzfS/
	88KjTSZsKK+zlJjxmQvMmDMiVRvTaEf3v2OdoODU6ieCvclUqsJYF3XRO87U1FnoVcqkeN
	zdqtB6iLBCkgqYtIR/+q2N/c5uN4FxxECJVY+33XGm9y7h8Ypc0Jt4UZn0uPmA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Paul Cercueil <paul@crapouillou.net>
Cc: dri-devel@lists.freedesktop.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Christophe Branchereau <cbranchereau@gmail.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v3 4/7] drm/panel: nv3052c: Add Fascontek FS035VG158
 LCD display
Message-ID: <ZRFXd3F7eit7x4aJ@titan>
References: <20230925021059.451019-1-contact@jookia.org>
 <20230925021059.451019-5-contact@jookia.org>
 <ebd5808fe3029e46376aea3c25d3770a6b406fdc.camel@crapouillou.net>
 <ZRFRFXCKTIb9x7GW@titan>
 <d63b2a7bf2bbabe41b8e45a6c0a4dc0b1e117bdd.camel@crapouillou.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d63b2a7bf2bbabe41b8e45a6c0a4dc0b1e117bdd.camel@crapouillou.net>
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 25, 2023 at 11:43:26AM +0200, Paul Cercueil wrote:
> From what I can see, you have a panel with a NV3052C chip, so the
> existing initialization sequence should already work.

It has some differences that I don't know if are important.

> The NV3052C datasheet does not give any settings for a 640x480 panel, I
> only see suggested settings for a 720x1280 vertical panel.
> 
> Unless you have a min/max range specified, the values you see in there
> are only suggestions for a working setup, that doesn't mean they are
> the only recommended ones.

The panel datasheet has these values.

> 
> Cheers,
> -Paul

John.

