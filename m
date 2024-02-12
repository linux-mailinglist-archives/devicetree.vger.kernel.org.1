Return-Path: <devicetree+bounces-40665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C99DB851232
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 12:26:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 08AB91C20433
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 11:26:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3417D38DE1;
	Mon, 12 Feb 2024 11:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4r9VQZB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1065F39AC2
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 11:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707737205; cv=none; b=BUMx6ojymhsK5UBPlGb4Gk0qLmPQEmnyd+X9Z2RX6njscQsSv60X35uBpVk6KQD8kt+eF89dShj//t9WZt+9vTtGGs11Fa9jGDhsRxW/9fAMTST1gZya2Jubqxdp0Bvai2aX21nzmJMXw8VlescBX51rGJQeiSSyoR2CqwPrqTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707737205; c=relaxed/simple;
	bh=K3N8ZPAAOKo0KZHQ34c8vMe/Mid0bAJ1+AspKF2Ta2E=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:From:To:
	 References:In-Reply-To; b=PgOp52L5fAkLxN1F1LpMy6YwuWwVQSRLWBhbKTmTNNFb2xx0V6BlHyd0rUDzKD8soeP1mvXQ7YU81usspee35aREr3TkFWoFe18/FmqVIoO44QF7KeMVDnkLLoXypRb/mv1xLouvqdrgCvz5mIM0x/fMizHzzJnSvaCtcZB0IIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4r9VQZB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 267C7C433C7;
	Mon, 12 Feb 2024 11:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707737204;
	bh=K3N8ZPAAOKo0KZHQ34c8vMe/Mid0bAJ1+AspKF2Ta2E=;
	h=Date:Subject:Cc:From:To:References:In-Reply-To:From;
	b=G4r9VQZBjq2Ug7fVbtqc1J2XD24jen1ATbmQqVGMxsRqcBujjXcbqtoIbCsMkG7HT
	 VP06Z4eDclY3lVzoSAlb/lKUwuUC5ue2Ts1jG5tWmUisOPd65RSNxwj46nzLDhb6pO
	 moaMQdqnzuVwFwzn0TJ/ul5HPW2VTEM7+/8Pis0743uvHVPaenBQ9zrAe1Mbmml94j
	 godjMfQ/ZRx+CMzPK7MDLHAV5wIlxWRnhtuRtxKhSI56nsKiDjztOmInBPJiULfUrc
	 PNsCU/IzaIwUGt1E45ouVNzL/XafWJh2GAhh4FD7Rz5I9W0VCOmXypgSOXCuva5dv0
	 bHSleyO3mCP/g==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 12 Feb 2024 12:26:32 +0100
Message-Id: <CZ32B7Z5AD1C.15PCL5XYCYOP7@kernel.org>
Subject: Re: [PATCH v3 10/10] drm/bridge: tc358775: Configure hs_rate and
 lp_rate
Cc: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>,
 <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>
From: "Michael Walle" <mwalle@kernel.org>
To: "Tony Lindgren" <tony@atomide.com>, "Andrzej Hajda"
 <andrzej.hajda@intel.com>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Robert Foss" <rfoss@kernel.org>, "Laurent Pinchart"
 <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman" <jonas@kwiboo.se>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Daniel Vetter" <daniel@ffwll.ch>, "Rob Herring"
 <robh+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Simha BN" <simhavcs@gmail.com>, "Sam Ravnborg" <sam@ravnborg.org>
X-Mailer: aerc 0.16.0
References: <20240211095144.2589-1-tony@atomide.com>
 <20240211095144.2589-11-tony@atomide.com>
In-Reply-To: <20240211095144.2589-11-tony@atomide.com>

On Sun Feb 11, 2024 at 10:51 AM CET, Tony Lindgren wrote:
> The hs_rate and lp_rate may be used by the dsi host for timing
> calculations. The tc358775 has a maximum bit rate of 1 Gbps/lane,
> tc358765 has maximurate of 800 Mbps per lane.
>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
Reviewed-by: Michael Walle <mwalle@kernel.org>

-michael

