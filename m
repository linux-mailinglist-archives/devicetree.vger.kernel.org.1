Return-Path: <devicetree+bounces-84731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 348C992D51C
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 17:36:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C36E9B209DE
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 15:36:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C28DF191494;
	Wed, 10 Jul 2024 15:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="TbR2423z"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECA3310A09
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 15:36:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720625804; cv=none; b=Dm5r5tvNkVSCLQnXucp957flzc4eVBoIUNBUHbwSNtt2m/0pJmG9k7qhij4dIasa31mClWgthFmvwMBvE1RkqMPd895kEi9QZPe44KLSfr9Tu5E7C+gNzbs9r8E4E0lzT8ZZMYs5eHAs+qJ+Nk8lZCcncWYJuIZ9gxE55eVYmdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720625804; c=relaxed/simple;
	bh=nGxZ7+sPfbSD9L/xDpQMGSDenouM/MQtuKp6Pk5Sbis=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=AMv9i80SsmrmNcD1z97YRVtv3LG72XJiNFpWWpiopnz1K5U5cVmCkM8WFwYML9EYtlr68g1+wM6JWQqbgzF6uL8+5p2HEOzzNATCsP3+HZJ4Yc2/Ccw6RNHhJqRfaHEYqyMkBmuYBLdsN/fpxYWTl0RpLbCSxnK2VheYO6mRL0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=TbR2423z; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1720625801;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=q5a8aqf2Qw0uN2DWbSw9HMcPNkfGMcvI4EjXKVoTQf0=;
	b=TbR2423z8gonp67jmMl5MZPetvEvtZ1dw/kh231P9YwBGIxfALVvOhhthMhpy/Ay9ItmYS
	41s2tnYBENdedyKUeiFaQobQBGWov8fqGdm5uExMjloXc7sYyF1Lh8DuzG//9BekaBjPXX
	6HVu4fvtsdn1NsfQuu1OQXzBqO9WBvQ=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-636-22yeX9VqMIaMbTBBJQq-xQ-1; Wed, 10 Jul 2024 11:36:40 -0400
X-MC-Unique: 22yeX9VqMIaMbTBBJQq-xQ-1
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6b5ebf8a8f3so92752786d6.3
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 08:36:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720625800; x=1721230600;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q5a8aqf2Qw0uN2DWbSw9HMcPNkfGMcvI4EjXKVoTQf0=;
        b=Xk+oR1SSQSExlFEa9gDMeAOg9XnCnRvCY9YJZUL5xExFREB6se2XnTP5Hvc8L9sMj6
         PHv6OeLyQkDR7q5uW1VK1x+dBsRuPkNNmE2NXDZ5RZtL0q/NWlBDoVRW8EE3uF/FVAwX
         yR6VEsCsVXjaN9R2HQsp0yueB/OPzqFT2Gk2rDujAdoX28gQvcysGRCfd3hNmdwYj/c8
         5pLCxDClEcUAtt2p2hjmDB+BtrR1kfcqqymjZ/vANFoHyKS/FqkqioFIR4crpU5Scjim
         RSyMx92az9D3qXIk+9d7agf5w9W69U5vI5aqHMJ5DpF0B8NGy4XKlItk/L04oTYNVybV
         Pl3Q==
X-Forwarded-Encrypted: i=1; AJvYcCWpp61JtjW4DKA/MAAzgZimw+Pk7tG84+rIWuVzK243AAZculNWLiGbyWydmj8V7MbA3gK8a1uQXxnqxbt8YhjXsRRAvh6K+lI0zA==
X-Gm-Message-State: AOJu0YyLKJ34rj+9OszxaMHlRbGZlMZNctXVxdO5lqWCgQFmG6R6sfJA
	Vw9Y7tOBkR+9G3lcPO3c8CIWB04e4Klz75Xfu/FQk/R7/PmL+DURAM6jxroECs90TzDa3jPn6/G
	kjx8vUvcThtE3/bhsqcGErzQgxhWFQKQYaJ9et21j0bfsEDNiSSOOfhxRaRE=
X-Received: by 2002:ad4:5be8:0:b0:6b0:8e78:34e5 with SMTP id 6a1803df08f44-6b61bc7e852mr74436756d6.1.1720625800094;
        Wed, 10 Jul 2024 08:36:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHwwk9zMDFJHhokk8/VE/YUtae35sOvbKvWcXqT0wPDf6vvskCA9/qu0sN6NA6kASG1jbldgw==
X-Received: by 2002:ad4:5be8:0:b0:6b0:8e78:34e5 with SMTP id 6a1803df08f44-6b61bc7e852mr74436586d6.1.1720625799794;
        Wed, 10 Jul 2024 08:36:39 -0700 (PDT)
Received: from [192.168.1.111] ([2600:1700:1ff0:d0e0::40])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b61ba74d8esm17970576d6.94.2024.07.10.08.36.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 08:36:39 -0700 (PDT)
From: Andrew Halaney <ahalaney@redhat.com>
Subject: [PATCH 0/2] arm64: dts: ti: k3-j784s4-evm: SERDES0 lane cleanup
Date: Wed, 10 Jul 2024 10:36:12 -0500
Message-Id: <20240710-k3-j784s4-evm-serdes0-cleanup-v1-0-03850fe33922@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGyqjmYC/x3MywqEMAxA0V+RrCeQarHFXxlm4SNqfHSkQRHEf
 7e4PIt7L1COwgpVdkHkQ1T+IcF8MmjHOgyM0iVDTrklZwjnAifnrVrkY8VUd6yE7cJ12Df0zlg
 yjS+p8ZAeW+Rezvf//d33A8SWCvdvAAAA
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Siddharth Vadapalli <s-vadapalli@ti.com>, mranostay@ti.com
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Andrew Halaney <ahalaney@redhat.com>
X-Mailer: b4 0.13.0

This fixes a splat caused due to overlapping lane usage of SERDES0 by
PCIe1 and USB0. It also cleans up the dts a hair to be more readable.

Link: https://lore.kernel.org/all/yhtb4clns57t7qo5yxil3oofisdlzfubyiwrvjo2ufw2ngv67m@g6p7ktxfgfv3/
Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
---
Andrew Halaney (2):
      arm64: dts: ti: k3-j784s4-evm: Assign only lanes 0 and 1 to PCIe1
      arm64: dts: ti: k3-j784s4-evm: Consolidate serdes0 references

 arch/arm64/boot/dts/ti/k3-j784s4-evm.dts | 25 ++++++++-----------------
 1 file changed, 8 insertions(+), 17 deletions(-)
---
base-commit: 523b23f0bee3014a7a752c9bb9f5c54f0eddae88
change-id: 20240710-k3-j784s4-evm-serdes0-cleanup-871401b860b8

Best regards,
-- 
Andrew Halaney <ahalaney@redhat.com>


