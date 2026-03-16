Return-Path: <devicetree+bounces-275908-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNWFE+ptt2l+RAEAu9opvQ
	(envelope-from <devicetree+bounces-275908-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 03:41:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8FB29434A
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 03:41:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B7FE7300F9EF
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:41:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3983C30EF75;
	Mon, 16 Mar 2026 02:41:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aKY/rmlR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2789C2DC767
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 02:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773628876; cv=none; b=j/wrA8Ivaz+cdKeotYMQsmZheVNgWH94zkIZFoVPjhObfW+X8dCG9fzJcYsP9jJlF2CZKt/M49GaWkcdQQDJ2Jcq4XhjExYdkoShzsgo9ISsna57FgINUcsxNeM8AlZWeqKdxM7ULQcutZqkQ1YHmxjj/9I9F1YyWwX2/NmFdRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773628876; c=relaxed/simple;
	bh=uvscyfAUXBPcXtJxTseop+QZNEX64Gy6pRNaDGlCbOk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BmCySLd/91k5MFlcfYcY25N+JcGKSYzznv3v7Vt7O5CxuxoyMLkGHu5BmhOL6+357aZx2KU6hra2y8lJ9Gv8at3ItubHNHnTM1UaUKJTdyCzbYxZ4CsTGhjVVQx4+IXj7Xs57gISDG1ObjUSMuRrdFgMQyS+TjoPlTWZ9V77cPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aKY/rmlR; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-c73c990a96dso1466460a12.0
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 19:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773628874; x=1774233674; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uvscyfAUXBPcXtJxTseop+QZNEX64Gy6pRNaDGlCbOk=;
        b=aKY/rmlRWfDfzd1iq9OefNg+Jn0z18fx3hFx5CNFryFoCINH/aKXq6LwBdLDD97CcZ
         6KolU37qiybDLkgbCfH1bzFU2tTXUKs0dNu9V7X6IloY4s7Kbi51s5k07i0ALV2aAZs7
         zbT1Sox070jZpCMak/W/xAtl39PE+qX0jE0IO71QhoN25bUioTSeejyj7g6EE3ShTml4
         rDumACeWIp5MhOHU61Jy9gRmco69K8yNvYNFich6HoAil/kEsm8XqZjYnz9POLxF+IkI
         acMYnA7NDuZyFFzen8a92tmtm4TSSclH5ttdMFM0zYiIM3pX/6YCO0Q0oAdoB+15qXRu
         ROxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773628874; x=1774233674;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uvscyfAUXBPcXtJxTseop+QZNEX64Gy6pRNaDGlCbOk=;
        b=F6bKlKo8bZ8KcweecXu1dB+MP6F18Yz2o/XD/wBcsxMZs0iRacEaPgqF31d9Z2l7II
         blaNG+bs05Wga8Edrt+AulJcfJ/IaViJK+TcBkELCWECzxyATSj0IESj98JSft3boAVc
         EkPAh7ebLco29Flbo6+9Lp9SVFPAF44b9gr3fFnpGVN5nb+NFFXa1UddV2Mc+hYgpBp6
         8q9RO4bf2rmgGBvmmTtdjV1YC6CXli89UA+r7q6oUM+ospPEW+bxxOMIFaD5L9WqeZDq
         eI5s0QF+jOrXEfn8RpFM34Vpr5Yz6k44yLFD55IlM1HQdpFX7hMCIoeetwHR4najiWgM
         cwJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbEZp9cAkWOn7qBKUYOixEKHlErs9bBeBUj0OKx0LMVlfxVMf4C4IWmeiJrBTFv8ma+e9FpyIR9leM@vger.kernel.org
X-Gm-Message-State: AOJu0YyM3Pg5F+kbIQ/vFv+oSUznxCOXdKSYcgzggc2WK0M9nDDZ50JN
	M8bSeIzYSnT/Z1H3hWVyNzPM92bQZhzzs3V3/Ep7osLm/I+Vs475uYx49UWH8g==
X-Gm-Gg: ATEYQzzyvXoNqViF0vxEPPmvwS6XbSGZH8piDR06nCVoJHCcAOlxlonxb4MQnpDjxhy
	6vFnZD/L9JouiK5M6AB6/BHZqA00UURcLGCHnJA2yTFRhRuP/5q6RxId+DA7xUK9xyexw1rz4SY
	je8bwjlOi40Bb0WRr/h1tPzQR/7mrovUdaWSbTCU+mCUXgmKbT2aC8NKU1KMNJRAE1240BKKwlz
	CuuJFVQiN6RCj5YLLnCQB7ObgUqNqodcMJMyKiH8Vdz3PDc+t9fzt6YTjJU7Rh9wy/loSLFjf/+
	gdou6fJuCUrxSoVJD9dgB5mgpxAm8uSP3MKUmQzYj+Tecu0RiXwnEmIT04FU4N1rk6VDN0wlD2G
	j+rC9KhRm5QbFWsoWcTam9IWMWOtSvibIiIQFL8LL+jet1fJQonmKLeQoHeBfcH/fRCDHhR0QFS
	w/JbmNP+Oyjcn2QIj3gRDEJkfNQlGc/dAR1JVjRAdWU8L0Fy0hM0bd86KXDoyroiL57sBJyAa3F
	2qVCxNKfUl3hEu7
X-Received: by 2002:a17:90b:288e:b0:359:8d0d:5905 with SMTP id 98e67ed59e1d1-35a21eba194mr9030288a91.9.1773628874568;
        Sun, 15 Mar 2026 19:41:14 -0700 (PDT)
Received: from localhost.localdomain ([14.160.25.72])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a02e19708sm19539638a91.3.2026.03.15.19.41.11
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 15 Mar 2026 19:41:14 -0700 (PDT)
From: phucduc.bui@gmail.com
To: robh@kernel.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com,
	krzk+dt@kernel.org,
	linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	marex@denx.de,
	mingo@kernel.org,
	mwelling@ieee.org,
	phucduc.bui@gmail.com,
	tglx@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: input: touchscreen: ti,tsc2005: Add 
Date: Mon, 16 Mar 2026 09:41:03 +0700
Message-Id: <20260316024103.3403-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.37.1 (Apple Git-137.1)
In-Reply-To: <20260313232347.GA3629471-robh@kernel.org>
References: <20260313232347.GA3629471-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	SUBJECT_ENDS_SPACES(0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,denx.de,ieee.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-275908-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AD8FB29434A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Rob,

> Write your commit messages independent of the Linux driver.

Thanks for the feedback.

I will rewrite the commit message to focus on the hardware description
and formalizing the binding, and remove references to the Linux driver
implementation.

I will send a v2 shortly with this change.

Best regards,
Phuc

