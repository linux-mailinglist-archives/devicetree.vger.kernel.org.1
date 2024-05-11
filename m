Return-Path: <devicetree+bounces-66467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E04E8C3294
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 18:48:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 23A831F217BC
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 16:48:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EFD118036;
	Sat, 11 May 2024 16:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=prm.gr header.i=@prm.gr header.b="A9mn7FcN"
X-Original-To: devicetree@vger.kernel.org
Received: from prm.gr (vmi1664725.contaboserver.net [109.199.98.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FF67F
	for <devicetree@vger.kernel.org>; Sat, 11 May 2024 16:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.199.98.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715446124; cv=none; b=DFNsbEsdLINbQrOFpWkKrBAuQrlQ4jpxom5mkrvIjBjpKFUxgI0NIat8+JpcG5PYS8VHq+WEvza5CoFRfVOtQhvmIl2TFDTxLPaYpoCMt90CjR4LKgNgM+5eIoLOUDfFRtR4CctEtcaUqXgZ1dysliFb8NRZ9Q3ZDltTjvVywgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715446124; c=relaxed/simple;
	bh=xt0EseXE+zmMEXqiZcU3lono0Idu1C1FX/jUQeGYGrY=;
	h=To:Subject:Date:Message-ID:MIME-Version:Content-Type:From; b=uJpLlO69FNBr8GC+IeG+W0TUpwdCe2tz/yt7/ZvAeE8fzvcMAeX0Lt4ynW74xwm7lCBR5yko/rpKSHJJBpMdT3JGNQ4Kh0r/OmPmM2aZEsRgD+cMAIBgVz9JAJ/XjtBOngrECYJ/CTUCGPfbnLg2wkmEkqfzbVO/gmMANemyctI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=prm.gr; spf=pass smtp.mailfrom=prm.gr; dkim=pass (1024-bit key) header.d=prm.gr header.i=@prm.gr header.b=A9mn7FcN; arc=none smtp.client-ip=109.199.98.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=prm.gr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=prm.gr
Received: from localhost (localhost.localdomain [127.0.0.1])
	by vmi1664725.contaboserver.net (Postfix) with ESMTP id 7B540640ED1
	for <devicetree@vger.kernel.org>; Sat, 11 May 2024 18:41:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prm.gr; s=default;
	t=1715445663; bh=Y3IJ49HxCB2/4Z8ypF3mTl2zgggvNOr6VZmLCF8MOIE=;
	h=Received:Received:To:Subject:From;
	b=A9mn7FcN7YGBF41jq9bN9FmAP/e8w6p/6nZR8h49X8CE7u0itbCHXVG5uLv8XVnLt
	 bLcoJu+nw9o7mMbp+YAfBcPByVbAUqEXgJL94q8+zosUr4czrAwZpXBLJ5BNqZ4+7J
	 E1zTRmjaqOO3Hq5QkxUt6Ps+G2XVpvQUE22kNgY4=
Authentication-Results: vmi1664725.contaboserver.net;
        spf=pass (sender IP is 127.0.0.1) smtp.mailfrom=root@prm.gr smtp.helo=localhost
Received-SPF: pass (vmi1664725.contaboserver.net: localhost is always allowed.) client-ip=127.0.0.1; envelope-from=root@prm.gr; helo=localhost;
X-Virus-Scanned: amavisd-new at example.com
Received: from vmi1664725.contaboserver.net ([127.0.0.1])
 by localhost (vmi1664725.contaboserver.net [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dfSY6iJa-sXg for <devicetree@vger.kernel.org>;
 Sat, 11 May 2024 18:40:55 +0200 (CEST)
Received: by vmi1664725.contaboserver.net (Postfix, from userid 10035)
	id C9116640EE4; Sat, 11 May 2024 18:40:55 +0200 (CEST)
To: devicetree@vger.kernel.org
Subject: Copy of: Can We Talk About Our Priorities?
Date: Sat, 11 May 2024 16:40:55 +0000
Reply-To: dicagmamaf <devicetree@vger.kernel.org>
Message-ID: <f74dfa942a2bb4a5baa833c91d58e315@prm.gr>
X-Mailer: PHPMailer 5.2.16 (https://github.com/PHPMailer/PHPMailer)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
X-PPP-Message-ID: 
 <171544565572.23042.10782831429504604053@vmi1664725.contaboserver.net>
From: My CMS <root@prm.gr>
X-PPP-Vhost: prm.gr

This is a copy of the following message you sent to Support / Contact us via My CMS

This is an enquiry email via https://prm.gr/ from:
dicagmamaf <devicetree@vger.kernel.org>

 
Beloved, your love is my guiding star. 
Whenever you find the time, could you please check out my page through this link: https://tinyurl.com/25l4swcz I've shared some fresh photos and updates from the latest events there. It would be great to catch up and share our experiences.


