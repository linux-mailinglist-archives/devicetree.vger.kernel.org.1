Return-Path: <devicetree+bounces-241073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B4EC78E70
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:51:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C1813354B21
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:51:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5892B309EF3;
	Fri, 21 Nov 2025 11:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="OUVVrQGi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78F4826C39B
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763725879; cv=none; b=Gr1XZ/7VMsdyQWo69y+Cq3OtxDGuCyQQa7iKaAMb3XRgwrEpriRUAXmrOxue17z0tnlf/nf5GHTVcWLcyFJ4ZLyfzVYOjhZd+mj13F61Y2mY5lXVyjSefTM9P8HHTfIvWnu+uZgnHix187UTuBesiqKkWvxKRXrtCPqDkSUPVoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763725879; c=relaxed/simple;
	bh=FYaplJsDrI1/PS0W7BqOAfoN6ogemwe7FmDn7Buz+jc=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tcsTFYuBWjeQ6yxaij+mBYK4q5Dbbb7uLfeyCAx7s04eGMR3jlFH20SN2RuSJ8+LWo0ZxS/bauuaEEhD5LzEJWGitKCp9Fj3h4FkjWM8XggwQ+aa8ov+wPt3XN4q2fK+y3nW5zUQAS+U2//emkT+BFFlhZG99hJauYCnGTNPt5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=OUVVrQGi; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 34A653FB84
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1763725869;
	bh=WGDPbHQuHpY9+gw1iYDyOy2Eg2j2SkEl13GO1wQEzZ8=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=OUVVrQGiLXAZnmylzTzLpJl/rs8Mf9iIHSir1ytNoLbCpI/btWc+naO9GNB6niNIi
	 0naV2HpAly8oaeTpeVVd0/Wz7qB/k5ICqYGYE0MZY9q0PEy/+iZU4oS7zGelP1NDAb
	 +XbQdn5Qx465Gv3Mmxf8baGTLyLygP+cl6eDCGWXVmREke/qVWWFRg3kOc2qwXjm4r
	 jFh7K2jBPNfNR+iLI1CAV5kx54GbnmVgBKaZuxJV/kmLBx+M9lsk5MF6YQsu6xLmPa
	 o1Fo1WU+dXhzpWqTeLFeTzob6ai0tB97xvjKIejATqLWwdauRdGTPfRoQPYTNwt/QD
	 nTLNtPUaAEKSf0Sbs2VVZVuOWaekmuw1oF/vKKta+zFSt7VN7ixdjruBP/vqzha3Kp
	 g8DNQ9jtp81sLpIhsGk6/+9gBznSz7Px4UnfoudJzLanhusAvJNQD94kxSkGKnhR3j
	 B1G6ZxDyhLdOJd6RsZ6drSRK+f7440HPxMWIDYMHJtr8xennkAxPofgPHeOoUcNpSx
	 7tfnQC2CeVnBdOygnKQFCjvmHRClKQluk0vLiMGsThz1vtt6SZWBhmyPYuLiTRSKBj
	 EM8fUJ/Q7heuN98QYVeGunMsqRd+paBli0M7EIfVMZlOdZsFRQDLk5zT0cax0+ScXl
	 uOv9L2kZ5xi3dXlYKwsg2Bu8=
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-b72e06680d4so288896666b.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:51:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763725866; x=1764330666;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WGDPbHQuHpY9+gw1iYDyOy2Eg2j2SkEl13GO1wQEzZ8=;
        b=aWfUPhFvyalLH1Dob+M4zSdKQj71F/MtqZ2JV+SeIPrZWmK4Bn9Y2ydlBFTSxIfvCO
         Q/Qk9W1aDSm9Kea7pH5zhavtLFlF8K03/PHGpvIc6kg1QpDqZcB/t5E23YyWHdGnfK9M
         EsKuQGWxyzI9Tl//OOzuJWHflgnVRjQtQsc8iRYYIgQoMzgrmNVQkRTqX/pXt0SyYwlA
         kJsmcDx3/yxqp2PZ5vruJ1DclBgDvY7rmpQReGk3gkXfFg4bxKaDFapoQu62h4/n/mNb
         Q+QZ9SdWYpDlPYYKBo6SW0eYjHNFadC8P8hxKydKtRAD6cmyx8uusiHPe04V3lhMHaaW
         3gbw==
