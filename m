Return-Path: <devicetree+bounces-111099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E454C99D0A4
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 17:05:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7E27CB26AA0
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 15:05:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0186B1AAE27;
	Mon, 14 Oct 2024 15:05:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from sender-op-o19.zoho.eu (sender-op-o19.zoho.eu [136.143.169.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382181798C
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 15:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.169.19
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728918330; cv=pass; b=djgqoDV1ZcyJ5FAdFI3uDsTn8uwcHzChxALIBBYe/vyToOSeJx3J112IomXpX3Zklt1zw/hdLWbgZNloVc5qLLHrDuBSepNASPqA0VMNWOaKffA52R252xkgzpU5EAKPCO6/sqbTKO2q6DSbhQaNdIicLzsI727GDHrKuFde0Qk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728918330; c=relaxed/simple;
	bh=US2RqxnV5R1M7I6ckvmd2jgo4xk2Vn1u6p5ENlM4Scc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LEPt0EqMN5qCInzZZewMJ19L7IY8Tt6tSGrmNMIS4Foq48VyFy049f4ZJzRFQgqq9SOymNu4Z9YCcbS1FXwlzZc0GfnIOHxWmM3YtQHo66gh3RyzjdHR2fqUcIFyHyMa3IFgW4S2fJducrmbZCF+Cx3CtVdFiK3yHWjqJFKV+Zg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=trained-monkey.org; spf=pass smtp.mailfrom=trained-monkey.org; arc=pass smtp.client-ip=136.143.169.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=trained-monkey.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=trained-monkey.org
ARC-Seal: i=1; a=rsa-sha256; t=1728917399; cv=none; 
	d=zohomail.eu; s=zohoarc; 
	b=AmIzi3oE/bPrUi6GV9JBcvGAq50hlXu+Q/ANlOqeEvIx0OzwPm/HzYIBZX74zfxmJ8m7AXpQw6bwgCfmoWxMsQbvLzBWFNAxIKIggcAZhNFbCuXnGZb2Na3jekzCgqJDGxvkFhnd+CS7YD2W5SUQvAEH9F1GYZ+ytv0nuoqsuco=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu; s=zohoarc; 
	t=1728917399; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=K6mYdNsenbM1Wg/0lQ7i4Zintvj75pnJER5qFlaU0uQ=; 
	b=fRb4GpQegOpgDlY5HAMm77TBFnE0MayAgG/RDBP59SE775XRfYsWXUubPjQriW4EqkLsW4nNIehYfbt8uajfdu2ut8RLul/3l4M/X1nUPBo/3oHJiED4MRGScISv/nY9XrMaaygm0eKKCUhhFdIwjjahByrBQ9MqznC22vC1DfU=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
	spf=pass  smtp.mailfrom=jes@trained-monkey.org;
	dmarc=pass header.from=<jes@trained-monkey.org>
Received: by mx.zoho.eu with SMTPS id 172891739579280.44983487997911;
	Mon, 14 Oct 2024 16:49:55 +0200 (CEST)
Message-ID: <fd483e9c-2896-4ce6-8511-2660ed7d0021@trained-monkey.org>
Date: Mon, 14 Oct 2024 10:49:53 -0400
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
Cc: devicetree@vger.kernel.org, tnovak@meta.com
References: <20241011140507.3703348-1-Jes.Sorensen@gmail.com>
 <20241011140507.3703348-2-Jes.Sorensen@gmail.com>
 <CAL_JsqJcha9xDkQVu1U_R2hZCVwsUq106afhnJfOan4V+cBdAg@mail.gmail.com>
 <7543f364-b413-4789-9aba-cc23bf54df52@trained-monkey.org>
 <CAL_Jsq+rjTQSOhEQwh35LfqrarrNmP3NzRyKXfBSfK7EGhVq4Q@mail.gmail.com>
Content-Language: en-US
From: Jes Sorensen <jes@trained-monkey.org>
In-Reply-To: <CAL_Jsq+rjTQSOhEQwh35LfqrarrNmP3NzRyKXfBSfK7EGhVq4Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External

On 10/14/24 10:48, Rob Herring wrote:
> On Mon, Oct 14, 2024 at 9:41 AM Jes Sorensen <jes@trained-monkey.org> wrote:
>>
>> On 10/11/24 18:46, Rob Herring wrote:
>>> On Fri, Oct 11, 2024 at 9:05 AM Jes Sorensen <jes.sorensen@gmail.com> wrote:
>>>>
>>>> From: Jes Sorensen <jes@trained-monkey.org>
>>>>
>>>> For Android it is common to use a prebuilt dtc, speficied via DTC=. In
>>>> this case building dtc as part of the kernel is not necessary, and even
>>>> unwanted to avoid mix and match between two different versions of dtc.
>>>>
>>>> Signed-off-by: Jes Sorensen <jes@trained-monkey.org>
>>>> ---
>>>>  scripts/dtc/Makefile | 3 +++
>>>>  1 file changed, 3 insertions(+)
>>>
>>> Well, this one is much simpler than a prior attempt[1] and may be
>>> acceptable. But I wonder if something is not handled here.
>>>
>>> I think lack of external fdtoverlay support makes this incomplete.
>>
>> So I was thinking about that. The only places I see in the tree that
>> reference fdtoverlay are scripts/make_fit.py, scripts/Makefile.dtbs, and
>> scripts/dtc/Makefile. I don't see anything calling make_fit.py.
> 
> "make dtbs" will use fdtoverlay if there are any base+overlay targets
> which there are an increasing number of.
> 
>> We can either exclude fdtoverlay from this, or assume that if one
>> explicitly sets prebuilts, fdtoverlay is there too.
> 
> Currently, if you set DTC you'll get external dtc plus in-tree
> fdtoverlay. With your patch, you'll get external dtc plus a build
> error because $(objtree)/scripts/dtc/fdtoverlay does not exist.
> Neither case is ideal.

Agree, what path calls fdtoverlay ? I didn't see anything calling that
script.

Thanks,
Jes



