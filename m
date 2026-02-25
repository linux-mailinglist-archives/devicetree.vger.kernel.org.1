Return-Path: <devicetree+bounces-268479-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOBEFogrn2lXZQQAu9opvQ
	(envelope-from <devicetree+bounces-268479-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:04:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A135519B2C9
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:04:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E3DC730B7161
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:58:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E86573DA7CF;
	Wed, 25 Feb 2026 16:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PXsd8sLl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABA533D7D9C
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 16:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772038688; cv=none; b=kuzW+II+8WsFYL2vWIoOdLWmnStfm2DVEeXmG3fbzE30HCZVn0kBWPezRBosFX5xnB1IY6vI+wYtn6wgE+6ju6QHAK8KK+thuMKOR+gIt6HwLApgLUP8Abm9+gp+P0lNtg2SbxPekbvFJNq1Ub/CSVqd2FSLkm+dbf82T5Z51zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772038688; c=relaxed/simple;
	bh=LsyQapBUPdwmIiG02O5zaGYSemSJNCNHx7rED23cBYY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JvWRPEp3V50UczQOQuamOBzM8IQ22rSfFgkCJy73ICZeNZMjbd/GzIYyxJ7yiZ41gd/xKsHvu7TZW3ZqNJbVAE41VuX89u7bi++DRTWc+xf6C45fLy71tpesbg2iz734bVLyxLErlB1hrpJGGGsm+nIQj/iyZFTOlzPEyJyvOrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PXsd8sLl; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-48371119eacso81040315e9.2
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 08:58:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772038686; x=1772643486; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LsyQapBUPdwmIiG02O5zaGYSemSJNCNHx7rED23cBYY=;
        b=PXsd8sLl5ND5aTXr6Mgjme4GqIbpZrFq1nIYXjq4Uz4voGLpiCT8S98CcK440KJFlc
         R3DLh9nSsAl5H7jHyWdEqc82jpp8SGP9XvY3ta3UmvAKgj7jTqTzkhTRzZUn4BKHzZM8
         Yg1rqtE1CwCDKzbCc8Qo11byPDmvahWijsJCMnJO2zvmDAvgz2O7Laqr52HaRRu6p6r6
         I63k73GsIkcalwtozR+UGlyfXIAMCRvQhPParNcjFs7gweRPtGaHISJiY54vRc6H6aeh
         De4p609c9mhXioExHHRBjXIubYmFoMUue1S3KxIYJoAaRJl8TJMxeQFIUWpEup/HfBwF
         b2GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772038686; x=1772643486;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LsyQapBUPdwmIiG02O5zaGYSemSJNCNHx7rED23cBYY=;
        b=Vgnhkhakkd+apfA6tVOQUtQ/PelZojPO3XgtDJ74JPCHwF/uwIzzTIpMPsUbjyvwyC
         6FJNR6+gMyo9xr2GIK3CJ7fK0wDFkx6u/tWnbqZUJpJ2VCqGZfBR9reqQeszsBJu0RWf
         FrZfJ5t9+1UVJuLCcGoRyr7/gaq0k/Hl/vsMiZO1l1gqnnYN15RjZHNlZphMKk9UVYfo
         2BsWteIKh/4LWp5sNb2GF1HZVg82kc01u3X/vKBVcxr/0eyBtV4fBn2wmgmlVdFCC3Kp
         XLiQr35BSSEI7Gsenyuj5tL3RPd5vejkkmIRki/SpUoi5Oqu+5G0v4H2zfZWyXxzx5QY
         qHPA==
X-Gm-Message-State: AOJu0YyJLCuE/T2gXRPqYiCvqfP1ErykvMCDYXoFWpP9sQDR6Nb/+gnA
	48SDP5/W8QVdlkiN7Fo7MvFI8T5pHs7VtAxv/rLd16XD9u2pGhItLtPi
X-Gm-Gg: ATEYQzyMmH1zSX9lKKIxufpmFrZDtb8XzlTuZW9OaJxRYNCSAKaWjXJV/LJtLtYEI/Z
	C2Sdfj0B75Oq2d3g+q0F0at/5Ezii/mFy3uqCg8CRYxy1gEpaDnpr3rNNE5cC/xT/e68SemBkUP
	LZqvtWDDSJq9BCkgXUaZJ9So0ouRWfDx32Plh/ORJR+ypZDTMAI3aka2jku8KEw7CvX8Y307hP+
	ArQmYtwOvK7YIMNl+zSEPSLR8DxRvB2Lh22+P02A7lNJ04JTcbA+DZnnxwugN0INiACkc7boYG2
	eftYTw4wtfAL7b2lTrEoP9eLk7HmwZ2HHGr/zP0gC7CYQZWPjHd4pCxuau4vwrfw2hVwO5QZ0yH
	ksAlq1ok4ifBOoxEHA1zRWIXCsJbl6tR3/twTEdxVOKEFHntwzuc82bvE+WXPR90lGy4t/pIJSy
	zpplyK6yuXhX8Wawi0W0GO+qo6lOfd69n7Zj6ppqbZ5NlRs9gHhDqxkNRWfdAL/pzrNBKDcmyjy
	H46TApb
X-Received: by 2002:a05:600c:8b03:b0:483:c12b:fe4b with SMTP id 5b1f17b1804b1-483c12c002cmr31522165e9.9.1772038686018;
        Wed, 25 Feb 2026 08:58:06 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-126-118.dynamic.telemach.net. [86.58.126.118])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfb789efsm29583655e9.2.2026.02.25.08.58.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 08:58:05 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
 Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Chen-Yu Tsai <wens@kernel.org>
Cc: devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-leds@vger.kernel.org
Subject:
 Re: [PATCH 1/3] dt-bindings: leds: sun50i-a100: Add compatible for Allwinner
 A523 SoC
Date: Wed, 25 Feb 2026 17:58:04 +0100
Message-ID: <5968038.DvuYhMxLoT@jernej-laptop>
In-Reply-To: <20260225160828.1687643-2-wens@kernel.org>
References:
 <20260225160828.1687643-1-wens@kernel.org>
 <20260225160828.1687643-2-wens@kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268479-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A135519B2C9
X-Rspamd-Action: no action

Dne sreda, 25. februar 2026 ob 17:08:24 Srednjeevropski standardni =C4=8Das=
 je Chen-Yu Tsai napisal(a):
> The Allwinner A523 SoC family features an identical LED controller as
> found on the A100.
>=20
> Add a SoC-specific compatible for it, with fallback to the A100 one.
>=20
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



