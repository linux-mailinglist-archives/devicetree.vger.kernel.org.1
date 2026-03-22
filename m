Return-Path: <devicetree+bounces-278713-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBJ/CkTtv2my/wMAu9opvQ
	(envelope-from <devicetree+bounces-278713-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 14:23:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 742B52E9718
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 14:23:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7F3B3300E3BC
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 13:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C644132B9A2;
	Sun, 22 Mar 2026 13:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABj+hewg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2E9432AABA
	for <devicetree@vger.kernel.org>; Sun, 22 Mar 2026 13:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774185349; cv=none; b=hFjyEWWv3rlp91XaWxzCjIda9FAtQGn7KIBU5ELYR3XbQIVOTlY/SfTmiv7zSC1N+6fmsed2rlFAQ3RUuUjbR6HYWD++eQ3D8FSeehsN0ZbB+8L3Nt4HFCTdTV2F5a/B+0yDfoDo3Hm3nsSgNvo6nj+2FaAZsL8JcwUPDXqz1Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774185349; c=relaxed/simple;
	bh=XgIurM27+yuPnraUNcace74O0DzcA/FNq83Lf7ACMtQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=C65enw3WJg5BfmC9RhrcsPBsesdJjYvjbZXk1y/Ys0HR2ss4FS8hhHx1Bq6Np62Y3GgVVKUqgcMm88mq2G1VBJWohml55AWCxH6DeeL0xhkPLVNmKGFcVGnFVvqQ6g7En9NUuyckDfCTV6chFo+Iqr2cTq0Uak+k5qVZkVBP4U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABj+hewg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F27FC2BCB5
	for <devicetree@vger.kernel.org>; Sun, 22 Mar 2026 13:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774185349;
	bh=XgIurM27+yuPnraUNcace74O0DzcA/FNq83Lf7ACMtQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ABj+hewgDocJHq2qPbVtB5Hf0qCPM8h/2O6Fx7HMdCwkKp/kEbM7Mak96E3KxzQfg
	 sx2lXqdnkWQo0Rpy4SX3PHDkd0Wt4EYXytGHm71xEtlFJ/HPCXUAn4QDOSvFh3pHFt
	 z0gr/kBsQIpPP8gIK2wdvJxCX0mpmIMgfQT7GM+T0gLt2eVabIEw18iMhQcjwMPsDQ
	 fb0yLsVNcj64a7cpz7Tl/A6XZ4F49YVzmPYmtlJyizDusNS5/fzliC4M/pf+1j0aHT
	 Kl4ED8TP5ec+WOsLSk2MOA2z0hUd8TGULmYWF8vCskFUa5kJHF09yxTbgoNlgadSrj
	 wu4BbfLD/jSmA==
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-668c60b8f45so3978452a12.0
        for <devicetree@vger.kernel.org>; Sun, 22 Mar 2026 06:15:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVms6QXxMwibbowwpFpeFxatdasLZjzrNRRMHMSD4nW5BhZDgc5NyQcGf/lRIt3CZqQeQAQ6RcMx+R3@vger.kernel.org
X-Gm-Message-State: AOJu0YyG93hShB0k1oVNV7MfHIJburx1eiAdXVw1ba8cHIxMCgke5WbE
	5tHpyhrLWqF5499aLuUlskDDArXwzwwROdbdADGM45oHrp39Vy+8kze1e/HOnSOxZxaSd18yrYt
	J7mffqpH1umjYvzzLMP/0BEa1/jrS9mc=
X-Received: by 2002:a17:906:eb46:b0:b93:89cd:2bbc with SMTP id
 a640c23a62f3a-b982f50de73mr503440366b.56.1774185347917; Sun, 22 Mar 2026
 06:15:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <tencent_325FB1D2C600CD55E367332EC453E5A64B09@qq.com> <ab_iF2hjZRfp16HP@pie>
In-Reply-To: <ab_iF2hjZRfp16HP@pie>
From: Huacai Chen <chenhuacai@kernel.org>
Date: Sun, 22 Mar 2026 21:15:36 +0800
X-Gmail-Original-Message-ID: <CAAhV-H7FZ65D9mHgW8_-_QiZ2Kv2cxVo5P72AJhc3JptviFpNA@mail.gmail.com>
X-Gm-Features: AaiRm50PppF1EV4HWBhOscL6VJ6mdhxpTPfiBfUVbEHaqZXVEmFXdeP5eO9o5j0
Message-ID: <CAAhV-H7FZ65D9mHgW8_-_QiZ2Kv2cxVo5P72AJhc3JptviFpNA@mail.gmail.com>
Subject: Re: [PATCH v5 0/2] Add Loongson-2K0300 processor support
To: Yao Zi <me@ziyao.cc>
Cc: wjjsn <wjjsn@qq.com>, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	kernel@xen0n.name, devicetree@vger.kernel.org, loongarch@lists.linux.dev, 
	linux-kernel@vger.kernel.org, wjjsn <2858482031@qq.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [8.84 / 15.00];
	URIBL_BLACK(7.50)[ziyao.cc:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[qq.com,kernel.org,xen0n.name,vger.kernel.org,lists.linux.dev];
	TAGGED_FROM(0.00)[bounces-278713-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_ALLOW(0.00)[kernel.org:s=k20201202];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,body];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_SPAM(0.00)[1.000];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chenhuacai@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:172.234.253.10];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,ziyao.cc:email]
X-Rspamd-Queue-Id: 742B52E9718
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

On Sun, Mar 22, 2026 at 8:36=E2=80=AFPM Yao Zi <me@ziyao.cc> wrote:
>
> On Sun, Mar 22, 2026 at 03:13:14PM +0800, wjjsn wrote:
> > From: wjjsn <2858482031@qq.com>
> >
> > The first patch adds the necessary DT binding documentation,
> > and the second patch adds the DTS and DTSI files for the SoC
> > and the board.
>
> Please note I'm working on basic drivers/devicetree for 2K0300
> platform[1][2][3], though the series haven't been updated for some
> time... I've re-written the pinctrl part, and will try to re-spin all of
> them next weekend.
>
> Also, previously Huacai expressed preference on delaying devicetree
> changes until basic drivers are ready[4], so anyway we should probably
> get driver patches merged first.
Yes, I confirm that.

Huacai

>
> Regards,
> Yao Zi
>
> [1]: https://lore.kernel.org/all/20250523095408.25919-4-ziyao@disroot.org=
/
> [2]: https://lore.kernel.org/all/20250811163749.47028-2-ziyao@disroot.org=
/
> [3]: https://lore.kernel.org/all/20250816033327.11359-2-ziyao@disroot.org=
/
> [4]: https://lore.kernel.org/all/CAAhV-H6EDEf3U6w5KY3R3HCAdAbqDefqpE3ktCQ=
eQtFbDK2Ypg@mail.gmail.com/
>

