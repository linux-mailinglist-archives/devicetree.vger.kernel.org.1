Return-Path: <devicetree+bounces-238616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FC2C5CB3D
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:55:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C725834FEDF
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:52:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC919314B61;
	Fri, 14 Nov 2025 10:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U9/dx3Va"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB922313E14
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763117532; cv=none; b=dYy9KVUHURkO9hqqS3aNoxo8reHonhqPpXo7vWL7suNtwFJOMqlvcZnd+ZgXMH+AhwltdJXU8IOsMAcADYxk4UHR53MS4qXLlglwomNb+ehdOOzCX0aJ8+DNWVvztIKn+1f4vkVceTr/IQZLTOlF+aRVqxzYzBPFDSr8vCbho8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763117532; c=relaxed/simple;
	bh=iJIaTUJBE/UoXRoL2SViHoaSHk5UckBwxok5OzHcObk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jUBUxes+Y4/e+ZUUVNyOIwI9ZMklmuFGwEW8TEh5EoVv0c1N0PPCYinsBUV0YVipYbfSrKIqQtWQkivBjaYcHxGusOqPdAavt93p9FlQZU0aExvh/PSX0upYHl0qKlCPkQezgJE0gEkKmgKap+YtyZIYlnsFgVgCOszfYBCUa9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U9/dx3Va; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-42b3d7c1321so1364032f8f.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 02:52:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763117527; x=1763722327; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lYLtJc6vLB0VyHR1vBUsYK5ND0Cpm4eLmmgWDk1Ci6s=;
        b=U9/dx3Va+j27Re9MMMCh8CY/uJxXCrEF+3px10Wc5hUH8mPejPq3hBl+UguNqY8zeL
         YDeEM/ojwwP9/HVzpr0CEOGGte6EzsnptHgsT7exnvvkcqJ752NGY7YEh/+coA1AwZpJ
         gQj/IN7pnkNBQ8+kAUpaCYp2R21eFgp/pmZiNku8XRAclwklaQNx6zyYMArSOsXGSLYp
         L17y5/0FWUW5gfwFIJ3yaa+TVGgopQnQ/ePN8WylkvZdtokPsxPrWmhoShnlTkeHpMcm
         Qqj8cR4IgKp8y36dcA6tIHKsIaFicGqytflNPmh0mhrQw0H68IcFj3VuV0ixu2iNvGAv
         XhJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763117527; x=1763722327;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lYLtJc6vLB0VyHR1vBUsYK5ND0Cpm4eLmmgWDk1Ci6s=;
        b=PKS3xLEgN9CGRtNEPlG+FXL1DBY7LlCTMRIQB+4FIkHswJQyBwJeOvgIlNcBc1MRIz
         rWcYX/AmTgbxEM9ZlZ584FE/GQPXyxw8iL2zzOQDeeta9qOJXvvuPKoWqEfmVMIEhXTU
         qk1bJlqe+UtpuYqA1OeJurYSaH80DrPp4JpaXCMhfqzGZOW+MnucM1USUAmg/tgYo88V
         s3qwXtbURcVQB7lFzns8+b+WkHpj45dyPuQEipSUEVuwg2urMN7OrEpI9ek9R9qiav5t
         H/XQvCkPOfllWZak/Vapdoh5UaDBvm9HH9SoFt5bFmSUCXdD8cAFRsHRCs825aIpj7yv
         8jsw==
X-Forwarded-Encrypted: i=1; AJvYcCXjvHHYwd6lpHsYG++iNmHrID5JpEtOxeeExP5f6HpQP4Uq70PNbFMU00UXSNJP1gAIOCPnpURRRRxQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzk4EontO9d0DLxaa+zDwpv0E+Fhvxr3ywzdD4NcmPjKRykfves
	5coV02QFM76Sfw8jmoKOFeSXPfShV+KYRuRJ+zB5awvhXzNaZyYFNLx8
X-Gm-Gg: ASbGnct/6m3unXCoNFuC2ZfSkqQER1jS/t6zZXBlzd1p8DlOCZZ5GwS5H+Bl0tPkebi
	db24tWsCHU6aFS/VB0CwrKNn0DBqt6Th6pkQmY84o8Pj03P78q9mJSUA+UPK3Hs1DMgzyM37QVa
	CvwFxbfOwMCEs+W1wM35Zn/0wYGBXdhYYzZr6zDvX5jmsAvCxFwutCLd77g+xMxk9Kibr+BmkVt
	8zT2tmlJlO6cMnDt2GOHpu8EG7j6XgWlGZ48QTMfV8jbmgo9DzkSWDpIy6oB1P2Qhy9V57zwWmA
	LIUoG3taPu/MAnGxkK67ST72Ma1oagJ9WlU0NJ2q7GsFEaEhkj0oTIEhB3C5sCByzeas0smti0I
	a1s7NtbrnrVja1Q/JilZcaut3Q5AtlawmsSyddu/YNakC/oPQoRhkeYdzRY1OsgacxDB09DH6dz
	Xds7nbJjEeZQ/8VFdehuAdinbLMwHeA3i54u5ScEp4lNUFUcygdniczmamUiqIK1Bu1minzF0K4
	oe197eeQJmmvAkX
X-Google-Smtp-Source: AGHT+IG1K5JXTh8BUK8ltjLvdxEwkLX/nyui+CPvlrYOREjldOz+kK+xtG6KakDboynQZMVOzMw86A==
X-Received: by 2002:a05:6000:2585:b0:427:813:6a52 with SMTP id ffacd0b85a97d-42b59386b4bmr2223729f8f.41.1763117527156;
        Fri, 14 Nov 2025 02:52:07 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f17cbfsm9031255f8f.35.2025.11.14.02.52.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 02:52:06 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v3 05/13] serial: rsci: Drop unused TDR register
Date: Fri, 14 Nov 2025 10:51:14 +0000
Message-ID: <20251114105201.107406-6-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251114105201.107406-1-biju.das.jz@bp.renesas.com>
References: <20251114105201.107406-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

Drop the unused TDR register-related macros.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * No change.
v1->v2:
 * No change.
---
 drivers/tty/serial/rsci.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/tty/serial/rsci.c b/drivers/tty/serial/rsci.c
index 9fa5d387d7db..9609ef73a0d4 100644
--- a/drivers/tty/serial/rsci.c
+++ b/drivers/tty/serial/rsci.c
@@ -35,12 +35,6 @@ MODULE_IMPORT_NS("SH_SCI");
 #define RDR_FPER		BIT(11) /* FIFO Parity Error */
 #define RDR_RDAT_MSK		GENMASK(8, 0)
 
-/* TDR (Transmit Data Register) */
-#define TDR_MPBT		BIT(9)	/* Multiprocessor Transfer */
-#define TDR_TDAT_9BIT_LSHIFT	0
-#define TDR_TDAT_9BIT_VAL	0x1FF
-#define TDR_TDAT_9BIT_MSK	(TDR_TDAT_9BIT_VAL << TDR_TDAT_9BIT_LSHIFT)
-
 /* CCR0 (Common Control Register 0) */
 #define CCR0_SSE		BIT(24)	/* SSn# Pin Function Enable */
 #define CCR0_TEIE		BIT(21)	/* Transmit End Interrupt Enable */
-- 
2.43.0


