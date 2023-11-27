Return-Path: <devicetree+bounces-19197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AF27F9FD5
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 13:44:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 074AC1C209D7
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 12:44:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0C8A11CBC;
	Mon, 27 Nov 2023 12:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FN/20vTB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A58B4C8C4
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 12:44:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B85B4C433C7;
	Mon, 27 Nov 2023 12:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701089089;
	bh=A14BRrGRbT7av40PhXMj0HS+RBvdVsYZIOGpQ37tpnU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FN/20vTB3kN+TGx3aaURGkKj3OW5/kXf7nlbGZtT6aNu0mhdVH1FADHVW+WvQu7mc
	 6dHIj/Df9J8lg/vR47JMZq97IhUqRUNE5IgyV0HnPUy3VeG995A0az4sC01TIXuhS/
	 cvySHtf/Qco9u13gpIORXuBchpQduL8lgFvQAuZHs7BmZPTdSNdaoqlycXtvLUNcam
	 r20luoucHSpZf2oVDVPsNlzq8HC6TAh5uU08LcaAjsDBLemT1UHOcU6JTWk6hyPUlQ
	 xd5sTVwNHEhJLoqlYWrvC6p7gdq8LrjgqIjM0hxP1NsSOMo551HKc0B3eTW4VaJQ35
	 r5eLQkHqpy5IQ==
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
	simhavcs@gmail.com,
	sre@kernel.org,
	tzimmermann@suse.de,
	Michael Walle <mwalle@kernel.org>
Subject: Re: [PATCH 1/6] dt-bindings: tc358775: Add support for tc358765
Date: Mon, 27 Nov 2023 13:44:30 +0100
Message-Id: <20231127124430.2153227-1-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231126163247.10131-1-tony@atomide.com>
References: <20231126163247.10131-1-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

> The tc358765 is similar to tc358775 except for the stdby-gpios.

Bad timing (for me). I'm about to send a bigger patch series for the
tc358775 which fixes the (completely) broken initialialization. And also
contains some of your fixes.

That being said, I intend to make the standby gpio optional also for the
tc358755, because it might just be hardwired on the board.

But second, I'm really curious if this bridge is working for you correctly
as it is at the moment. One particular thing I've noticed is that you must
release the reset while both the clock and the data lanes are in LP11 mode.
Otherwise, the bridge won't work properly (i.e. horizontally shifted
picture, or no picture at all).

What DSI host controller are you using?

-michael

