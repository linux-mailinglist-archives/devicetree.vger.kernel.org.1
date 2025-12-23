Return-Path: <devicetree+bounces-249320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C122DCDACC8
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 00:09:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BA710300AB23
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 23:09:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19E1A2F747F;
	Tue, 23 Dec 2025 23:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="Pw685wI2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6844330AD06
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 23:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766531348; cv=none; b=W68z3SQyynU8t9zWu9zCg53crhKl60WydbPei5Sarvi4snI96A9637ymCxfMRBRZjhJpIFGcO/+y6QMgfUunqsuYj/FQL2HpUCloiatkedjpsN2p3jfFPBdMR8X5jlViiktuDXquM5pkZC3o+MEt4i8b72M3xnaIJKTvgK52G+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766531348; c=relaxed/simple;
	bh=3eYnNyAgZbYAHDjdiI8Joii1jtgALwPhSG8JcJ7I9sI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SPza788chRuPbl8A2e8fJdMrpCiJycLB3OA1N/vy5qdZWnZgWiEX3eO04o/R6CNjvXBQuW7zdasVDBFZo+/jpbI5YNEj1utS6aEM5WNIhLTRGZSR8uyOvZm/XymbHID7riwsS6V0WOt0H268ns4aqOlFaV60/toChQW7MXvkfn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=Pw685wI2; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2a0bae9aca3so78280455ad.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:09:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1766531346; x=1767136146; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s5HLf0q/HBK2oOHSdb4C+e4jou+vH5BBgCwzF7L7zWA=;
        b=Pw685wI2m357i3kecB3Lf/46dlxcJRcYTRXzr9ROgB+Zi+x6p05/O/7Vwphcg5ZYU9
         1QoBtrFQJ9QwJFGkhaoAAYyH//i03/ISAgpES7KjByccw+Mj0mCw46vuSjNLH6EFztA0
         TMlfoik72R/JG0w76oO0JB+GtbKUQxN0bNYLy9d/zMimOSTxoJdH1IsuLY0iqwytxGEK
         vTcNOguIKxHmWF81s3+mOZ7XQfqMg77x2785XpuPvT1adoWdGXvLZMv1BCK1r6iaFnxD
         z6HDiVfCY+cYh9zEZplCAw9f2JDJz5gk/kPPASowlMXeewfwZ0mN6PXkaiTT/8cGnYMI
         v34Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766531346; x=1767136146;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=s5HLf0q/HBK2oOHSdb4C+e4jou+vH5BBgCwzF7L7zWA=;
        b=T8xq4zTsfv9lVHOv2LxkHWWQSY+Ledl+U+VcYE5FA71vlq1bxFLTH+p2Uvr6Byigfp
         Ils31yWwGjqwmSRRpXzTpHQ50t0nuPJU+iUSFaUZ8NX4SaxRR8cYEtVthvz+2zWmbd65
         NA/yXOOTyLIsA/xdFMOQbYwku03kku3i5jGt2n7DJ1RYSN/bBSMbkBexFeII8stVgNLq
         uqzJluP7KepsWNCFCz6S7T0EnaztNwkj2pF0E727PNeh0KoUckYma04Pijh4E89ehLwb
         QcvPnpKtlKgqoKQwaSvnvAsRZbFJZrYomz8anlazYUKwqDhcNohGhm1TRHJBTLa4P4Ln
         xdcw==
X-Forwarded-Encrypted: i=1; AJvYcCUWkG4uqHPszA66BPJjsyKrnU58PtZsKKbrXM/VDPaKKRGCE8hV1x5c5T/fHUtMqblqSU9A2q3IOn/b@vger.kernel.org
X-Gm-Message-State: AOJu0YzXpmo9l9SI1OVH6YsUgeHeWGeEJmB9aoW62LMS8+op7Pi3SJV2
	xeNabj+SCtUfolYPrcOelpz6bUHJCUdREo1Z+7h+Kc6o0/om0AEgyZlUWL6g0R68dWnMZQsE9+Z
	yH//hLVJEHOiHKtFcnvuwteP441GdAd8=
X-Gm-Gg: AY/fxX62Xh3NOo6LVtVjnTOwMudSdKFEOVM1eGeKhUFn3oLrwaYZGVTjHqS95EoIStp
	ZK75bJZ14q2KwBTTsM2/0UYr3sqbnVGl403cgrVu9P7zF5jBssNY6hJJDTAyn4LuFwgLPPyImsC
	Zr1eZMIrzHzbl6K7rWhZR/ieDZ7Ea06hjHIPUW2V+JNN8gbPbXy+nCBqi4cln53SMyiIvezV0zX
	A4bIBOul57DJwvvjXE7HKYPLtKB9qlY9MtFcwdjk7ctoeS2XLdyGVB/4wI2+aZhPCpIUxGXLFvh
	OIX5qUD6AMx5PG9naIYk7lvU1Fa3
X-Google-Smtp-Source: AGHT+IGBrwwKbPhbobxkI6bshU6oq1etWG3LvLOZghvlBp/QMqJduCm7VfQs3SMLxHPscaSzyW9EW2Lww4cnklC427s=
X-Received: by 2002:a17:903:40cb:b0:2a0:f0e5:3f5c with SMTP id
 d9443c01a7336-2a2f283109dmr150600085ad.34.1766531345642; Tue, 23 Dec 2025
 15:09:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251223152510.155463-3-krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20251223152510.155463-3-krzysztof.kozlowski@oss.qualcomm.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 24 Dec 2025 00:08:54 +0100
X-Gm-Features: AQt7F2ohr65ds1Igq3hU6u6MsL2NTAZeKeUfhxNv0PkSbOldUx4jDRZ3zotUZaM
Message-ID: <CAFBinCBt-Ra__iNTPP2wqbo00VThDQrs-sUWvBR_FisgNwc2kg@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: amlogic: Use hyphen in node names
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 23, 2025 at 4:25=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@oss.qualcomm.com> wrote:
>
> DTS coding style prefers hyphens instead of underscores in the node
> names.  Change should be safe, because node names are not considered an
> ABI.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

