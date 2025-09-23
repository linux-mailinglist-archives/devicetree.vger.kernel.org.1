Return-Path: <devicetree+bounces-220588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A38EB97DBE
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 02:22:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 381ED19C4603
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 00:22:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C3381F5F6;
	Wed, 24 Sep 2025 00:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=maguitec.com.mx header.i=@maguitec.com.mx header.b="RK6w7wKZ"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-g3-154.zohomail360.com (sender4-g3-154.zohomail360.com [136.143.188.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD0F415D1
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 00:22:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.154
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758673334; cv=pass; b=BQZo1DDWKI5Zu4W3RbvZcXYdvuOffmhRhWheiS6Mwv77kRRIO7oxh4Um4ecmfRgUbdOQMUMGelVSH70aKshsShSMKqzUPPFPubnl50kyeij8ZyKNDkWd4kfDDXoW5fNO7SzWMpy7ebCMlel3bjZvhf1QeCkVPPl4n8VfZm/vb1w=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758673334; c=relaxed/simple;
	bh=eKvm/1k04qE7GG7xWay32yAC1oRDoUpnzxFgvrFUTRk=;
	h=Date:From:To:Message-ID:Subject:MIME-Version:Content-Type; b=ChXxifx+gBrzgEDc1PixYw0Pu9/qlkoIQanyML/hTJPx95q9FsuW90BFt8w3zfiU+uwHa/DhDHmTMKHHOpCXmxFK611ImtGCOcMDz3omKnL/yxy2dAaJc8FVInr/Go82okOf4zy8JbAl7E/HEoSkeIfYHBtjyH5W8ttvXkEz1No=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=maguitec.com.mx; spf=pass smtp.mailfrom=bounce-zem.maguitec.com.mx; dkim=pass (1024-bit key) header.d=maguitec.com.mx header.i=@maguitec.com.mx header.b=RK6w7wKZ; arc=pass smtp.client-ip=136.143.188.154
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=maguitec.com.mx
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bounce-zem.maguitec.com.mx
ARC-Seal: i=1; a=rsa-sha256; t=1758673331; cv=none; 
	d=us.zohomail360.com; s=zohoarc; 
	b=Sgj49pQy8pMcCp3s7haLLqfpftNB7Z34VJeq8qvptrdwqyWrGKGw0Ttdt2r3uMh3zhRAgqD0rH6l+hVysRvsrU8Kfwt98M01MbRBnglbA9/rsBWXKBgasHt/OHeWGfIl4qOrUYbvrQVLX4KiaKBKS2JA7CphvtspEku5LzFzjQ8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=us.zohomail360.com; s=zohoarc; 
	t=1758673331; h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:MIME-Version:Message-ID:Reply-To:Reply-To:Subject:Subject:To:To:Message-Id:Cc; 
	bh=eKvm/1k04qE7GG7xWay32yAC1oRDoUpnzxFgvrFUTRk=; 
	b=C+b8SAq7As6tyddpW3jd6dtc9LzBxAxR4cxO+yYg0vbg9cmQJ/PCS+ZOuw5joKrbCPIMddYaDz+ia56ZHLS28KyKkEKStRMEBzRbD51XNiEB4NiwCaFvXEuRTT3YRCRR8N2Q6S4I+mi8djX9mgxN7ok59e8eVEoiv+dC6rbrcgA=
ARC-Authentication-Results: i=1; mx.us.zohomail360.com;
	dkim=pass  header.i=maguitec.com.mx;
	spf=pass  smtp.mailfrom=investorrelations+6a8f6b61-98d7-11f0-9ce0-52540088df93_vt1@bounce-zem.maguitec.com.mx;
	dmarc=pass header.from=<investorrelations@maguitec.com.mx>
Received: by mx.zohomail.com with SMTPS id 1758671143518873.1371059431344;
	Tue, 23 Sep 2025 16:45:43 -0700 (PDT)
DKIM-Signature: a=rsa-sha256; b=RK6w7wKZgn2IlQ45w+Gs8T0tBlFhIHOHsj4rfxsLPKkINkL9dQ+s5OCOSfzX0ygGnxxyuEkK11tgZXOvUIO4ZfT1+pHVTWzSlqnTB8SB8vMFAqb39BBO2Xwi7R8DBDuebMqNlyor3TsNZ7J0UOUWKN3++E9sR1P/DaorvOJL1GY=; c=relaxed/relaxed; s=15205840; d=maguitec.com.mx; v=1; bh=eKvm/1k04qE7GG7xWay32yAC1oRDoUpnzxFgvrFUTRk=; h=date:from:reply-to:to:message-id:subject:mime-version:content-type:content-transfer-encoding:date:from:reply-to:to:message-id:subject;
Date: Tue, 23 Sep 2025 16:45:43 -0700 (PDT)
From: Al Sayyid Sultan <investorrelations@maguitec.com.mx>
Reply-To: investorrelations@alhaitham-investment.ae
To: devicetree@vger.kernel.org
Message-ID: <2d6f.1aedd99b146bc1ac.m1.6a8f6b61-98d7-11f0-9ce0-52540088df93.19978f7fd16@bounce-zem.maguitec.com.mx>
Subject: Thematic Funds Letter Of Intent
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
content-transfer-encoding-Orig: quoted-printable
content-type-Orig: text/plain;\r\n\tcharset="utf-8"
Original-Envelope-Id: 2d6f.1aedd99b146bc1ac.m1.6a8f6b61-98d7-11f0-9ce0-52540088df93.19978f7fd16
X-JID: 2d6f.1aedd99b146bc1ac.s1.6a8f6b61-98d7-11f0-9ce0-52540088df93.19978f7fd16
TM-MAIL-JID: 2d6f.1aedd99b146bc1ac.m1.6a8f6b61-98d7-11f0-9ce0-52540088df93.19978f7fd16
X-App-Message-ID: 2d6f.1aedd99b146bc1ac.m1.6a8f6b61-98d7-11f0-9ce0-52540088df93.19978f7fd16
X-Report-Abuse: <abuse+2d6f.1aedd99b146bc1ac.m1.6a8f6b61-98d7-11f0-9ce0-52540088df93.19978f7fd16@zeptomail.com>
X-ZohoMailClient: External

To: devicetree@vger.kernel.org
Date: 24-09-2025
Thematic Funds Letter Of Intent

It's a pleasure to connect with you

Having been referred to your investment by my team, we would be=20
honored to review your available investment projects for onward=20
referral to my principal investors who can allocate capital for=20
the financing of it.

kindly advise at your convenience

Best Regards,

Respectfully,
Al Sayyid Sultan Yarub Al Busaidi
Director

