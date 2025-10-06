Return-Path: <devicetree+bounces-223869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C0440BBE7F4
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 17:34:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57ACA3AA5F6
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 15:34:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E931D2D7DC8;
	Mon,  6 Oct 2025 15:34:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA36283FD4
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 15:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759764867; cv=none; b=E95OGGEFetrT/1hjRlzX16sD6Y2MB7q9MtNurJmRSymSfRu7isf/e4EYdstZgdDIX310js7lA9Oe5FT9MCW9DLvWyXq32lznAwHHDA85uW/wJk+lFQofqWXH+EQsO1f1F6k72Qs8yjlpjnC209zh55hoBOfKO9h1PQuTmNJZqTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759764867; c=relaxed/simple;
	bh=dSnfb3yL4QKj2jW1vkztCLpaRi4oy5M2m+qzcux2G/c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Y+/d91ANZPsGlp8TEGOzXDmR+YtwAHajOJsSQs8lQczqR0y2rW1QPkEysyVjb57iluaf4wWQ/5Ya9w4ERaBRSPLAip3ME5r5rK1bclauKPc2QEaiof67T0dwfqlJMl48DXKkK8kT4BJ4VnjxB0Up78hEU7y3FuQKtIdgEu6C0KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-554a627a257so132074e0c.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:34:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759764865; x=1760369665;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+jg3+SSfQDF+38T7p3MLG0Dd2g8S6PQVTqm3cXu4YzM=;
        b=rHWntNIJot8zpdB4ntN5kLG8RYBVkSv+YD/1oHLppKhTqQX9mUJoMZBROooLotlSlb
         ddja7VjyPzsbtMhRiQ4KeB3trIHv9yFFKRAa8AyPf0cSl9YxOgQR73swQRlz/2vc5doH
         EBj55r/92iLWR3AWEvgfLzgR8MYapteWhBRJHXhJ9OMVXT1E2Z4J4VzNPHfOnqI1+41k
         K7lhdNK3wWeXYo4H5sDAJb0C0y4U6MJq0bLVYIUWplaSp65ngNmWoGBKAy+oxYL5YRNm
         uTLEHqCDetG0hrEJMkV0iOUw5Kr/oNjmgwbKDi00hT1ZNGs1kuu27BRucHp2RZyZRQNo
         QQPA==
X-Forwarded-Encrypted: i=1; AJvYcCWmNCufa/Glt9YKwr48wZDXPQ4jAf8o84ve6HJ6FT5ktEKBELmWpaAJ3kFvc8pkunEWDo9gY9X48sk4@vger.kernel.org
X-Gm-Message-State: AOJu0YwddKYsUOGkWGGeLlnjND3yjEwY+YxncE0RZsTs0F9RFqizwbdS
	lEcpsd3R7fyvt7wtD1ZaNxmfSZMeN0X7C5gS+Rc6gmPd7+ddPchLd0/ifUCmfdkD
X-Gm-Gg: ASbGnctoS2P16naJAho7nhbGA4K0Jx1WUIr4uxMuJ1qAXH22VJ9r/2pcs6PRofzISGI
	seCHeK7oAhVsDgv8MMhJ3aa1f3RPSPcagrHywBoaJjo+MH6Y7JploRCKWB8MN7lIkWAd0qKqsGJ
	wU4VCv0VcqAyh/KO0Ps5lljIuikK0QjyJ6Wnt4Imygsc5VN9ssWRhiAf4c9MPDNLScBCpdpNCGV
	YmuR1stFUxDKte908s7LAOrKwP7RyT1228CnKU/rtnQjRE5i/MWsIpP9lY8SCflmB41a6rQ5EIn
	MPg9reza78/GbTF0lg23nFqo2coDHVHjHfm/kciN9NanIJk9ORkySW7Wgb+G+kdpkernvO2XBxh
	m1FsNxLy9MOwMo07EBrb2gNFvzkBemCbsVeLYBbAvUBLpVqM9oWguVR78ASbUlFJQrUC6gqYlfr
	axRdGqG0fBbq+sAaDwH/A=
X-Google-Smtp-Source: AGHT+IFAA1u5965pHmTWfVs+YNMS2Pqm168WyskEXJBO/P5pQdZrpYJoPyOeE6dqAURSBcj0Wpwc1w==
X-Received: by 2002:a05:6122:514:b0:54c:4dca:9529 with SMTP id 71dfb90a1353d-5524ea96bb4mr4516652e0c.14.1759764864963;
        Mon, 06 Oct 2025 08:34:24 -0700 (PDT)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5523cf98b43sm3051623e0c.26.2025.10.06.08.34.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 08:34:24 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-59dff155dc6so3278606137.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:34:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVmvz/qGqlG0GZ4p096GHll5el62VsNoKDJq945YjzyckK9HNo1oztdqMKuQxxjowvDcqDJumO2nL2/@vger.kernel.org
X-Received: by 2002:a05:6102:50a3:b0:57d:9305:63db with SMTP id
 ada2fe7eead31-5d41d08b522mr4237667137.15.1759764863878; Mon, 06 Oct 2025
 08:34:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006082520.10570-11-wsa+renesas@sang-engineering.com> <20251006082520.10570-14-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251006082520.10570-14-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 6 Oct 2025 17:34:12 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWwHJgW9Y=RKyXgVwYCvJzBQc3zpRzpP5yUBcfZNAdo5g@mail.gmail.com>
X-Gm-Features: AS18NWCciT_-UK_y-k_Z5Xm1WxXKv2Abi-iS7JzUNZsCeSfXKSXXPeeyGuNBwI8
Message-ID: <CAMuHMdWwHJgW9Y=RKyXgVwYCvJzBQc3zpRzpP5yUBcfZNAdo5g@mail.gmail.com>
Subject: Re: [PATCH 3/9] arm64: dts: renesas: r8a779f0: add SWDT node
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 6 Oct 2025 at 10:29, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

