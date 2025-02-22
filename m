Return-Path: <devicetree+bounces-149805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A65EA40795
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 11:46:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0580B424B18
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 10:46:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99B8D1FBE9B;
	Sat, 22 Feb 2025 10:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H2D94ZE/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0581FBCB9
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 10:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740221169; cv=none; b=cbkiADm/Hy9b9oy7c6Pcln26pmD/RUC20HnQ9oIUK+qMHDFVA4g7V0Ln2haaS4FnpRmOxNNOIopU9AacgdL+PCS/465/qODNKhZtjxihi5S1VwXXIDl/gtLtivqH3PDaLzfPeOrbpDxAWX7P1b7F1kdQquYGQwyx0rMvW8W2C/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740221169; c=relaxed/simple;
	bh=3w6AYLRAJDHJkRy108s/uPBLDjUnLunLph49q7bXdfo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BZxRe7K4gRbfaUtvbdJh9kg7eqk3E7OcL3NZl3rfy3LRMPdqWfPy2BSMxvSoHYqZWz6Z3vnqTFskJsUhSXvU/igcCCBh2claToYcgEKQUeyyDnxFPfvGK2uVrJg1ISZp3vhHp4xELhxFHgB+HLnrSClG5ldXFGsB4484lHQWF50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H2D94ZE/; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43948f77f1aso17572405e9.0
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 02:46:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740221166; x=1740825966; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3w6AYLRAJDHJkRy108s/uPBLDjUnLunLph49q7bXdfo=;
        b=H2D94ZE/LnZAyHMfJWgUSUwCDQ8ziJWBjIGmjAxViF8w3cEo/rt5Z2ZDTwI3hxQX0u
         MFUq3OHnONYjcJNaj3AOkSLURAGemUXC5tgN8hIgAIjrSdP7DiPdc7TxaZzT7lZl0L2a
         fXA2V3IDaxrJjHIIUsNEVeZ/rdjG0Eh1dpXdL7NBlviR1m0z7AFxakw2MYJ4uZ310avq
         V2IJ1nY44Z33th1SriMAWRRcfV5VVOa+ow5SWaRis0tOu8EkYQcwJotp1AK03nS85wZx
         3Cg0aKgpGIcPP2P8QHGWbwBUf3MOFtmssa1HN5jKjFVcJf2sdUOmyiJyBE0xXFNLcSQW
         atYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740221166; x=1740825966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3w6AYLRAJDHJkRy108s/uPBLDjUnLunLph49q7bXdfo=;
        b=LlraWIFrGzsoXcni8xf46rn7JuHXYCILma4OAeGOEug0zsZB2UFvv2hW77Mw9CVr+P
         WprfPugHn3n21V7AYF+5yIBlT9T6HuPcHbU86KilW9FkOPRbuRsXQ+zbcEhjBL4h+rB6
         qGO0k2+DcFgiinjm8XWmg0vehbKRKw5+qn8HVNcwBz40L2PSn2MA35LTOQLVxr16e9jz
         qTaqXGvKzuuRKFAlv2jo2KnTzfBbHnFwSHRxlOeQw6Jb2wMKIBPuEPMGzsKD3V7rjzC8
         ba9iX4m1iVaLTPHCPrlk9969Rb1Umo3Kk3xW8Rd8GlGVUNfD+8HO+qjO84fYfR0CAKHd
         clJw==
X-Gm-Message-State: AOJu0YzEZYRIFfD3u+Jtg3vpLuddsZu4YjpEp60Vr50P/xxK3eaXI6W1
	d1fjvC6YfHAIlLBgC49Za6+AjszzwhMyzyw/3m21xpfgMlUcuhgT
X-Gm-Gg: ASbGncsmdhrskxYfL1eLkMOYR3FULb3MkoLk3f2vUujnbf9csXK0Gr2kQLdF3HtRkn/
	eiPDkX3D9VrO5FDb+IvcsgdWa6/ipPjokRVLVfMKXEd9up2BBg0A4wbyEcN8ndNhPEhuRqGMlvQ
	1zq/1XVDho9n3T3zmIOar3yM5uOTd0boqattOMk54sMp+Fdwv/CCpjBkVYCywRpp7KX4GJz76Qy
	fIrhCvsjDzcKCfsKyYMqbXqbLa6V0TflJM+SzKpirwXyA6mXPt2DUmk3stAIbkomAfN86Bxq8o+
	1F0eJ1vRv0UmiOagwU5iHhm4dv4/jz0qn426/hZIX60uiG2NTHBQA8b11Ir9lHE+FvVRaLjNtVa
	g4Q==
X-Google-Smtp-Source: AGHT+IFPEhyALCE/PyGlhC/F28EWgnFqx4EM0WCKxLB2JiXjfn2Dgj5KCVbcYlDNA9QMmDfmCK8jYA==
X-Received: by 2002:a05:600c:468f:b0:439:9377:fa21 with SMTP id 5b1f17b1804b1-439ae214295mr53463335e9.19.1740221165830;
        Sat, 22 Feb 2025 02:46:05 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f259d65bcsm26074249f8f.65.2025.02.22.02.46.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 02:46:05 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@lists.linux.dev, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, samuel@sholland.org, wens@csie.org,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject:
 Re: [PATCH 2/4] arm64: dts: allwinner: h700: Set cpusldo to always-on for
 RG35XX
Date: Sat, 22 Feb 2025 11:46:03 +0100
Message-ID: <2224078.Icojqenx9y@jernej-laptop>
In-Reply-To: <20241018160617.157083-3-macroalpha82@gmail.com>
References:
 <20241018160617.157083-1-macroalpha82@gmail.com>
 <20241018160617.157083-3-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne petek, 18. oktober 2024 ob 18:06:15 Srednjeevropski standardni =C4=8Das=
 je Chris Morgan napisal(a):
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Set the cpusldo regulator for the AXP717 to "regulator-always-on". Its
> current functionality is still unknown as there are no schematics
> available, however it was observed that upon reboot if this regulator
> was disabled GPIO detection logic in the bootloader was inconsistent.
> Keep the regulator powered on for now until it can be defined
> correctly.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



