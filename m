Return-Path: <devicetree+bounces-136031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B15EA038C9
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 08:30:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 74AA47A2402
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 07:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67D211DFE0A;
	Tue,  7 Jan 2025 07:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="NUL/i43t";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="kUQqq3eF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 987F2157493;
	Tue,  7 Jan 2025 07:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736235000; cv=none; b=UG2xSRBGyC1fZOW8DelN0EWa22+hUw1NfIhT6ExwoHJEa9+p/uF1szvQh4q0gSQrv9fB8MQmOK7tYndyEOYyHnhoHwYy/1HwB+KzVs965rUODuK6J+tJsHRIYzL1YZtzQA+yqzMf1qnBvt2/YS6+RF26H1QdURwAbP/DEyGDmvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736235000; c=relaxed/simple;
	bh=WqzIYBsdxEOABD+4XiKNPlnghNXS6gXFvv/Anibv4yA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ceO7aFfncy0PX/d8a/TPSiHB0g6ZWMlymwl5eJ+e2dKW6kJTemibJLZZHXTYuNKFCSls0X+TDRYQ5pSM5ZR7WzK0xBsZYUId/BiA1Tlie8Ctc2dPA+NlK4tSxegV9E7vh6aFS/M1cBFVRcOi5O3vbFSNn9bpKObv7EV8UVhkjXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=NUL/i43t; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=kUQqq3eF reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1736234996; x=1767770996;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=nP3a904pW+4NeZpIzj2rL1y4z2Ox21R2Xnv72pkxwco=;
  b=NUL/i43tBgyvfUrY9ZQZGns6MzD/1iwZAIeGFjPDt5dcp3JIXABSJAfq
   Nmr2Uc1rB0foAvbBUbzeCajRIVFw7rjq7MaRUTtCI7cROaxf7nhcnIGjA
   PYXw3Zj+R/RYfMk7b2+NmNadafg9MVZmSy/+V8ZPX4Cmv5RS/gLwzGou8
   AJr6/u6h2gkpMPHnUA3eEsCylzgvEL6PqTnJor/0f8HPUj8DO7HshDri1
   KC9zhekdMcOkZMs8aPEG0oYmuqII432aUqe+7vVTOpTKelQV+bFhuXhAG
   +UJSbeYebqztGWTxzlXlJQa0jv5cAWi2fgPyJQSxkIti2Qk/wen/iJfuJ
   A==;
X-CSE-ConnectionGUID: Izfo4A+rSCy3NyDPZAJESA==
X-CSE-MsgGUID: xzEX+6reTZOhb7p1aXK/6Q==
X-IronPort-AV: E=Sophos;i="6.12,294,1728943200"; 
   d="scan'208";a="40884099"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 07 Jan 2025 08:29:46 +0100
X-CheckPoint: {677CD7EA-9-1647E5E1-CA16D1A6}
X-MAIL-CPID: 1AEEC7B410713E20B959F122062910D3_2
X-Control-Analysis: str=0001.0A682F28.677CD7EA.00B1,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 11EEF16127F;
	Tue,  7 Jan 2025 08:29:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1736234981;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nP3a904pW+4NeZpIzj2rL1y4z2Ox21R2Xnv72pkxwco=;
	b=kUQqq3eFKQVewMaUchSw5EAUYGP9HHxGRg6hRebVznMHtHICrD6XdTKTAfwJWtI0GoTpcs
	ImBdTuEMqD8JIzytM1HTt//DoWwt+Ci/ReXj6QXX/RS4A6rrQCKNyOrnZe9dUG8qMZrHnW
	VygnZzh72HPDs8KMeLlV3U6HG3BiPFJO/QuqnFcti7RLBBG2t8UvwZqoXZLKzXBdS05ohy
	8vXM3XG6VH8PWNBlNxaB5L5HFIWUgLX4NG3cnkPTlMnHI6/br9uYw39Vgl58GQvgy74fEj
	Mq7udal6QZYZOLG+gGpfEKVaWTCuEFNS0fgAVNYIRD8CUcd8DuKhxuh1z+I52g==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: dmitry.baryshkov@linaro.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, mripard@kernel.org, Sandor Yu <Sandor.yu@nxp.com>
Cc: kernel@pengutronix.de, linux-imx@nxp.com, Sandor.yu@nxp.com, oliver.brown@nxp.com, sam@ravnborg.org
Subject: Re: [PATCH v20 0/8] Initial support Cadence MHDP8501(HDMI/DP) for i.MX8MQ
Date: Tue, 07 Jan 2025 08:29:36 +0100
Message-ID: <2381464.ElGaqSPkdT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <cover.1734340233.git.Sandor.yu@nxp.com>
References: <cover.1734340233.git.Sandor.yu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Last-TLS-Session-Version: TLSv1.3

Hi Sandor,

thanks for the updates.

Am Dienstag, 17. Dezember 2024, 07:51:42 CET schrieb Sandor Yu:
> The patch set initial support Cadence MHDP8501(HDMI/DP) DRM bridge
> driver and Cadence HDP-TX PHY(HDMI/DP) driver for Freescale i.MX8MQ.
>=20
> The patch set compose of DRM bridge drivers and PHY driver.
>=20
> Both of them need by patch #1 and #3 to pass build.
>=20
> DRM bridges driver patches:
>   #1: soc: cadence: Create helper functions for Cadence MHDP
>   #2: drm: bridge: cadence: Update mhdp8546 mailbox access functions
>   #3: phy: Add HDMI configuration options
>   #4: dt-bindings: display: bridge: Add Cadence MHDP8501
>   #5: drm: bridge: Cadence: Add MHDP8501 DP/HDMI driver
>=20
> PHY driver patches:
>   #1: soc: cadence: Create helper functions for Cadence MHDP
>   #3: phy: Add HDMI configuration options
>   #6: dt-bindings: phy: Add Freescale iMX8MQ DP and HDMI PHY
>   #7: phy: freescale: Add DisplayPort/HDMI Combo-PHY driver for i.MX8MQ
>=20
> i.MX8M/TQMa8Mx DT patches:
>   #8: Add DT nodes for DCSS/HDMI pipeline
>   #9: Enable HDMI for TQMa8Mx/MBa8Mx
>=20

I gave this version a new try but unfortunately the display stays black.
Although the display pipeline is intialized and even wayland starts.
Do you have any idea where to start looking?

Best regards,
Alexander
=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



