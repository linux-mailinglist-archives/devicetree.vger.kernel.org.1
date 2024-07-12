Return-Path: <devicetree+bounces-85370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF9592FCE0
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 16:51:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE84C1C22A6A
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 14:51:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EA07172BD2;
	Fri, 12 Jul 2024 14:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iN2zMQck"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD6B216F856
	for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 14:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720795881; cv=none; b=evOGRNl3tEXVkqFPPzNlT0ULScfgePjMbIZUYKYZ6oI+JJNfZS0ANIYcqSJPYpKHk4QZi17Krm9MLiHY0c9jYkEV/dPz8Q624ukSF7+QMfQgezh2zxEEFwMuHI7h0qDKfeulc+ESkH+Z80ila6Gfl6+mSPcgPRE4LmVZCt7xLFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720795881; c=relaxed/simple;
	bh=os+eu3Tv4J7dwzpTJ1FV2zX0vhYsARIhlveeUqaBXlY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Qd3IrmVWXMN7o+6d0thM33Zb875f5zMjjAcevfQbVEdEPxKdV4D6fPqYcacDivap8mmmCRXi7OXle/4rmgw9yYO7zUq7N/77/RDB6C55lT1TIi0/KwVp8W8ef5Nco744cc9V6UB8BabY78KvMkTRcoyOybFpfscq7pFrIQHny/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iN2zMQck; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-59589a9be92so2985278a12.2
        for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 07:51:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720795878; x=1721400678; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BnCZYn7QzeqqSyePCYQ6UTzqFFn4iCKE4NhQPzuGH7s=;
        b=iN2zMQckJSiP2hIEMkYKaC0aiXBSgBwG1TE5sAtUdXp7mddCcPzG96e//Vm04NpK/l
         JODNTb77HU5affYFRKAasepjjD53hD6slgqRYohpajwvD8wXElReyMDsRjRxI0hBzXUf
         +ImU6zQN/u5yUiblj8Ryw9k3zbg3Q0MM4pjyXUjNYe5a3eohjDMcUBeHkmAOgtXMV+Na
         JJFGQW2V/uFPllDk8jL78SE0Viyir7F2g5p7qyvelwmCG6eSo22gDoeSVv5WyXExqqQP
         hblFjN3G9weE/5WvzeK0vfMmRjnIIgm7SHmJSFpVbPsbVAc1Gh2gODfkZkEXqk/WWHnB
         5hWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720795878; x=1721400678;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BnCZYn7QzeqqSyePCYQ6UTzqFFn4iCKE4NhQPzuGH7s=;
        b=S96bp5/0FsjR9AlB+NOfFoltQJLRehr3la+3OY68MvFY1h/av7Eu6mAKAgAneQcmt/
         r9axVC6G0LZKKm37OdNXP8+/p0g+x49aCsjkWJZIbh0QeCcdZZqz6UvzYSNmGp/Ur4iF
         mcPZ/iIIZnBI9kTAi8pGltcBSLb9SU4yVdMel7mxMbD8XvFY301s7TcyKnOOIYXGPc1U
         d3lW5C7L9DW05R4J2XoCDq8Vg1HG+xG/ZdFF+gMmn8qtNpZc6HXx216qfxJRictljyCA
         LFNnkWkdQV05U9Fe1lQTYX6WnI5NwNGyqTxGGOKmQY5ZAiHv1vLJZmunI9tljxHaPWNC
         WrBA==
X-Forwarded-Encrypted: i=1; AJvYcCXFvP+jUYZrPMkrcNhf+QJ3xDvpfswUkqDpF9543ZxOd7uohTmNJxCZaHikRUcobdmizZd5tcqE43XSaYoGHk3jadE8Cofodxawcw==
X-Gm-Message-State: AOJu0Yz3asu96OSt8AlkwviYE7MyKafo0X8kAtWjWdYQLmHqwfgEWSyW
	5pb/B2f8zgqhP5doRm3iZla2OccCkfKU2sJFlWIXU3YnnlKdkQNJJTrDLWrtdUs=
X-Google-Smtp-Source: AGHT+IHicEksR7Lw9T6Nn6PNHSawUIiaFIluB5vjYIyxtPziXVzeyr0nX7q0WGreJJZGr58T602gbQ==
X-Received: by 2002:a17:906:46c9:b0:a77:e2b2:8ec with SMTP id a640c23a62f3a-a780b68899dmr755965866b.3.1720795878012;
        Fri, 12 Jul 2024 07:51:18 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a780a7ff213sm351406266b.107.2024.07.12.07.51.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jul 2024 07:51:17 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v4 0/2] dt-bindings: serial: samsung: style and gs101 fixes
Date: Fri, 12 Jul 2024 15:51:16 +0100
Message-Id: <20240712-gs101-uart-binding-v4-0-24e9f8d4bdcb@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAORCkWYC/x3MTQqAIBBA4avErBvwj4SuEi00R5uNhVYE0d2Tl
 t/ivQcqFaYKY/dAoYsrb7nB9B0sq8uJkEMzKKGMsFJhqlJIPF050HMOnBN6Y6N2yopFD9DCvVD
 k+59O8/t+eOTYm2QAAAA=
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, 
 devicetree@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

This series started as a single patch [1] (as part of [2]) to fix a few
issues with the UART on gs101.

In [3], Rob pointed out that the binding here shouldn't be duplicating
clock-names all over the place.

So now we have a patch to do what Rob suggested, and my original patch to
address the incorrect number of clocks.

The whole series is marked as v4, because patch 2 in this series used to be
v3 in the original series.

To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jiri Slaby <jirislaby@kernel.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Will McVicker <willmcvicker@google.com>
Cc: kernel-team@android.com
Cc: linux-kernel@vger.kernel.org
Cc: linux-serial@vger.kernel.org
Cc: devicetree@vger.kernel.org
Signed-off-by: André Draszik <andre.draszik@linaro.org>

[1] https://lore.kernel.org/all/20240710-gs101-non-essential-clocks-2-v3-1-5dcb8d040d1c@linaro.org/
[2] https://lore.kernel.org/all/20240710-gs101-non-essential-clocks-2-v3-0-5dcb8d040d1c@linaro.org/
[3] https://lore.kernel.org/all/20240711212359.GA3023490-robh@kernel.org/

---
André Draszik (2):
      dt-bindings: serial: samsung: avoid duplicating permitted clock-names
      dt-bindings: serial: samsung: fix maxItems for gs101

 .../devicetree/bindings/serial/samsung_uart.yaml   | 69 ++++++++++++++++++----
 1 file changed, 56 insertions(+), 13 deletions(-)
---
base-commit: 523b23f0bee3014a7a752c9bb9f5c54f0eddae88
change-id: 20240712-gs101-uart-binding-b47f3a270c36

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


