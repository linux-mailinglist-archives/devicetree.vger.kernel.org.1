Return-Path: <devicetree+bounces-217679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2B5B58E15
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 07:49:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 91E5F1BC498D
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 05:49:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65C2C2DE704;
	Tue, 16 Sep 2025 05:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vyE6eyT0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4360E2D6E49
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 05:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758001744; cv=none; b=YrPBqQizyMjmq6HCk8YbX+JFi6wvjzotHSyda8ekpT8Wb6GNqQ2Lbq0HoqfOMvLN54XYxBNcbBph712p8v2ljYT0cWD0G0e4TT+vr+e7bfDJrG8y9yRBe97gaYcLTbyPXKYkkJ9rXUjkXCRF7C2IN+C0u0owU4mcCym6quYAFOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758001744; c=relaxed/simple;
	bh=aablpwZgkDY2HF/H36K+OQMk4Kq3szZsC1rhL0md7XU=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=KsrVtpFqu0OAPmZSl1WMENBZ6mRw4GbdJpAnY0m4kqKR4uOvTVcPN+aMnNJejeNlBhzlyPMx+p9fak8yhNflfxda9ebCuTLvNNYQ2io68w127VGMf6RzqhSbU59UTHP2fcVYngV5QD79EMmeK0UE96T4Qxq5vQIhBmn4PSv7Oo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vyE6eyT0; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-45dd513f4ecso29860115e9.3
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 22:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758001740; x=1758606540; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2+Ij4gEe2LcS6vPzM/CR57NuWgzn7Jx8huZwedt8Tqc=;
        b=vyE6eyT0MwN2srMR7la91gruLAHsfDKkC/uqT2y7dnzmpxT4aBrJvFBUXFuRjrlkhg
         BJMlS1SEf/CJiuAYvoagzi0bw1l+08ehlBDgdoabYAvuN1iRY2J89XjLcEsNGDN9k0ac
         aOjZLNk1nYz+PjPOearTnT8jGsO9sWDnccM5RosHcGGE4ns9SCCi+jtQ9uqyS6IjwXRQ
         kXgTpCZ7C8UbjDFqTDMIU4WYwJNH2K4wzKvVh/FMpDu56Bloqs0h6jObhVfoUPcDQBJ0
         KI8LDEN3FYm5wE6p822OY7ocAFzSOHDGxrmu7nsNAA2pA6lnpeVond2gJ0vTGVm/MMaI
         ak/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758001740; x=1758606540;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2+Ij4gEe2LcS6vPzM/CR57NuWgzn7Jx8huZwedt8Tqc=;
        b=ZHc1axBGgzVxIYXaCa1cfJRFfCVz5kuC4hKIwskwXff35ZmjO3EmLpjQ5ctwRbRJ4+
         eKlwtsqOQvUCoy+pwVydqf7UhdTPKHYnOH+hqFRhVWBvlXYt0T0Buj0PuqElVAQaGv89
         TCk1fkQy6cVpF5DxHbvek5Jl1EeH2CE6qnfBiUTnDAbEYs/5GIqbHgsMwkLvnPp8qGAJ
         sSO9SNVD+3RofrnXOgJ3kBagGQVft2q8CJ7xt0jrVEENIAljPR6Y/2xVsKlnhLJiqjKn
         DZwqScCz5YSgPqpWPHGUYgZ7KdFi+QvY2E1CKOwynIysKH6durnCrpN9gVTwvrSnl0hc
         wU3A==
X-Forwarded-Encrypted: i=1; AJvYcCWewDpVb/nv03eyDp89bF/WOZK0NBlIu6NHgcNtpEjILswz4w7xEwefoGnHJTu8tJTlC+dZN9/4o49c@vger.kernel.org
X-Gm-Message-State: AOJu0YzSgdgA9hKAI+gMpBJ94Vb3FC8uZqUAxb2t5cklm/0LVBBmG8CQ
	cXWNga4S7ySvEPZte4MqI0COjgNw8hCtbqQlnEJyvLCftF8aizgY/o4vcXgK6AbxjMA=
