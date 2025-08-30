Return-Path: <devicetree+bounces-210783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECBDB3CC7F
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 17:58:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38E7B563B78
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 15:58:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A65AC283145;
	Sat, 30 Aug 2025 15:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b="bysNEgtY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E247C284B2E
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 15:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756569520; cv=none; b=Wx5jpeNW9+g9F9qf6Ah71lhnfqgPEe5kwDgDPlo0JL9j0z/lpiyA9bdZMj+dxnZFnE37/Id6FyZ+S9SjKSQV02zosg0s/cmyEhfLx/yEucXH1WLJKvkXRxKwVQmJAG9SxNBTjSxzNrTrvGfFRSkKtrlhSva2tbwb+HCI4fo3f1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756569520; c=relaxed/simple;
	bh=M67VIf2LnguVOfjjJ2dtA/J6bLeW2cV6ngdi3Mm5Clw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ob3dwhO94ig4/fgxqFlkZM/H7MrDDi+kDci4TYefC53aIX6d5z6j/8YDYo2pZXSCECebZXDPu/GkAvtGsUCPWmhW6WpWSYpUUHtuMpxWgOq3EmUOFaQmpoIrMblI0uRQekESSF4J6PB/LIqb+fCjbSX8VjVJrgxjVwMRKdLMEnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk; spf=pass smtp.mailfrom=pinefeat.co.uk; dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b=bysNEgtY; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pinefeat.co.uk
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45b7d485173so17175515e9.0
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 08:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pinefeat.co.uk; s=google; t=1756569517; x=1757174317; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ABownbaUg3AHmPNhjojTuZnDvYFZmQNhHDZWniNlbg8=;
        b=bysNEgtYgSbsHJiiUGZjOwThxbjGYMd/WZkex1mNzeU6ThaRoNPW/vPzm34Acg4NB8
         7nh7K76OLRwm54ysx6oSNNTZzHTRY9RA0GV4XL6r/yT1Wv3cTurJ+Y3/Zj87Xz5L7Ogp
         L2a6w5z0QtykLw1H+6QGqp1e9OWS9TZzYefdrY5nxIkq0uE4hpK1QXNuIPlCqvS1SmHW
         v9uLxe59zcNHrUtwtus8KHPofKfma4yG2cxT2wODpobqcPusgCFUSGXsruCSSwejjlI5
         OZ9/WldoFvVrpQUJq8r/QlFVmJHOtP+JpOgWYTe8tNRtGKTdj7/Vu5+EP9d5hZVodFPS
         OGYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756569517; x=1757174317;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ABownbaUg3AHmPNhjojTuZnDvYFZmQNhHDZWniNlbg8=;
        b=lJp/P19oOMHqL/fofNEZJgXubBNa2jEewR9nwRWMNcSWsbcj5AFKx3T1BGsBODEhJt
         HyBCsaFBqV8/xCSraGgLghUwLSbsk66GDI6KphPQJkFv+3zzUmBJ9MR7sX074cmG5CzT
         5RDeeKdpBf7GIbMO2V7ELecc3IDZdNukbIzp2cyKc5yxFewM7CszRO+U9AgTYLJxN2SN
         /fGN+Qsls//tx/x+LFLQGt49zvbfFQbiicSaTdtJuqLXO/27ZNExwa1WMvbqMx11gXko
         WF/VL9e/nqj/Y4VX52+qZTS8Kmk+jy4HrvAdQOfPiWgU05uSFF24TNkAZDmNENWPy4pb
         IZwQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0XYTTRX9Jnt1zNd6gpQ7i1zpWj9AFF5eEwayTnHo7VF01zNY/6Z05ezTm8yNYPHX7Si1ZfiXQKQqo@vger.kernel.org
X-Gm-Message-State: AOJu0YzXOH6Flyv49EIZxOwLU6vcgrdNJQFcwUYQP/8XKlN+47NakuBC
	iNpf6FwbUhcBk8BORXeQaZ5rTKG26HqLX1yvaXa/6UT2iFbyN96Pbr6F/4dn6f2EdCM=
X-Gm-Gg: ASbGncsjgvWOv+gN/CLerk0d0Q+/y4QyNgFAniSqH9hXY2V/zQenrJ3Vjk4DCbcZrR1
	Kp+7cPg52i6q5hkKg69BX3UMFS/nI6mZX7uB1CLge+XWRP0wd25+TBIrvevwfbBQdCfumQZdluZ
	QckOWdljdr7fofYzky7iA2mONi9Zk0l/vMW/sqLPNjJ7192mnrKQFp7D2OIyvkcrdB7wvupJUSY
	tbFsq6dSM1K+DpIPnuXaWAo9yNRovYc2AOCfIQ4DlMqjWuDcWMs8sKkeV0ZDp10Lu3pylgFgdGo
	5tZhU4g7vpWwpPSqMRY2eeoM73y3Ov8JtMXG9J8mMxRy5aKOJmiypvnc2ItYP+RKeNEn7BY3tcT
	vEycGs41YSdFH1DcNwBam86kq60F+LStV/zpwMkZmPg==
X-Google-Smtp-Source: AGHT+IEDQidOEd9iz7Lacwhs555bnsIebla8gQ1GfjnC7hwy29HMkMsV1OD2J38Qij71+3dVPlwrBA==
X-Received: by 2002:a05:600c:1e8b:b0:45b:8324:d2fc with SMTP id 5b1f17b1804b1-45b8549c384mr19560285e9.0.1756569516942;
        Sat, 30 Aug 2025 08:58:36 -0700 (PDT)
Received: from asmirnov-G751JM.Home ([2a02:c7c:b28c:1f00:d876:81b2:f3c4:351b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf33fba9fbsm7711205f8f.50.2025.08.30.08.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 08:58:36 -0700 (PDT)
From: Aliaksandr Smirnou <asmirnou@pinefeat.co.uk>
To: krzk@kernel.org
Cc: asmirnou@pinefeat.co.uk,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	hverkuil@xs4all.nl,
	jacopo.mondi@ideasonboard.com,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	mchehab@kernel.org,
	robh@kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: Pinefeat cef168 lens control board
Date: Sat, 30 Aug 2025 16:58:36 +0100
Message-Id: <20250830155836.10254-1-asmirnou@pinefeat.co.uk>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <4eee57c0-a2fb-4fa7-bafe-e3a41c8954bd@kernel.org>
References: <4eee57c0-a2fb-4fa7-bafe-e3a41c8954bd@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Sat, 30 Aug 2025 15:21:46 +0200, Krzysztof Kozlowski wrote:
> b4 diff '<20250830111500.53169-2-asmirnou@pinefeat.co.uk>'
> Grabbing thread from
> lore.kernel.org/all/20250830111500.53169-2-asmirnou@pinefeat.co.uk/t.mbox.gz
> Checking for older revisions
> Grabbing search results from lore.kernel.org
> ---
> Analyzing 9 messages in the thread
> Could not find lower series to compare against.
> 
> You are not making it easier for us.

Sorry, I know how hard the reviewing process can be.

To compare the differences, the mbox files can be created manually
and then a range-diff can be run against the previous series revision.

b4 am -T '<20250822171041.7340-1-support@pinefeat.co.uk>'

b4 am -T '<20250830111500.53169-1-asmirnou@pinefeat.co.uk>'

b4 diff -m \
  v4_20250822_support_pinefeat_cef168_lens_control_board_driver.mbx \
  v4_20250830_asmirnou_pinefeat_cef168_lens_control_board_driver.mbx

Let me know if you'd prefer that I submit a v5 instead.

