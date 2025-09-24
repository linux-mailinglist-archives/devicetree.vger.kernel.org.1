Return-Path: <devicetree+bounces-220841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BA3B9AF80
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 19:04:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BFFEF3B1E45
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 17:04:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A41472D0C68;
	Wed, 24 Sep 2025 17:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="LpPZtKVn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECB55182B4
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758733438; cv=none; b=JYVLJzA0O1oOajhNYjyk5TBjBvhLzVyNpmSuLR+RIK0Li21DvhQR7dq38NGBOBRScHGPK2UnpUvQYkD9NPoABb+dE5tKRbFPg5qxTTLHWrWQIOxzOHpZ+Nu5qbxKG+Lhwtyish9wnnI8Opfg+dPPVUOySQzX+XiZd/2RnKZld60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758733438; c=relaxed/simple;
	bh=CFe5INxZHk/zg4tBwFi2LAVVet3K2yzAoMppLFFFJ9g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e/7u8wunE3+LmUcYmKEOGO+OXVKgntkMyIQz2EAkwu7IP3TxbhvxoeqBd0VhySWjhJzs6J0/WotCwnitVs9QZBwklZlrKwQ/TbLo62hybfwoi6IWr6a7pHdGt83frdrX2LHdDPKR94uUF8Ykl98cRQQLGeKOyoZxeNpo0fIksG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=LpPZtKVn; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-26e68904f0eso419905ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 10:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1758733436; x=1759338236; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YwBkd41sTD3rLHkZ2O0eRif7ESkJYPHv5ge7YMF2z9I=;
        b=LpPZtKVnxkiI3Pi4upQDhJeBnycjbh2/Bhp0p8LvkFVsf+X7r7YS4/6hE1YiWU6Ogb
         +llZw65I7Z+0lXEmJqZwMGZpBO9geYUwGJJkuWC9E8mDMzucwwMba6OuLq5XDn7xdlur
         aypWxg9bbYeZu2vWW11FktjM/82hJLQkpFy3OP8i6f+2AYw9OK/RtMHxID4YA8UwkV8p
         IOdXoPji8gFNjT2NrlALLyG/M2ZKiblsrIY81j2LnN9brMxP3yxiHJ0VrMspdC+0lkdU
         ZgcEGS2yVo9F7KCUMhzDknrYNCGQusylLknlOWhRZleaXGlbK1yO+WMN/E5/pDLjkIGe
         bhEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758733436; x=1759338236;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YwBkd41sTD3rLHkZ2O0eRif7ESkJYPHv5ge7YMF2z9I=;
        b=slzQ/fYrBYat1leuL5Gyhg7PscS3AwsxRoEaYT77xEvgRFz3acw97Hx99ExkLZJRN6
         YwYhRaxnQxGa3Rs2YLbrtieo7Qyf56aXBEgqzxkqqlM/HnzEuZfJ+7RmOgrrsB7D0IZF
         y+JX0efjjXVD2eNOWymCUs3c8mjrufegjZlvBLMBT1stImX7y5mbOJS7L//aEA3RtQV/
         +s1I1/Ujmqku49RjU0xInhqcfwfwXstpIvgigmrXZsODM9EZMUER235Bj++WOvhxE7eI
         WSLJ5uTfcGWgVLcdVG53JhS0SAj5e76cx0JVjuqro3CcNIiiB5jlp39xVuU/r8ekrrKh
         ZgwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWha+TGUAcnkSzaZthnRtwcO26R+qAP65xlh2+7qczGq08VpK+TGNWNr0ShO36fPRfuqVcIz50TrBmY@vger.kernel.org
X-Gm-Message-State: AOJu0YwRUuBBBq6mlREnmuc40KockAZ2h/zGgg0RM6SfKsJBJcAQd2gZ
	J5O+c0zxnl85rRZbHJK6AN/bmtWCOGVbPn2daBuIogtIBSkz4ZzD92/4CIUu9hN2og==
X-Gm-Gg: ASbGnctr+Q/CV25/3F6gVc7IMWkEjmzRwQwHiBQHM8yL4m5dAOEfSB3X+/PmF4xlGKG
	J8X3qnB1kSoEz9IZlwb8Xd/B9SnWFdbPm0Jf0dNtWa6kOmidkisM/g8ybMG1bd2Hs1lM+BQpXnT
	BD9+Q9NyFJD8CP0bx5+IcgxQ1RN/DDyGjMslSuWU2ZBP+bt5750vlRdAHPmWZrgEMcijA6+e5lQ
	HwHAav35k8CA9KY86J589zl6k4tTk04u0cPpaz2b+xfTpSHZtAQIl3rCBP622Ii+elvCK6XygNa
	KVgpgfg6xZdUn8Jc3WWHlieChO9yGTr6T6pchVFh0BzkeyIr0G3aNfrZMMJzKJ+WaK4iR5KbVu0
	XivYc7KJIBOEBfrTt99f42G/yZRqECrWS0vm7NdlCsZFBVc4tfgoV8w+tputdjarmIvhTqj9oGo
	hc+Q==
