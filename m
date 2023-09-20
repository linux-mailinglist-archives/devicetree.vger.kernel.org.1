Return-Path: <devicetree+bounces-1723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 224397A79FC
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 13:05:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2031281A89
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 11:05:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0D1616421;
	Wed, 20 Sep 2023 11:05:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1CA515AE7
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 11:05:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F4234C433C8;
	Wed, 20 Sep 2023 11:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695207950;
	bh=HPnHcdGsXx+1/F/vWLQwG3CgHfbFgIeKZKX9aDYdnIE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=hLhNUNe41JJqhRuAzZiIUYASqPrfAl/ZMOhyFmxnOjEZJupyF75Ieokn39tAor05I
	 bWUF/DbKTF2za+iGkXA48qb5MGOQ+rscrXw7Ps1kt32FRxPER/C64RC11u4juRXzf0
	 fnbadh25PFHBK+p87vHT1ZQshA/SREnACUoPvhSmiRFcVGaXIqiySgiWX2mv+I8Qvx
	 eI2J8NKFKHjHxkGWfqFMdGbFI1nc1vSucTyqFYQSS/Nc3t5xS0+q8uHxxGjbdcxP61
	 rsVlALLCz5FWToR5rKsWQ7ACqvmwPX9512SeTDRZ+/eq9mO4woOHeV713UGmf/d5S6
	 7Pnzj7bzDgDAw==
From: Robert Foss <rfoss@kernel.org>
To: devicetree@vger.kernel.org, Alicja Michalska <alka@sakamoto.pl>
Cc: jernej.skrabec@gmail.com, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, jonas@kwiboo.se,
 Laurent.pinchart@ideasonboard.com, daniel@ffwll.ch, airlied@gmail.com, andrzej.hajda@intel.com
In-Reply-To: <ZQjFabKW7QvrvsnG@tora>
References: <ZQjFabKW7QvrvsnG@tora>
Subject: Re: [PATCH] dt-bindings: display: anx7814: Add definition for anx7816
Message-Id: <169520794731.2886650.6229973155734837389.b4-ty@kernel.org>
Date: Wed, 20 Sep 2023 13:05:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.10.1

On Mon, 18 Sep 2023 23:49:44 +0200, Alicja Michalska wrote:
> As requested by Robert Foss <rfoss@kernel.org>, this patch adds
> definition for anx7816. It supplements the patch submitted to dri-devel.
> 
> 

Applied, thanks!

[1/1] dt-bindings: display: anx7814: Add definition for anx7816
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=5305d85077c7



Rob


