Return-Path: <devicetree+bounces-187780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C2280AE1574
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 10:08:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5673E19E5326
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 08:08:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47F0823496B;
	Fri, 20 Jun 2025 08:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iDxLcvrA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34E622A7FD
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 08:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750406833; cv=none; b=Wn/6yO2BW1l9aguhlHQ39wbmkXgyJLo5AfmLXftZhIKPfBkP3SJradJAwh/rcWHtbGPywWitajg0ZDdcfbB+ONfsKsR4Y4BPn3sGDGTKGD4zYwCPLzzBysoN/3bv6TwLbV6SmjJEvLo057u/XjxdwTwmtraYZpzfPl41ALYpAzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750406833; c=relaxed/simple;
	bh=F6v7yt+WHLYZQe22aUeXRbcqbmaFrCozvMHF3YGvddU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cegLySg9kfsJWkizS2pZZ1Ex/uR7Q4J2k762sH3vUaeRJNCbn0YXm+8MD3eh+WiCuVEl462Zw85N6KwX7+mtLoownsvpzh3IlH0xvfkXvfWTuKYgyWE7QnXmHCvn5j1l+RWhU13unLiX3fByyI1oWlXegUmZfNRUPJeU9QeqFrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iDxLcvrA; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-b31f22d706aso339687a12.0
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 01:07:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750406831; x=1751011631; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=izgpPDBzBHrAcs5q52taOSNvQPwl8P5JwuVWlGXOGdw=;
        b=iDxLcvrAkdo5FtbiG8apWFa5memY7H5fF6PSp0UX+vG4BhMYvFa3CHvA7bXX+XGF04
         d8L6CUDUFD5dIqSuauFOMiK01H5wh+fYfQ0ITlTWHGddmikV38nOUyzNMBVRePAR6pMS
         hXFqZqh75pNStZodGlv/nsQb+BCIpE6T7gzY6wBvpPhxN/8w4rrXYsHllLOYQxWchntt
         n0OlBaN/SDHCfEyTROy9U/qH0SkswrqoX4tUsySwQb0tg96KAq854c+VmAmgodEDX28A
         yd/FocuyfbtXw5qARixAkxWvOWvTBMfXuQp63rnTeT7osMGrLGjqIM92QcdQkxBIR/PQ
         Uktg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750406831; x=1751011631;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=izgpPDBzBHrAcs5q52taOSNvQPwl8P5JwuVWlGXOGdw=;
        b=wLF+Q1SOBGn7ZcpppbYEryUv3tVnERk8sYV6TXxAaoE/p+2GqBRRSnqSB3NdNDBkfr
         M4hu5lLqjSPtdWKGQvLHrQAFmVYUGE2kw6NYxnVdZGq5MQ5dJEQh54v6+1rbV1yLGmFy
         ugDwfLYmwdYPY6JPc8D6cFiSYK+f6xiDSCTSwY+xhznCn2CnbrB7eqoQgHmorVkGoP8g
         eF4hq1PsFd3KcafjANZ0d+LBRrVR9BCNkCKHt9anZfu9kHusHLkphRauHG49HX+gN0dX
         UvpKAP/mesWpXpqhlYnelViDhx1MFoGuITVNHNy580PJ6oJxGIpvLN5pECFigWExrnsJ
         MW3w==
X-Forwarded-Encrypted: i=1; AJvYcCXOcBIUf8/SMI6RhcNyhdc5cOYW3QEgcmvQdg2QS3OnvDKMATrCmn50UTyP4iqTL+jvz7kxGOORxzdJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyWXM6UnSwtjbackogoiwBNAgxK1c8RL7MHSe3dfdxWXzuqHgpa
	Ba3lRFYeKzB6GjC5f10iizuW2AUWuRwd+hm3sLIu7q9jmMaCCHGG4K1N
X-Gm-Gg: ASbGnctrANno07+RbaW0g0YJKhwnpn6jVgbcBfBcqNtlzPoUk2aF3sX6/CprBkMXOJm
	y9upsbOT1q/eRh1DT+pUqTd/dqyWGHnobkv9o5m01mimljsyuZLGZJvw3CMFLxyptDl9koR+re1
	AxhXGxDq7TRvZbW73U4MgoOP4SKes62WxZnl/UzV8L9n/rhbiPgPdmEspZG2ME2Y1Xr7t5PHcCM
	cBO9ADP4ewvB4dzTJltLCL7Pyae9XWt7VFCT6kaMgmtprYhWtQgqAGxhtlhSh2XSVY6KrAQnVTr
	uPZ1s9GFU/VTU8b7NkFMGrZ9/hwX7Q8KHTN3qrxDSRxPs1HyLdDwkS9eQ1l5YjP4U2b1tk2HhgQ
	OkLUCa70dtu/zUetqDCoNjAbQHz9S37HfL+jsXBD8nlizRDPKtg==
X-Google-Smtp-Source: AGHT+IGZ28Gk3K6wdn1WwdyWs4HcB6Xru+0lJb7lTiOcl65kF27qYFbjRivbkZVHnbg6zqSnyFYXcA==
X-Received: by 2002:a17:90b:2748:b0:313:d346:f347 with SMTP id 98e67ed59e1d1-3159d911708mr2985529a91.35.1750406830929;
        Fri, 20 Jun 2025 01:07:10 -0700 (PDT)
Received: from lcwang-Precision-3630-Tower.. (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3159df71d49sm1092688a91.5.2025.06.20.01.07.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 01:07:10 -0700 (PDT)
From: LiangCheng Wang <zaq14760@gmail.com>
To: krzk@kernel.org
Cc: drm@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	noralf@tronnes.org,
	robh+dt@kernel.org,
	conor@kernel.org,
	zaq14760@gmail.com,
	onlywig@gmail.com,
	cip-dev@lists.cip-project.org
Subject: Re: [PATCH v2 3/3] dt-bindings: display: Add MAYQUEEN PIXPAPER e-ink panel
Date: Fri, 20 Jun 2025 16:06:30 +0800
Message-Id: <20250620080629.743266-1-zaq14760@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <615522b2-544f-487d-aeb1-5ba069c322cd@kernel.org>
References: <615522b2-544f-487d-aeb1-5ba069c322cd@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Dear Krzysztof,

Thank you very much for your review and feedback.
I sincerely apologize for the issue with my emails bouncing.
As a newcomer to using `git send-email`, I was unaware of this problem,
particularly because I did not receive any bounce notifications in my Gmail inbox or spam folder.
This made it difficult for me to identify the issue promptly.

Following your advice, I am migrating my driver development to the latest kernel (e.g., v6.12)
and will use the `get_maintainer.pl` script from that kernel to ensure the correct Cc list.
I am also reviewing my `git send-email` configuration to prevent further email delivery issues.

Could you kindly provide more details about the email bounce issue, such as specific error messages,
problematic recipient addresses, or any other relevant information?
This would help me pinpoint and resolve the issue more effectively.
Additionally, if you have any tips on configuring `git send-email`
or the patch submission process, I would greatly appreciate your guidance.

I apologize again for any inconvenience caused and look forward to your further advice.

Best regards,  
LiangCheng Wang

