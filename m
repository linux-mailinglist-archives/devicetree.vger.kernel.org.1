Return-Path: <devicetree+bounces-133314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C17629FA46B
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 07:53:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 16BBE7A1BAC
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 06:52:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59BEA13B7AE;
	Sun, 22 Dec 2024 06:52:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49198.qiye.163.com (mail-m49198.qiye.163.com [45.254.49.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5EAE259489;
	Sun, 22 Dec 2024 06:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734850379; cv=none; b=TH4Ort3kOTe8UZv9rHpu0NIzOANosrVAtgo9iooWU/whTAtZLhkSfKsmsgvi4GuA1Uvt4RbbiUopbuCrvpEG7Bh2MMsYRh4qNSROD2JpgwCHK2X1j23aRQGGWpUCiQEnunmV/k23wU3XDFFYsKdKY1/mvB6pys2odFH0wP+Qebw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734850379; c=relaxed/simple;
	bh=kGmr4IhBm+Pqcbznp4K4b9bmnuwGRowErJ1M9Uo/OrI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=G7UA/LOrDKsIIjtgE12z6biVXil0lzxYilsNSCGFgg499Br1f/+b3TND5FGPYRtcv7iffl/LJRKSHDnMUVAPp9zhsQmdGisBYvBir1N3a0bBPJjMawmPaodpm+COEGKAFe54NUgK3MMTm5dGiDUi5NkpF7Mu3mj76h5utbKbZcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from amadeus-Vostro-3710.lan (unknown [116.25.95.193])
	by smtp.qiye.163.com (Hmail) with ESMTP id 66ff1284;
	Sun, 22 Dec 2024 12:30:30 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: naoki@radxa.com
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: default to host mode for USB on Radxa E25
Date: Sun, 22 Dec 2024 12:30:27 +0800
Message-Id: <20241222043027.265865-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <6EFDC4E74A617E25+ed534e8a-fef0-4f09-a24b-a536b7f2f13b@radxa.com>
References: <6EFDC4E74A617E25+ed534e8a-fef0-4f09-a24b-a536b7f2f13b@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCT0tNVh1DS0sZS0xCSx0aQ1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSk1VSU5VQk5VSkJIWVdZFhoPEhUdFFlBWU9LSFVKS0hKTkxOVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a93eca18e0b03a2kunm66ff1284
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Kz46ERw6HTIULg1NME4SFB82
	FBhPCwxVSlVKTEhPQ09KQ0hKTU5OVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	TVVJTlVCTlVKQkhZV1kIAVlBSEpCNwY+

Hi,
> Could you check Product Brief P.4?
>
>  https://dl.radxa.com/cm3i/e25/radxa_e25_product_brief.pdf
>
> There is "USB3.0 OTG Switch".
>
> Best regards,

Oh, sorry, it was covered by the shell so I didn't notice it.
BTW do you see any issues in the sd-uhs-sdr104 mode?

Thanks,
Chukun

-- 
2.25.1


