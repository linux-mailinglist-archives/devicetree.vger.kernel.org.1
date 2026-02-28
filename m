Return-Path: <devicetree+bounces-269612-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNcKFZJLo2nW/AQAu9opvQ
	(envelope-from <devicetree+bounces-269612-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 21:09:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F321C7F76
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 21:09:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E4CB4311FC0E
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 19:59:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B65993FD126;
	Sat, 28 Feb 2026 19:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Tvilz9KY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636323FD123
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 19:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772305976; cv=none; b=VSzR2B4bFKkoIxpbfgcniDEnJAcpybvGbSEwq+s0GUN+JngPAgyp5Rx32aWsL6vrabvmbCS4qdxvqUOWnyab2wjC405RxdAd4Z8g7yz9MOq0EJuk6pvdtp6g6H3N8FtRjBaKdvjSMo+ndZutAfW7Xza3uFUFytaqi3jZvZozGaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772305976; c=relaxed/simple;
	bh=7vHUIFMe6aqv8rNlp8GpXSth7AdqP3Jvt63LGxY7hZA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dt5L2/lBMYfbyPKhBilfPmgv0QVaVWxxK6ahOBnic1vU509q9+R5M2yHEP/BHnuurBpE6OSn32AsH+NVyVixViQge4PDW4ujG0VcZ2Zzt8xMdwvZf/AezeNM1gIlHtSFZwCEbATQAtousBIfWn9/lMufz6KzVQxvAw/LqHfmxDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Tvilz9KY; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-48069a48629so34108325e9.0
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 11:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772305974; x=1772910774; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7vHUIFMe6aqv8rNlp8GpXSth7AdqP3Jvt63LGxY7hZA=;
        b=Tvilz9KYpvIy98x5mEsAFMwEkE94In17AmiHNfuoN0P014uktifJ+s77I6HiYf9oMB
         5l70JVOSZGX6Nz+r0sch0oMqkZY7OJqJTgfyatepXJutWF0RIelrgtqp8FODr3aJ5RVL
         Vam4gmZUbP6npkbu+C+w+doUytlTM/yCh0N160LrlDlI0Zdnv56WB0pQOEmuvDguBEj+
         T36SJOovQYZyKFxlZGv6CCq2wPCLLTN9vpHPeyw2PewxtufG+PWRh+M8O7Iae7hjxERl
         83n0Gdi8/XkE9djOXh7G74Yu6xYw85OFpXzkG9XgnSEYwx2oKRTm/HeZx3o3V+5lr6PU
         9LSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772305974; x=1772910774;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7vHUIFMe6aqv8rNlp8GpXSth7AdqP3Jvt63LGxY7hZA=;
        b=PWWhO+lFQCcHbHOzkOcvuu714U779QZvZQsvAocVAV9g+3pxcJrakGlcLPQpBknfoY
         PsdIFVYUefSkAuWtIFq15b0Ul8a7IxtIoBv8Uvl+3zuubq9U5881AfVPLhl55+BakZoS
         biIy27iKKC4VWvpLk4EiRlWmemI2OXraIp3Ptg04WuRo6F+dIaJ1wkeDeq2+dTs8Qmtm
         eTaVukychM6GzZUu33PpYoCLgaVp7X/ht/s0+08GkB2XbnL2ChOJfKswvLtXWa4ZYwTS
         esO70dWjdgMb/0My4zyMBMHvDexmGrjBmuMZeN0kCs0R+875YgSvN3IsUBbPAhiAoyRH
         5mKQ==
X-Forwarded-Encrypted: i=1; AJvYcCU5Ux+pB+AHxE2mOouPLIJ8BguLVV/pUbAMlW3gjXTIpsIqgEeDS8GcKpGn/LTUiRm3x1LlY5npZeWB@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1nAGfoFjsQrWk64A0+vgCHO9NmNzCc1OPAUHKKrURlxEdHduR
	OoE4LJTJCTwz29rYMzFZanWIxdfaD1Il24ms+ZnhvHQgf7txE60fy6GW
X-Gm-Gg: ATEYQzytfjoC3r/lmeX71PLwpw0FkMzSJRnRo7zGgZ69XKVXbOsIOJfIMVRUKz81x8E
	ED3wjXAhucIj8VOvFeYNLoN3q4Ofs2zVHJEMUvhWpbZbPvMFDyFR+sohQB18+J8kClCPfL67pWK
	6eVrwhpZCL1x03GTAXHSOzsYFseo1RFtDiYdmyCWVoJ0Ev5Sc663gz1U7vCpO9SCrTqZauJyKDu
	tTWDAw6KLq9fq4CPLOcPuNRVn3Qz3RZrKRaL29DwyEFlt7LewcAmDeIAkA0b7pjphrY3kEo5EKu
	XZuhGH3QxYJtWVZJFXlj7I+XF9321fq3LqZlXMxIFY6EIwlqpLJl8WQy827R8ypVbx8TiDXhQ7B
	pJllwPQLNAvHg8yvIEQNJKHfeFdfc6Aj5JfrLNhilgBPyUid939GkTjkxjdTLPEGA5p+ZHzokeV
	orkmcFm34Me47pMYnhnjCzh0wqvBf/K/6oEgkyMsN++xDd
X-Received: by 2002:a05:600c:8106:b0:477:b0b9:3129 with SMTP id 5b1f17b1804b1-483c9bb6573mr114108805e9.3.1772305973660;
        Sat, 28 Feb 2026 11:12:53 -0800 (PST)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfcb318fsm141401095e9.6.2026.02.28.11.12.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 11:12:52 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Mark Brown <broonie@kernel.org>, Chen-Yu Tsai <wens@kernel.org>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 3/3] arm64: dts: allwinner: sun55i-t527: avaota-a1: Add SPI NAND
Date: Sat, 28 Feb 2026 20:12:49 +0100
Message-ID: <5079872.31r3eYUQgx@jernej-laptop>
In-Reply-To: <20260227175157.2339758-4-wens@kernel.org>
References:
 <20260227175157.2339758-1-wens@kernel.org>
 <20260227175157.2339758-4-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269612-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 32F321C7F76
X-Rspamd-Action: no action

Dne petek, 27. februar 2026 ob 18:51:55 Srednjeevropski standardni =C4=8Das=
 je Chen-Yu Tsai napisal(a):
> The Avaota A1 board has a SPI NAND chip connected to spi0 on the PJ
> pins with support for QSPI.
>=20
> Enable spi0 and add a device node for the SPI NAND chip.
>=20
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>


Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



