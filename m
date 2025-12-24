Return-Path: <devicetree+bounces-249599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB82CDD221
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 00:14:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D454301F8F0
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 23:14:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8CFF2ECE91;
	Wed, 24 Dec 2025 23:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="mfEhVW21"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649162690F9
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 23:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766618053; cv=none; b=ScnGMs53JugJ0oF6v0KifVK6MJCWbEvur8orDURgbv7nseZXH/VYbj1aylzC2H8aJrGHxygbJSCPkkcO8YWiK8byU8uDAYQ9Gc9GOhDJL5rjA5e1HkV7ipqq6OaSoW3seTF7Yg1f8fFuh4uVa3fAmMYlsBedz+za12R+qB5adSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766618053; c=relaxed/simple;
	bh=uyMtJMrqA/9Rgf3mli1rNYMrGl2EKVn4j4gt4/6EDK4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Hm1yy1pkpLWDVyIuWeLbDfSeMdawGWtNNoiCqMZxIDpsdWkuCnShbfkMLvt1yS8Zsf5dXkgwpE1VjpbpXM+qpUiX9jZ0q4Tmj+GnNV154eKvrzBxP7uITlApE4zY0ODfXEO0avVPW9Zo9q3v5EY5YkcERKII5CltjX+fweETw1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=mfEhVW21; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2a2ea96930cso71498965ad.2
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 15:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1766618051; x=1767222851; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mnvkjgIQSMZ2fFgOTGmGi6iMTWpkoVAzbb+DAbZva44=;
        b=mfEhVW21YE+bH8FISVvs8Yr3rQ2CQ1znnDqrEPDDltFiDlNbraPA7kDjqAzD8mdHaP
         /3uT+9uD5QuJq1tkPqXN1AaCYfhacROHdspiM9OT+zVzUrzE8lOPojWIduUcL0B2WnYP
         I/EEyJ2Vup6pHCcdgnMc1S/xsQ+f9J2IPqPxUVzZfJL1p14mhEjFib3+iDTb/kq4Yl29
         3NbUX1XJZ0Y8LJowbpSe4RHXLalI6rIJHKhVJgAj/bETAUeoPFaoMUdMpdiM2DMokPaZ
         m+Bl4HXWD24nZwwCzPd8QdH/16NVkT+pDO2i1pIvDoDTG7HMtgZSOTvFy9qZD0yo3gal
         1Cxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766618051; x=1767222851;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mnvkjgIQSMZ2fFgOTGmGi6iMTWpkoVAzbb+DAbZva44=;
        b=FTdMNA9vwwhEvWgPHjPySdTe8MpHS+oOSsYAl+3ntSss1JSGdNwYKHPzfzxS9hdtOm
         k5oiKo512kOVOJOGzEJwG7MjZLSQBEoFS5VqV37fhp/uGi+9668AaNryuXj3lXdXg6CK
         OGYmgWDjg932Z2Moty67JjA1q2ynsX1W6t0Y6IbHtc05QsY5bCQWBowXkQZVkC7MXcRB
         B45nKLcubWq7222jHwifL4udlNvKGYmbD3Uacd89e7ElGR8j778f+z23dVAqIiEjzTnt
         8sJb7qFDCgc3be4RS85JmDQaEiLAd9Pbe0VfmyreSbUOyRV1LosfzakAaL3ZbpKZ9JMP
         ra2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWjgpZ5IVe/0E/EzyhO5KD5bm8prCPbSye74AsgUI1oG/zJ4omZzni0NH1ot5gm2kfitBXcWJtS+N3t@vger.kernel.org
X-Gm-Message-State: AOJu0YyRChkwbu0ytC4Z4I8tl8+wMP4+QEZrCXNOrKodrYivCZ4+nkKz
	LxF+dNVgqfyjz5HDdfoIWHOUqoc5ZYNLpgislwtxWTLCNy4W8hPw+enC/rae04Yy5ATcCUs6nHl
	KP5hvsxi6ZLXnGziW5TyMxsPh2q6dSe0=
X-Gm-Gg: AY/fxX5n2qAfBS+/mrM3vfRvLdbKi3rNzFW7LVLhsPWx12bi8RaD61Cq4wCh6dvkWIZ
	Hx9ZdaSudMgDs5onmPeXLfhKO390uiGKXwj+lX/BPG18YlTS3dtfFCyEPCgnc5WHKJuR/ujOC+d
	jW4IEN5VRh5ZCYMGU7E0WaTnVHnq7RK7y8I60L/U/Veny0VNc3522irKNkpDugxLMEEY9tLxZuI
	xUlQfROAOt8bMSaX8r7zqqaC/Cj0L4mJxBXz2sh18jfGc+2ciDC8YCBmGzJgmJo9Gpm6zcnXi54
	IAzY2CVlYaAw8TA/nHv8QKTP7fKp
X-Google-Smtp-Source: AGHT+IHthi3k+zDs3P+SAzII25k4eUepCwUdMrIiQFOSCpjScqeZekCj2A3iuJPwCzJEJ7RsstWKD7g+YL5nj1HOeaY=
X-Received: by 2002:a17:903:3d0b:b0:2a0:c58c:fdd2 with SMTP id
 d9443c01a7336-2a2f2425808mr216050425ad.26.1766618050651; Wed, 24 Dec 2025
 15:14:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251223-reset-s6-s7-s7d-v2-0-958f341449f1@amlogic.com> <20251223-reset-s6-s7-s7d-v2-2-958f341449f1@amlogic.com>
In-Reply-To: <20251223-reset-s6-s7-s7d-v2-2-958f341449f1@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 25 Dec 2025 00:13:59 +0100
X-Gm-Features: AQt7F2oZyQySwMduACSiQD0byJ5Z4QahdWpmskA1qiL1ybEip0B6Y600HDmvFRw
Message-ID: <CAFBinCAYWy_VFY8a=AAGpv1+7f5AkWnHk3KDH3fqRMTZfjuNsg@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] arm64: dts: amlogic: Add S6 Reset Controller
To: xianwei.zhao@amlogic.com
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 23, 2025 at 6:37=E2=80=AFAM Xianwei Zhao via B4 Relay
<devnull+xianwei.zhao.amlogic.com@kernel.org> wrote:
[...]
> +#define RESET_MIP_DSI_HOST             93
should this be RESET_MIPI_DSI_HOST?

With either the typo fixed, or an explanation why MIP_DSI_HOST is correct:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

