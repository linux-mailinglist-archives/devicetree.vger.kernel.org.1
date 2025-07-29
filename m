Return-Path: <devicetree+bounces-200521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 947F6B15086
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 17:55:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E0D58189E795
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 15:56:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40826293B4C;
	Tue, 29 Jul 2025 15:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bMUkH3hW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA63207E1D
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 15:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753804538; cv=none; b=Gol1idTNpWsQ6Q2dKEeL8wkLjnOIPVEeblp6kzgHBUZbPZNujtuv6nbGTuHGl6onwIN16tqoVJtO0vjx/CWQkFGMNI1a0f3Gxt5ImoXEIwEIGMApo/lUDOQinuSXAI2etMV4cUduWgPpZgeshn8MIPsVqrfBVCSozi1jT9EaKxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753804538; c=relaxed/simple;
	bh=zCssDT2BlR2ddGZ/s6nI3zWZcFEmq3mkKYK5ppXgMLU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sthdP7Cpw11Y+gZ8AumxOOjb17LXZve3wjapXYMo62+L3zI8hTXb6FMUpmxyIq8uJm5tVKpAhcrUGK51aSLYQ7h8LaE5n6hFXC4FlS15+hv4qT0VysZnAlXU3Vo28aIppn6VyrgiuJk6tt5RysL11jHyWrb4i0JjFgulbd8DN+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=bMUkH3hW; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2403c13cac3so278225ad.0
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 08:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753804534; x=1754409334; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ELxIfhrJzM9gjDNT6LfSal3ycdHCOt4AXjIO7oTLtoU=;
        b=bMUkH3hWZCfKZNiXC9Ma3O4O8f7U18B8Wc/hje+qD8H0SPkyCKiOUAQbZQ6glUErW3
         n1bFeN7cSRcIhA8sJBUqjqRZjkGkYusyQDiyJKvtQdQAMRdRvI/HSrHz4iJbaFsdEJcs
         L/CpEuUu/fWPAv8kl5h2X5DKeju+/6T92edn0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753804534; x=1754409334;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ELxIfhrJzM9gjDNT6LfSal3ycdHCOt4AXjIO7oTLtoU=;
        b=dqksfPHm5pfPdBUdVEJwWxTPZidVKsQ5PSnsRl20TrFzFhRfLiyzdQwCukJjixgPru
         8IOZN67cQKGDHUJN9ty70PsVfnQqkpb/KkAqPWPmFEfLtE3df5v7Qao+zktGzlYRRfdv
         eFL4w6iV3rtQQ1VtFQEDP5tXdjVj+HWGz6uhsstqM01q/zO8NSmlCIwYsWhe783HqzV4
         3lEPofBP/jNeezPa96YvJNZrLwbR5z4rIfKyjxxIjwh3cjYqdyYON4bfjovlArSvwapu
         BLVn99mryXaTW1b08wPJUw9fqbRDQh68MkykPo7lnTUJLUXWsxfKqILn4/VLFhZ9TX34
         RJvw==
X-Forwarded-Encrypted: i=1; AJvYcCXZy6fLv0uO/tgru33UC3eDkar/QyewP41KOUx8h7Gtr6Mb6szMD70wXQZGI92zH9DadEKz0bEtHsPH@vger.kernel.org
X-Gm-Message-State: AOJu0YyoumBhrq2686WefMAcxbFDeHTscxXmjllEmUi9T9GiLXIJWVf/
	aa1ryyS4TQxmEnwQhCbU/NsgV60oBXcY1PnpybPmq8hQPyL3+ZrTmzyV2izix5n0RRgiHMVrdRc
	FRa4=
X-Gm-Gg: ASbGncsmQOjJubcy+CnVuYc1709Xzc/dTv+4TX7XlDUgUNP8S0uxb2TZcxVf9YoJn2D
	RwALSsMr8TlooXC+YDOy7wBxlFrda0cU/H6x0JhML/cxOzqNrIh3TQkKX0A5SrBfqCXw64X6CV+
	0zTtCs0PJ+lp5+t32XtulNGOEkD1RbFcx1A2maNinREYBI3NUYsC4k95NMZXxQFcpAx+qC2oKeb
	h2d05upk6+wgDN4JXrM5/5Y0Tr2825qDOrExMl/qbujxN4bvPxSAMEzhFJCgsMmeG/1TQhvnIV5
	A4p0BOuPscO3tSOpgJYoPtHMLHLxFlt2ybwXGJL1lW9fRDx5aRMLDYaP1rItmVJxFcwegaZdNMS
	DoyQ4+aXg6vdKLwyYhbNR1wOycfCL9mSuTsVxcBus1G4mBH5QVBSG2j6AowoPmg==
X-Google-Smtp-Source: AGHT+IG9mS/oKoDlxHOI3KKhLCa8ZAZUYwCGh7GfHMYg0foHdVN4wlFckm6sNuiOcXdU9n7/eyTJRQ==
X-Received: by 2002:a17:903:15c8:b0:240:8381:45b9 with SMTP id d9443c01a7336-2409680a6d1mr852005ad.8.1753804534049;
        Tue, 29 Jul 2025 08:55:34 -0700 (PDT)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com. [209.85.216.52])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fcd8fb34asm77292025ad.33.2025.07.29.08.55.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jul 2025 08:55:32 -0700 (PDT)
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-31efefd2655so22791a91.0
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 08:55:32 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXU0Xdm5ZE30r81iJWeHc81mNvilRRP0xCe2JMW1nVHP7jOCBLCzYk/OFayANL4XXMOap9zDaC3fuKP@vger.kernel.org
X-Received: by 2002:a17:90b:3a8a:b0:31e:b772:dfcb with SMTP id
 98e67ed59e1d1-31f28cdb992mr5501419a91.10.1753804531722; Tue, 29 Jul 2025
 08:55:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250728-topic-chrome_dt_fixup-v1-1-1fc38a95d5ea@oss.qualcomm.com>
In-Reply-To: <20250728-topic-chrome_dt_fixup-v1-1-1fc38a95d5ea@oss.qualcomm.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 29 Jul 2025 08:55:19 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W-OkZMJCr2Dm1_z1qXaX8sJnX=LhRjXVZqMZNnYHna-g@mail.gmail.com>
X-Gm-Features: Ac12FXwhvU-MKljZvKjMKht93COeT38n82UujnqslPAoyz1yCqEzHnCwfYmzaX0
Message-ID: <CAD=FV=W-OkZMJCr2Dm1_z1qXaX8sJnX=LhRjXVZqMZNnYHna-g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280-chrome-common: Remove duplicate node
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, 
	Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 28, 2025 at 2:34=E2=80=AFAM 'Konrad Dybcio' via
cros-qcom-dts-watchers <cros-qcom-dts-watchers@chromium.org> wrote:
>
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> sc7280.dtsi already includes the very same definition (bar 'memory@'
> vs 'video@', which doesn't matter). Remove the duplicate to fix a lot
> of dtbs W=3D1 warning instances (unique_unit_address_if_enabled).
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi | 5 -----
>  1 file changed, 5 deletions(-)

Seems reasonable to me:

Acked-by: Douglas Anderson <dianders@chromium.org>

