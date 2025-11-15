Return-Path: <devicetree+bounces-238942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 84465C6010A
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 08:15:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3D24A4E1BBC
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 07:15:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08286221DB4;
	Sat, 15 Nov 2025 07:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="DYq1aUGy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5DD321ABA4;
	Sat, 15 Nov 2025 07:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763190912; cv=none; b=p6oDl5wq349/wAjFskN9PTMJ8hPIVMSArr0XSEWfb7N0WXehHROq1/Dbt3NghkgpWd/Iz7F9sr3iopcJH5EQKhGQwQqWB0TnilTXD6DmllCyxxxpa6A+txe5VJ+WE6/hwmkRfuAhiH05KTrbBt9qMGu0pbiqnolbzQNJysrwRHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763190912; c=relaxed/simple;
	bh=aLT4NbiJNJIFBWDzG6Nm3dN3SnX7wOfwry0zJjewwuQ=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=Tvm/6l2V+ARn4tC7x+AZRMSk4o4Cj1tWxBPvqoUz7KLR/yv8VNhDMPPLeA6/xKLzDgYk84ALCAeF+QqTXZQwnikErmmykaPSbslfS5DE5vVB/7DhkxRQDdOpbGJELMwyIw8wWP9r+wrL5FNQHX3bwxe3XUGS/DiMj7/1gv3gHAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=DYq1aUGy; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 1D9E540FDD;
	Sat, 15 Nov 2025 08:14:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763190900; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=RFjj/nmYrfHeiQliAIzx66lW/uKVowOIl76QQ6gErtU=;
	b=DYq1aUGyBIz//RUO1UxSY34BPB+qUTKu0Q1lOfHllPQsR/SxH6rLoOtwjei2MRvVGVPMka
	+ALnfePVaReR03oE/Udt3hNvydOenpGBneQbcHbE+2dGY4cb4BKb9oOLF5QE3J9hmiCqwa
	AXdij9khhMj7faBdN4JPb88fEUaPm7hmjetXfq6hnp8m0WbK72gRBEkhWetEe0XMs8t+Fk
	l2htDeQkJRZ+ChsW+pY7hahnWGF2wCyvrNT577OtH3AxSiVAGMscb8crmJ6Us5LHfBNtEI
	Bv3Uo3szj7EnS7MHA52XkZkPko7rI0v4+B2wxxbGxmmO6Pw7GofyugaBMAmMyg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <bb74679a-ce21-4373-bcc5-1214e9bf832e@rootcommit.com>
Content-Type: text/plain; charset="utf-8"
References: <12d6e151-dfa0-ca0a-5888-ddffb2dbdec7@manjaro.org> <bb74679a-ce21-4373-bcc5-1214e9bf832e@rootcommit.com>
Date: Sat, 15 Nov 2025 08:14:58 +0100
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: "Michael Opdenacker" <michael.opdenacker@rootcommit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <24561990-8293-0505-5837-eca416d01bb7@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2 2/2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Add Asus Tinker Board 3 and 3S device tree
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Michael,

On Saturday, November 15, 2025 07:03 CET, Michael Opdenacker <michael.o=
pdenacker@rootcommit.com> wrote:
> On 11/15/25 01:53, Dragan Simic wrote:
> > Thanks for the v2!  Please, see one nitpick below.
> >
> > On Friday, November 14, 2025 16:46 CET, michael.opdenacker@rootcomm=
it.com wrote:
> >> From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
> > I'm sorry for not mentioning it in my earlier responses, but this
> > line is redundant, because it duplicates the From value found in
> > the actual email message.
>=20
> This actually comes from my Git settings. I need this when I send=20
> patches to the Yocto project and OpenEmbedded. That's because their=20
> mailing list server which alters the address of senders ("<sender> vi=
a=20
> lists.yoctoproject.org"), and ultimately the commit author identity i=
n=20
> Git. See=20
> https://docs.yoctoproject.org/contributor-guide/submit-changes.html#f=
ixing-your-from-identity
>=20
> I've checked that my patches apply fine and that this "From:" line=20
> doesn't appear in the commits in the tree.
> So, can I keep this?

Actually, I forgot to mention that the From headers in your patch
submissions are a bit wrong by containing just the email address,
without the first and last name.  That issue should be fixed first,
regardless of the presence (or absence) of From tags.

Thanks for clarifying what's the reason for having the From tags
regardless of the actual need for having them.  Maybe setting Git's
"format.from" option to true at the repository level could solve
this nicely, while also exercising the Git-fu a bit? :)

BTW, my responses are currently jailed by the linux-rockchip mailing
list, requiring manual approval, as a result of the mail server I'm
using sometimes inserting some strange invisible UTF-8 characters
into the email subjects.  Oh well. :)


