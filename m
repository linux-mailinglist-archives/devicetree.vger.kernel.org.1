Return-Path: <devicetree+bounces-254536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAB8D19162
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:23:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B63A73002859
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 13:22:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46277349B19;
	Tue, 13 Jan 2026 13:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jXBBPzW5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF0E35292B
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768310574; cv=none; b=F8oZOQ7BDwJ/S/h3+XQTwJoAcv/nOwASa0aD5Xcj/C+7jxUXBv+nZ2u35cHu7fW8Td6DhB1tgkw1JKlcrBDGn6+VJgJifFLqJM/1/VMQIS42OQZwef6OMokNK20gXV4eW8toJu4YMUQS/HWlt4+b0OZR9s4E6IEdxQ1erEPHux0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768310574; c=relaxed/simple;
	bh=9Mgbd6hLYyZUvA5ylRuwiz+22RngeE/5EJiRoxjavak=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CiD5Z/zahzn9AeYLAcv1WehlVu450toW4wht28scc9SMmhyMX6R84sa/VKHYsjv/rO43syAKfvHL6B6t4IGBS1kSbvB/k+WzW9vM4sZPewLVOanvJ3R6SKSN6N1dhi0ieSa5+BD4jZqI/oJ1fC7n6lu+NGovMmo1hYnGg7OlOpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jXBBPzW5; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2a0833b5aeeso74763825ad.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 05:22:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768310572; x=1768915372; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8f9VuSjE116pi7iG6Wpon5XwC0RbZghgrAlkmtN02HE=;
        b=jXBBPzW5Yf8IPx0L5ejxvjyIki75WjK0Gq31WyosO6nnSLTLydhS+oIsMZLQD9tRtA
         b62Ga5dS3I8874W36Y/zO6nX10XV71+80pPjAqXwlN2gqav23C7TeYe7Xl07SbMz+8KZ
         uSXxUKZbEBUZ0vcyEr0jSmxcBC6jMtcABtg3YUD76UP8ff54R9A5Uh1wEFJr1zGO9xj0
         xAmxtpqA8o6bH10+NEQwD0kyTvNwKwPCAKLQSRVXhAAkhnxQOdBTFZCOA+tQ3c7iLis/
         4zhR+k12lvlkfTNE2ji5obJ4C0zrQaWXeY7/JVULM9193+KlGEEB2Q9TmgmogaJKRTfz
         6KZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768310572; x=1768915372;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8f9VuSjE116pi7iG6Wpon5XwC0RbZghgrAlkmtN02HE=;
        b=fsCnWzIoLkYzaCTQ440HjaJpsmV/Tfu/fXnEnajrINmzFYQ//j7bkWVr6tyOi8Y74q
         Bskk+TlNwmVTTQGjmdOxnUahl+cAQiuOZfzvEBDM/2D6l4Sbq3VgC4AYj6KTOwWV7ZgE
         EDXK2iiRMqeAASwB3n4p6DYe9aiXpOfE4RYD5s/k+s5Qn31CYHGNXH6dyvsUzUSuY3/Y
         i5V76IkpugkJCtX9RSfKYErs5fj5R4ptXyFvA9G3G5IC6HuQYgIYZmrXjhjhL5k7PusG
         D/MrB+XGTp9/5rQw4LRqv4BjlmXQ83zZzF3h6ijit1/nyQogIbYzWW7ld5eFK21Avu6H
         qUNw==
X-Forwarded-Encrypted: i=1; AJvYcCXNAZYFr0ntYN36dZ7seb7xFOtlWrvNvmror3eCfOENHgqQo53x55bnIvqbCJ/p3OruSFCVL9guGfME@vger.kernel.org
X-Gm-Message-State: AOJu0YygAORUB66yKKR5q/MbvW3iRA3n08RKVkw6VI8KUuk3hRAxDbDS
	dpvQbJXTx9HR15paVUBRkr/oTH7lkn0njSysHi3L6pljKgRnR19cjfK8
X-Gm-Gg: AY/fxX63QyN0R4z04qNpsyo+f+IS4A4Jwl39wbGM73U9HY9L1Sbkt/vfxn5+P5WX6Nt
	8un/p60HB61UvxcBc3LRaijyEgrHOCVk8MM+uKTEwf2DVIrg0ESY7g09XcFqs68OO/D75bgW6TO
	x6Z6uAMJJIoN0YB+en4rL5CEz6ZgS0mR1YaGxPmvdX27sRBkyai7R7RFzc4cVZe0bGBqKY5hMZE
	UmyB8TgSBd8iqh8ED9SGFY+/zaVIpbCkR6O9C3BND9nlzTJ5Y2ZR9bLiSAD7HtFgKOekFU7Lsnr
	LRKnXhzrZ48LWJxJyWq5HZJSvCOnBWsZG41ddlTNvEbwVuQkYugpT75AEqUUsH1S16qL5cS19CD
	8jlwD1EFpZcdU0EYrOYez67MpeNf/Bw0//jMBkfH4QGQNfStZUo2z7pgJUozo9OAOrp7WDVeZNv
	CLuFjVQjrVFETMmFutFxaS7HvLyVhpyA==
X-Google-Smtp-Source: AGHT+IEcabzDD5xlxV58lCKg2Qmkv0o5BSmhphbdVWQ6X70iZBjm/abogdhIEaKVgg6QLlTaimW3PQ==
X-Received: by 2002:a17:902:cecb:b0:2a0:8972:d8ca with SMTP id d9443c01a7336-2a3ee491c20mr198647775ad.35.1768310572390;
        Tue, 13 Jan 2026 05:22:52 -0800 (PST)
Received: from DESKTOP-P76LG1N.lan ([113.23.51.12])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c48be5sm203841475ad.30.2026.01.13.05.22.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 05:22:51 -0800 (PST)
From: Nam Tran <trannamatk@gmail.com>
To: lee@kernel.org
Cc: gregkh@linuxfoundation.org,
	pavel@kernel.org,
	rdunlap@infradead.org,
	christophe.jaillet@wanadoo.fr,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	linux-leds@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH v21 0/3] leds: add new LED driver for TI LP5812
Date: Tue, 13 Jan 2026 20:22:47 +0700
Message-Id: <20260113132247.36012-1-trannamatk@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260113124053.GA2842980@google.com>
References: <20260113124053.GA2842980@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Tue, 13 Jan 2026, Lee Jones wrote:

> On Sun, 11 Jan 2026, Nam Tran wrote:
> 
> > This patch series adds initial support for the TI LP5812,
> > a 4x3 matrix RGB LED driver with autonomous engine control.
> > This version provides a minimal, clean implementation focused
> > on core functionality only. The goal is to upstream a solid
> > foundation, with the expectation that additional features can
> > be added incrementally in future patches.
> > 
> > The driver integrates with the LED multicolor framework and
> > supports a set of basic sysfs interfaces for LED control and
> > chip management.
> > 
> > Signed-off-by: Nam Tran <trannamatk@gmail.com>
> 
> Still does not apply - which branch did you rebase this to?

I rebased this set onto linux-next, specifically:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git (master).

Please let me know if you would prefer it rebased onto a different branch.

Best regards,
Nam Tran

