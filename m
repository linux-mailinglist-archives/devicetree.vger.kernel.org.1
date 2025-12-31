Return-Path: <devicetree+bounces-250783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 72762CEBCC4
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:36:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3F2223032733
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 10:36:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED8283164C3;
	Wed, 31 Dec 2025 10:36:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=seu.edu.cn header.i=@seu.edu.cn header.b="UbXtyj2s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com [101.71.155.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8DE131353D;
	Wed, 31 Dec 2025 10:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767177362; cv=none; b=C91AgGVhy74rAyGjZU3mdByeoSrPuEGvLPwpuWc5WYaJQhpWYCEi4AEazt+awG34w1D0as7qT4kPrCIu6AkscpTE5d3Z5Jvina5V79rD+BL5KTMkY3yqA9U6LAwlw1EO0krLB0hY/ZHbzWA7MuLewWKzJ+AsiLwPrxy5kWtb2jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767177362; c=relaxed/simple;
	bh=nF1I77YrnCsakhxLBrgjAkUdrnI044oKw96LEnFZ1fo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YIq033J2NG2VwgFEHyYpzv4YK6OLfqdIYq6g1erx182InCBgli8LYznQD/kO4Vb+D09vkQ3zIZu+Fi3xqKi3LgfmDGQuTDkHqjT3tr8v260QOLqP/MRnR7S4Z5LCqfiZO32jN8Rf9YMXvFXRu0m7ZTlbX9Snpv10Szol7ODuBPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=seu.edu.cn; spf=pass smtp.mailfrom=seu.edu.cn; dkim=pass (1024-bit key) header.d=seu.edu.cn header.i=@seu.edu.cn header.b=UbXtyj2s; arc=none smtp.client-ip=101.71.155.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=seu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=seu.edu.cn
Received: from LAPTOP-N070L597.localdomain (unknown [58.241.16.34])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2f26a62c6;
	Wed, 31 Dec 2025 18:35:47 +0800 (GMT+08:00)
From: Zilin Guan <zilin@seu.edu.cn>
To: robh@kernel.org
Cc: devicetree@vger.kernel.org,
	jianhao.xu@seu.edu.cn,
	linux-kernel@vger.kernel.org,
	saravanak@google.com,
	zilin@seu.edu.cn
Subject: Re: [PATCH] of: unittest: Fix memory leak in unittest_data_add()
Date: Wed, 31 Dec 2025 10:35:45 +0000
Message-Id: <20251231103545.191347-1-zilin@seu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251230180945.GA885892-robh@kernel.org>
References: <20251230180945.GA885892-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9b73fa620603a1kunm77d3380c19c78f
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaS0sdVh9LTU1OGU5ISEJMTFYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlOQ1VJT0pVSk1VSE9ZV1kWGg8SFR0UWUFZT0tIVUJCSU5LVUpLS1VKQktCWQ
	Y+
DKIM-Signature: a=rsa-sha256;
	b=UbXtyj2s+UQ2+F5JrDTVGUI8t9sZKVCkZoZNUmS0BERcbVIHLiRbjWNcUSzaUDeymRWDrMIzXqlfW//tYTjM2vu0F8qHIddfD5dtNL4UYaOsPLyKxmAWNJKfPRdxzVUekF0onNYI9sJNfvqlUZEmyqEQREcen3NMYMnIWPcMUEs=; s=default; c=relaxed/relaxed; d=seu.edu.cn; v=1;
	bh=PLrYCFl3m+wlFaz3XHFIJ8p6WXO7meaei/HXqDA2GvI=;
	h=date:mime-version:subject:message-id:from;

On Tue, Dec 30, 2025 at 12:09:45PM -0600, Rob Herring wrote:
> Please change the function to use cleanup.h instead so this bug can't 
> happen again.

Hi Rob,

Thanks for your review and suggestion.

I will update the code to use cleanup.h as suggested and send a v2 patch 
soon.

Best regards,
Zilin Guan

