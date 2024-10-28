Return-Path: <devicetree+bounces-116268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E419B235C
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 04:02:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3AC9D2812F8
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 03:02:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D507C13AD11;
	Mon, 28 Oct 2024 03:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kaHtZEXP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23285CA5B
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 03:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730084557; cv=none; b=p1Bu1vTEszqkZxXgL9ul++sYaVUCgYX4fBfFGlaUYGL3mUvRqnaf6irr6DzN361nLt6TO0ip04pjVD3ZEsz1wdx/+nQRPLz4YEzPKSe6rr+DfV4kdpD+zc1izyCjCHAWa8n8Qj5+okipCIP2XyVt3KfzpvIWNPZRqBm1eMUukqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730084557; c=relaxed/simple;
	bh=+cAB7lYbG14eIGFvJSVo0spfAoqiu7swxdEuhNILMxc=;
	h=From:Message-ID:To:Subject:Date:MIME-Version:Content-Type; b=A+pMV6nzMFPkTqlZC15ILTLZPey5hWUyzxl/QxRJGm0+tocdDNDeMfNlDTwWCvu1igzoJ2jZ+u8gm69EbHuWeuSJW68Jnc9JaGiAxDpgH5KedlJNA2k1Ew/G7f3OcPs4cuaAnBUiS4P0WOLtfrSp1VIJB169OhspMZGoYBPlSec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kaHtZEXP; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-20cdda5cfb6so35367505ad.3
        for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 20:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730084555; x=1730689355; darn=vger.kernel.org;
        h=mime-version:date:subject:to:reply-to:message-id:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZR9IATytCCgOYZ4mB1XO864armHT1L223q4In16prlA=;
        b=kaHtZEXPX8hfgYlmcqsEbm6KoXDE/2c9cKmtfHxyBf7Z4yt6zBuiKk/ly7Y4wqE93f
         VO0sZUOBcV10nclW0vHWK3Z4RSvWFo7rQ3AnDxr7nS0xdhKs6TwKHowv253832SbTFqT
         BWgvjyLXKdBPnRS5ffL5OAkHuvrslpEy/5q/F7ybt8B8SlGVdUJ/v1JX//g0FGJQkq70
         5qK3mKNuZU64Fg7klnb5Akc6wMvM4PAYzM9r8Ok5GPS3nNS3iQ/Fxn2xSac2/DlriBnu
         a8VRuhO73aKz5cJZUgyknophOv9LfwHCSO3wWEenY82AN11LkDM55K7EouSneumw5WFk
         vjrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730084555; x=1730689355;
        h=mime-version:date:subject:to:reply-to:message-id:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZR9IATytCCgOYZ4mB1XO864armHT1L223q4In16prlA=;
        b=P2sqfoKiF+yZPYVnClB7/2oSUx9N3+yZis4oAn6G5tk8UdyXHybR8gXDeIK7DlAgsn
         9/+lI1JmuOzo7rXFQJpUkkNhQGDB97rkoJqs8KnCz2kS0U4QQ0m6oJ9ALy4xmsbvA8C1
         amV4hOVoPqXb1ngiMhlmlrg2KRvos3EMfBfa/zr2N50uiLUm6A9/7CYHU3BvaUIL0u/9
         ONJJZSmeYDj9bZ9zYnYimOfbUUXjn+UOlddTk1jr2aF4npXcO9p/h1P8N2t1jun8Kr6R
         aHQ/FQf/hc/CFL9m9n4x8vto07hsIdgdvrQHpSYlLCBNVuFZMAVy9fGj689xzeS74W3g
         KInA==
X-Gm-Message-State: AOJu0Yw+wIS5IUxy+JUzJA9Mj6qXIeZw0A1xSkQX5GheFsSh18df1eZt
	FDHzh7j3XRODOZw/czp/VcSyFsSJOdZzt8xpiJd18saFWP5XLIheun6Au44/1H8=
X-Google-Smtp-Source: AGHT+IEqukKEUsSeoRkxKibo5tCQXzwRm3YCd/jYJfyl4uwVvgDrwYR+bScPW9UUKANTb/QcVWP8Wg==
X-Received: by 2002:a17:903:2302:b0:207:1675:6709 with SMTP id d9443c01a7336-210c6731076mr96399825ad.0.1730084555039;
        Sun, 27 Oct 2024 20:02:35 -0700 (PDT)
Received: from [103.67.163.162] ([103.67.163.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-210bc044c23sm41428585ad.245.2024.10.27.20.02.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Oct 2024 20:02:34 -0700 (PDT)
From: Van Esource <muffiekay@gmail.com>
X-Google-Original-From: Van Esource <helpdesk@information.com>
Message-ID: <cc1732b45fa9339d4179d75518d3417e26e2f061aaa176a7652414d1100d032e@mx.google.com>
Reply-To: dirofdptvancollin@gmail.com
To: devicetree@vger.kernel.org
Subject: Info
Date: Sun, 27 Oct 2024 23:02:31 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii

Hello,
I am a private investment consultant representing the interest of a multinational  conglomerate that wishes to place funds into a trust management portfolio.

Please indicate your interest for additional information.

Regards,

Van

