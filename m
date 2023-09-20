Return-Path: <devicetree+bounces-1774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E77457A83B9
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:46:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F34271C20A47
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 13:46:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64F2338DD2;
	Wed, 20 Sep 2023 13:46:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5554136AEE
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 13:46:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58BAEC433C7;
	Wed, 20 Sep 2023 13:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695217561;
	bh=Af/2hG8Rettl0ksgOXBNHtUqLQxI55gP+9ND2DeTVIo=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=ogFLbZAprynFzuWPsOYcf3ijDaslsOyOwEWAXskXuFQiisw2fyFotXVRqwRZM0Tko
	 rKbUo5QHujkA/LGhyMnYjjBrknPTupyJwwvxtnd4kzWbUUlcUb+ycfGpCOrRtLIwBf
	 NQJxFVFqhVLcHtXc0ph6a5MQbiJNlgm27N0cAenUmOaJYZm0WVcQOubhdJN0Q0sL4I
	 kd4Hzbgrjw6JBgrOy2GaIVLJpdky3sQbTcYArwyQWtEiaMl6aBp4OGkDIC1q6L7L94
	 zq0VRBu+UKN03h6bA/LWAUNDVt453WlnD+mZgPqP/NsSTTn1daT9qX5a9rLMSBfz9t
	 epQ5Fo4VswRQA==
From: Lee Jones <lee@kernel.org>
To: dmitry.torokhov@gmail.com, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, lee@kernel.org, 
 bcousson@baylibre.com, tony@atomide.com, mturquette@baylibre.com, 
 sboyd@kernel.org, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
 linux-clk@vger.kernel.org, Andreas Kemnade <andreas@kemnade.info>
In-Reply-To: <20230916100515.1650336-1-andreas@kemnade.info>
References: <20230916100515.1650336-1-andreas@kemnade.info>
Subject: Re: (subset) [PATCH v4 0/5] ARM: omap: omap4-embt2ws: 32K clock
 for WLAN
Message-Id: <169521755809.3445505.9877509885722763259.b4-ty@kernel.org>
Date: Wed, 20 Sep 2023 14:45:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Sat, 16 Sep 2023 12:05:10 +0200, Andreas Kemnade wrote:
> To have WLAN working properly, enable a 32K clock of the TWL6032.
> In earlier tests, it was still enabled from a previous boot into
> the vendor system.
> 
> Changes in V4:
> - use dev_err_probe in clk probe()
> - R-by
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: mfd: convert twl-family.txt to json-schema
      commit: 098e2d6fd72fc99097af33e6e8cb4cd0921a26ac
[2/5] dt-bindings: mfd: ti,twl: Add clock provider properties
      commit: eb9fba08e386ff98818de12b40a5ee1443129229
[3/5] mfd: twl-core: Add a clock subdevice for the TWL6032
      commit: 3e359099b245227c6729dd5f81f2757dea5d4656

--
Lee Jones [李琼斯]


