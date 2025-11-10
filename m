Return-Path: <devicetree+bounces-236735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B79DC46C95
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 14:11:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 205CC349059
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 13:11:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3470F310645;
	Mon, 10 Nov 2025 13:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZL2NNoAa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521701E2307
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 13:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762780270; cv=none; b=WESwq9I8FSI6IUfTMseoDPCNedDZ54Bpzv0Ap3Em+qAm4vR57KrENaJZyrHCjd4rrXPfNhqDq6E7zsJUFJUZ+1VxPMt2aYK8948/FRZStazXYR4HK1hnecEEQM2QnOQiRzG/mYfizhOujbOFrCTP92odsUyhQqASy2PLGLiiW9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762780270; c=relaxed/simple;
	bh=qJ9dEuHA7QP47k8+mFjKN7aiDkO2eEnpi3eRdL/AdNc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IJShGI7SjutqWbh5/mBQn/Kcu21T6px5+p/je9VipzgT5TsIaFQgW2icSFbV6vABFb6nGqVjXK1svy6+9qZYBVVIMzMjS+XNnTDuFP0O4nXifp2vHSzlNH4j3t4LEzOjUcIcO/89Ti0pt2gcZi1hae2FICUCR5V0/IuYFgpacEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZL2NNoAa; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b729a941e35so372783866b.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 05:11:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762780265; x=1763385065; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qJ9dEuHA7QP47k8+mFjKN7aiDkO2eEnpi3eRdL/AdNc=;
        b=ZL2NNoAa6FDc5JSFqbGFn6U12ghvC4doozDf5JzOQHf6N4qwwQq4sJOP2QK1vyhIzG
         eav8UGyaAgttIb0IhXsY/VDVQ7HM3Z08KAcr82MQSC8OEiUvyKMkb9v8zyGdwcVJvNWd
         AAzdR+kktaqfQd9fXuIAfQa25VtEg7+piAJ1Exd2WoRhwYHEl4VSLHtIlsRR13JL0Eyx
         My5xA9FKxwqTrD+wFQ1mfpDn1lYwnAnkki3fXBA/w52GnYbIVQ88bWtRC1Ccopemp7DH
         2HqhJP9MfxZdCHkOWMGFgLqHxfci+IQCDah0uJA2CH+3tSyTWg/3d6YbpgyxFGWY8xdC
         ftIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762780265; x=1763385065;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qJ9dEuHA7QP47k8+mFjKN7aiDkO2eEnpi3eRdL/AdNc=;
        b=F0fvEUyy6h0I6P2H35hzSQSxTqsfieLqcBQgUFVg3+ctcKjeY6LM2+ezxE3O/Wohu1
         29n6X8ntb9ztpJOCQCkTk3fn0gNnWVmT1mjc88GW7bfnvLqNQNesRfOMeC/IcejZzrb7
         omixcXL3X8BvcUBvwGVtLynhFNZYwGqcbgq+w91tjwt4deM6R/jLHXhQ/Tl3DlaeSXZh
         0Ef2plovXe0HBYuCkZi4l/P3/s/yk8n3H6LoXvD7hxN3WA19v+/qlGnON8Rsnc6kjhro
         Mat1n+i+C5JsVEbecrn6eYZRPioxfYVNKiMbL34JTCYcdGv/49VlGWu/ZHGjbQZAl9o1
         Wxjw==
X-Forwarded-Encrypted: i=1; AJvYcCWRxRt2h8mN6If0XAtIRGE9X2vsDC0emBP5F05xXOT/iQFYpi1/akk94BJi2ZoG99Wgn18h8hHLWBOE@vger.kernel.org
X-Gm-Message-State: AOJu0YxDUJYFaZSF2WV4zuscyICS2Rmz6ghuI8gVqHx0Hgk6hrvSfr+l
	O657SihBrqv7hlhN+vjRQmAdrmZJFgZpATmWP++lIvzcp6IGwj+JYI9E2n4BFuLWbKdwiCumKLk
	Kou1+IkWt+5PjgzuUwi4M8/qEdK5awQFrWegFi5c3bw==
X-Gm-Gg: ASbGnct+9S1gSgYLo3eT7RWoEtn+aGHp9kLqzACPv09tCXXTnSpGiKR/IpvQV7FbuKn
	twgM52EPmSI0j3uuXO2/WAc4D/hhoUVJzstmvd8zlJK4UV2c+2JbGTc1l1MLEYJ4L5LU8pkzrW0
	PEfze0DU978YgmYRcq69mBpfMmZdBa0Vu2HbDMrijnmewu2fJ7zZ6j4bsRLW8BqHFFP9ozKqud+
	p7ybEja90UqsLdmw9lwbLq0jI7edsRW94V/44P4BFxfNmtgTZxL7+uPCa76dfxuD3/xPaltIJs6
	oOUjlbrclo2thuge
X-Google-Smtp-Source: AGHT+IGPitg7K5XoZgRQkP9FaImCQLO1InXFpXMUt4u6tDzxq2I7G9KRZEGJLJgmks99vhYut7CnjxNMlDxBUQ3PjRE=
X-Received: by 2002:a17:907:3f26:b0:b3d:9261:ff1b with SMTP id
 a640c23a62f3a-b72e029316emr763218866b.5.1762780265467; Mon, 10 Nov 2025
 05:11:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251109-arm-psci-system_reset2-vendor-reboots-v17-0-46e085bca4cc@oss.qualcomm.com>
 <20251109-arm-psci-system_reset2-vendor-reboots-v17-1-46e085bca4cc@oss.qualcomm.com>
In-Reply-To: <20251109-arm-psci-system_reset2-vendor-reboots-v17-1-46e085bca4cc@oss.qualcomm.com>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Mon, 10 Nov 2025 14:10:53 +0100
X-Gm-Features: AWmQ_blKnASBsaS7hJ2XpHrQ-4sRSj2u5D16heHa45ya298_aUcuoaggfc-rRk8
Message-ID: <CACMJSevoC3xYoeodGYnY4_EFSexqbNLqT_7UbRu9DxDRx8_gzA@mail.gmail.com>
Subject: Re: [PATCH v17 01/12] power: reset: reboot-mode: Remove devres based allocations
To: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
	Sudeep Holla <sudeep.holla@arm.com>, Souvik Chakravarty <Souvik.Chakravarty@arm.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andy Yan <andy.yan@rock-chips.com>, Mark Rutland <mark.rutland@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Konrad Dybcio <konradybcio@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
	Vinod Koul <vkoul@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	Moritz Fischer <moritz.fischer@ettus.com>, John Stultz <john.stultz@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>, Stephen Boyd <swboyd@chromium.org>, 
	Andre Draszik <andre.draszik@linaro.org>, 
	Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>, linux-pm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	Elliot Berman <quic_eberman@quicinc.com>, Xin Liu <xin.liu@oss.qualcomm.com>, 
	Srinivas Kandagatla <srini@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Sun, 9 Nov 2025 at 15:38, Shivendra Pratap
<shivendra.pratap@oss.qualcomm.com> wrote:
>
> Devres APIs are intended for use in drivers, and they should be
> avoided in shared subsystem code which is being used by multiple
> drivers. Avoid using devres based allocations in the reboot-mode
> subsystem and manually free the resources.
>

You're making it sound as if there's some race condition going on.
That's not the reason. They should be avoided in subsystem code
because you have no guarantee that the function will be called after
the driver is attached to the device nor that it will not be
referenced after the managed resources were released after a driver
detach. It's about life-times not synchronization.

Bart