X-Google-Smtp-Source: AGHT+IGdK/VxJH0ABNF0LzHyK1MWFjyhIxZJguh+F83ogw+n58jt7qNfiroMvD45AwtG2kR/BIJCxw==
X-Received: by 2002:a17:902:e84e:b0:269:aba0:f0a7 with SMTP id d9443c01a7336-27ed4a06c9amr5631235ad.2.1758733436143;
        Wed, 24 Sep 2025 10:03:56 -0700 (PDT)
Received: from ?IPV6:2401:4900:8899:6332:1261:ac31:d3c6:55a3? ([2401:4900:8899:6332:1261:ac31:d3c6:55a3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-269803601e3sm197547965ad.144.2025.09.24.10.03.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 10:03:55 -0700 (PDT)
Message-ID: <cd9763b7-919a-4b44-a347-f1491d9584b9@beagleboard.org>
Date: Wed, 24 Sep 2025 22:33:50 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Device tree representation of (hotplug) connectors: discussion at
 ELCE
To: David Gibson <david@gibson.dropbear.id.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Herve Codina <herve.codina@bootlin.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Andrew Davis <afd@ti.com>, Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, devicetree@vger.kernel.org,
 Jason Kridner <jkridner@gmail.com>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree-compiler@vger.kernel.org, linux-kernel@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20250911104828.48ef2c0e@bootlin.com> <aMebXe-yJy34kST8@zatzit>
 <20250916084631.77127e29@bootlin.com> <aMt5kEI_WRDOf-Hw@zatzit>
 <20250918094409.0d5f92ec@bootlin.com> <aMzhgDYOuG4qNcc0@zatzit>
 <dcbeaff2-0147-4a27-bb46-e247e42810d7@beagleboard.org>
 <aNJVqSpdAJzGliNx@zatzit> <20250923114849.2385736d@bootlin.com>
 <CAMuHMdWmDwedyPnBERs-tSYEG15nMUuh9u1Q+W_FdquHpUC0-A@mail.gmail.com>
 <aNNvaN4xJtKBFmWT@zatzit>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <aNNvaN4xJtKBFmWT@zatzit>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 9/24/25 09:41, David Gibson wrote:
> On Tue, Sep 23, 2025 at 12:29:27PM +0200, Geert Uytterhoeven wrote:
>> Hi Hervé,
>>
>> On Tue, 23 Sept 2025 at 11:49, Herve Codina <herve.codina@bootlin.com> wrote:
>>> On Tue, 23 Sep 2025 18:09:13 +1000
>>> David Gibson <david@gibson.dropbear.id.au> wrote:
>>>> Ah, right.  To be clear: we absolutely don't want multiple addons
>>>> altering the same nodes.  But I think we could do that in ways other
>>>> than putting everything under a connector.  This is exactly why I
>>>> think we should think this through as an end-to-end problem, rather
>>>> trying to do it as a tweak to the existing (crap) overlay system.
>>>>
>>>> So, if we're thinking of this as an entirely new way of updating the
>>>> base dt - not "an overlay" - we can decide on the rules to ensure that
>>>> addition and removal is sane.  Two obvious ones I think we should
>>>> definitely have are:
>>>>
>>>> a) Addons can only add completely new nodes, never modify existing
>>>>     ones.  This means that whatever addons are present at runtime,
>>>>     every node has a single well defined owner (either base board or
>>>>     addon).
>>> In this rule I suppose that "never modify existing ones" should be understood
>>> as "never modify, add or remove properties in existing ones". Because, of course
>>> adding a full node in a existing one is allowed (rule b).
>> What if the add-on board contains a provider for the base board.
>> E.g. the connector has a clock input, fed by an optional clock generator
>> on the add-on board.  Hooking that into the system requires modifying
>> a clocks property in the base board, cfr. [1].
>> Or is there some other solution?
> Hmm.  My first inclination would be that this case is not in scope for
> the protocol we're trying to design now.  If the widget provides
> things to the base board as well as the other way around, it's no
> longer an "addon" for the purposes of this spec.
>
> But it's possible I've underestimated how common / useful such a case
> is.
>
> Note that I'd expect the existing overlay mechanism to still be
> around.  It may be ugly and not very well thought out, but its
> drawbacks are much less severe if you're not dealing with hot unplug.
>

Well, while that was not an initial use-case in my mind, external clock 
inputs are a valid use-case when talking about connectors for board 
headers specifically (e.g. pocketbeagle connector).


Best Regards,

Ayush Singh


