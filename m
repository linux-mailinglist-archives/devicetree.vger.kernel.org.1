Return-Path: <devicetree+bounces-242495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 58EF3C8B154
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 17:55:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0852D3A31FF
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 16:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF44D33EB1D;
	Wed, 26 Nov 2025 16:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KCJDGi4r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4C4281376
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 16:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764176141; cv=none; b=M/IYRvAEXZv3f+frxyMHfkpowSOemgNdCFs/z6t0dKEG+/6+mvwHZM0S5S49s8QBHtsc3W/oQXAmquTIkdoIlLAYJNt/XGZFOWl09B+Fbfe2tVDtSL1Y9QXPcyVvi5i4AFsPEe8l+VgGJoEIsHjngCQ0aub/66gbrBmoktHXIXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764176141; c=relaxed/simple;
	bh=3Gc11fg7hsjFljk/JqN+H1npRWBl2dMAD1W7UL37tOY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=carc3x4ohjH6sAb4Y7GoKmfngLQ8qJSltmrBdXTpeKj4IYp5uo+JmpTZbmb5J3WTtJWDCMoHf3Ew2VxpV8DRwk0dQC/hSO+CP6bwEVBMIGPnp8CSe/GR0ylJ6JYqHaAph08Ov+I1/Mj6AiwQzhQhKEz53I3yDMPKX3eYPqizeGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KCJDGi4r; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7bc248dc16aso5169019b3a.0
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 08:55:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764176139; x=1764780939; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YsLR0RJnm38Fp5r7CqZvtnDjOXjaQRJuirTuBdqGYYg=;
        b=KCJDGi4rY4QXX2mUg28fMahdbCOHR5IMbRTT4p6p+Tw1trwhatcTK9D00Irh9JGjld
         +fxqyKFVNLlzmQ8dPT2dsEy7YdSWKxRr+KT40peMNUnNnBdBS6dDNtTO8P9XT0R0VfuW
         jdyriwVOYhVUSdsuuTuVdawn5sXUone/FHQTLOfr6O75vLdTH0M5wCKS/QErgP8qUgiB
         +wMPWpM/eQxiAj7Sv8t3T33FO4ciOFp1zKjD60BvfsGYshcYmOgro6ksRCTxWlfFGUEI
         OkL3lo5VIubyRXLRB73hBbwJXWqg/m9zqajRUNMJf5vMK4EKLdIlTH3w2z8hyPNYyfRb
         sHQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764176139; x=1764780939;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YsLR0RJnm38Fp5r7CqZvtnDjOXjaQRJuirTuBdqGYYg=;
        b=axLd2B+oYXS7QYesX+luMSqzrLVd0mE60cR/mxL+WX11gGXg5fzaX19H9TgwBZ3Zng
         ANfRn3aAGc0y+TpF98dLooZxs4PFEvZ5qaCqT0do+EsvO2t0MkuQjr31DbCjkzuLDvty
         jlURncCAERcoaTf8pZg6tOo8eKM4dZuoLybG9osiqbQRE/8EwA1D46I1lU52ORFJap6g
         QZ6k7OxvXEFnsXUbEuZeOaYMEh64trU5KXN25vUr990TRAfUF41dfVOFQtt/2iyR75sv
         m4p+epjU3RLzF/5D+FACpHCzrW8lKUPucr5mAcivtKn4aOL4G6I7hJNcAUrXla2uDhvv
         CO2w==
X-Forwarded-Encrypted: i=1; AJvYcCUWDhD83/qxHQ5W0JfKn+Q4silTtvUqf+6Ka1RRwy+MyrRUj5p4ZZbDw5kNDxQ6+TUJF26qtwzS1izZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwxdkSiSCMCq3+Q1QTOK2CjqngylbrfvHXiQfOEFxfE2JiiwrB7
	IMatWACK+W2SX9sG0yyWwiJ0IVDnj+jhAbYrejxektxwzGVAULYL/k5H
