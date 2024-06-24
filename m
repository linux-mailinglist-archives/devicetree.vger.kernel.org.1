Return-Path: <devicetree+bounces-79232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D729146E8
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 12:01:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2A729B24C52
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 10:01:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65F583A8C0;
	Mon, 24 Jun 2024 10:01:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49197.qiye.163.com (mail-m49197.qiye.163.com [45.254.49.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBDF136660
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 10:01:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719223274; cv=none; b=diyDoVLJRQ651zET4c8h5m7rma74l3T/PdWbLj8oDmzgnV2C8qSqRSYDqtOfsqp7SVGWK/hJyrv9tS09oI+d0MBh1b8HtxJUzeDLmU8zgIDruiLIBdmNpIX4ve1VeOmxxFkvKiwiRZ1mNNtxWmFCEinpbIoTnYsVKMDFbLv5+tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719223274; c=relaxed/simple;
	bh=l9V98oDJnKGiLuDmferhBR5S4mxc6ADhyVpW1V+pDRA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GHnOHalIehrfFLFLypMMYEsI2LOCm3eTz4xH3xHnJVzl5i+dPiwefSZ3rqmc7wWNISK0SoB8z6jTLwuJ9a0DSKeI1gPjR1pLIAezO4gckZtNJu/9gux5sseyqVVg9+jGaeegiElL5V10RZgLYKlgepqr06cSkyhh/xnhjFxlpBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c01:9890:8d4d:c2cd:951:5652])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 522757E01AD;
	Mon, 24 Jun 2024 18:00:22 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: naoki@radxa.com
Cc: amadeus@jmu.edu.cn,
	chris.obbard@collabora.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	sebastian.reichel@collabora.com
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: change spi-max-frequency for Radxa ROCK 3C
Date: Mon, 24 Jun 2024 18:00:19 +0800
Message-Id: <20240624100019.80529-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <DBE7B5A56069764A+b5680896-bc71-4af8-9d56-bd6828595e74@radxa.com>
References: <DBE7B5A56069764A+b5680896-bc71-4af8-9d56-bd6828595e74@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDSU1JVktMSx1ISUwYTxkYH1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtKQUJDQktBQx9PH0EYSRgfQUJOSkFOTU5JWVdZFhoPEh
	UdFFlBWU9LSFVKS0lPT09LVUpLS1VLWQY+
X-HM-Tid: 0a9049b0812d03a2kunm522757e01ad
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mk06NBw*IjNMDTMOTB4rVjov
	PRNPChNVSlVKTEpCSUlISUlJQklDVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0pBQkNCS0FDH08fQRhJGB9BQk5KQU5NTklZV1kIAVlBSk5NQjcG

Hi,
> I see, I'll remove fixes tag in v2.
> btw, is this change reasonable(acceptable)?

I think there's no problem and it's acceptable. It would be better
if you could give examples of flash chips that might be used.

Thanks,
Chukun

-- 
2.25.1