X-Gm-Gg: ASbGncs+tj0u9Ui1VBFjlmY8tcsv6ifGmzrShSbaubnXbxLvk91/855C/OfDFZ+aPlK
	9ROwXr0rQG+A2VEJFBa9r2FU9DVd9Y/dRqHw7okxQ3jyS5nB22pfXfmR1HzuBUJaLdupi6MG3Aj
	AWA9K0XECjMUgAPhqEnqbDdEMDPDorJb/cIJxngaU25CXDVovpcr2B+7j5X4pPeIqHKBDwjER39
	OW3GsUtXzZx40BBTHXUn0EteCi/MnPS7Ma/n/sds+iAOxgDWc7hZlqew2++4ftYhgGTHfyuIyt8
	F5kx0FSDS2FsDL3DbHoGzOGCEUb3BTTFrUnTFv0zIEdjQ+A1EQ6+/341u02GqV2CTFLpnf3W7rr
	0sIny6p7FXzObcA2dFEWCrfrAG1uGwJIJznbiwVAe+0eQTA2pbg5B23nMwm2i+DCySKhi
X-Google-Smtp-Source: AGHT+IF7x+pGpXf85Vy38ChqF7Pkim2OKEyjFcqs8YYGtgVmrGA1ZIZ90uccF0N4NZf54XR53W2Dfw==
X-Received: by 2002:a05:6000:3113:b0:3e2:ac0:8c55 with SMTP id ffacd0b85a97d-3e765a3e423mr13059397f8f.55.1758001740531;
        Mon, 15 Sep 2025 22:49:00 -0700 (PDT)
Received: from localhost (054722ac.skybroadband.com. [5.71.34.172])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e760786ceasm20896593f8f.16.2025.09.15.22.48.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 22:48:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 16 Sep 2025 06:48:59 +0100
Message-Id: <DCTZLTRX455M.95MSJULLX6VC@linaro.org>
Cc: <linux-arm-msm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-mm@kvack.org>, <tglx@linutronix.de>, <andersson@kernel.org>,
 <pmladek@suse.com>, <rdunlap@infradead.org>, <corbet@lwn.net>,
 <david@redhat.com>, <mhocko@suse.com>, <tudor.ambarus@linaro.org>,
 <mukesh.ojha@oss.qualcomm.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-hardening@vger.kernel.org>, <jonechou@google.com>,
 <rostedt@goodmis.org>, <linux-doc@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Subject: Re: [RFC][PATCH v3 15/16] kmemdump: Add Kinfo backend driver
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Eugen Hristev" <eugen.hristev@linaro.org>
X-Mailer: aerc 0.20.0
References: <20250912150855.2901211-1-eugen.hristev@linaro.org>
 <20250912150855.2901211-16-eugen.hristev@linaro.org>
In-Reply-To: <20250912150855.2901211-16-eugen.hristev@linaro.org>

On Fri Sep 12, 2025 at 4:08 PM BST, Eugen Hristev wrote:

[..]

> --- /dev/null
> +++ b/mm/kmemdump/kinfo.c
> @@ -0,0 +1,293 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + *
> + * Copyright 2002 Rusty Russell <rusty@rustcorp.com.au> IBM Corporation
> + * Copyright 2021 Google LLC
> + * Copyright 2025 Linaro Ltd. Eugen Hristev <eugen.hristev@linaro.org>
> + */
> +#include <linux/platform_device.h>
> +#include <linux/kallsyms.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_reserved_mem.h>
> +#include <linux/kmemdump.h>
> +#include <linux/module.h>
> +#include <linux/utsname.h>

Could you please check if the headers are sorted here
and in all other patches in this series?

Also module.h is duplicated.

[..]

> +static int build_info_set(const char *str, const struct kernel_param *kp=
)
> +{
> +	struct kernel_all_info *all_info =3D kinfo->all_info_addr;

here ^^

> +	size_t build_info_size;
> +
> +	if (kinfo->all_info_addr =3D=3D 0 || kinfo->all_info_size =3D=3D 0)
> +		return -ENAVAIL;
> +
> +	all_info =3D (struct kernel_all_info *)kinfo->all_info_addr;

Maybe assignment of all_info on declaration in the beginning of this functi=
on
is not needed then?

> +	build_info_size =3D sizeof(all_info->info.build_info);
> +
> +	memcpy(&all_info->info.build_info, str, min(build_info_size - 1,
> +						    strlen(str)));
> +	update_kernel_all_info(all_info);
> +
> +	if (strlen(str) > build_info_size) {
> +		pr_warn("%s: Build info buffer (len: %zd) can't hold entire string '%s=
'\n",
> +			__func__, build_info_size, str);
> +		return -ENOMEM;
> +	}
> +
> +	return 0;
> +}

[...]

Best regards,
Alexey

