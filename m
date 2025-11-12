Return-Path: <devicetree+bounces-237371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A531C502F5
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 02:14:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ECD454E11CC
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 01:14:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4740220F29;
	Wed, 12 Nov 2025 01:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="H6tIb7mr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCAE21D5CD4
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 01:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762910075; cv=none; b=CfzBQ1AkUGMIszARigxLORrZLm0ggPMo+PKLiSuEQda1eAiKr0wOou07eHXb3auZsXY+ZsLbBUwAOOL9BWL+kwIz/yXGoGgEWqJgmPt2rdPBmDKCQfkgzWM9vq4iSFpywpO0XI6wPLbGrDyXclPqACvnB5+qYXWl2ARF/sLnqDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762910075; c=relaxed/simple;
	bh=oqAbZJECSGpELpjO75QIfFyP+X0c/EMZuF8IJ5+sMXo=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=MAoTp1gL4r1kjpy+p9IWhdCEW9M8bs1ZHuu+6wxmrlWiY2S4420mwmT3IZfd68ZCf2v09YSwo6WkA+rTTVDOZ4UBdnzDnmG8/onr1JAXWbYhzEKHvOWlx8uNVtvrPmXdzewoK8HHAFeaYbQPR7tGIyStaZ8Qrgjj3maiUv3ajHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=H6tIb7mr; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id C0B49404BC;
	Wed, 12 Nov 2025 02:14:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762910070; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=LkNSm3s8qehzOqVXqiOqufYdiufr+1VbrUeNOyfOu8M=;
	b=H6tIb7mrOKlE15NonKcJaWIOvWNw9vGnOHBQAV4gQ21ejAbRDoKusPPBdtO5WQVrBeGNzN
	13tpGXu1rdcfgZW6dUNwDND1FnwhUcuiCJz8QmaYqzEPhQCimTEQcA6ATDJGf79UGjNWpx
	diC72T2Y+yljgTo6AN39qkL40jx4Wu3BEU4CarmwaX+tVgX1ANB8KfLB2iCZUAt1TeAnsG
	jfFj8AD+yCDFuZTtbVoHOL9fojYtrgQSsfqycOrW41R5m8QaOiCvSKHRQ9W0acSnCiUJkI
	7kz+znuTt/87UE2zbF+3zxR+idwXgmFOl0iEs9Uryq17Gzaqa0pbX3In3gmIrg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <EB08CB02156A172D+abf42f17-09e1-40ea-9369-eca481d230a6@radxa.com>
Content-Type: text/plain; charset="utf-8"
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
 <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
 <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
 <a10340af-1d0a-bb0b-4835-7b2c9e67d664@manjaro.org>
 <2892FE50237CD58E+0f15924c-a915-4446-954c-d81a782d23e9@radxa.com>
 <19ce0a41-563c-6202-6b94-b2c644a0b827@manjaro.org> <EB08CB02156A172D+abf42f17-09e1-40ea-9369-eca481d230a6@radxa.com>
Date: Wed, 12 Nov 2025 02:14:26 +0100
Cc: "Joseph Kogut" <joseph.kogut@gmail.com>, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, honyuenkwun@gmail.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <a2581eae-e8bd-c404-5d4a-a50fddfb5d6a@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 0/3] Add Radxa CM5 and IO Board
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

On Wednesday, November 12, 2025 02:01 CET, FUKAUMI Naoki <naoki@radxa.c=
om> wrote:
> On 11/12/25 09:46, Dragan Simic wrote:
> > By the way, what you called changelogs in the examples above is
> > usually called patch descriptions.  When they become merged, they
> > become called commit descriptions or, sometimes, commit messages.
> > Using the standard lingo usually helps. :)
>=20
> Ah, it comes from
>   https://www.kernel.org/doc/html/latest/process/submitting-patches.h=
tml#when-to-use-acked-by-cc-and-co-developed-by
>=20
> Should it be fixed? ;)

Ah, I see, thanks.  IMHO, the wording in that document should be
adjusted a bit, but I don't have the time and energy required to
actually do that. :)


