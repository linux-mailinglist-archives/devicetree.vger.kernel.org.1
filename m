Return-Path: <devicetree+bounces-222869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 672D8BAEB76
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 00:55:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 05FFA189DFD9
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 22:56:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3736F2D12F5;
	Tue, 30 Sep 2025 22:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="N3K9R98n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DEAD2C21FB
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 22:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759272940; cv=none; b=D7wj3naD5UfL981JokeGDgWN2aQFT/ezBYnVtEW/LfVdtduzXZHNt66RlM45mtEWog/yN3RVIT76jRDmEr6tAxlSQzB2Ux09WL3STEDP7osBRyA/ciUAk2HGf1Cf0I/ZLC6BnRaq60BMm00LXhgOdnnAIgABtJ6AM46bzFmn9t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759272940; c=relaxed/simple;
	bh=yVA9Jz0NaEGwNdHklt155W5PzrBW3E/ulBCRYzSYVKM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MW/VAxzzj0AtgVDpT19X/Ik1FES3f3wWsscbTLBg4d9688wwfgCp8wktNyD99V3fM3Ds6QvCPKqfycuf8n0BuJDmLsm9NroZlJjJrMCv/6MgWfQh7+wLjFIkc4n6lOBkc/qFf8XYsQ8+nT2jj9f2ewknbuRu5y54KyuYB9PhtkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=N3K9R98n; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3ee64bc6b90so4094069f8f.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 15:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759272937; x=1759877737; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yVA9Jz0NaEGwNdHklt155W5PzrBW3E/ulBCRYzSYVKM=;
        b=N3K9R98nxGxOF7OnWp7haHEZxY0ov7TQ9GKSMdYDU2gI/juQyD3zvWoHQ1utwBq1f9
         GrzMcfiOmQn0D7Mmj5ymg+alkn/QqL6AKSMo7gAQvsg21RYlcc72VZRuQ43yMmrHfzSY
         8coKBMDv4HpD7EOemzjWVlHT0gADklB+Fa/gMYphsUDatGFNIoDnWroUcP74Zr3Jm0hU
         weT9qkNVyFo/TA98OQDPx2z31TgaF95c4OI0DGxjY7lx3uX8WlyQItJYYESh0mSVm5x8
         zpCiye6Fv4oyNMdNxESSpW2YW0QRbWZ+oGwfTJKKLnUPJr3vRFsdAesiXeUBlVlzAYX4
         8zwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759272937; x=1759877737;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yVA9Jz0NaEGwNdHklt155W5PzrBW3E/ulBCRYzSYVKM=;
        b=WZeCCzkpWcpdN7QTMowIQQ63iX8cQH+9/VBWZgWcN2RpzMGhwYpa5wU9NzizkUJq9s
         U4OOVoj9SQ71KiaEsP/gZFxauigaLAtveQIVngTiEWNznN1galFZCWiSmnKEMTNNGZzu
         2sEBwEmM/NLW2SfrhMphVDC38nHXPhzR8e4QnQauZdoqPdRikpeCQ0MSKKc0ltbvplrH
         q9BTDvt1+wawlClzJ55mz/UjOX4u3uG3rYODqSW9IEZQipp3ZwpKRre/RFFwUZcrgCfn
         SsiNJnlzmrQiJmjekg+z2dMKK/iN5e+l7F69mWLuMCSt7ZmGyeExw5StTvJHJtd/3thU
         Me5g==
X-Gm-Message-State: AOJu0Ywz8iS7tpFpNHxjBWkdZJcy8V5ughXBEm5c3/ICk9asbvJVGKo6
	vQihugoVYkoWIgaXUjVjoVOaSEPkaZtV2BahxWaZ+ocJF5/DF8ioKTQNtK5WWX0FK+WPWtxdczU
	48stVHnlYX/baje+bY48JjaDss4QiDYQZsNRQi34k
X-Gm-Gg: ASbGncu28u5BLZLFx8xjNxstjFFgbmDeHeglvn7BfmnNAG9+mngTSo8xNlL+gkS/9wW
	9M8sMsySHN7JFuQ8m8pqqfPsvhQe2G9A8h7aLbcr5vNEZ0Pjxd9j6CtoEhIWAxfs8WGRR86gLwL
	E3bPN+7s/ZvUVVISLg9wEb9eJA7SUTiYHYiwrvpEat9b1MB2LGcV6bLzWrosqdqxOjZsybJcB/Q
	BzcGusys5lluAATAByYsC4NCQKMEhop4buOEIiZnZB2y8htJ/2Ai5AZM8rkayoUQ49wrEHeLdsV
	442Z5srabCxORQ==
X-Google-Smtp-Source: AGHT+IGHRuxtWgut0Vzt6PdinBJDWxg9G0yj04Jszjbv4ItQ3wbJzXeBdiQBzEdeuLcKh8ZuTRqv06sC4HCq3f+U5jQ=
X-Received: by 2002:a05:6000:420a:b0:3ee:114f:f89f with SMTP id
 ffacd0b85a97d-425577f1bf9mr975463f8f.15.1759272936532; Tue, 30 Sep 2025
 15:55:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250930012352.413066-1-jthies@google.com> <20250930012352.413066-2-jthies@google.com>
 <175920697975.1402374.5817792319376446761.robh@kernel.org>
In-Reply-To: <175920697975.1402374.5817792319376446761.robh@kernel.org>
From: Jameson Thies <jthies@google.com>
Date: Tue, 30 Sep 2025 15:55:24 -0700
X-Gm-Features: AS18NWBGGK3TvBvWwAKJGudm0q5uvJFaU-KF4NSgxPec6eL4jZqolX0Co6k50AA
Message-ID: <CAMFSAReZA3=VH+c2H3xA-ojhBnEEp8wxySFwUuKLq+6k47AA4g@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] dt-bindings: chrome: Add Cros EC UCSI driver
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, bleung@chromium.org, 
	heikki.krogerus@linux.intel.com, ukaszb@chromium.org, 
	linux-usb@vger.kernel.org, akuchynski@chromium.org, tzungbi@kernel.org, 
	krzk+dt@kernel.org, linux-kernel@vger.kernel.org, abhishekpandit@chromium.org, 
	chrome-platform@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

> My bot found errors running 'make dt_binding_check' on your patch:

Thanks for catching this. I did run "make dt_binding_check
DT_SCHEMA_FILES=google,cros-ec-ucsi.yaml" to check the newly added
yaml file. But I didn't check google,cros-ec.yaml or any of the DTS
files with "make dtbs_check" so I missed this regression. I'll follow
up with a v2 series and test all bindings with "make dt_binding_check"
and "make dtbs_check".

