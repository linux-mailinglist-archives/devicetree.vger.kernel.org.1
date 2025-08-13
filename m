Return-Path: <devicetree+bounces-204214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C0393B24770
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 12:37:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E3D041AA2BEB
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 10:37:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B3312F531D;
	Wed, 13 Aug 2025 10:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Dzqowq6t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579882F5308
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 10:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755081406; cv=none; b=iFX/x1YspBE2KmsE9J8nxYh5guGJtVRJcyVIxLpAD4OmWWnE/6yjyyiirtYuZh+fnIpUir1mixR2qrOieVJL/xdTZhwwwmV7Cz08qOZrvLwpZqG484edgt3lh0jkeRmOfzlExTfDn0GjFYjRrkLHPgjPxd2PHvGb7Xz+KoR/swY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755081406; c=relaxed/simple;
	bh=Q1NhbFtp2McdwP1oX5NSBNJM1rtYXPpcXrqt1U91T0k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=NQIS45g/MD5dcRvrQEurtcHbPX0HiIEuIGLywQGFlHNHBp53tK+YKTrK3rHaGjV5gOL1H/qvQfcZmdwwZD7g0SwoUXdYIDR9XmDJrqzaoCxXFSidqvdGp5ZWYfJgE65VAXfwLFgyiDOp1p5FhRC1O707EsyssV9Y5EVynxHnxUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Dzqowq6t; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-617c64512a7so923243a12.3
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 03:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755081402; x=1755686202; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4F86Ss5ZDMwE+bMtUpttaC71xy+/6MJqMSZw67R4Rmc=;
        b=Dzqowq6tm6k3VCdEkX2dE2Wd86TvSaNTyZ7UN+AaDziYmisppYm+C+mVURFnYNOnOy
         ZZPsaZr2ZbI5Z6inqjIcZxgeqp6mMmJvvyAazOoSUDYZNb+Bq4pcB2Z+n4irh+5A47tZ
         xaCk8vMtzqtPX69ukPvY+bt/HYpkQDmOoJsCvebftxiUGhdzUx2YHlnbF7Qeh/Xy1gUF
         2/8+MtZtEmUewkeUKGPhjAkG7ATHKRd1AHcqCtDpNV08x+HSr79Tx08uF1mUhmNeMQmn
         v3wzswax7TQQLoEsD4ZJebkzFvoo7M6Hi8aZtj5z29zUKynz6ZLLZKPIGSZS5+ZCGwqq
         6ulw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755081402; x=1755686202;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4F86Ss5ZDMwE+bMtUpttaC71xy+/6MJqMSZw67R4Rmc=;
        b=YhHbkP6GxfzOsMdrivc4VNXWdwfWfECoRd/VHCX2xGtb59OOJvf80qLmimJltD9Vka
         9AorK6L6Gz1c1AlL7r76UgO15xenvibrFJ+i6M2bXJAuX1G29eflUnmqLfI2cwNuMCzT
         pzAT7Gd9fpr9Le9fh/TW7cCNEbOqNnoEczsTY9J4LavCaCt343ekceQiF5a+/Eusv+YL
         vjWdsxB3OeVvZKG78eo4OGt0d9EoOqm9/ymFSqN5xqqWbk2YJk1l2oeEojuOdKvWcXcU
         dh2LjYzWi7Gurl2z00Sur9X0XnB7yhH/UwBF4xYYslewg9HunsAIT+KWqIIXMdDLJZMH
         DalA==
X-Forwarded-Encrypted: i=1; AJvYcCWrrBJKNIh4Mb5g8adSWhlLVX27kQwcqwIXz6QmtY+yJeDdTtbxogBXg36krOzt4zIp6V1JS6vC+oUP@vger.kernel.org
X-Gm-Message-State: AOJu0YxMDMAyRTfsvdCqqc4fT4lyYdz5DYtLua2B96QtdwC/6tb7kzIP
	XOz/UZwhR0wUucYnAr8xEwkPmmoPw9Hl0FLR9mgXG0qRk7ZF1eDEM/Dzx2F+08mcuqA=
X-Gm-Gg: ASbGncs+JW4JBR97Ldm5Mked9fEVmcJImJ4ykH8w10BFrN6FhcfhFvH+V1+lLHsNMeS
	AhV2ruEh3NRBn2r8B9Vgyb3Z4i2Tke6jITN/DiS53hNmV1/oVWHqlZDzlGQ/tYCx5Dwn1pu7i1w
	Q5PqIn6FpGHgRSSgl/oa6G9Yzwqc01bT6dnvuhpHtQ8Z2PJu5CWF5mRsqUuXlhK0CptrEgrfYht
	y3jMhgwjGqVioGcQTI2clWcMBpA71lR7u5j/kEl+S5T0bMZX3I5bD4c86NV7Ps0KcHQHRbjANUj
	qUZ8p0AKbrIiEuuksib+1LLvjdWtk1DPCACMPIdDJXni5B69s1VVql1lhkvAAd8FtVZprU7hpLg
	XyDXk6uHR+d08Q9lAozA64N1bbshuL65JZqsbJePdTlz3Vm4Ozw==
X-Google-Smtp-Source: AGHT+IEt6eCGHIHdgJ5Hbdvmi361TPvwrKg2DTzTL0d0QkRcJbr+DkoNmxRzQ+Jj9IKe7RsN66mllQ==
X-Received: by 2002:a17:907:1c0a:b0:ae3:63fd:c3b4 with SMTP id a640c23a62f3a-afca4cff92dmr105537666b.5.1755081402373;
        Wed, 13 Aug 2025 03:36:42 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a21c0e7sm2367644366b.114.2025.08.13.03.36.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 03:36:41 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: linux-mips@vger.kernel.org, 
 Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20250729205213.3392481-2-florian.fainelli@broadcom.com>
References: <20250729205213.3392481-1-florian.fainelli@broadcom.com>
 <20250729205213.3392481-2-florian.fainelli@broadcom.com>
Subject: Re: (subset) [PATCH 1/2] dt-bindings: memory: Update
 brcmstb-memc-ddr binding with older chips
Message-Id: <175508140104.40429.8279921018476182386.b4-ty@linaro.org>
Date: Wed, 13 Aug 2025 12:36:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Tue, 29 Jul 2025 13:52:12 -0700, Florian Fainelli wrote:
> The older MIPS-based chips incorporated a memory controller with the
> revision A.0.0, update the binding to list that compatible.
> 
> 

Applied, thanks!

[1/2] dt-bindings: memory: Update brcmstb-memc-ddr binding with older chips
      https://git.kernel.org/krzk/linux-mem-ctrl/c/1aba1eab0bd896928ae20dbf1f60a175a6e1ad0f

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


