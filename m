Return-Path: <devicetree+bounces-267077-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IIMLFSvQmGmcMwMAu9opvQ
	(envelope-from <devicetree+bounces-267077-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 22:20:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D0316AF86
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 22:20:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ADFF330214EE
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 21:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E08612EC562;
	Fri, 20 Feb 2026 21:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jYOHf4Zl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83DC4238C29
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 21:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771622425; cv=pass; b=UXbUmtWGCrFMTb8h5TO+a3duM6acbEF7VN1kWNzFz7gC26GREgxM13NRUf0yUmDAEigFiUO8j57EY15lemliiQljz4P6+Y5HYhcCN58ZaybkD5Nz6+HpCy0Ahcklx5RH9q2SuwfsmryZlQnIH8fteyuRaJEZlBiy+BPgBUccyrs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771622425; c=relaxed/simple;
	bh=s/ehpuDLYCSiZo06p7zgUPmNgRW3JzvJYGyW7ub5l/w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LK5sxJz3zKTGndi4uLbhbfryxRdoXtke8FwfOubxo6zG8Zq0yst8hRllAsMl4DVKytdAr+MrAHy+r+/crysDXSNjvO9fEHTOB+NjgSkE30Rz3mt/ouyI1H9iTQUcFf3TeIhE1dA/XWz6nkROcjBJT/1xoTY6tZP8/FLesxqlFEQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jYOHf4Zl; arc=pass smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b8fa449e618so403209766b.0
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 13:20:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771622423; cv=none;
        d=google.com; s=arc-20240605;
        b=i6+bFnUpQiodLnYaaWDepQXgSftNS1xA+b5Si3CWXCoF5eWZYIWHsfR6R+Sh2U6laC
         AQFnDLwklUE/gQHCVF3crzZPeo4yo7eOXk3kruI6Sm8g0OTZXtrHSLlNpIFUfw/uFtJ/
         TjTaFzaqfaYoXr6rGttSeb/kFxmoHBRujA6Q16sUVePNnSWH9uQk8RsTcvpEcjuCpMki
         0bonhS5DN4f6CyiaDWqWWynZRnwQQif98A/Pxy/h9OD50xsVQyXgssMPQ8vNxv0YY+r+
         MN7BC0ZH9+NoFzfGbOxlU4UBX6uLEGycgWJtg3nvy2AxzaaX9GtdoRqMchjaQT2dEwaR
         AMnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=s/ehpuDLYCSiZo06p7zgUPmNgRW3JzvJYGyW7ub5l/w=;
        fh=29gGerRVVshINph373u6cRywoHd2ZgnjHXPitlnBseY=;
        b=fihnWkXy7wYPK3BX0yNsQWZqeMFU1nBgi2c9GWZLJj3Eaego98P1dopLI4VYNeJ3aU
         qXYE3+/TlVnVossbCrGVXot0kJvLVDvxEGbnl4uAk05o+up2rIXZq3EKLJEpXvpyYmSu
         T5obQh1fmN7ckJa91TCiiFfoOkZKRKYCwgkjTnu39czY2R0TAETT3m/gwkZbWjPv5rLl
         knk5QxGOMYHuFNopK/gpIKtEis+CLRF5MNJpVpXG3TrKUufW2WynBWEEzGqlU+pKK0RS
         0Z4BmtKVXAh5foyg8MLT+OUswK1V4ggAxRVi/qB0G1PU+stMcivUcI50vON7+b471aDq
         F+AA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771622423; x=1772227223; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s/ehpuDLYCSiZo06p7zgUPmNgRW3JzvJYGyW7ub5l/w=;
        b=jYOHf4ZlWXqSeM5jMCBTW6OyG9atcEEEQCzrDarElyA6UGNMXF1jqCbOeacRqiFs7q
         Btd9RnJ0Wckut73fakhgfnhfQkXoBZGl4ac4/rLcGOaAVRlcqVKqFO0pFmjbsZdjqyGZ
         0SbVru8jRzKmj3vAjHrhWTv/smD2L5s0TBzfEhmGlhfg3rxa/h+FDxVPAoLgS4LlDmRM
         MaNdhdKcpMPtiz0Hxl5cAmkkLIfMEJtFRO444NXDuWYtyqtK5TyAtg2L7F/MXOgA45bo
         zobfUJYP/9wFszQqsrdjYsTGD40LBBTQgy7Vcumv/U+LfEUMKIDoA5Iq/svidEqlzmSZ
         ZWDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771622423; x=1772227223;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=s/ehpuDLYCSiZo06p7zgUPmNgRW3JzvJYGyW7ub5l/w=;
        b=FOCtUydHfT9WK7sIuX/chapoMthV06bX9IaWfRAhfqCHbN3OY6YLF+vq1XB8DcEWMv
         9OcegrK28/krhlqQEW1S7DuTCfA8ihMSse9j1PNy1e9AjHpy22ZGAHs6hHCBLSEIHRvP
         9F3YB5Op/o/EB8R13kA1Z1uYIPlq68oKfihXMXEJECQ2ya26n9EV/jZ2KQRDFaUe50TE
         +gZDLVGKBhNjGqqYE6NvS0Hgv7gaovx9uWYnckROM/OZH29sbksRz5sxSdfRP20m0dju
         ftxgNRHRAiRLdZDsDLiehF9T4d58lMb3EHiIFqEYdwOlrPYl8KtNGcP5VLBvI7KxOtpB
         6fqA==
X-Gm-Message-State: AOJu0YxMCVzjIiabzU3E8rbJt3EI1OcuwfVHeRVwSnDfKBU1CbQAb3Jj
	bnwkC1CwMW5BGFzGwOqZ4YH58K/ClmdrtCZcV2kTS8XY/oc2exIs8Z3GpOdoL2iCBWtPer099su
	ad9k54VndxAaJJSozJn2s0iJNhbAjWNU=
X-Gm-Gg: AZuq6aI4weGmfG7Rq7Hx8xnOQqJLL2SOz/1hfv1O6bWv1X1gCUofQl3T4OE6uMm6g/S
	exoRK8+E1pQsTUPiaHnOi13XGdpJ/nGhtV+sa9a/Q4r3jpEkxuFxr08vXHYtcGxDVuJ92ltyB4/
	Ahu6NJ7jQwoAdSlcuuEa/jyAOOcr2qsnpg3xaCEGPALUylD0hPMdlHl0VDaegx8dBnV4vL84WBE
	G7ob0qNwU1nfMF6PicTMkvVeUg8sgm1isyUNQytG4XSwKAivkOtrYYJuk8qtfIgAsOaKCh/E38B
	E6OlYQei0algbzBVZ/q2YyQEUWoYRM0=
X-Received: by 2002:a17:907:26c3:b0:b8d:ce06:8a25 with SMTP id
 a640c23a62f3a-b9081b3b147mr45307966b.35.1771622422727; Fri, 20 Feb 2026
 13:20:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260220021353.40554-1-rosenp@gmail.com> <CACna6ryBW-6b0UYaMq12Xf6bdgQV9AxYajb9use7g4o=VK59+A@mail.gmail.com>
In-Reply-To: <CACna6ryBW-6b0UYaMq12Xf6bdgQV9AxYajb9use7g4o=VK59+A@mail.gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 20 Feb 2026 13:20:11 -0800
X-Gm-Features: AaiRm524Y8fJXV13-zTi5iMufwXiCDxpkNYZpVDl-ejo11ObH5bRZxuW451l-VM
Message-ID: <CAKxU2N-UYZyUdc70H-=Em7ydBve5HP35agu7=pqozFTQo0A_Tw@mail.gmail.com>
Subject: Re: [PATCH 0/5] ARM: dts: bcm470x: set MACs where missing
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: devicetree@vger.kernel.org, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Hauke Mehrtens <hauke@hauke-m.de>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"moderated list:BROADCOM BCM5301X ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267077-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 33D0316AF86
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 3:21=E2=80=AFAM Rafa=C5=82 Mi=C5=82ecki <zajec5@gma=
il.com> wrote:
>
> pt., 20 lut 2026 o 03:14 Rosen Penev <rosenp@gmail.com> napisa=C5=82(a):
> > I believe these predate the bcm,nvram driver, which makes this
> > possible. Downstream OpenWrt currently assigns these in userspace.
>
> Changes look good, I just posted one comment about commit description.
> Thanks for submitting this!
>
> If you check
> git log --oneline arch/arm/boot/dts/broadcom/bcm470*dts
> git log --oneline -- arch/arm/boot/dts/bcm470*dts
> the prefix always used for NS patches was:
> "ARM: dts: BCM5301X: "
>
> I guess it may be preferred / required to follow that.
I didn't want to make the subject line huge.

Actually in such a case, would it make sense to fold into one commit?
>
> --
> Rafa=C5=82

