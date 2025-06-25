Return-Path: <devicetree+bounces-189285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AD7AE7787
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 08:52:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8C7387AE85F
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 06:50:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A35381F8937;
	Wed, 25 Jun 2025 06:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GWG8z0g8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A04281D7E35
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 06:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750834291; cv=none; b=SFfWs2rOcOJqWHaDAx13xEyK514ubLe0+r0gG5vGWNG3RYqtHBLG7Gs5vuoet6NJA/fDUGs6m/uwBKe/GKTJM+MWE29XJSc8aOlSFfxh2IXKP4rv/JEb1vEnumjlOP0m8/zpRKp351k/5tVEnjBa1Du6abm087YrVUjhPcMqZ5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750834291; c=relaxed/simple;
	bh=T0sr+UMqlQEDTrrx/2ryP7d0YJJlLXjokEiyzEW7sJA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=GZOA+hIM8qzPk9mOYtey2UxZKCkwktW7nvyK4hufbaddha3B737dmbSw5YztraN6zWB2vj2s/UBEX2oQP7nIS6CylsSK6ocbQ0N1XZoEaFrhpg3SymcdJ0HH8UN3gN4TuXOHf6ATdz9m0LYFKWg4Ukn/skw2KVOKFhd0ihR6TSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GWG8z0g8; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-553b9eb2299so562987e87.0
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 23:51:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750834288; x=1751439088; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AIc3f7Yz1RfvrfiVwjLbNXmX/5TUWv9MhRtU7U8fR9E=;
        b=GWG8z0g8jbLeifNHFJjVeskreJ0oPVFrs95VMFZRVnmtSbrEFvZWqaD0Ab+KWFstYv
         zlUUaNkKamhSC4Y9toZLQKPGukNyhl1IUZcsWA/yvtsrPWKrXgTGfw+gT6L7ppJsm4Sf
         HZXZNkUIrkRUEEZZ06IAKq3DAn1Q/kzAWFf9OmYt34SFJOIX9ryQzpT9fL4+8//6UZYy
         xiZHpnwadRPisN0c9gnyVRWegvrhoFxhOJj+UNa667YAjdMwD1jgxvsJwkNStfbwNdYW
         LJpZ7Nzh2RtzMwU/FHgRjYoofK0UyPg9AfJc35SRBAS4ntJCNJpNG0CPnthSj3WQ7bGT
         vtLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750834288; x=1751439088;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AIc3f7Yz1RfvrfiVwjLbNXmX/5TUWv9MhRtU7U8fR9E=;
        b=Ckaf5Qgqr0wvJtBYdnbsVBuYx7ZWbxxjURgwMsHzohn+oOqwmKDp0lgR7VnKO9IjSH
         9vN7KLu4xhca29cfir7V4n6JlKng6NmVQLqXgCdcYb125Kxktt7s6xk/0kqaBTUphRQv
         3gFkDwnyFptVYKjPO6LLdbGVJwEQYuXzakwyvWUZLhzQ5qjCZeEnZUkFx0PNBK2tOCOn
         2GUWc3A53QwfZ70lxOAMPGYV3H3QH//7P2J2WfM/qh7pHSS9nNfpgFpFykwLSYyvOsoW
         Dw+k7bVg9eg/Hvgzgb+8596fRPUcYIDMW7TRMCu228andDt9Jga2lYnqIgMO9q8qWpFZ
         lWBA==
X-Forwarded-Encrypted: i=1; AJvYcCV3d3fqOzhmQQO5B9kzu78yI4FWKKsKrSYmmofZmrE/AYtcPbnZo1i56rrtRvt59yYXAWTI8WvJ+dco@vger.kernel.org
X-Gm-Message-State: AOJu0YxgCmUlVld0SeK7svwtx/TTgeNVfF3aluYhL1dtRgsHlmhT7+6t
	V5Wyz5P7Wb1zgALZc8MdGHvvdkzn6ypMUre4kemPRdtoDzgs3bUdb/YNEgD2oK/3oyo=
