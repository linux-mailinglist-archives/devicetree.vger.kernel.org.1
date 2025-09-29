Return-Path: <devicetree+bounces-222460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC625BA94D9
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 15:18:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 676D316F368
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:17:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FCF73016F6;
	Mon, 29 Sep 2025 13:17:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076103016EB
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759151864; cv=none; b=VThFN2fVGx8kKMn6qRLfFfX7l2n8j8087V08YQ39Mmqx1wK9TuKhMs/p/9+EnAbsFeOso3wKJd8/ckqJethvScXR1nUTryCeDJWrZ1WXSCnRmXwTAmrAlWE/SJHzZr7gx1tCu6mGavpr69UERfLNpRfXe/CVDhq5HFgVvVErcPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759151864; c=relaxed/simple;
	bh=wANisPC5z9cD4GP8SLP+vUm2YJjz+htvFrIhAJVRFN4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Jorjtqlq02iOXgwv5KovU2CI6S8C55bbui5uj+EO8c7GXyuu/0KiANsZmGwzZ0mj0oEJ/TD8hqPHF7R8F65BTFix0IBTtpyWMVSrMO4Os4Qlf9CfgSW45kh8Pgunqtf0i651QdyskBuT+XGaIuul2Jzrg/A98WHdV2Kvjnz0hno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-8e1d6fd99c1so1594894241.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:17:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759151862; x=1759756662;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=id1UL4XMXXh5ORipw4ImulCQ1+I9qnWpIF3nvWEwJ6U=;
        b=giIyAis5zRlyWm590B9PJzGci+or7hwX+kmlgchdylVvdcJV/utGNgsft8t+qdGaIi
         UGzI34hZun3rtDS55gvJzsVXXxhHSfUpj0j7c+XCkPuaQw5T3Z2bHdMJQz8EiyIiET+R
         VOHYYhclA8P0Bz+6iRENr4ufAfkxiC+aed41LP9l4cCY9b4wwxecqmYsbEpVILAFWWWE
         7i5ze/qV1jLGqijBTteGSdeDPCMQ/0WLcei5sTdYjTMrBDG+lqZZL3EGe765Rw9M5OCu
         sgLjKj3S1c7S3ra+brnqJCKi/tADvjK0GXadRw6+SUDy4zYo5/xNiY9OizQ4x6WxsS8Y
         pgfA==
X-Forwarded-Encrypted: i=1; AJvYcCXdOoOm5W/LJ7+dOTjc6Mp0NbiJLvHLSK1AfpGMpTZdcD2L0RkFcYv9YIFVxelR0wkfyv/l2lXk/wHr@vger.kernel.org
X-Gm-Message-State: AOJu0YwKGhlZDgnux5lIvU1zpyTgYuH9g3lIsCWE61th+5czJOkUDfcl
	RWPvYRx6uH/8rOuaXpfJDBC+LX13pzo1CZVZsHInoXUaQyRK2u5TtxUyLQS63RoN
X-Gm-Gg: ASbGnctLEJpZLevGnQcnasraHNGw02eWt/l6ogg2RCc94o+o7/4na/PZ1KxMswTu/q7
	WrssLjEoKXCOsI8RjfWh61XMq39RH0xPFs8qqsq5bI8K6m4UMmdAdmKMW211FL1e/rRdgdbeAe0
	NWzYg0W2RbMgkyWTR+VGuwZdssWNjNK5MVcqJKW5iF6vyBitLp46huA3AI7It6qj142w7DDfP8Q
	Jw6i7Zu+oU/7yTic2sxS/SRPW5Q6RrxBjtB+hagqn8t4HrgsO6pJH+NUXUtQ+0sj+UscB2qxbnN
	O7DRQcrStBdCMF9Oo6eEzJXTG9vNw5imt+KWspr9zk/rCMXcjUfFC/JvOIIS4PYQHTV0n27fdAY
	LcG80QOCQXZLfIHiB3/rfIowYmrMjsZ3HPb5jutVO6TD5M4LzGQqHt5dqRp3edRhvJNS5T98=
X-Google-Smtp-Source: AGHT+IGJgm0OLC/a7pyO5TD3BbftS5VaM94VmrDaYnH4gDhO3JqHusM4jgAbN9Nxtg+Ss/Jndu3NqQ==
X-Received: by 2002:a05:6102:4427:b0:57d:9305:63db with SMTP id ada2fe7eead31-5acc99329b8mr5974568137.15.1759151861760;
        Mon, 29 Sep 2025 06:17:41 -0700 (PDT)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ae302ee7f1sm3373093137.2.2025.09.29.06.17.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 06:17:41 -0700 (PDT)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-89018ea5625so1687471241.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:17:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWpQK2gFFaASojPwcM14lp1WSaDWgcoi3o1pSYyWlL2zJ6pfoy6xHojjgmLxSyHnGfwDyifHsHnC7m3@vger.kernel.org
X-Received: by 2002:a05:6102:161e:b0:4fb:142:f4c0 with SMTP id
 ada2fe7eead31-5acb9e315fcmr5962804137.0.1759151860562; Mon, 29 Sep 2025
 06:17:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925093941.8800-14-wsa+renesas@sang-engineering.com> <20250925093941.8800-20-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250925093941.8800-20-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Sep 2025 15:17:29 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWMq07SFfeDgL-7sPY54-n1b+qFMjS7kgFFg9zZFN=WUQ@mail.gmail.com>
X-Gm-Features: AS18NWAbAqineoRmYj5Jq8UCU8f8DAP7HvbIppqEePti2o8XnnRqHvranoNGjag
Message-ID: <CAMuHMdWMq07SFfeDgL-7sPY54-n1b+qFMjS7kgFFg9zZFN=WUQ@mail.gmail.com>
Subject: Re: [PATCH 06/12] arm64: dts: renesas: r8a77990: add SWDT node
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Sept 2025 at 11:40, Wolfram Sang
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

