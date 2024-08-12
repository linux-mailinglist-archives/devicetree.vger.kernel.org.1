Return-Path: <devicetree+bounces-92871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5018894EA8B
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 12:12:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 89BE51C20CA8
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 10:12:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7960716F0E0;
	Mon, 12 Aug 2024 10:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fsT9R+Jv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D49916EBE4
	for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 10:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723457508; cv=none; b=VHU7u2CPbMX4fg5YmKOHbtdjJ2mXcUEiiUfyIRvtGmdQfn7qxkuidNUmUV4jkEFM+08L6H64PzlzdhG1PgJG85aiujMhJsiOInVkJifR8JEyfx3YsHt/H+Ue65SN/zGhhFFDrDBlpMlpjQYyx70etNXBMgTWbT+WRpL4kM/ftwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723457508; c=relaxed/simple;
	bh=B4enY+rrNBSkdAFyZxhkPC8jeXmTObRDrkCpJiKixqc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WraP96VltcRB7/ekVejdy8kRtcw0WxnLln8pIaUcMoGcnUWKgMIaJ6NRpn+Wz3Gbud9llpAESI3bIi+HqqxHPmqzjhxsWSzoCf0R4l+g+OrISCk2/t71eTjbDfz7iUjRjRX6CUwfUN8+kCi4Ku8quj4XMRHvGoT+hkI5Y3trVg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fsT9R+Jv; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-36bd70f6522so2259242f8f.1
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 03:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723457504; x=1724062304; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hiEwTt/nhsAbq5aVUbyNSi+3qGhJTSod5OddfESv4fc=;
        b=fsT9R+JvsxxS9Q0FOpMyqDB7GUeHAx76BQnPqJ/yKavNovcEphUDruDy+JxaW/w74T
         +XxsZb9GOCWbGepqVLZTL+Wc+8QuHhFs7BVJPmnvgSTiPBRyNDFPJqK+iMbBJkj3BORZ
         zdKBOz9kVYPqkPHtUZ+akF+v55FeLzMxlAhf71g1CYaBINzIqw2EenQc5MxRwuR/npNm
         d4aQm+ySnlyuiaAidoM/4Qb55CimIXdA3NBFl3QD6Xab7gUOKo0jL7X1FHLl0fzm+/aO
         zN/RQ7FnvEezOf8lKiPAROvXEUyqXdkIyoZkaA+JzJUzO9mgKgsbimyy1Gb+/BZ9diSb
         uGpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723457504; x=1724062304;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hiEwTt/nhsAbq5aVUbyNSi+3qGhJTSod5OddfESv4fc=;
        b=ABcylvGsyP+myyMTR67GmalLk4jDvUH1dabVk1uJJpXTr78h5p6NJ+1/xF8BBPAM/Q
         s9yTrM+EocfQ/j7uZ8QnQ8p29K28r5f0BYRgcQv4xGoCHtKEI9CyTj4tuvZg8kh6wttn
         y+9d145iDUZL5Ghqi+RtyIEB30lrk54U00cmrOikNgScWgCHpzg4sGR12EOovz8u+yBy
         eKAxz3q/0PVH/7t83qBTpPdv3IM9hfOflKwOhRm2PzeOKidKOx7+GtrrF0hQprii/Z1t
         JE7MZMP179lQCeIBsU2kDsVGRjsqobBL22TiAyWaJrLj6PlErpqJgfUKsw8BIcqnI3XM
         Vdpw==
X-Forwarded-Encrypted: i=1; AJvYcCVPOmlwSbIl1ArxsMuDbyfcrPGLqXOO05rungbzYmZxqa7ZjMOlb+1rPf9Gn8h3ih2pSk6HZ21sgOWziy61i/E8dHW+/tKYwpVj/A==
X-Gm-Message-State: AOJu0YwMPKAOmfdUm+zcvUKJ33gfI33NGIDsqL526S2voJHKaiNUKGLL
	0JZvV25owBU/jaoJAfErljFGEzR9pXAfrolm6+3URkobDwdz9/u74pNwqjxp8ZA=
X-Google-Smtp-Source: AGHT+IEroR6dN92+2LEJNO/Bpv7fHpk7cuzuCAekIqeAe5t1pHd6sxVkl/cxvBxzytgLBLzPuHbddQ==
X-Received: by 2002:adf:f408:0:b0:366:e9fa:178 with SMTP id ffacd0b85a97d-36d5aba99d1mr5397058f8f.0.1723457503803;
        Mon, 12 Aug 2024 03:11:43 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36e4ebd2accsm7054591f8f.90.2024.08.12.03.11.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Aug 2024 03:11:43 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm: dts: realview: Add/drop missing/spurious unit-addreses
Date: Mon, 12 Aug 2024 12:11:32 +0200
Message-ID: <172345744173.104566.7784022936514071509.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240528191510.1444068-1-robh@kernel.org>
References: <20240528191510.1444068-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 28 May 2024 14:15:09 -0500, Rob Herring (Arm) wrote:
> Various nodes on the Arm Realview boards have missing or spurious
> unit-addresses.
> 
> 

No one took this patch and it waits on the list for very long.

Applied, thanks!

[1/1] arm: dts: realview: Add/drop missing/spurious unit-addreses
      https://git.kernel.org/krzk/linux-dt/c/71aa9fd7b5dee10a620f0938f3df8a8818a7f232

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

