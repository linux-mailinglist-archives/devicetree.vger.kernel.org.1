Return-Path: <devicetree+bounces-241075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A09C78E8B
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:52:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7316235567D
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:52:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B704334C08;
	Fri, 21 Nov 2025 11:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="XJ5Q1CWU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74E3330AD19
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:52:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763725961; cv=none; b=YkttR4LBqFMxuC9MNdyG9yRUfs1M1cxyw5FJ2NY1QbK+S55jKZWMzZRVjXca/wC+Ye57St4BPXuG1ydv0lGhXO/zUzFjCwP1FPOn/uoOdvcF3LKP09sZY7+djP7fV4h4MIQ28WUWB5unOoXisMCXVp8ZvEmQPNjTaIpl/vcdSx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763725961; c=relaxed/simple;
	bh=uNAEm3X6ApLejKPLr0tADG67AwERYnvN3fzQ+kDZhZc=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cG7d6dW41k7sfZvD9Wh3mnqA8EyUetorb5jO0c96QKYNZjXMEtcNh3oZGllexoUwUkVGsdtaEbCY+PUsBV5CNyoFV2apaiEOekoLUKmpviUiXAKyGkARQeMVP2xvAIx/oreuRjIEhI7jex2TG4Z8Krn6rzKCgKNgQi//hSKSfUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=XJ5Q1CWU; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id D5E513F941
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1763725957;
	bh=uNAEm3X6ApLejKPLr0tADG67AwERYnvN3fzQ+kDZhZc=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=XJ5Q1CWUXhRF3HOVnRxOBZ/Yf7WvATTgWiPWs89M3xaX57h4GkEgWynvxhbUC/qZz
	 BkjWco848OJ1LyZBrpXrKVdQdViwGe3zNTl/RLnlyeyDfr/mp39Dk8EGCcHzsgHIHz
	 uqc1VZ8coqvh8sbnG7chy1uH8Ob45GBWl7iHcJjUKNJdzxFJNQl/vmGWUGoNgAOA8Y
	 1i2DvW8ofM7O7Rs7IWUzxXnVaqm1S6gObGUY+oLINsiXY5XLbd26YuIOq+Y9NgJYzt
	 I+R8ZRe/N4W22WuW6DDwgzaMPoq8BGRlZJUgvLsF3xdK04rYZvrTyfta5rOH1/XLOr
	 03m0IYk9GxASilxfQzZT2A3Uvuc1uc6u8Ra0RS5DtCkiQcXRoSZ47+EO+osLsjkLGw
	 e66Gx6rN5ny6EG8HddHaf+p9oehLdjEzBMnZOryRHGImVKLWSQ6pnHqk00F0RorTIt
	 fFriKm5SlmVIMiGX5/oPxTQF1mgYJivxVrRvyJLDVFY8NEsvm8efYNXDJGcGCAXNW2
	 BVZ6nqLbEnyrHPN7zmnVa1gMvK4IqgHiMipKykYhntz11IPEYFuGjqRrXVWhciMU4+
	 wD6c6BADYJKong6fePiYLZhW0QFrBkC0sFRZBkYhmmMPcpdHdE410f4/PNXHNZkWTJ
	 zZ4lI6VnYRV87HUR5RR2MFZY=
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-b71043a0e4fso196201366b.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:52:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763725957; x=1764330757;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uNAEm3X6ApLejKPLr0tADG67AwERYnvN3fzQ+kDZhZc=;
        b=YMOvyUluK9eO9+WnBXUFTKcVTCWeQcJNrsXQGZUNpX6x4ghbyDl4+AVmZLY7AFteAf
         pNuLhGK2arkuhFMe62utoVg7qXsd8Lx+wlHytMazrXyFpDZF7+EJuuo8A0KQ4SOgQ9K4
         ib23ftRMAVD7cfKHGRsEgR5czJnP9G5fljeZQU/j1lRWinIgBcWTzR4SImb/cvKGoEMk
         QZQC4NnyefKUYIWoHJZO3GnUmUkaOoASLIM6gWpEBinBGdRsKLDobqxNBjOcD9s4c5G3
         daalSqfGc5nCJNJuotbECPQ9PU0LZgccjmb9jCNNHZ4fQ9hh8GshGK22j3NVv9SXAWW/
         L/xA==
X-Gm-Message-State: AOJu0YzyfBxHS8JH1h3UnsRVmewYq+MYv5fOvtSq7qkEi/7Ctr6WUpZr
	ek70iM+u0MajuyiTEuC+htOCo+weh3EHR+Ks0A8yG+5DASkjkhQedQ7J9fRyNAark+Bj0BZ4QN7
	8AKhLrC+M631c1szDZTydNB3e47bWUE3BMkU65l6d+W4oGd5kUEUg6xmKw8KxR/GVoZt1wUdtDq
	3sryw2C+6cNlGIkgxU9NI01HetXeXDUea+xwlfbgwwFVdpeNmyEqt4nA==
X-Gm-Gg: ASbGncvUS7ZrjhakmGCdZb+howhioFj9rMxMO5r90bbxsJdJYIy+tjYRnD/bjp9MFle
	le5qt2j2NuS1ir5S0LKqrA4rqPJIlSbkEeI/nFUnBjFjG54uiqfW7K+qdw4VDXJooOIXkNHRpNY
	d3+2VDetePwG06T3OpySv46p4TfiHFHkAlAndNDNHATdCVcubYspKxvHwNLNLnUlOB
X-Received: by 2002:a17:907:724a:b0:b73:3f7d:3df with SMTP id a640c23a62f3a-b76717099ddmr221799666b.41.1763725957427;
        Fri, 21 Nov 2025 03:52:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEo3/R0RE+QajhIcex7ztFV+fE9g8jRx47lb8D/Si/wq/K1MoyobYB9iEdo32Zga+8FHLJyvmoqrjQgKT7dmcA=
X-Received: by 2002:a17:907:724a:b0:b73:3f7d:3df with SMTP id
 a640c23a62f3a-b76717099ddmr221796666b.41.1763725957069; Fri, 21 Nov 2025
 03:52:37 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 21 Nov 2025 05:52:36 -0600
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 21 Nov 2025 05:52:36 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20251120082946.109378-6-hal.feng@starfivetech.com>
References: <20251120082946.109378-1-hal.feng@starfivetech.com> <20251120082946.109378-6-hal.feng@starfivetech.com>
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
User-Agent: alot/0.0.0
Date: Fri, 21 Nov 2025 05:52:36 -0600
X-Gm-Features: AWmQ_bmJmRpQ-BCAoCJ9zUrsT9I6UmPTJNR96lDCmCqUfiOssoO5uKHnrjCPwC4
Message-ID: <CAJM55Z8HqpDuTM_ByDy4uANc1LqULA8--LVUa2kpCmSAdBMD6A@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] riscv: dts: starfive: Add VisionFive 2 Lite eMMC
 board device tree
To: Albert Ou <aou@eecs.berkeley.edu>, Bjorn Helgaas <bhelgaas@google.com>, 
	Conor Dooley <conor+dt@kernel.org>, E Shattow <e@freeshell.de>, 
	Hal Feng <hal.feng@starfivetech.com>, 
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <pjw@kernel.org>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Hal Feng (2025-11-20 09:29:46)
> VisionFive 2 Lite eMMC board uses a non-removable onboard 64GiB eMMC
> instead of the MicroSD slot.
>
> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>

Acked-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

