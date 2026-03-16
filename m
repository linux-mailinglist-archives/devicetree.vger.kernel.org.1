Return-Path: <devicetree+bounces-276401-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IDoKL5zuGn5dgEAu9opvQ
	(envelope-from <devicetree+bounces-276401-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 22:18:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D98312A0BF9
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 22:18:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 627833008D2F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 21:13:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA60D364032;
	Mon, 16 Mar 2026 21:13:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OHqHf0sE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5B5363C4F
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 21:13:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773695599; cv=pass; b=Y3MdQgHL0p6fP5zghm9wk+cxIEDl40iAaUgUbF7yf7OWw03qKS69njXSQyFl26tp2NIX+kVbsuzY9AyQARsFdw7emfuptrOOG+Mxz8otiMNMZcJCQ6FO3yj+NoX4GjIweOsBFaJlpO9qMr3W1yK5ACR0yB0693BRs3kUnKgqmLg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773695599; c=relaxed/simple;
	bh=a5Hw/tiP+uEy4lhG2UbjPwgevHAkzzW4NHLESS72tuk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lLdzO6DGX4Ok/pfel0+tlymCu5zcxhVzHt+uLaCwsz2a2idFNaz76+sOFLUffzeoje1VoPOKAhfj43z1vJQeLe6XPrV7ampg8+rA6qrkaChETbdmZWCH176vznu7ryzhYwhEo3SCnJ3rvlSHQRzfkQdvfj4XCY8RmEu1nM/cVPY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OHqHf0sE; arc=pass smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b979d16dd0cso342961666b.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:13:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773695597; cv=none;
        d=google.com; s=arc-20240605;
        b=eQpB/JWJ+gPKxS6bkiLvtCJwQEncuHjbZdtfGtaBLVL1kZ21WrQ41aB60gTXZVlSlh
         AHyXdxYaU4z8IRtEX/9ADkLNkMZag92CS+nDy5yGFinmoE4s6dhnfMhQTEd1AEaNCK8F
         AQ0nYLW/S+Gp8vFJ2Sx8hRwzJlleDXi0rqytyaoqCKx3JvdUIHqMepdgofGQ/GpiEVmP
         T50mW1Hzlfi/4B6UdDMjl/kzg8wRXlAsafbd8Vf82HerVPdSXMl/SwumnvGBIiZMyPfL
         1PnBapiOyh/pXsd6vIQHgL0nLk0EtPrvGz/+9Fscoo9fvQCgZzYsy/qqY6awfwo01OlN
         LeWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=a5Hw/tiP+uEy4lhG2UbjPwgevHAkzzW4NHLESS72tuk=;
        fh=fQhDT/RXeRlx15QTNc/BCsoroxya6QFsFxc2+ym4P1M=;
        b=gtTgtuvLeTiCvjEqioBM4JoDQ8xRKIEiFfp9tnGlbFGxpMsm/6ccTKu1Y4bu1WZbhB
         Uf8iZ+fWYDmiP+H/iZaVmacHj7QOMLL0EIozo9WaxFOrFIIl5lf8Dt4pc5JLI/aiM4B0
         pR1w8fTSnKDKgK9wfim8QMUnhGeK31mbj8S1bQ0T/pvR0hqZstMPPsQrcetFwda7dUIp
         796S3bqqq4z/odQ0MjHWBZNr0X9qbnf28oGKLc2qhUUbVMluFpgDlrrxIEY0SaGmqRVu
         vZ57S5LDJMnerYMQ4tJ4ZKbOKzo1avJOUev4AsetkFuVCnpyfUMiqsSToDBpG92/qIkg
         O9oA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773695597; x=1774300397; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a5Hw/tiP+uEy4lhG2UbjPwgevHAkzzW4NHLESS72tuk=;
        b=OHqHf0sEyzZjm6HTWnIjj12Eo7MPZ6ncw4IxqvQ4F2Ie+WJa2mPbwzgXKEn1Z2mU3D
         WLXkudScVMLVP/6y2Q4Zqle/ll95PG/BIbiJVhpWn1By2xBBWI/QetyE80rd91Yd5yZ0
         RLqo24ZFIh3ICVx5s5z/si9uyhGfiv7jEPX3xcyCAsSHeWFWyHMlXMswckqSwHykP2lH
         b+M9E0Zz693UhxYqks32jcPHOX2PvI/UN0v7iyPlZxy83lPuqknD2i2gL4bLLiAfMWsM
         12anejtlr/SHOYDvBAEYdQTpHRxBv3EOYtxknayRiDbuyazXEzWwZ2WtRyB8Ycyb//BV
         4oFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773695597; x=1774300397;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a5Hw/tiP+uEy4lhG2UbjPwgevHAkzzW4NHLESS72tuk=;
        b=FomRSrqeWIspmF1eMRAyGsnwDSK0wvIwVRcJIzNrkzWT810pPxXg0O/OrIGVjiFm7y
         z6bEU71vMBJ8q7uWUWk9wbtUNaI/TT47GTPdD2vLZL27tBRWNWyBFdoqM2EUgF0oFbd1
         DXAZ+okJYVg0Ov7Ca+iI84QnaVCTvPCAK3LAlUYjaWV/abeyUtvbK4ASJU/9cOILSwoK
         9jNblOmMnnPclbb127sHxjICKryaG0lgF3juYC9YjsBlopB6+eDRMvGPw/mBh3XmxiIc
         t0bUXpQDPihzicmVWzLCH9q2bPcwIOZAhfbjGuQZT0mWaFP3UlU1Rz6iTa6DOb++gon6
         ul7g==
X-Forwarded-Encrypted: i=1; AJvYcCVb1mxKrGz4H6b7ZMdfPxQ1ZTmkATM66pb6n8eQ2tH6Cgq8CZdGrXa9HXvzXQBez5zunTmcSvd6ZRQb@vger.kernel.org
X-Gm-Message-State: AOJu0Ywk6B4te0M5FroeoQirROkXR6XO1+EA3In9up1/zF/JYbvUHxet
	HF7Xr0T7xND0JY4D6JoCiqpQtEBpSHA2ZaOCWr9dlJXIPNnrsvlOweFnIrjt0Wi15+JOHyQ38wg
	77C92JfgLOiATnNzaR575/dRDNfPNpbk=
X-Gm-Gg: ATEYQzyj6+PQL5TT0hWqAPA6hL9gbExDMQKRX0yrp4XQ8M2z9z06CZfaLhJiDHsXG6q
	F6gWaiSEdtrQOWEjkSqs2erz6fbwXB96LkbAJcxF0Duxw+wJVd2gRJCp0KfmrK1W/YWDbGthcbz
	N2tkIU/Ku+Vg/OmFLcPMF/3vKwHMCG6GDxI3/FEmRzzXQu+Si/YLs5WZD2E7BsWKgsA7HvZPOnL
	oxDlzVmKo63ityEzty/+LxKQe7uczOZA2mlhUsxAeJ8ioO0GyvI6+gfYq65cuGjiwybrXN0ezZl
	bMor+YdZGBeuNjFFVbZnwU5E9Dz8Fdzbd7ywSeya6MRuYJONMP7e8aZA6v+dRh2NokvWxzRR2+I
	PUY7tpkUJQl32WHxa
X-Received: by 2002:a17:906:26d8:b0:b87:1eaf:377c with SMTP id
 a640c23a62f3a-b9765100eb2mr612118766b.38.1773695596720; Mon, 16 Mar 2026
 14:13:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260225230827.21715-1-rosenp@gmail.com> <20260225230827.21715-5-rosenp@gmail.com>
 <20260316204422.2145317-1-florian.fainelli@broadcom.com> <CAKxU2N8bNdUC9eS_qgqsJ3o=scmGnYoWh32AMQCpL2DDmdt52w@mail.gmail.com>
 <052e82fc-cb53-482f-ad6e-95a48b2c7029@broadcom.com>
In-Reply-To: <052e82fc-cb53-482f-ad6e-95a48b2c7029@broadcom.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Mon, 16 Mar 2026 14:13:05 -0700
X-Gm-Features: AaiRm53bg82t0Gd812Z8wPDeIUe-VFphhM14f_CY1WlTx7qn1REsheQOw3Nj99M
Message-ID: <CAKxU2N_w0KRfQ-UX4T9pMaWhjt2JVgH6h=rGBhkA+Fk-eQfm6g@mail.gmail.com>
Subject: Re: [PATCHv2 4/4] ARM: dts: BCM5301X: AC5300: set WAN MAC from nvram
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org, 
	Florian Fainelli <f.fainelli@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>, 
	=?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"moderated list:BROADCOM BCM5301X ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276401-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[broadcom.com,vger.kernel.org,gmail.com,hauke-m.de,kernel.org,lists.infradead.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[broadcom.com:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D98312A0BF9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 2:11=E2=80=AFPM Florian Fainelli
<florian.fainelli@broadcom.com> wrote:
>
> On 3/16/26 14:09, Rosen Penev wrote:
> > On Mon, Mar 16, 2026 at 1:44=E2=80=AFPM Florian Fainelli
> > <florian.fainelli@broadcom.com> wrote:
> >>
> >> From: Florian Fainelli <f.fainelli@gmail.com>
> >>
> >> On Wed, 25 Feb 2026 15:08:27 -0800, Rosen Penev <rosenp@gmail.com> wro=
te:
> >>> The WAN MAC is offset by 1. Set in dts to avoid having to handle this=
 in
> >>> userspace.
> >>>
> >>> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> >>> ---
> >>
> >> Applied to https://github.com/Broadcom/stblinux/commits/devicetree/nex=
t, thanks!
> > There was a copy/paste error here. et0macaddr should be et1macaddr.
> > Should I resend?
>
> Fixed it in place for
> arch/arm/boot/dts/broadcom/bcm47094-asus-rt-ac5300.dts only, right?
I believe so, yes.
> --
> Florian

