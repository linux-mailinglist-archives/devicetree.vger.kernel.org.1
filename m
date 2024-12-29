Return-Path: <devicetree+bounces-134611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A58489FE0DA
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 00:28:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0D6C3A1819
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 23:28:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26C491991CA;
	Sun, 29 Dec 2024 23:28:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="ZtQbmIQ8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE85B8F4A
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 23:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735514921; cv=none; b=QBhGUWlQkhxWOeJdT+xYf1Ft/Q8slQpR7AkiWphb41bQhuX3zfUL3jBLHbXVtoLb3X8wlTILhoULvs8mEGAoXRkZnA0+kFxlUP2AU3H9RgBmDkiSByVWBOjg7qPpaakbqFfJ7Nr7aHpgJ3EyM4h/fcq3c6VCH9wmcWCCMr/gLY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735514921; c=relaxed/simple;
	bh=BEQ8z1ut2cQHekD22fD5Tb5BXFAjsP0xhOK/q2xwRf8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ImfYksjCsJoT0ZX/2WA0qxblFTo3p30EnfL5W4S5tugqZShRcI3R5k+KEyExjDKthjfMzzBOuSF8R+8Vb8RDG24L6nuzQsXItw1wV5MECB4zvDUpWxG0/tgd2Gyf+pglVH+PHUWUHD7utC33seIRUL3rNB8Aov6W0wUGvOdcGsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=ZtQbmIQ8; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-21619108a6bso102865375ad.3
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 15:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1735514919; x=1736119719; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Umzb/cpVkBSMsf5TuOtyuUgveg3g8v8YPbqtINmhT0k=;
        b=ZtQbmIQ86ey9a19utM4ZJU6b6S6pkyeTFRetwWU5ukEkQyDhwgszUdA5VQUwg1d18p
         Cx5COx5lHu/ze/hl39a+Us5vX1YxkgFmE08088eTSGhIxi/G0Zt6/0QBoaN2GdxCrJ5l
         hmy/NSpeQRix/Z0U5+n38HGSUTtDa4cf73O2ARWYmdfQMZSRmW4A1VpOsed5QgJvJhsH
         WCTxoKTh/lVUpbF6TQwRX/mix46bImQgBHxxeHdKpUtFcWbjH0nMML3Aq+HbSxunNGD8
         CXXOrjdSVL/yZE9iJQj5HaX9JpwzzjN1yN9nD53kdm0G7+1L+zdDKBz8QGkOYpc/rwVY
         Q0Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735514919; x=1736119719;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Umzb/cpVkBSMsf5TuOtyuUgveg3g8v8YPbqtINmhT0k=;
        b=FmHiYPsKR7xaPh9asSNw/3XK0pRSCJEVgJUc5gMEAo/P7HdRBTXBqSKBnw8M/PB+k8
         aGTmiJOmVLQDxprdkyjkRU/OK7nI6mBmtgx6ymPzyJ+3K+QqB1PyTulEq8Y1WHzeMEL6
         pXa9Ss9+KYqqqwHV26yfc4+IfwCiyJdN58rdVXs47AnBlA0OvzbpRUeRNfMrEZAfHREX
         iHracZhwNpCSv98lb2nRoDOto1Ap1JmYBxDFUgHSLtDOny0PTVyFUQExpRMvscmwpTs9
         nNcCduMTZdCa2bBWu0ylPCSgQ922dqwj08C0elm/S95waBBVbY2rTIEDb5pVp3Q3tWmM
         ye5A==
X-Forwarded-Encrypted: i=1; AJvYcCX/5NEPlFjmgS/AQBD3G/MznuGVaK4iToN0HYpl0VXAUBCZQ5VgtQAyUaXlwiI1Arm/W3ZrnAoBhhrE@vger.kernel.org
X-Gm-Message-State: AOJu0YweBdlMet4cOZEOwS4bK7dp5rxjFenJhCSSfVQ+BbGnKUmwd88h
	TPG2PtrciXTwZ0fTjlzCgDcDrvVc/cErxnZ3xzg9yGLHHSlWmnv/OVDok7i+wRI=
X-Gm-Gg: ASbGncu8EdY0I6fGQS8wDVVP9Cb87iNNKnnTo+IDShfpWwkgUSUGBsWMCzSxHtKLrPS
	pl2eMfJmCufL87Ib4na/Tpx4yTxF37QDcQH5ElZoGYqSdT2BXOSTD4812tptowpsk9A7rBBluXC
	NaYjiT1tOIiyAnRH9O2YPaKA9hCKALWi3sMPtHeUur9XCcpC3+cM1FDBNZlIrbRJGxCtj6Zjhjt
	sKiEEkLN73B29TScZQ4vu9FUBzRXOyiDdJZajbwoYwkN3Tsgq950apW+IeSefV54w==
X-Google-Smtp-Source: AGHT+IHldvMkQufBuQX10YCQFp+ijImIhHav6sI7E20XU6PffBB8+yEkV3TBxa5dVe+iW9flE+V8GA==
X-Received: by 2002:a05:6a21:3989:b0:1db:e3a2:ea47 with SMTP id adf61e73a8af0-1e5e0461d58mr55130767637.14.1735514919066;
        Sun, 29 Dec 2024 15:28:39 -0800 (PST)
Received: from x1 (75-164-218-15.ptld.qwest.net. [75.164.218.15])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad90c133sm18592573b3a.183.2024.12.29.15.28.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 15:28:38 -0800 (PST)
Date: Sun, 29 Dec 2024 15:28:36 -0800
From: Drew Fustini <drew@pdp7.com>
To: soc@kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>, Conor Dooley <conor@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Michal Wilczynski <m.wilczynski@samsung.com>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [GIT PULL] RISC-V T-HEAD Devicetrees for v6.14
Message-ID: <Z3HbJPwZB+siJuAR@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Arnd,

There is only one thead device tree change for this cycle. I have run
W=1 dtbs_check, and it has been in linux-next for over 2 weeks.

Thanks,
Drew

The following changes since commit 40384c840ea1944d7c5a392e8975ed088ecf0b37:

  Linux 6.13-rc1 (2024-12-01 14:28:56 -0800)

are available in the Git repository at:

  git@github.com:pdp7/linux.git tags/thead-dt-for-v6.14

for you to fetch changes up to c95c1362e5bcd90c45987828bbef02236d181ffd:

  riscv: dts: thead: Add mailbox node (2024-12-12 20:07:16 -0800)

----------------------------------------------------------------
thead-dt-for-v6.14: T-HEAD Devicetrees for v6.14

Add mailbox node for the T-Head TH1520 RISC-V SoC. The mailbox bindings
and driver were already merged in v6.13:

b2cf36e4a2ac ("dt-bindings: mailbox: Add thead,th1520-mailbox bindings")
5d4d263e1c6b ("mailbox: Introduce support for T-head TH1520 Mailbox driver")

Signed-off-by: Drew Fustini <drew@pdp7.com>

----------------------------------------------------------------
Michal Wilczynski (1):
      riscv: dts: thead: Add mailbox node

 arch/riscv/boot/dts/thead/th1520.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

