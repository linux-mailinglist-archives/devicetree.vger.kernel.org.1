Return-Path: <devicetree+bounces-148362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EB5A3BC8A
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 12:16:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 66EC67A5EC8
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 11:15:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCA721D89EF;
	Wed, 19 Feb 2025 11:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z2581nYo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE9551C1F10
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 11:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739963798; cv=none; b=qhuI15WYTqyUsl139oDt/6TgvVGBbdj1QFTSStO1cwEECvj1AHMv/DX7CkED6GM7bLN7ZqOXnMqeV4Ttgc3Pw2w38ri0tbmw6sC2bFhQpAR3Hhjs8NqFTFFfXo/8E7kAuryefD1rKgKOymvytd2vzIr/y+TPak2pYFQwe5BpQX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739963798; c=relaxed/simple;
	bh=uWOktcaedUBDqKd4C1NzqImpFID0KSF/Je2o+kES7iI=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=rn6j43xr2y0er3PcuqOob85Yh8mbgvKy4f3d2c8PSyHFkELVlw8chmxmaik97Is86xnKBfPVjyMiYuF6pBTcqzp/JE1W40Xb/Z85QTirdfqDVV15B8PWYLRM77lrJ0K0Uj5YUtSbed7WwCZ6s0RmWb+qkPISUstcfJDghjgXZlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z2581nYo; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-38f2f748128so2469123f8f.1
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 03:16:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739963795; x=1740568595; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uWOktcaedUBDqKd4C1NzqImpFID0KSF/Je2o+kES7iI=;
        b=Z2581nYoZUdJioFE5Qe/WCZqp1jMbVtJxdc85r9YGhmkDG9ZDO/YX9XW4+YbcNqXk7
         wPSGSB13j+VdtOCCANTniQcKOGgpXGQ0/0U0adRjifpr9iCMve7vFgBy/viWcyUZuIPc
         9ztSo+N/b6XqBh8HX2SanjwS4p/ebg7SLRaeVqbWbEu1uekLQ0SAHTDruFBv0FKj6mhU
         AZ7+6H/1TqQaer23ovbdYRngBNMODTIArItoTxgtZjD5EIz2CcpFbEs3YllrIhSF3yFI
         1ZxpFGbk9HVDofkDVgTNZpxNrFmW6letGneRlByL2XS29ruV26OjCiKD4d49xDZyjHpp
         KnzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739963795; x=1740568595;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uWOktcaedUBDqKd4C1NzqImpFID0KSF/Je2o+kES7iI=;
        b=v+b100aOxqRyzzDWHNI2aYw3v0vuD7Oyw9No7rBU9J0zzDOhuIybQMjG51gIAAoDpk
         9br+qhzNKW6fx7Z48xcGQ/WL/kJ8GiOPl4l1vrDZ2Zwe7IymLXwpRFaE4bZ71/aBQqG1
         lTMzly781stwIdFqmm1krArf89N8bkoHvcawn291lpH2NrpEce2i7XJiaUwyvV5aiFB2
         yKuQk1nu8L0pC3iL7A7Qa4ZBlPf2inDeAomcVIKWj9/uzrKsZO2TTXxWOvCWYQvuTIU/
         iKwuLHmtRV9p0JlnNP0ZmRshFp64nBroY+aaDNjUGAUOcQ+JGnmL8H2Er/6JCRmvXEMQ
         ZI1A==
X-Forwarded-Encrypted: i=1; AJvYcCUz+14mlG70Q+hUXhbGttfQ8g7Has3K/UJmYDPCPA37WPMT7tXw0oMjKuYs10I7diITE5YhC9UKIo8I@vger.kernel.org
X-Gm-Message-State: AOJu0YxBdW+yPJLZw5DPN/teXkAZY5aMgrBoIHw8wOi2m8ZzTUz6Aj2R
	ps4Bnx4mTFhOKJ8APDAQUPIukoxJcOXegQQf1W2xf6GwEldZ9EA0mLMztvcsWnA=
X-Gm-Gg: ASbGnctqlFbqfokKJYfIS104oWQJ9cmMBTT7rp+NzutR7RkowpXcOURKIt+fePpL6fK
	Z1eZD/AXTQ4QzTzdg5+FPGz0scYCRRg7J5BEf38t4+pkRwtYRHlt+5rGStGvjMNQHWKuWBQJjXT
	9YZZLrKqJZ2cT5ZruHlV4RVQrLZS4hLoh87ooYvVlD9yN0v+rbmlcOAQ0XchWlCZ2kpuOLO4X1a
	uhuVwmQIQfugoTCoD8Nn5NaKFC30OHio65XZLPIJtN4RTfSnahoy63tq6R8w2Batoy4Cl+4NZpW
	XkI/zsVGOLnbvg5ux1c/
X-Google-Smtp-Source: AGHT+IEmDDRkG1uSwNL1pvVknqup0gDz43+E3qOgrQNfjOcr23dfo95v/reLZTyiBdBUjlLYYhhYOQ==
X-Received: by 2002:adf:f205:0:b0:38f:2726:bc0e with SMTP id ffacd0b85a97d-38f3406cd88mr15712193f8f.44.1739963795144;
        Wed, 19 Feb 2025 03:16:35 -0800 (PST)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258ccdabsm17536949f8f.28.2025.02.19.03.16.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 03:16:34 -0800 (PST)
Message-ID: <b60fe253fdf581399c11cb7e23db0e9883c81255.camel@linaro.org>
Subject: Re: [PATCH 1/2] arm64: dts: exynos: gs101: Change labels to
 lower-case
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Peter Griffin
 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 linux-fsd@tesla.com, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
Date: Wed, 19 Feb 2025 11:16:33 +0000
In-Reply-To: <20250219085726.70824-1-krzysztof.kozlowski@linaro.org>
References: <20250219085726.70824-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.2-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2025-02-19 at 09:57 +0100, Krzysztof Kozlowski wrote:
> DTS coding style expects labels to be lowercase.=C2=A0 No functional impa=
ct.
> Verified with comparing decompiled DTB (dtx_diff and fdtdump+diff).
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>


