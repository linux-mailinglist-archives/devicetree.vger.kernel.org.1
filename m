Return-Path: <devicetree+bounces-253518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2979BD0DE52
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 23:09:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4342300DC84
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 22:09:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38B6229B8E5;
	Sat, 10 Jan 2026 22:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="kFNEuxbq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062A128F935
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 22:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768082950; cv=none; b=LHxLGlFHkHjjDhls/mAEeSG5KJ4Avzti7RdRva1BQdIQKxNQMcf90ft5kp0B6IBUMNP2RY6avRxRt+jD8+xjPf2MeIDfGE6lx414IR1OEx1OIpUVNA3g2QcFxjILBaTCVj4Kii/tFxOC0+qogV+GJvJKyLlhpRe27YCHaRk7nRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768082950; c=relaxed/simple;
	bh=eMAwqgYdzBAxFlWVE3o0bvOrDYiX//on6ARzmgYSZGw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DoUrVceTN7rkgo1CTlWxcBzPvmBW3f0z4D1uyTjShQtJ2gVwrhbPt/+qFvDlluyFVgMD2R39dPuvH+/8bjtHpUnHraZFAwuhxqO19W4jDJMhaZyZZkpvGgduh6IPTBX3XJ2DdPF+4C540zmTRN3OVExePmAjytneVFj2sZh3a48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=kFNEuxbq; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2a09757004cso49701955ad.3
        for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 14:09:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1768082948; x=1768687748; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pjgSj6a3kunrFN67IT5JMHaUrlt+PXfCgDXfeu5dl9k=;
        b=kFNEuxbqBC3Q23eWc4kL2qsvGObAMpVanHzsnqjRUIp2Trsyg0lhDZWwZYSDbgKFAX
         CefOxCIqk7Es9wDpCua0nI1L9Gg/J7JBBMjnzO7Yp4j4SPXgF4yorQu8paU7a+DvS1OE
         1SeTnYWe0xZvpBbw80wG1Bx1/UQ1VlTWGYe6dw1Llcl8Qzzib21tDpvcvsfozz2Xga9I
         Y04eD7WV8PLqhxHTrX2N+u//Lr578v7k2KhE5bVRTnoUffiEK0JyUHsWFMxUTFJ0JLbk
         l2t7sA/7ALtcvewZH6hRBCW8wKco2HbG5bDZt3L9doyoFeRtUTZu0dZ94/tsOwD6fLJl
         wbmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768082948; x=1768687748;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pjgSj6a3kunrFN67IT5JMHaUrlt+PXfCgDXfeu5dl9k=;
        b=Dmd35xNCSYGdO7mwLgQ7Cf/+pfN/w09nP+93xAids1JefKD2CWQ8JMhIC1d18VtV7N
         pZ3iV3izohJYWmopaWY0nQGV7ATCvraBdZ0q0hMJUy8rE6SM55dzpQzNh4GFz2LfsEt/
         wT2YLsbrk6tNd4kMQDKvtqzi4zGGUY59TO7vjmq9OeYXXuAsybwdES3UDwgFyiN7l13l
         xuw2SwyMGamRil+U17Gt8o/kiD4VKpxqXuah4ULqbdEzQxyHLG4Or0HW/q1ouXWpDrgB
         1++i3Lb1oPG+r4nQykKY0E6qMAZNhNlqaQIoDYXHqhY/YIqH/n+XmLeAJDDFznBUmgOC
         LSSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVTmz4VnRm4B1ClItAluoyHcZd0tJs/lLV5owBE/yk1jirF6838e/Y/EQxfqrLacy7gDVjex8bjJKPn@vger.kernel.org
X-Gm-Message-State: AOJu0Ywph0zitwduOqE0rg5nxWQmxm0CinBN0/YafOIE18IUjfbPZrTl
	92mOfo4ChBAT1nnnZ8E3hYTLhFSrX4bNLwJb2KG4g2P32KaZeuETHj1+HDPVTeJTpWgXpEOFlva
	lOqbB/X2nJd4jI69XxARMLgVbLiKYevE=
X-Gm-Gg: AY/fxX61BN9DYt/fcw0cX7PC2PBD7vLY805DZqnIOvuIHOhE+NcgwGble33GQX2zCNA
	3Eld0BOc+HKqr+zw5qX/zsCSV/iDzJbupNwgmKeRXM9UfPInewCIKCSvRvieCzxaIk7CtR3+08+
	VoNdA3eJ7salB88pZGXH2mTqgXpm/FFJ7bjUTvmqotL1UKuBmKkOu1GH1AlIJz3K5NsEAOXE10d
	9yg+J8OYnkm52b+Yy7A4k6kU9dLvVXlAIyKi8kX4ricisRdTI2deqN0cc/dV57ibdDBku3jlEVr
	T18tCwXJlC8M7NrmXcCF2uqVL6+0Do9p8oq2X/Y=
X-Google-Smtp-Source: AGHT+IEAqhyKZ4Zb9mGUXaf4V+H313p3cDSNfGR8K+R50WWW/gF491i/LIbVtoG+64AdUYGn/0TAd6Uaqs+FGGXp2Yc=
X-Received: by 2002:a17:902:e78b:b0:295:6122:5c42 with SMTP id
 d9443c01a7336-2a3ee43da5cmr117317715ad.24.1768082948085; Sat, 10 Jan 2026
 14:09:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260108-a5-clk-v5-0-9a69fc1ef00a@amlogic.com> <20260108-a5-clk-v5-6-9a69fc1ef00a@amlogic.com>
In-Reply-To: <20260108-a5-clk-v5-6-9a69fc1ef00a@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 10 Jan 2026 23:08:57 +0100
X-Gm-Features: AZwV_QhAKgfsFN9tGWs1QKxT7kBr72Z-TUCf9Thx-La55n8xXLTiY8eWe0kVLVk
Message-ID: <CAFBinCCPsaywQuePJ_bxMby0MJeh2ohkXcduRy=yxr8EExJ9nw@mail.gmail.com>
Subject: Re: [PATCH v5 6/8] arm64: dts: amlogic: A5: Add scmi-clk node
To: chuan.liu@amlogic.com
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jerome Brunet <jbrunet@baylibre.com>, 
	Xianwei Zhao <xianwei.zhao@amlogic.com>, Kevin Hilman <khilman@baylibre.com>, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

thanks for your patch!

On Thu, Jan 8, 2026 at 7:08=E2=80=AFAM Chuan Liu via B4 Relay
<devnull+chuan.liu.amlogic.com@kernel.org> wrote:
[...]
> +       firmware {
> +               scmi {
> +                       compatible =3D "arm,scmi-smc";
> +                       arm,smc-id =3D <0x820000C1>;
Just before your v5 Neil merged a patch to use lowercase hex consistently: =
[0]
Please update this here as well.


Thank you!
Martin


[0] https://git.kernel.org/amlogic/c/7bcbedd64ecf5624583140faebfdb0e2e2f6b4=
3e