X-Gm-Gg: ASbGncsr/X+lFuHDS8FpL1B5n0CDlhXYR4x8O4jxbHKUKBeltiPTVYjeB/6W0hgVdpz
	OWUTOm1BYN1yIg5Wb6yUMAkfAqflatn97jWLq6hLZ246P+OtjwXKVRFsPCD6RRzYmoYRtOEsfEB
	7LcZfH2FtHnDgwyWwoguDVrOrRLm8aV+ZOekq7dj0Ajkw6qfymIxsfis0o9imrivP/jJvBHrFEV
	P0yrLwKtFAMgiVqFK+odto/d3oBBJAf1TKxdX9JVr4rrcr4hFH/hB8vA2u1cfsI2dInSC8SLNbk
	5+yIP9Em0JU8fv/753MVklZIbcPhFcrreXjiQ/f5UALZXEu6YRoAoOvoZqpOMSQVLQIeDOFGXNa
	1dmI47sNl7Z/7mYLv7PeuylZOPM1JCgQY7ZlW9njHjUBwGqni/jXWER7Ge5AoRj/GQlg92tcjdS
	kbu6IzlutipjRovPGBhfuJcA==
X-Google-Smtp-Source: AGHT+IH6cuG9oEeYrc3Fz+ThAFudgaYZ2XGiyeMqLPbjuZeQq1pwyPE1LvTCIEY9wFQ2EuUIbEmwCQ==
X-Received: by 2002:a05:6a20:9148:b0:35f:4e9d:d28b with SMTP id adf61e73a8af0-3637db14ff6mr7976498637.18.1764176139306;
        Wed, 26 Nov 2025 08:55:39 -0800 (PST)
Received: from DESKTOP-P76LG1N.lan ([42.116.199.188])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bd75dfed99esm19887078a12.1.2025.11.26.08.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 08:55:38 -0800 (PST)
From: Nam Tran <trannamatk@gmail.com>
To: krzk+dt@kernel.org
Cc: lee@kernel.org,
	gregkh@linuxfoundation.org,
	pavel@kernel.org,
	rdunlap@infradead.org,
	christophe.jaillet@wanadoo.fr,
	robh@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	linux-leds@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH v18 1/3] dt-bindings: leds: add TI/National Semiconductor LP5812 LED Driver
Date: Wed, 26 Nov 2025 23:55:32 +0700
Message-Id: <20251126165532.160730-1-trannamatk@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <74d6319c-535f-4409-a3c4-299ab946af54@kernel.org>
References: <74d6319c-535f-4409-a3c4-299ab946af54@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Mon, 24 Nov 2025, Krzysztof Kozlowski wrote:

>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/leds/common.h>
>>> +
>>> +    i2c {
>>> +        #address-cells = <1>;
>>> +        #size-cells = <0>;
>>> +
>>> +        led-controller@1b {
>>> +            #address-cells = <1>;
>>> +            #size-cells = <0>;
>>> +            compatible = "ti,lp5812";
>>> +            reg = <0x1b>;
>>> +            ti,scan-mode = "tcm:4:0:1:2:3";
>>> +            vcc-supply = <&vdd_3v3_reg>;
>>> +
>>> +            led@0 {
>>> +                reg = <0x0>;
>>> +                label = "LED0";
>>> +                led-max-microamp = <25500>;
>>> +            };
>>> +
>>> +            led@1 {
>>> +                reg = <0x1>;
>>> +                label = "LED1";
>> 
>> Completely useless label... You require labels, so people need to write
>> something but since they do not know what to write they call LED 1 a
>> LED1. This is just not helping.
>> 
>> Use color and function properties. Same everywhere else.
>>
>
>And now I went to older versions and I see they were correct - you had
>color! You replace correct code with wrong one and drop review. This
>patchset is not really improving.
>
>BTW, You actually received review also at v6, so this was reviewed 3 or
>more times. Way too many times.

Thanks for your feedback.
To address your concerns, I plan to roll back to v17, which was reviewed
and approved by Rob.

The only intentional addition in v17 compared to v14, which you previously
reviewed, is the ti,scan-mode property to configure the LP5812 scan mode.
No other aspects of the binding are modified.

I hope this resolves the issues and keeps the binding stable.

Thanks again for your guidance.

Best regards,
Nam Tran

