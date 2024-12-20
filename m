Return-Path: <devicetree+bounces-133160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B8F9F96C8
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 17:45:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 39C2A16B8A9
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 16:44:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A52AE21A95D;
	Fri, 20 Dec 2024 16:44:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=public-files.de header.i=frank-w@public-files.de header.b="J+UVRoPM"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB381C4A1C;
	Fri, 20 Dec 2024 16:44:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.17.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734713081; cv=none; b=qKhjUIRfO4R+q5Hp5Hp+0NFr8BzH52Z3UNgBzOtN9cKZvXV75t6TbLiiGGhG4Qpd7XSxl+8ZYWTG+Dc0tpeWt9s4ATKn8wPRgam/K7uz3+ToBXM8IRzWHLPhQ+Cx9okN2ebrx4rSIv1uF30MExpHfGqmlUxSg9gqZLazlOkU63Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734713081; c=relaxed/simple;
	bh=sx9Xc9CzjrFXYpRyMGKjk585rr/PweCL4hg0epZFIUc=;
	h=MIME-Version:Message-ID:From:To:Cc:Subject:Content-Type:Date:
	 In-Reply-To:References; b=dL7eUXmTq0UiR4nnVeI8tXjpF13U6hJ4Pn2K+ynlo+mJA0plBShoxXAJeUbUHz5g52aJzk7GeB4Oq51kBB9rmVNozO9SLJxbHnxD5mlYqlDPLVKEzz2Lyjzh1Mu4QhGDzp+LXWSKosDWIbMy/q4F3b1Be0myaMWu36CIiMLOSCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=public-files.de; spf=pass smtp.mailfrom=public-files.de; dkim=pass (2048-bit key) header.d=public-files.de header.i=frank-w@public-files.de header.b=J+UVRoPM; arc=none smtp.client-ip=212.227.17.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=public-files.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=public-files.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=public-files.de;
	s=s31663417; t=1734713063; x=1735317863; i=frank-w@public-files.de;
	bh=sx9Xc9CzjrFXYpRyMGKjk585rr/PweCL4hg0epZFIUc=;
	h=X-UI-Sender-Class:MIME-Version:Message-ID:From:To:Cc:Subject:
	 Content-Type:Date:In-Reply-To:References:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=J+UVRoPM2UjUuH+jG8g74p8CA9ABHoXvM85hjdhM8VUmjGYPkNyMh3hjLuajxXcJ
	 qLkaPbyziQpxMtgpaExz7mSQiQ92+nYt8JqI5FNf5fpopmBliLzP+pOVMHVSfGlA2
	 urgG5uuyXjPPutZBa+1y9OtrwmLQz/nv+p+hPA5IHaeiFJzkvTeVj3dAUb/sNbvvI
	 qufJNRsa/yNAkA6p2AgAMdA8ndWAm2S1N5n2EWfhsT+lG/mLt9T6GUOWL8Aokt6Y0
	 p2Ud6+lIKfihG7nmDpYhThisfox7Bs2Kjz6TMxcOKON+6MyneKMPeUMnHTURbxaAM
	 CviIYA3G1ZSRN07TUA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [157.180.224.233] ([157.180.224.233]) by
 trinity-msg-rest-gmx-gmx-live-548599f845-5xz2p (via HTTP); Fri, 20 Dec 2024
 16:44:22 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <trinity-bbda816d-6467-433a-a516-19da45abe816-1734713062840@trinity-msg-rest-gmx-gmx-live-548599f845-5xz2p>
From: Frank Wunderlich <frank-w@public-files.de>
To: linux@fw-web.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: Aw: [PATCH v8 0/2] Add Pmic to Bpi-R4
Content-Type: text/plain; charset=UTF-8
Importance: normal
Date: Fri, 20 Dec 2024 16:44:22 +0000
Sensitivity: Normal
In-Reply-To: <20241220163838.114786-1-linux@fw-web.de>
References: <20241220163838.114786-1-linux@fw-web.de>
X-Priority: 3
X-UI-CLIENT-META-MAIL-DROP: W10=
X-Provags-ID: V03:K1:BVA17PosCUUJmGpk8D2/WIrGMlb2jBpW45Y0IdGwTab0ZrzD0Fka3U/UFoG5AGjRRYm6S
 xd1kkN/PAqp1nqFVxFQbl36yRslF8d8tpoCRBEGPazjdGn4EbOs6SRdhreFE7Q4NQH+45vSv6O3e
 AMeZJIGlIOSczWdAFeLqTjanu2uWq3gN0mCk29vxqIund3fpt388yO9mu7XkuFvDWeXqzDEqVJFQ
 SMz7ZBAS1pQatS63mXkSLVd1VYX3f8KlcG3iFvyhFqLulqoIl0T8YU8Zzwh7uB0PdWjxW0WraMSC
 pSOwyw6S64xEwASvoywteCVk5HY0qVHvZd81BZTX/OQFT6UvY/gJVwAn0xxhEEtY1M=
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:GY76qXWr6o4=;/SH78jAFF/8MBVk/bgogUrwzGhg
 EQjLq8aJ4mnW2vJAfJ8EKOQ6nmOf2b2QX9U4eIuTWk2iPa6ES3Qy078sxuEcD1bPeLhWp+i5+
 DuqLV5J60uCd4VR8ku1rsEm91I3pjW3bEgsPBcB+XYW5Qu5zhwberhNZ/Y5B2snKCPD60Z+Js
 aags9DZumvnUfQn8zXiAmWLHf0uwoV4dx5H5/xkdfODAbXhcdbActjjHEVGZjqmt06o/S+Lpg
 wbH5WPYmUFOpjznbAHOav2MCftn4duKyQNT+plsH+OGW4IKFjzUEIzAoLlr84pooOOm4VZOPi
 kCdlf2sGHEyMTxJC5lMfVubO/5/BXBFSKVOR2t9y0eXkl6VBsXesIGdVosgvFBy4f/CFzLCZE
 nW3obcdO4LlBvazaRLjpzKD4vq4dFzQZj9OwNKRPbcoupFUfMyoEzOChF0goQmTFVodJ9VOYd
 8GgNAqNKfcuAVIMfY38SdE/CQQcG4XawDoA3LB8pHcOBlOLUD09kwsYYG0APk89p08WG+IEVc
 1/kAV8SUPFsabXb+inY7vHFjK5aNu3BObCu/qPPOfd25uAZjUpCDTWifT6suXqHisrOTSRoY0
 9/UyT/myg7tnalUzp1UjSgPYANir14geTZh6BeYb6cmdCPSvbw8ug2eZjP2ezKTNIIoArPaab
 ILNM056IsHK4z5xXY2Xd5TEK+Y+d0c13E1orPSTOVoaEsmVab7dNIr3vk7wwUG2rEeNxmiRyi
 z5Jn/0aSlWUrpPXk4i207MlEN/9DOtLyzIsqxFHhUUQ+6jxDBK/TlP21HfWzAZmUFGsjWz+yg
 /zvBroS8DxDeRIfu82yNu5vcvBNqbHsxkf0EKXJgAcsgKb/EBCz4kHW5T3hoBiTNSQV1myUdD
 dQcfZaDovyzSFZA==

Sorry, seems i made mistake with version-number...

these 2 patches were dropped from the linked v3.

there is no v4-v7

not sure why i had increased my changelog in first patch to v7 before...
maybe mixed with the pinctrl series

regards Frank

