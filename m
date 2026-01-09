Return-Path: <devicetree+bounces-253107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 401BBD07981
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 08:33:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 028B4301E16A
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 07:33:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B1892E8DFD;
	Fri,  9 Jan 2026 07:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQJQteNv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB2AE20311;
	Fri,  9 Jan 2026 07:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767944027; cv=none; b=WgA125YG8D5lp19WAO2teykNcppQhW4ZmVXNfuxWEzNz9yb5iYdG1yPm+f7E9IWuGh0pA2sWD3JQiwYw4uIVXXTI/RRqzOwxO0qkKmeAcFNmbCwZdZ7TLBJ/9ZMsDOLLbxVnhQJYIvKw5s0+164Kgoh5kVRkhImZoC3X60wiGwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767944027; c=relaxed/simple;
	bh=e2YKt3RwrY/jWy5qMyoFXFI4iyBi3p36WShnvMXGG+E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U51kH8smbH6Ag9wvskOrWN/OJ0caNQOQXM04qqpnyjyJXnDS+9nMP0wLydhSYoJXpfndyEDuPb9yFRXvNMpFjmls1WSIRANjoszviUPiV/MOnuhqutXYXYLNY3QWzGkRN63mEAbpwAcdpMc6iJszNz2X47VeKYQ4tEO++vpULnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQJQteNv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA92BC4CEF7;
	Fri,  9 Jan 2026 07:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767944027;
	bh=e2YKt3RwrY/jWy5qMyoFXFI4iyBi3p36WShnvMXGG+E=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ZQJQteNvXt7JX/wNlFUtM/MX2mmp1mgSAOxhATmhvo7/Mp8opHT3PMNvuC6QOvDfI
	 ytN1qi/LAak0BoASRAub4ak+fyaCWETGq7YeT3ostkg4Yjw7dayX01aq78EoVnibdu
	 BA7NuXAmNJeUZJwxPY57i13YKyLxud+Rcp/Lo+48oDfc5awz3KBtCOO0I4btTgLpqh
	 k3N0th/HNvNj1C9wI932Fj/cMQaxcEskUtMWLJxvkJaceriQhw6iiJgvn6b6hp5xz9
	 u5JmiD7s7UmJ4n3j+7Hq90l3jhYUBkcw42mUiG6V+IZxxCGYWw+LxTAEc6ty0g+3s/
	 TBipzEVT+laHQ==
Message-ID: <2770a98f-ce6f-48c7-9bb1-45f9286de371@kernel.org>
Date: Fri, 9 Jan 2026 08:33:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add 'lge,*' for LG
 Electronics
To: Chanho Min <chanho.min@lge.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>, Kael D'Alcamo <dev@kael-k.io>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Gunho Lee <gunho.lee@lge.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20260108082213.6545-1-chanho.min@lge.com>
 <20260108082213.6545-2-chanho.min@lge.com>
 <49d28c7d-a08c-4543-b3bd-a23d36785c28@kernel.org>
 <0b80d046-6141-4389-b666-592859468b8f@kernel.org> <aWBaYUTp8dOTIEGz@BRUNHILD>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <aWBaYUTp8dOTIEGz@BRUNHILD>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 09/01/2026 02:31, Chanho Min wrote:
> On Thu, Jan 08, 2026 at 05:46:53PM +0100, Krzysztof Kozlowski wrote:
>> On 08/01/2026 17:39, Krzysztof Kozlowski wrote:
>>> On 08/01/2026 09:22, Chanho Min wrote:
>>>> Currently 'lg,*' is used for LG Corporation, but LG Electronics uses
>>>> 'lge' as vendor prefix for many of its device tree bindings
>>>> (lg1k SoCs, etc).
>>>>
>>>> Add 'lge' vendor prefix entry to avoid confusion with 'lg'.
>>>>
>>>> Signed-off-by: Chanho Min <chanho.min@lge.com>
>>>> ---
>>>>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>>>>  1 file changed, 2 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
>>>> index c7591b2aec2a..6c31fa4bee6a 100644
>>>> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
>>>> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
>>>> @@ -907,6 +907,8 @@ patternProperties:
>>>>      description: Lenovo Group Ltd.
>>>>    "^lg,.*":
>>>>      description: LG Corporation
>>>> +  "^lge,.*":
>>>
>>> NAK, we have been there and I do not change my stance.
>>
>> Unless you meant to add it because of EXISTING device trees (predating
>> commit fc75109288709 from Rob), then add with deprecated: true and don't
>> use it any new compatibles.
>>
>> Best regards,
>> Krzysztof
> 
> Hi Krzysztof,
> 
> v2 will include:
>  - "lg," prefix only ("lg,lg1215-ref", "lg,lg1215")
>  - Drop "^lge,.*" from vendor-prefixes.yaml
>  - dts coding style fixes in patch 3
> 
> Existing "lge," → "lg," conversion will be sent separately soon.

If you have existing compatibles released as ABI then they should stay
and you can document a deprecated lge prefix. But not for new devices.

One of many previous threads:
https://lore.kernel.org/all/9942f964-442e-e782-3926-6d7d1123418a@canonical.com/

Best regards,
Krzysztof

