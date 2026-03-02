Return-Path: <devicetree+bounces-269958-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wEgENPJ6pWm6CAYAu9opvQ
	(envelope-from <devicetree+bounces-269958-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:56:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F661D7EF9
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:56:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 85A74303988D
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:50:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D27FD363C47;
	Mon,  2 Mar 2026 11:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="OkppxAwU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D7E359A69
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.210.182
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772452236; cv=pass; b=ZAkquUU+rZXU9Iz2ujgbZ2ClZ9c99v5Nz5tb7pn2AFUbvhRaWZMx+3oBKUqQ0uN5hvNYqXb7Gndc2d71TPg/zEe64DhlqLNCacOjrWg0L7HNjmOBXxD9CAI3P3luJ/ZE2i7l3QUGIhP+d/uB9mrHx2aS76LfuDOMD3YuVy1xMg4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772452236; c=relaxed/simple;
	bh=pMQatoLJn7LPYfhjMKxOE1X3JwF3SMbI1q49OGFuMl8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=clF4KOJRn33CU5i5gotwbLoVwf8TzKi9sIPzvXyX1ZqsVagyuuUQEqACqWf3CIUSBlLJHMtBzkJsWirWzgJKhUriR+6EdHKSqT+atvOJDZc+WotlfMhEog3T9SKWq7JPpX4ktLBMwRNaTnvkeM1eD73NdAKbnUDg3tO3Vi/f5I0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=OkppxAwU; arc=pass smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-827336c0994so2603070b3a.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 03:50:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772452234; cv=none;
        d=google.com; s=arc-20240605;
        b=SXXHndqdwYZUrXnuwHf6OUN9ETsCyl4FAb2AQFvMC0BEAGVNy2EDVMJ/IaE3O2wEb7
         bLIWiY0y+pOFI22XWb8K/gz1zFrHquVX37v3/S084R3YPqMdnumdc3DqZjoN4WE2JaIm
         VV3a6qR53PKUP9V3L6HYoxkzPg6zLH/2OiuRJcuDfJ6WFo/uUs5hHephiJPtAQJJZPnP
         gk9I6x5aIKAx+htNvIZfTNiE7XpR7Ur9DM4RsbffCv3gkShBWQfmCClwomOjdAFPE5wa
         9loO7IASzC11qi5qgXKagkoSJ8KkrNFkR4PsV4V5AIgXQ/v5bhjF6t7fY7rNGsG53vAL
         BstQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=pMQatoLJn7LPYfhjMKxOE1X3JwF3SMbI1q49OGFuMl8=;
        fh=uDNwRb5RJCQm5lm+b+z2kQsLx1P5lzdA6ZzfA6Oyp2Q=;
        b=dPZB0vAZeVr4gzdeRORTCJJ5DX5T+x06Sqf3TYVS32+0Kd7QZNFqj0RpfRF+zD5/TH
         Cf6s101LpirXEmuA6Dtop28F4JTWuUo53w4xdoecy52F6W1vmJ9THl764zWcUGgPf6NP
         etgUPhuTdHzlceHykrbpEY4aH7eisLyShBtH7/to6DrmnWLs+Ighieh/gJ9D2N/0O+K3
         FbzxyvD1YsYoo9Wh0SWi6bIpoIl8BZj8CUGUX+bp0HyyzINiymZZBLLoR1Uiff9a+lyR
         lPFGHLYaxn99O6HuFFHRLq8K7H/s8grlF3lCwTili0RNp2ya6gBs4ig4JcfixS6rs9CF
         qlww==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1772452234; x=1773057034; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pMQatoLJn7LPYfhjMKxOE1X3JwF3SMbI1q49OGFuMl8=;
        b=OkppxAwUxAXo4mIHOvWdyBd1wr6sGrLekFJSGf0LJRTjfboh7ZaG6nFAa0Vsxm9nwW
         STN/V1q7qhlX+H8kxKkCrfsHYUMbLiPlOuCOH+MwYPfBICCO1ySmDPzx8uMS5O9TReQY
         PMauBsF7mOLWBOriibtODYY/kAbac1lM3pui5AHwa860o3u8fW81S7xmGL/aBbuznhAV
         +NKgj/V+76r/PK7w4PpsnxPL4QdoY4HakR4Vr0e5PFQx1f9jIb8H2vNfGRl1G3t2fVTM
         5vhQU8C+V+wOIaVE74hHHJYT762cZy5TLCR6RH+KECIfT2+YDbwQ9Msr3R1FNi3vx2Am
         u1nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772452234; x=1773057034;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pMQatoLJn7LPYfhjMKxOE1X3JwF3SMbI1q49OGFuMl8=;
        b=kzieqNT5phO22dXSSvZHdmXmh1XhCnh61riI9I0eT7A1jrlEWwjxx9sJbIJLp3xBp0
         mFsS3CKnQN4IoEfcqNchCynBxhrfLUO8hRU1DJoLAzZ3e0RoLywJIriJYS7fBfSp/sYj
         LjxtpAJgTUEhWFbKRDAV4gByyqF7/eAYmgGoZyqHDe4QtQuicGPuRTVS2EhbePqZEZ5U
         Fm9lF5rDbBxLITWQaanV/dIYRxHfEK+yJMjSeu1nkVYeT88s2SbCmyxFQ/GNru4oKRwm
         GPCSUG7selYTyThzF/f3tm/Ngpv1QTzWKiRiqdVWUGVhRUeQWoHFvJOIGbf3y41A3Rkq
         U8ow==
X-Forwarded-Encrypted: i=1; AJvYcCXnTSGC2tmg5+sXHkwoVw/ikZbke4HpptNobzawmOoGgysOkhe7BUtSP5sPq7/8/OCbSmkpnEBgowHv@vger.kernel.org
X-Gm-Message-State: AOJu0YxPAV44msWb3auq3hK9T1c3QLLlF3sTi1FBalCyhy2I6IWelSYs
	q9NS/UUG/z6NszwHxtKjN6+r4/cc3H3OQmx1JVeogZPuksh+gdv3O9tdqT3XktvyyjGuUkQTv2o
	9SYuZvj2tJZV2eZ0ac5jLuUScAjs6bTI=
X-Gm-Gg: ATEYQzx6FMx72Aj9wU2DxgwfLojH6xmAYkTKUcvU45MDzVBnXsse1xR/FVamMz1LK28
	0sFfQDzs34C/0VYka3PyBRhsOi+iSMsb9EMlHlwbaR4F9fWh5nn3aM6EnAc/jScyA+SxRCk1dx4
	OWi0I3dbnPhEXcNptMl+BhgOX3wc3Gg5Mzu9wwk7//4WpEZ6HiOjT2K93QcsDr3hHy1ejpazt5S
	2rydI0WOKw4WxEeqd6onUAUKkbtuznaLmJ4lfNZOQ3zivQqpTRJCv7itBwCq7uV4ND0Qb3TmLIW
	G8N5Hj7EQNRsjOZYAwX+IoZb98FAw9hFfdcFWUKb
X-Received: by 2002:a05:6a20:1587:b0:38d:ec17:180 with SMTP id
 adf61e73a8af0-395c45380dbmr11083219637.5.1772452234257; Mon, 02 Mar 2026
 03:50:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260228065840.702651-1-nick@khadas.com> <20260228065840.702651-4-nick@khadas.com>
In-Reply-To: <20260228065840.702651-4-nick@khadas.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 2 Mar 2026 12:50:23 +0100
X-Gm-Features: AaiRm50FgM0_ss2LirCLzQnYitD-NcE8mXa7mwvdIpZAszvT_xHoXBROvJuWmHI
Message-ID: <CAFBinCA-sFP1ueM5CCXHWXxrHgbjYhJejq5ShHCZzs7JKm5uAQ@mail.gmail.com>
Subject: Re: [PATCH v1 3/4] arm64: dts: amlogic: meson-s4: add internal SARADC controller
To: Nick Xie <nick@khadas.com>
Cc: neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com, 
	krzk+dt@kernel.org, jic23@kernel.org, dlechner@baylibre.com, 
	nuno.sa@analog.com, andy@kernel.org, linux-iio@vger.kernel.org, 
	robh@kernel.org, conor+dt@kernel.org, linux-amlogic@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, xieqinick@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269958-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[googlemail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[googlemail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,baylibre.com,kernel.org,analog.com,vger.kernel.org,lists.infradead.org,gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[khadas.com:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,googlemail.com:dkim]
X-Rspamd-Queue-Id: 72F661D7EF9
X-Rspamd-Action: no action

On Sat, Feb 28, 2026 at 7:59=E2=80=AFAM Nick Xie <nick@khadas.com> wrote:
>
> Add the SARADC controller node to the Meson S4 SoC dtsi.
> Uses the newly introduced S4-specific compatible string.
>
> Signed-off-by: Nick Xie <nick@khadas.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