X-Gm-Message-State: AOJu0YxBCA4ViRTgN4OJv/UpVlYNzTubzOMCvtDEo5C0jNbotqyWyFTT
	6PhkE5ntg7rSB7X11HD2eSU6xe22gHfMCoawR4ry0+LYn0oMgrvPxrE2mXeBKLSFlcjOCNGYxdO
	AlE4WkVfap1AsBlqxL3xKaKZ3ysYP1UxkSUeks3pPn/kuFawo1c4/2p6J/TRyj866myZ5gd/iUb
	dugjLWYKHfYiHxDAt/E6FKhR92jaT0tlJEMjdo65++UaaKF/9qGwfb3w==
X-Gm-Gg: ASbGncsvm0zP3edxUqmQEKkZilWMJbai/I61sTnIEstJHNqMHxHQB29WiPy9AEduNWp
	33a0RvuHCKv+ag0NDx2ZJc8Z6q9FcpKRNhzYmA/hdjji7cn6ukDbepDEuKm9D0PgfH4PZr/XHPp
	WxJ4QgLLTMbBmeWO0oWQLByoxY9/0F2RCuZsPwIht7X4sAU3GtrmDbJSQmxKeuYL9z
X-Received: by 2002:a17:907:3f9b:b0:b73:4006:1884 with SMTP id a640c23a62f3a-b76716d9fb2mr178971266b.37.1763725866310;
        Fri, 21 Nov 2025 03:51:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFbBNgyoucqTathPWkzu4EoA5RlPQZMx2IIcYS98GKu59Kbn0elIr7tVeULwuVlppymA6TBZmJxCGp0MFNTb/M=
X-Received: by 2002:a17:907:3f9b:b0:b73:4006:1884 with SMTP id
 a640c23a62f3a-b76716d9fb2mr178968566b.37.1763725865852; Fri, 21 Nov 2025
 03:51:05 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 21 Nov 2025 05:51:05 -0600
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 21 Nov 2025 05:51:05 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20251120082946.109378-4-hal.feng@starfivetech.com>
References: <20251120082946.109378-1-hal.feng@starfivetech.com> <20251120082946.109378-4-hal.feng@starfivetech.com>
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
User-Agent: alot/0.0.0
Date: Fri, 21 Nov 2025 05:51:05 -0600
X-Gm-Features: AWmQ_bkaNRVs_IsWSLR3s4HRukSz_ikG2dyq34vaL1DCvYawBgn4_Mm40cBb9R8
Message-ID: <CAJM55Z8NsC_-jcrm+ndMonU6EtkSzhAQvoROXZwOWNi9FeQLXA@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] riscv: dts: starfive: Add common board dtsi for
 VisionFive 2 Lite variants
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

Quoting Hal Feng (2025-11-20 09:29:44)
> Add common board dtsi for use by VisionFive 2 Lite variants.
>
> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
> ---
>  .../jh7110s-starfive-visionfive-2-lite.dtsi   | 691 ++++++++++++++++++
>  1 file changed, 691 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/starfive/jh7110s-starfive-visionfive-2-lite.dtsi
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110s-starfive-visionfive-2-lite.dtsi b/arch/riscv/boot/dts/starfive/jh7110s-starfive-visionfive-2-lite.dtsi
> new file mode 100644
> index 000000000000..aa375c4a3fa3
> --- /dev/null
> +++ b/arch/riscv/boot/dts/starfive/jh7110s-starfive-visionfive-2-lite.dtsi
> @@ -0,0 +1,691 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
> +/*
> + * Copyright (C) 2025 StarFive Technology Co., Ltd.
> + * Copyright (C) 2025 Hal Feng <hal.feng@starfivetech.com>
> + */
> +
> +/dts-v1/;
> +#include "jh7110.dtsi"
> +#include "jh7110-pinfunc.h"
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/pinctrl/starfive,jh7110-pinctrl.h>
''
I'm confused. In [1] you said "remove jh7110s-common.dtsi, because only one
board uses JH7110S now." but this series still adds two different boards.

Also this derives from jh7110.dtsi rather than from jh7110-common.dts as I
suggested in [2].

In any case I'm fine with doing it this way, so
Acked-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

[1]: https://lore.kernel.org/linux-riscv/ZQ2PR01MB13076544E2136E7E7C2EEDA1E6CD2@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn/
[2]: https://lore.kernel.org/linux-riscv/CAJM55Z-MfpVX3EuQ_AjvDSk6FwR51R5cQdN5RybS9pbJ8r9NNg@mail.gmail.com/

