Return-Path: <devicetree+bounces-236779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D605C473F4
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 15:37:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2D3D74E383D
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 14:37:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F03A2EBBB2;
	Mon, 10 Nov 2025 14:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="OyR0XTeP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ED7C303A14
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 14:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762785471; cv=none; b=eslsk0V75/lFnx84WQm0sK5uWReeTs6XwCz1yZYM/pvEunzvmShWSa/qXt2GLbooTvePA31wEIcE9okLc4uLDPqYkgyEVfcBwvnIu2Uq5NqvlxBXK4x4aFs216THbvYYY6jImqPqrlEWhEX1P6iGqyJXwhkhuFk2YDj3CQF1DQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762785471; c=relaxed/simple;
	bh=A91zQvBNtapswLnXwmyN4buL3l0uVX+SJuJb9/6DQ9U=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=RidFzLYd+lugx8oh2MO7gYYe64SGmtYsHm4vG/HOVK2+ikVvOT0OpVRZz+sgOAaNo10KHB1NDZUlCKqGldsjeEBRBZRhKZN5HVG9JRraQHQFzB0PfnPhDKjEhXLznejmgUB4ryhjrT1U2UdfdRCoet5i4GSJa6MkmZzxH58+Yjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=OyR0XTeP; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 770AE40C84;
	Mon, 10 Nov 2025 15:37:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762785465; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=NvnxjYagnJWwFbZrINrJ0xDcFD7vKj/4jo+lxDZMAP8=;
	b=OyR0XTePTdVFh6q+1sK55pSfSAuSwkwO2lPkD0Pm77zRvkBf/GRpebFMtVKx5V/TCmvY3U
	DDlD0vYXTESmLHp9h3LCoWjK7qvDoxidjqBlg+jY3Pvf4VOtiTaZ9MzZVV1GJJKsYIeRh5
	SMYeQda5+9oYz5XtfxtdG8wyaGOGgQR5zCDgNU/vg1DXwqR5ub67BguTSsBOnidB/gFjAC
	Bws92sm2JHnPKvxdIzqOfglkzsBKrjim0SOTci4aVamMee7jNMS38SMmjMUH83v5bi3ynx
	kKUu+Fx1Wn8Dg0ELCJOYkVBtE3WR+RXvjMfKX6tQCADoQ06VKDSGLn8i2JxDyQ==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <8934442FCE2020A5+855829eb-e783-4aa5-b4a1-13b0a519c46d@radxa.com>
Content-Type: text/plain; charset="utf-8"
References: <20251110035455.839863-1-naoki@radxa.com>
 <20251110035455.839863-2-naoki@radxa.com>
 <36843804-433a-5c0c-4961-451b44d70bc4@manjaro.org>
 <38861A00B4F4BA62+e3221913-43e5-4335-9aaf-9b9eed5834ac@radxa.com>
 <65f17890-c052-f303-4731-f882946df1f1@manjaro.org> <8934442FCE2020A5+855829eb-e783-4aa5-b4a1-13b0a519c46d@radxa.com>
Date: Mon, 10 Nov 2025 15:37:42 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com, kylepzak@projectinitiative.io, damon.ding@rock-chips.com, sebastian.reichel@collabora.com, amadeus@jmu.edu.cn, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <06218e17-0bbc-9606-46b4-9a50d1177170@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 2/2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Make eeprom read-only for Radxa ROCK 5A
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

On Monday, November 10, 2025 10:44 CET, FUKAUMI Naoki <naoki@radxa.com>=
 wrote:
> On 11/10/25 16:38, Dragan Simic wrote:
> (snip)>>> Additionally, it would make sense to squash this patch and =
your
> >>> other patch that addresses the ROCK 5C together.  They're very
> >>> similar and having them together in a single commit might actuall=
y
> >>> help the people browsing the repository understand it better.
> >>
> >> I'll drop eeprom patch from ROCK 5C v7 patch series, and squash ee=
prom
> >> patches for ROCK 3C/5A/5C.
> >=20
> > Thanks!
>=20
> I'm preparing a patch series for Radxa ROCK 5A and I just remembered=20
> that the eeprom node in 5a.dts is totally incorrect. The eeprom is on=20
> i2c0, not on i2c2.
>=20
> I'm planning to include this eeprom fix as a part of the patch series=20
> for 5A.

You're right, and I managed to miss that during my review. :/

It would be good if you'd prepare and send a separate, two-patch
series with just the I2C bus fix for the ROCK 5A and the squashed
patch that makes the EEPROMs read-only on three boards.  Reviewing
and accepting large changes split into smaller portions is always
easier.