X-Gm-Gg: ASbGncu5X+XqMie+Q5tLrdc4BAwYTHN0gPhNgeafun/uMhL0lZPwHYe537BZFlFOqx3
	Uc+g4//vF/iPQuht/QB7Nd8IhFb9nqoHTvOPOFC42XhsPW0fszSNtQFVp6MeoWBREeTR8XoHnRF
	FMxzeJtqhtMMG1wKAVcylHTNVOUumVonx3+b1EY0Fp5hms3kpfBMB+6zWwBPL0kRwFg6NVFiidU
	U+XcIgvRhjRDKi1rZ43vpbBRMrt+oi9BYcZG62hrSx9/FInqN+hFgD7dCPww2bog7Gv1IGwMkgT
	28Bkk7ajukhXN3QJuvhHZvxkLZnJzOhlaHVoMaaL4l3hoz6gtmorm6gLXt1eBFDMYZnKtS+glqN
	gK1j8ypk=
X-Google-Smtp-Source: AGHT+IFfnCfFr6rrLmY08KFvWzCaJ2n+iHm/mfMNffAzy9xU/MZGrpU33mwkVJ761bVk28DJyTGC1Q==
X-Received: by 2002:a05:6512:3095:b0:553:cf72:45d3 with SMTP id 2adb3069b0e04-554fdc82bb0mr467215e87.3.1750834287716;
        Tue, 24 Jun 2025 23:51:27 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e41c3dc4sm2068379e87.157.2025.06.24.23.51.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 23:51:27 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH net-next v2 0/2] net: dsa: ks8995: Fix up bindings
Date: Wed, 25 Jun 2025 08:51:23 +0200
Message-Id: <20250625-ks8995-dsa-bindings-v2-0-ce71dce9be0b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGucW2gC/32NTQ6CMBBGr2Jm7Zi2/FhceQ/DosgAE83UdAjBE
 O5uwwFcvrx879tAKTEp3E4bJFpYOUoGdz7BcwoyEnKfGZxxlaldiS/1TVNhrwE7lp5lVOyML0r
 vClvZBvLyk2jg9ag+QGhGoXWGNpuJdY7pe9wt9vB/y4tFg1cbfFcOdZEP7m+WkOIlphHafd9/P
 nUf1cEAAAA=
X-Change-ID: 20250624-ks8995-dsa-bindings-b08348231519
To: Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <olteanv@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Imre Kaloz <kaloz@openwrt.org>
Cc: Frederic Lambert <frdrc66@gmail.com>, Gabor Juhos <juhosg@openwrt.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

After looking at the datasheets for KS8995 I realized this is
a DSA switch and need to have DT bindings as such and be implemented
as such.

This series just fixes up the bindings and the offending device tree.

The existing kernel driver which is in drivers/net/phy/spi_ks8995.c
does not implement DSA. It can be forgiven for this because it was
merged in 2011 and the DSA framework was not widely established
back then. It continues to probe fine but needs to be rewritten
to use the special DSA tag and moved to drivers/net/dsa as time
permits. (I hope I can do this.)

It's fine for the networking tree to merge both patches, I maintain
ixp4xx as well. But I can also carry the second patch through the
SoC tree if so desired.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Changes in v2:
- The device ports are MII and not RGMII (copy/paste error...)
- Document the elusive "port 5" which is a separate PHY inside the
  KS8995 usually used for "WAN" ports in home routers.
- Include a verbose example with a switch-facing ethernet MII and
  a WAN-facing MII for the port 5 PHY in the DT binding.
- Link to v1: https://lore.kernel.org/r/20250624-ks8995-dsa-bindings-v1-0-71a8b4f63315@linaro.org

---
Linus Walleij (2):
      dt-bindings: dsa: Rewrite Micrel KS8995 in schema
      ARM: dts: Fix up wrv54g device tree

 .../devicetree/bindings/net/dsa/micrel,ks8995.yaml | 135 +++++++++++++++++++++
 .../devicetree/bindings/net/micrel-ks8995.txt      |  20 ---
 .../dts/intel/ixp/intel-ixp42x-linksys-wrv54g.dts  |  92 +++++++++++---
 3 files changed, 213 insertions(+), 34 deletions(-)
---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250624-ks8995-dsa-bindings-b08348231519

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


