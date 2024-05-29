Return-Path: <devicetree+bounces-70223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1138D2E61
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 09:38:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5EA0FB2136D
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 07:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5402716729D;
	Wed, 29 May 2024 07:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q+U/p8R6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0EA71E86E
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 07:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716968313; cv=none; b=FVZXNkYchItD48Q4Kiog5gAb7Z6T63X47VUPo+LN/sqWgRQ8gpaBygQPehE0R+JoITuowTIaKCjhctKNiO1egx0++/pYNTe9tF6PxrdcnB1JbGsVOOZTDaNYsJFcmj31Px/526BR0KxqLf3D3lZCZcZWQWWq3fydja4isp8W+fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716968313; c=relaxed/simple;
	bh=GDWpitdo2X2kcUTxZ9xqOzEm0DAjPIBjwveXgZ6qQhU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n2gKbeCeYi0yOUsvA4Xr8luHW+TaEUlsByJho5FCbwqLCRQzNX/uJEXZ/P5Qiouj57gGKgU9wbvv31tdzqp4wkUzmms6OgJIikG6O2yhqQv4RGsTUGeTCZx01HMwy+JuKv/HeYifJ9Y5eLmYIVjI/BlxYF8mMgn7xbThrQQ2YN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q+U/p8R6; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-62a080a171dso16895537b3.0
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 00:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716968310; x=1717573110; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GDWpitdo2X2kcUTxZ9xqOzEm0DAjPIBjwveXgZ6qQhU=;
        b=q+U/p8R649PjLVsBO1YAKEQTXN/kUZqaIFvDdsg884xl63szFi3XSM080hTKQcZ/GA
         amk7w3vkAQINA/Fr4z4SddrIwPfMLfs2H5h2UrzdgvhVjiLybN39wjgmU8zxxbM6ktUW
         Gf8EKaGw+lrpGvM6a1jPghixzjlPkFrsuVmuzjhxnIQBR/O6ck7tXP4RZjzPJYPHG7+m
         dV5M6Xd4k/iPBhpLoOjgBKzQy/V04DoKPYoNqPCP7oUbmAHmUuPY7PTH9bYDkZRDDuVy
         18ZXJNi9cmVHgGK0DHpvTf8d7wh8C5P0L5nYu6E5fGch9KtetpIsUR/Huq72jxGC1WwE
         +a1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716968310; x=1717573110;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GDWpitdo2X2kcUTxZ9xqOzEm0DAjPIBjwveXgZ6qQhU=;
        b=XStfd6/AEHovOUOPLgyeTUzJOnkPP7R0FFRox7db01I+FqX6dH5YftHxU5vkQSm51c
         eMU9ZURK2wJObpFP2al504euvAqHvLsEql2gPMFPPkJXVtzwFL/YWH1bioUg1cGHaICH
         7y1H6Rnzahh7sce0/1DSu9zrkok5g+m2uNfNNGI5odgESrbT3/7KV4QX03ErVaoOHsGB
         LbmUrqyHVxx2022Iq3KVKKuzpjO8Jhvl66csvbEu8cOSUVRhdOERt+/0kD2/uUTGNgDS
         cq8xR73ySHZEaW0PPB3HGNgh4aVrcHTS0s5xQs1Hzg8AB4WSE+PPw/j+UdaWd5RiWv0P
         sCdg==
X-Forwarded-Encrypted: i=1; AJvYcCXjHLfywyzSaB1b/yafVfTnE8isDSLqW5wa3eFHaJ8etbgPh7krgI0au4GPPkW24ydrUFOWKp4WqqwCA7WzhUyEt0GSLCXDPUdAJw==
X-Gm-Message-State: AOJu0YwUFl/J0Yjlait2wxJ3B4mRUgTqcMTMiamTbu+Ac3TAC0f+EsKH
	NpoCneWjoTIgw7J5UDzrD3A5LReEYDEYgoH0ckZW4FS0A+9iGVXRkIJV2Mscl0fcd4Aa8J3TFsQ
	MxQ3k5A5JgJVGrSmHcq/WnJqPSgtPlXms+lHICg==
X-Google-Smtp-Source: AGHT+IFIc0UDZH2rYBlciu6EgHe9SG0iWnIKv9l9LdqMVWwHt3lshTAxxaSapQH5k06xP+3gSAiJwASwUrqLK9mL1KY=
X-Received: by 2002:a25:dc87:0:b0:dfa:4730:ee8f with SMTP id
 3f1490d57ef6-dfa4730f680mr1288097276.61.1716968310297; Wed, 29 May 2024
 00:38:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240527115933.7396-1-zajec5@gmail.com> <20240527115933.7396-4-zajec5@gmail.com>
In-Reply-To: <20240527115933.7396-4-zajec5@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 29 May 2024 09:38:19 +0200
Message-ID: <CACRpkdY-2Q8H-fRP_EMWU7ugKHC7+kV-jPgiAcOPpsg94bHPbQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: mediatek: Add OpenWrt One
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wenst@chromium.org>, Hsin-Yi Wang <hsinyi@chromium.org>, 
	=?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Macpaul Lin <macpaul.lin@mediatek.com>, Heiko Stuebner <heiko.stuebner@cherry.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Chris Morgan <macromorgan@hotmail.com>, 
	Sebastian Reichel <sre@kernel.org>, Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	openwrt-devel@lists.openwrt.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 27, 2024 at 2:00=E2=80=AFPM Rafa=C5=82 Mi=C5=82ecki <zajec5@gma=
il.com> wrote:

> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> OpenWrt One is the first ever OpenWrt product. It's based on MT7981B
> (AKA Filogic 820) and has 1 GiB or DDR4 RAM. The rest of peripherals
> remains to be added later.
>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

