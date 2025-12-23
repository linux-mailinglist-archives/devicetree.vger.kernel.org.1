Return-Path: <devicetree+bounces-249134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E23C9CD9730
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 14:35:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F60E3012BDB
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 13:34:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73D0E3321CB;
	Tue, 23 Dec 2025 13:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R+6w+dOm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31BF314D1F
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 13:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766496891; cv=none; b=Pnyp9YBOcckEvX6Zn5YVVv/81uQoWTPq8N3F246wV2qCG+SbkfMr7UCaG1kEZ/2QttFCa5q84YRaT06RBp/LRRjn6EBAyssnvKiUWa7GEXHShH0SncZB6JJwUxf9c4hjGXPVRl6pjgZ+8H4T82ok5nkkzqbgjzALuQmRRxU49e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766496891; c=relaxed/simple;
	bh=CZqk6MmYHeQUSq8mYl5U8PsglTnA4thlLjh4fvyNm/w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cE1t4r0U4M7Mk3bbM9ueFPlyJ0emGa/asnpr3M/1FpL+ZDR2vf2Kjpyya/0KEcCNlx6+UdVpHXvEJeMbehVPWlidvbrO+CLW0q+4zcm1UuJ89ZaC2YMS6N6fzMaF/2AyzE9gZGFH8YYVOAfnI8pBCmY6M2votrVTkQ9Hc8RfMEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R+6w+dOm; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-42fbc305552so4108317f8f.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:34:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766496888; x=1767101688; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=40oiWTX60m12RVZSNEAZLu+5MlV2CfxapQqsCAtpWsk=;
        b=R+6w+dOmcK3p0Wsu5WmR5SXCBuRr0iju8j2IpLXOPlwYE35HEJME0mfGLF9LOp9rHg
         lxBk8XcrXwxqAoR77zvA2F/di9juhZd9pEyR783DQqbwjr4OFhMEpkl1LHarc9eKWkq5
         x/tSSb7GW2Xggr9qgu2VpsgajRawUoFhSj9lOpy0fDlbTiO6AND2N1URNSp93KQI+exZ
         IvFSu4RA6iug7bdpa6f6zLvL1cl42M33lcIFNqmFJttrnq2RU3DvRueeECrcgLrQ0UK9
         dK7SYTiuo/7AcjrbpVBAWUyc5d/FUJKXLLg2dXVEAqb+AyAuR5jiM3MSSSFVoITSyECf
         zJaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766496888; x=1767101688;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=40oiWTX60m12RVZSNEAZLu+5MlV2CfxapQqsCAtpWsk=;
        b=fOYevNQasYnMmXIzUWCUPZJwIza01oPGKc2XuQPktijnj6MvoWHHMFqg7lY/keb559
         VlAf+F74n/zSzjmfAth47eJvxXNuSr9wTtZ0VULryG04QDOJxt1NG93vaj2wpOQ7ILY6
         7QhDq14UoNm4qs8FOyIH8y++o2nukzo1FSTeWBqQ1blqt2VxyBSGggj6Xk8Ea/r31fHz
         WNcll9G0B5NwRDMzXjQn37d5DkoqLysW7WFX8IzwkXb1xsTVefHTBPnjoYbbN8Pm47zG
         HZs0HgXCUjjjWGi002eeE+mYXBakWEu5KwkD186ZVlqJdso606Ohk/RieZ0Qsa0UHATh
         WB7g==
X-Forwarded-Encrypted: i=1; AJvYcCWag6y6stZBMDr39R7wMKK0pvubMsasxIEj/II0wWjHWZ4y8UB+4gegUkuTeGU3MeGwrYE0BT/3frOY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy15X/rScYg6mdTQYrjRphrj1sdOUlTOMye1pPe3E1RDBYc5VqM
	Bu/VOcIkB8fVA/6/saQCPfU4erzUeAvsMl24VLbbTe87o8lGyRX5Ubss
X-Gm-Gg: AY/fxX7Ix+Y8/JEFSl2EOSYP0ReeKgtOr86UySbNTzOUCNoXUbfJA8Re/GtrHd9mhNw
	9ps4NpCPye0AdNRuZQyR73SdCXJXFN3LdsZCiIFV+4mbfROk8KLVudbS+ePHc888Yrax4F/AbWk
	B+8C7XlHEiFG/G/G3dkcsl/UIwtouyDkeSfxEsjs5kWCjmdHuNu1kz3owWr84sTVLht6jSxZRaF
	AjF3ZnrSN4zOCdhdgZJkR9IHC02NiP1qhWPQv2zIwDXs5s6kKCsyyIwXa9RzU8w1V9dJEtPpdRp
	5166IEn7R+Uq+zjZKUn3RP/SJY3f7zid+91wOQz+7lLQODke8rayaDdtAP22Wf0IOpSDT2kRk6s
	FqT3P4jSxsLU6ttNlpcf+PDrokcrDp+M8K5HqPSFglLSuzvzPyUELQ3kRs6/K5N1jToFdDWD13u
	nBVJDFRyZlpkTd7mklTT6Rst88PA==
X-Google-Smtp-Source: AGHT+IHpg4k7RzFhoxht4Ev45xMmOxxP/JrZaMWX7+5dTHV9/RixTIOglRJWKnokOLcwuWaQ2ahUHg==
X-Received: by 2002:adf:f403:0:b0:432:5bac:391c with SMTP id ffacd0b85a97d-4325bac39dfmr8420724f8f.52.1766496888057;
        Tue, 23 Dec 2025 05:34:48 -0800 (PST)
Received: from eichest-laptop.lan ([2a02:168:af72:0:db87:3fd:1ea8:b6eb])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea1af2bsm27843964f8f.1.2025.12.23.05.34.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 05:34:47 -0800 (PST)
From: Stefan Eichenberger <eichest@gmail.com>
To: andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	eichest@gmail.com
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	horms@kernel.org
Subject: [PATCH v1 0/2] Convert the Micrel bindings to DT schema
Date: Tue, 23 Dec 2025 14:33:38 +0100
Message-ID: <20251223133446.22401-1-eichest@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the device tree bindings for the Micrel PHYs and switches to DT
schema. This version is based on the following discussion:
https://lore.kernel.org/all/20251212084657.29239-1-eichest@gmail.com/
I tried to address the comments made there.

I moved coma-mode-gpios to the micrel,gigabit.yaml binding, as it is a
property for a gigabit PHY only.

I split this series from the MAC/PHY related changes because they are
now not related anymore.

@Andrew Lunn: I kept you as maintainer, please let me know if you don't
agree on.

Stefan Eichenberger (2):
  dt-bindings: net: micrel: Convert to DT schema
  dt-bindings: net: micrel: Convert micrel-ksz90x1.txt to DT schema

 .../bindings/net/micrel,gigabit.yaml          | 176 ++++++++++++++
 .../bindings/net/micrel-ksz90x1.txt           | 228 ------------------
 .../devicetree/bindings/net/micrel.txt        |  57 -----
 .../devicetree/bindings/net/micrel.yaml       | 132 ++++++++++
 4 files changed, 308 insertions(+), 285 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/micrel,gigabit.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/micrel-ksz90x1.txt
 delete mode 100644 Documentation/devicetree/bindings/net/micrel.txt
 create mode 100644 Documentation/devicetree/bindings/net/micrel.yaml

-- 
2.51.0


