Return-Path: <devicetree+bounces-133013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B385B9F8FF0
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 11:13:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A837316A5F9
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 10:12:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC7351BD9C5;
	Fri, 20 Dec 2024 10:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="xII7jMMJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E611BEF6C
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 10:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734689511; cv=none; b=D9RK+dBfAi0cgdNORSWnpwbqwUBRLkKQHnTDmzIKtnYMyV46JtKVkIwvfUceuYM91znOQma0mH3Jc9qlgRr0h3Cgmgfa3KqFc9yvPDzdJPz6PhaXDCORZCi3/uk9D9eiJjdlMppIRZIqiKgqa/1jx26WPTf0UW1YG8Ru25lu2dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734689511; c=relaxed/simple;
	bh=EaSdb8z72/Ef9LspwhXaWKy36z4KEu6sCzfALY8btEw=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=T/3sJkkefhx5a6YGQvGvx81D5HrR8Vw4dnmzwNdo45T/cRh01GvwYZpZ99teMpoigCd8A6PL/ibQGfEFVjwZgwgp8Xxd8GrYl0AKMNRJWqipHAtEMzyotKAFjRokupEzg+TB+71XZv/XYe5Ptn3GO4HUMWigswc3Ftl+zfppF/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=xII7jMMJ; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3862d6d5765so1053912f8f.3
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 02:11:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1734689508; x=1735294308; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EaSdb8z72/Ef9LspwhXaWKy36z4KEu6sCzfALY8btEw=;
        b=xII7jMMJW/VkUuE+mnsE/e5LYak9IlvR/aBD49lVR3lumTHolxlrRMvAWx680e+80j
         5PKSAeC37lnjwG0dmOw+Hy4gUGkf0TquWVq4g+m6JeNbdCon75NugK9h2dE3/jP/R0FQ
         a2EXpf6+4rp5Fyzub7TZj6/SrdhpWHGYB9CBOKpbt9XRBVO8D4rRIc9xDqOqIysHhiN9
         2ztgytOwFn17mvo0hoDjy7wx8oEtZWmt1EQLVWhyi9KlfabYQXXP0Owzojvshj5B6U6h
         Q1wpW3Y4fc791mipeYi18MX41vssq/w38HOZYgQkRlr2K44p21eWocUMp1R7RiUeLFaD
         6k1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734689508; x=1735294308;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EaSdb8z72/Ef9LspwhXaWKy36z4KEu6sCzfALY8btEw=;
        b=wWdg/Vr5mODv7PLu+ygKuvv6RCvd6uHz+JvGgBSd5FJgWJmTXPy0qMB3VTwRVRCioz
         iuPIjLrIq5zOp54M1OCd7uPkyPWmD14RTqdXAE8uq9aVN8fHWojx7pUKubwMIuC7NX1D
         2g6XPeyWaHaYAL9YrxSo3hf9ZTao1EaLI46IHu8INt6rfEvRDhATBU1sAHtyLBIWEztz
         JNINKM9/mbNTEFe1daBAJhoyl7hPsQ860sLK0yiRDC8XmLzpXiD0PjFZmwZxrvUi0hUT
         lHx5SFmhYLPQqQjBJPC/NhdSLqtyObNAH3EYve8WDjQUyzD96DKaoK5ySTUMlTd3Re/l
         uC3A==
X-Forwarded-Encrypted: i=1; AJvYcCVW/iDjuTf/FrwTa+YdCwXGCQM8nLe6OweWPLJQl42TA/hHR+mfB8fkFtMN7htEQuXRCHSldm9csoZs@vger.kernel.org
X-Gm-Message-State: AOJu0YxYJikpRpphoKAIlltT4CInPrrl8vhGrN4J8Rn7XX+DkLCZRlf3
	xcDRqBFHO8KmQaf4Zv0Yteijh2h4eBs0yY3as5LGXlKhWi9Q5iV7HI57ftFf2d+cWJV2GkAQZFQ
	82yg=
X-Gm-Gg: ASbGncu5zesuvrn9T/QIWiYhLCi2Ypf+GV8snBDfvVm1ZqbNx59EiwEIa2pTxF/jOql
	FjckuI4d4Oq+mFFFiNdko3FsKMtBHlb72Kdq2ft5GEAUhlSKMitGdAuEAkvK491PEFx4VrIGg1K
	+BtWx2vzZPAKhAEo/tPbyAEJczx8Fxxud5WmGNwRbc0D5XDIyZOyx2zGqdK1y6BhQ2soRdrcKYx
	3QHS6Lq63dE2Gwuy1MFUy/7lHtx7MHl7e50ETpAopJG5q0baJCKiuAkZsnP/Qz7HDcow+34I5t4
	w2sPD1eHoqmtrDO5LYOCdfFToA==
X-Google-Smtp-Source: AGHT+IHYXbF5zEgptW9K6SaQDrYDWMjumw3skuuvDaqv7mt65+EQ9elAtWEo+20ASe35/lJk+bD6iw==
X-Received: by 2002:a5d:5f4f:0:b0:386:391e:bc75 with SMTP id ffacd0b85a97d-38a221fa986mr1984788f8f.16.1734689508270;
        Fri, 20 Dec 2024 02:11:48 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4366112e780sm41626015e9.0.2024.12.20.02.11.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 02:11:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 20 Dec 2024 11:11:47 +0100
Message-Id: <D6GG3YBXX62X.1JV54ZRWY7B5@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Luca Weiss" <luca@lucaweiss.eu>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: qcom: sm7225-fairphone-fp4: Drop extra
 qcom,msm-id value
From: "Luca Weiss" <luca.weiss@fairphone.com>
X-Mailer: aerc 0.18.2-0-ge037c095a049
References: <20241220-fp4-msm-id-v1-1-2b75af02032a@fairphone.com>
 <a536afc9-0837-46f9-9135-c220cde7f862@oss.qualcomm.com>
In-Reply-To: <a536afc9-0837-46f9-9135-c220cde7f862@oss.qualcomm.com>

On Fri Dec 20, 2024 at 10:36 AM CET, Konrad Dybcio wrote:
> On 20.12.2024 9:55 AM, Luca Weiss wrote:
> > The ID 434 is for SM6350 while 459 is for SM7225. Fairphone 4 is only
> > SM7225, so drop the unused 434 entry.
> >=20
> > Fixes: 4cbea668767d ("arm64: dts: qcom: sm7225: Add device tree for Fai=
rphone 4")
> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > ---
> > Completely dropping these values also appears to work when using
> > boot.img header version 2, but doing this change now would mean any
> > tooling in the wild for packaging up the boot.img using header v0 would
> > stop producing working without adjusting that mkbootimg invocation.
> > ---
>
> It would be nice if you could start shifting that tooling to bootimgv2
> slowly, and when it trickles down to appropriate places, switch it up
> upstream as well. Of course if that works for you.

In postmarketOS for sure it's simple to switch, I know Mobian also has
something for FP4, but apart from that I'm not sure if there's more
build scripts floating around somewhere.

>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> Konrad


