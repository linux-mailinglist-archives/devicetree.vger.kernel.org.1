Return-Path: <devicetree+bounces-117151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1279B530F
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 21:07:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B20C12844AB
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 20:07:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABCE2205ADF;
	Tue, 29 Oct 2024 20:07:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx-n07.wc1.phx1.stabletransit.com (mx-n07.wc1.phx1.stabletransit.com [207.246.241.253])
	by smtp.subspace.kernel.org (Postfix) with SMTP id B7A491940B3
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 20:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=207.246.241.253
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730232435; cv=none; b=Kk6Ld648x0f87DzRSzJfgqToAAgJRzBTm/nVW/JCK2HH5FX/bhXMuORA4rjxPir/uAr8FT6mutXaClvfrAYHLP+KDLXohf7mseodLVVvNJsTvCzWALQYDDbVlwK0ymnTFg+dJr2zY+oJTQNMxnbjkb3r5jLF5qtgiUalZtDxIpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730232435; c=relaxed/simple;
	bh=tSkRrDKIi4EBVAo3UJpMj5bMjkv8BWT9AWooChtCVQw=;
	h=To:Subject:Date:From:Message-ID:MIME-Version:Content-Type; b=khSKx7Smvn3XZ0NG7K2PNqbL4s5aF6eZ+wx3fJaDIcCbyy15uv/azNFzK2YwihPC/IMkJMf6ztWkhpPJIpmFkyJ1TM7q2MAlfCMFVf/Envhn6XVInd++Fp8xC/ISex+ZobqF/4HlcJI2zeczyye4LO+iuG1rB5cZGIc9g8QjAAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=yoursiteworks.net; spf=none smtp.mailfrom=yoursiteworks.net; arc=none smtp.client-ip=207.246.241.253
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=yoursiteworks.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=yoursiteworks.net
Received: by mx-n07.wc1.phx1.stabletransit.com (Postfix, from userid 115)
	id D89261ACCE6; Tue, 29 Oct 2024 15:00:43 -0500 (CDT)
X-Spam-Level: *
X-Spam-Virus: No
Received: from php-v418.wc1.phx1.stabletransit.com (unknown [10.40.206.44])
	by mx-n07.wc1.phx1.stabletransit.com (Postfix) with ESMTP id 907A31ACCA8
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 15:00:42 -0500 (CDT)
Received: from cs_web_edvpc8ymwqu9 (uid 3167726)
	(envelope-from marc.cornish@yoursiteworks.net)
	id 6037d
	by php-v418.wc1.phx1.stabletransit.com (DragonFly Mail Agent v0.13);
	Tue, 29 Oct 2024 15:00:42 -0500
To: devicetree@vger.kernel.org
Subject: =?us-ascii?Q?Welcome_to_yoursiteworks.net_You're_moments_awa?=
 =?us-ascii?Q?y_from_making_your_site_work_for_you.?=
X-PHP-Originating-Script: 3167727:PHPMailer.php
Date: Tue, 29 Oct 2024 20:00:42 +0000
From: "Marc C - yoursiteworks.net" <marc.cornish@yoursiteworks.net>
Reply-To: marc.cornish@yoursiteworks.net
Message-ID: <FUlZgKxdxlyk6YuH5dG76uygs8ONHoifWHkcc5mtloE@www.yoursiteworks.net>
X-Mailer: WPMailSMTP/Mailer/mail 3.10.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8

Hey Your account has been dormant for 364 days. To prevent deletion and claim your balance, please sign in and request a payout within 24 hours. For support, visit our Telegram group: https://telegra.ph/2CydA3vPY0-10-29!

Thanks for reaching out to us. We'll be in touch shortly to schedule some time to discuss your web design, hosting, and maintenance needs. We have prebuilt packages and custom solutions to fit every need and budget.

Now is a great time to start thinking about what you want to be getting out of your website. Do you want more sales? Are you trying to promote a personal brand? Is your following large but isolated on one platform? We will want to know what your biggest challenge is so we can help you overcome it.

We'll talking about this with you more very soon!

Thanks,
Marc

-- 
This e-mail was sent from a contact form on Put your site to WORK! Web Design | Hosting | Digital Marketing - yoursiteworks.net (https://www.yoursiteworks.net)


