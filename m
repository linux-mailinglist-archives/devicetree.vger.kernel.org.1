Return-Path: <devicetree+bounces-111088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4559E99CE38
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 16:41:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 762221C22FB9
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 14:41:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AAA71ABEC6;
	Mon, 14 Oct 2024 14:41:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from sender-op-o11.zoho.eu (sender-op-o11.zoho.eu [136.143.169.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545BE1AB536
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 14:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.169.11
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728916881; cv=pass; b=ghYtMt8oTMZz1S2GgE/hkwYqB/LXQjHV6V2EF8fsdtiONfENb+75mYMyvdyJ51WYuFtF4bSY2EKvq8gQPZIBz+3PzoOModsFi53q+f2KZPCVyYTCSUohSNyWGUnKVqBTCla3iyLj7o1sCbvsxnhYuM44HjRjsFEAtRT+ckdT0RA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728916881; c=relaxed/simple;
	bh=iXbUkrX0JfKK7ozKoF/zC61zBBS+IVWslx48aMEJLj8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ozovU2Ao+wmNE1xVNkRs92bRL57LShMumC7uDbm08xIsSl54rl0RmR2Ji5dgslveYTplq4yfSMPcQWCzdsRL78Ybp+ul1/iR87m0vcaPTKntJmkwuJP8JZcMkUuuYuUYzzICg6U7LDlnOjifkOYjdMJIueKPuSwidpOs53pa6gQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=trained-monkey.org; spf=pass smtp.mailfrom=trained-monkey.org; arc=pass smtp.client-ip=136.143.169.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=trained-monkey.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=trained-monkey.org
ARC-Seal: i=1; a=rsa-sha256; t=1728916858; cv=none; 
	d=zohomail.eu; s=zohoarc; 
	b=Gn9/tpd0i8m6D2iw7B+Vp6DItTkl8CZc5BlMNW7zYBrHOvtoNrYpZBaojynV51MkgNauwNZ36oWTkbrwaPB2cOVZ8BVCBypaVhNe/tA3k0LchJ2fSCG5OyFFmpszGm9rd36WCNUzGDc73Mt3TpDyeNXwnEvV2V8q8kpe4Tj0poo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu; s=zohoarc; 
	t=1728916858; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=nczhbiSHBZ8gHiPftH3S7aLy3oK96m4l0zU/48xM4Bs=; 
	b=hV9B0vv8tjq0l+nAY79fHSmngiB2BOULzj8gg0t6co+Rf/aiTEJMo7RfFIXq29mlnFDhGdg8GSj3tm12wpBnNiamDhFEL6MpSWJyUY8e1vSerFiEvpbyS9WknP2HgF9s2oqVgbIKqnQZQxGHn8FvMsFjPsnJ6s0oc3pn1s8QrNg=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
	spf=pass  smtp.mailfrom=jes@trained-monkey.org;
	dmarc=pass header.from=<jes@trained-monkey.org>
Received: by mx.zoho.eu with SMTPS id 1728916833971634.6853414431123;
	Mon, 14 Oct 2024 16:40:33 +0200 (CEST)
Message-ID: <7543f364-b413-4789-9aba-cc23bf54df52@trained-monkey.org>
Date: Mon, 14 Oct 2024 10:40:32 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] Skip building dtc if a prebuilt binary is specified
 via DTC=
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, tnovak@meta.com,
 Jes Sorensen <jes@trained-monkey.org>
References: <20241011140507.3703348-1-Jes.Sorensen@gmail.com>
 <20241011140507.3703348-2-Jes.Sorensen@gmail.com>
 <CAL_JsqJcha9xDkQVu1U_R2hZCVwsUq106afhnJfOan4V+cBdAg@mail.gmail.com>
Content-Language: en-US
From: Jes Sorensen <jes@trained-monkey.org>
In-Reply-To: <CAL_JsqJcha9xDkQVu1U_R2hZCVwsUq106afhnJfOan4V+cBdAg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External

On 10/11/24 18:46, Rob Herring wrote:
> On Fri, Oct 11, 2024 at 9:05 AM Jes Sorensen <jes.sorensen@gmail.com> wrote:
>>
>> From: Jes Sorensen <jes@trained-monkey.org>
>>
>> For Android it is common to use a prebuilt dtc, speficied via DTC=. In
>> this case building dtc as part of the kernel is not necessary, and even
>> unwanted to avoid mix and match between two different versions of dtc.
>>
>> Signed-off-by: Jes Sorensen <jes@trained-monkey.org>
>> ---
>>  scripts/dtc/Makefile | 3 +++
>>  1 file changed, 3 insertions(+)
> 
> Well, this one is much simpler than a prior attempt[1] and may be
> acceptable. But I wonder if something is not handled here.
> 
> I think lack of external fdtoverlay support makes this incomplete.

So I was thinking about that. The only places I see in the tree that
reference fdtoverlay are scripts/make_fit.py, scripts/Makefile.dtbs, and
scripts/dtc/Makefile. I don't see anything calling make_fit.py.

We can either exclude fdtoverlay from this, or assume that if one
explicitly sets prebuilts, fdtoverlay is there too.

Thoughts?

Thanks,
Jes


