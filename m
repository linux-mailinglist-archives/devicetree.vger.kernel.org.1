Return-Path: <devicetree+bounces-22775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEB4808B51
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 16:03:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38DA81C20AA6
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 15:03:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F31E44387;
	Thu,  7 Dec 2023 15:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2MC1Pow"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02EA041850
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 15:03:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DFCBC433D9;
	Thu,  7 Dec 2023 15:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701961405;
	bh=iBtqxKALkQ+SYZWERK2YTeoNG6LzaRsWWxMqGGS3mo8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Z2MC1PowSNJ9igtUY/SB0k4SCrhi+CNVDb3TaZrXNplhWpNI9q/VVaUKIvxxTXgDM
	 4W+P0A2YcDXWCSFATNWIgY6Rc6hkseRwNsC1E9zq8pjmntAzhuYEixrHAq/FW0YhfX
	 yZVS46FBFMFEI+MQCkb1iDOGtBHMgVw3EzQAhWfqdsd5hb2Cl4aLNZ2fSofBVOtEBK
	 8kil0yhFQ/ZecvaSKCJfBOPfAbwWxpg4esng+fuVZV+afaURRnH2mddkb/s9//8jjh
	 legvq0+uXV2GFxW+criQtXZ7aJGss6NH3/C2EmJyTuZdX+PCU72f+RdkbaxXCXOuGI
	 A/Rukeiy+nJYA==
From: Michael Walle <mwalle@kernel.org>
To: tony@atomide.com
Cc: Laurent.pinchart@ideasonboard.com,
	airlied@gmail.com,
	andrzej.hajda@intel.com,
	conor+dt@kernel.org,
	daniel@ffwll.ch,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ivo.g.dimitrov.75@gmail.com,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	krzysztof.kozlowski+dt@linaro.org,
	maarten.lankhorst@linux.intel.com,
	merlijn@wizzup.org,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	pavel@ucw.cz,
	philipp@uvos.xyz,
	rfoss@kernel.org,
	robh+dt@kernel.org,
	sam@ravnborg.org,
	simhavcs@gmail.com,
	sre@kernel.org,
	tzimmermann@suse.de,
	Michael Walle <mwalle@kernel.org>
Subject: Re: [PATCH v2 08/10] drm/bridge: tc358775: Enable pre_enable_prev_first flag
Date: Thu,  7 Dec 2023 16:03:16 +0100
Message-Id: <20231207150316.2633755-1-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231202075514.44474-9-tony@atomide.com>
References: <20231202075514.44474-9-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

> Set pre_enable_prev_first to ensure the previous bridge is enabled
> first.
> 
> Signed-off-by: Tony Lindgren <tony@atomide.com>

Reviewed-by: Michael Walle <mwalle@kernel.org>
Tested-by: Michael Walle <mwalle@kernel.org>

