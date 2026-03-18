Return-Path: <devicetree+bounces-277060-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4GqUOfloumnnWAIAu9opvQ
	(envelope-from <devicetree+bounces-277060-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:57:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 584692B890D
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:57:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4FEA13013269
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:56:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBF1739478B;
	Wed, 18 Mar 2026 08:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="afTqvm77"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F73F38F94E
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:56:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773824218; cv=pass; b=uGJ12iYfQ3DSvc/cQWWBppLkqLpwOZeQbs64FwdRbiUhcE7KWWSKt/ZgAY7LRVr7sTHrJGO31fJ7xX4fZpgysl4XtiEJhb6Xo9OacUBJZBDxRgrMxhdCUJmw+zF7iOwy1htJXfpO0cXRcLzcO/MXInUy3ukA/sWjvweSBPrITYA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773824218; c=relaxed/simple;
	bh=L53pObIS0rYVHm+piAwTMbQG38WFZI9xZa3E0ELmHKg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R0KF8A9KSfNxjcFuLojCvKt9gWpUPKPNv+iylQPy24STPIlylo+Gvw2v0/JlLObreDvgoYPHpd6TDncw6tuDxlIOwIShhKMivVEyLoSKFFQJpEoZ0wJ09mEcepnZEE3EbG8N9c7GuTCNIs9x9FYe6+8sxnvtRo7Is3vno4wtUB0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=afTqvm77; arc=pass smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b97b7e0368eso461882566b.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 01:56:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773824215; cv=none;
        d=google.com; s=arc-20240605;
        b=CwNUe2g8oVyOHjXApl9ekKG5O5SAyNVSLf+uibKV9/AQuEWpZ/FY+RiW3QlMVybE4U
         CUJReEU6fR03xMhkoe5MQW8jHJWWn19P2X0BLpxVVEH8I5tx+nu2meBQlSAnX3dg2bLZ
         gFCQ8vn5BIVgQvcoM+Z8wrXBd4Q01GEsgMSBF6maV5WAUFjdlO6OU1TugG8bOho/ETVX
         gVmP88xyigh0af6ZrqcBo4iOt1/Fbmv3K6V6JVGPim5CUOtJuhdF8qTDUF97ianmZHtb
         I4MfSjQLQ8yTSlmu5oxh5TLJ4J98zu9Jb4lyZe7DTQe5aJ6Z+wM1zTM3nBuEwucPEl77
         NXwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=BiHpCwGFAOs/wXB6PtDSepAcPps28mvRmd8j+A87AOk=;
        fh=3grCqX5rN9qgoU7GZgqR80kGj9iO17vamFcE85ZLsGk=;
        b=dCMYTS59gKJa0QWdA7UOhPSOdGBzgC5WPt90ejfr6stOb3e6dx1vrhxOYJR0gkG5sp
         RJwx+RqLDjMDF0/v8gCgZFHp8VkkKnzD3BKPyQdHL5v/EIv4dYJNPZnjSMneRtxaKVde
         4ll46CWAJ9CNj/Vmt7RukzcnRBUk2s0xX3kkaM4KUk2RxvxLPctEsMojQU4fBkw+lJHI
         K4J6a2LD+KG/4Q6Dio/XOu9iO3e4egPBVT06Yicxk9Z818YvulBjhtgEBFiMhMIXXE0c
         2+x93Wfjjr7O+qLxbYLNEtyxjDH2VGWwBXt67VQngjZFNWImf1kJgPKcGBY7+9Sd+AcU
         sI4A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773824215; x=1774429015; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BiHpCwGFAOs/wXB6PtDSepAcPps28mvRmd8j+A87AOk=;
        b=afTqvm77EZBe9MDhzsOB7rzORylsTETQIndsnzjA24hK9joA8atogvXra65QNrJ2YZ
         2phQ5WwzIXpoO2D3pt+yjKR633IW9/kf3ifE5MuVbt/NDKFvbpJyjWqg7lCXimFVl4Hm
         FvlY3ZYSGCZFns6FUA/RpCKdYIM7R1kDRA/8UN//1edUNapMOB6QnU4opvflNTHS65Pv
         MihTEAFz5MnCz+aOeVfCJDwn1nWeViV8PSQXdGI/22dFWQc05JbqtYGGNEmdtbAVbQaI
         HiSJGvTaeDVi3BFHubORqwReEtWSoH4QRs8wYsLFWsGFOxiZ3MAmVZVPdx31CopNle5o
         ihXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773824215; x=1774429015;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BiHpCwGFAOs/wXB6PtDSepAcPps28mvRmd8j+A87AOk=;
        b=fVGDcuiMEQrNwJa4V0wf9aKMXVbrHQbb2m1luQz8P/WGqWGQQjBy/wYbkHaP3gknAo
         9AADK8S4JHrFK/vf80oT9g9rN2HbqopEJ4xhpm89iZ8oHE/9Gj/ESGTp4mOp4T6/eB1N
         7hEgb4Q41FohEwTvuer2Dlf9mqEr33Zn9kffMhYu/BaFZ4VCnroEenVzneOEtvhKsR9o
         B/WwSMSmAYTND7X7lKEW5bd+f/Aub5t+N9JaZmQyOAMVVFUt6GFblDSCkwvSX3BiyM8U
         nGhMLhDdTJnoKihSW6JgrjBEE8IS117MpxIMd0bEPFgQIZGL8EZr3WGs0NMGeZ2fNxs6
         0tzA==
X-Forwarded-Encrypted: i=1; AJvYcCUzWmXkfe7GF8SKVktEi8/CR0ZyRmqjoOvVGqOPyv3GLu82b76yHSSWu+JNTqWD1Hf68TaDKp7iq+J5@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo7hppRZvj8ly3wleElgwE+S0IunFoULX0idVQCmAex0syAz42
	fJhqcz8DY6A/zmn/NVBPjFd2pcKdEudhucDuUMF+hvZ+iIaGWCY3WY5umGq+PuY/hRlJ5aBGQvd
	A2nhbSNNLjr3tsC0a9TDciJRlepgZ0QDpUSDkRBeJjQ==
X-Gm-Gg: ATEYQzzuLDrQIe33SE3YX7PAgzFUUxKndJw1btKfSExYeAZ9mUj6JOcsRoiDev3zzrk
	S/NtpwwJSvniA5l3mFCVWrmJcthMbM3rFsHbUMHYPPDywWsMtc3tGdwe2JcmZzJ/EzD3PWC/IYB
	ZNezEyFdqIglshJvrfSmKGDeGmIHD9r5JfrXhwoATHOVrs2GCiOU/L5HEw0oWypGD4f8u5TeeQB
	Wrfcj5VmHqMd8g4fqclNw+UFR/xYHIaOgeGGGZM3DIFwps5AlI3lgTYpRkTW8jB478lHW5bB29I
	7uDrqw0D
X-Received: by 2002:a17:907:c02:b0:b96:edcd:cd04 with SMTP id
 a640c23a62f3a-b97f4b16f67mr130546366b.49.1773824215550; Wed, 18 Mar 2026
 01:56:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260317-husb311-v2-0-03c17c986abe@flipper.net>
 <20260317-husb311-v2-5-03c17c986abe@flipper.net> <20260318-able-goose-of-downpour-db3bbd@quoll>
 <d925c15d-add5-4f2a-8eac-fa7dd1b56bf2@kernel.org> <CAKTNdwH7RswOSBZyVKvsHfhZ3-xwyDs7ywOHuafMFb1-xNf0PA@mail.gmail.com>
 <c816a7b4-5237-4732-85af-26b70dce57f5@kernel.org>
In-Reply-To: <c816a7b4-5237-4732-85af-26b70dce57f5@kernel.org>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 18 Mar 2026 12:56:40 +0400
X-Gm-Features: AaiRm51Z1zxcom6oGEe1zlWDtcLo4AbRjORqgQ25Zd5ty1p7g_jEjtaNn5KvnQ8
Message-ID: <CAKTNdwE-d5c9gzCxc0sXErc-M6TGdsf8M+ZZ0yoVAH9h_bqTkg@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] arm64: dts: rockchip: Add HUSB311 Type-C
 controller on RK3576 EVB1
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Gene Chen <gene_chen@richtek.com>, 
	Heiko Stuebner <heiko@sntech.de>, Yuanshen Cao <alex.caoys@gmail.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277060-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[kernel.org,linux.intel.com,linuxfoundation.org,richtek.com,sntech.de,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,oss.qualcomm.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[flipper.net:+];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 584692B890D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 12:39=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 18/03/2026 09:30, Alexey Charkov wrote:
> > On Wed, Mar 18, 2026 at 12:19=E2=80=AFPM Krzysztof Kozlowski <krzk@kern=
el.org> wrote:
> >>
> >> On 18/03/2026 09:17, Krzysztof Kozlowski wrote:
> >>> On Tue, Mar 17, 2026 at 10:08:02PM +0400, Alexey Charkov wrote:
> >>>> Rockchip RK3576 EVB1 board has a Hynetek HUSB311 USB Type-C controll=
er on
> >>>> its Type-C OTG port, which also supports DisplayPort Alternate Mode.
> >>>>
> >>>> Add the required DT nodes to enable basic HUSB311 operation.
> >>>>
> >>>> Note that for full support of mode and orientation switching, the US=
BDP
> >>>> PHY schema may need to be expanded, such as in [1]. This is left out=
 for
> >>>> now until the respective schema is finalized and merged.
> >>>>
> >>>> [1] https://lore.kernel.org/linux-rockchip/20260313-rockchip-usbdp-c=
leanup-v3-1-3e8fe89a35b5@collabora.com/
> >>>>
> >>>> Signed-off-by: Alexey Charkov <alchark@flipper.net>
> >>>> ---
> >>>>  arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 20 +++++++++++++=
+++++++
> >>>>  1 file changed, 20 insertions(+)
> >>>
> >>> DTS patch must not be in this patchset. Don't mix it.
> >>
> >> In case I am too vague: by don't mix it, I mean - separate DTS changes
> >> to independent patchset. They cannot be combined into USB posting.
> >
> > Thanks Krzysztof. I will split them out in the next submission. I
> > think it's important to first agree on the use of fallback compatibles
> > and the best way to handle the (already queued up in next) ET7304
> > patches this cycle before their bindings hit mainline. Then, I can
> > rebase and squash/split everything as required.
>
> These are independent problems. But if you want to connect them, then
> here you have:
> If I review the patch, Greg will take everything, defeating the purpose
> of my comment. So as you can see, I should rather not review them to
> achieve one of my goals.

I thought that having the DTS user with the binding that introduces
its existence helps the initial discussion. With the DTS change being
as minimal as it is here, it's definitely no biggie though.

I appreciate your guidance on the fact that Greg applies a series as a
whole. Will split up.

Best regards,
Alexey

