Return-Path: <devicetree+bounces-138632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C301A116FD
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 03:05:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C468C188A612
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 02:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 583C143172;
	Wed, 15 Jan 2025 02:05:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49198.qiye.163.com (mail-m49198.qiye.163.com [45.254.49.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B803597D;
	Wed, 15 Jan 2025 02:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736906732; cv=none; b=ey7ZMmjePMJ6gBTQkwnaFxEatyCAMJcnMdEiOw5N8aGcxJ2SCFqYfC2FthxwlgJbL/rsQhryGutZAiiPedqkosMjMwEZmxHitY4ZnK8FwQxkFcuIMv+GG3jsjM1GW1VDc6UgnW5ZbgM6s8M59fiOBG8BW4MY46jgijtNPYPiQjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736906732; c=relaxed/simple;
	bh=vRM/t2hsLGe4D6qHL+TIV6mO/HmJX7DIpiioFRM1cKs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VZiU5no/oLDGkWz+25TBSyjLEDFeU91FmYHMCTks+/5OfmYx9OQEWdJEPtzTMxW1u94SbT4pgzZK9XEReeJIy92vJ23RoOPv95hBANP2nQxS5eiLATyv4fLdTtFqyMQIRG75CnfOXng/ICryjSieHe4H1uZy03RUQX0XQru+EEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c00:1f0:6a66:664e:ef87:7f44])
	by smtp.qiye.163.com (Hmail) with ESMTP id 8b43c33e;
	Wed, 15 Jan 2025 10:00:09 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: jonas@kwiboo.se
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	naoki@radxa.com
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: default to host mode for USB on Radxa E25
Date: Wed, 15 Jan 2025 10:00:06 +0800
Message-Id: <20250115020006.10336-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <d7b2e993-c6c8-4e60-bfe2-80857ca8a992@kwiboo.se>
References: <d7b2e993-c6c8-4e60-bfe2-80857ca8a992@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaTE9CVhpIHh1ISEtDHk9MQ1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtLQUodS0FNGk1NQU1NTx5BHh1DTEFMHU9PWVdZFhoPEh
	UdFFlBWU9LSFVKS0hKTkxOVUpLS1VKQktLWQY+
X-HM-Tid: 0a9467b0878c03a2kunm8b43c33e
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OE06TRw*LTIcF08sMQoDFz4C
	LitPCxVVSlVKTEhNQktNT0pLTkNDVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0tBSh1LQU0aTU1BTU1PHkEeHUNMQUwdT09ZV1kIAVlBTEpINwY+

Hi,
> I would advise against using any sd-uhs- mode for sd-card on Rockchip
> RK356x boards because of a timing issue during boot between mmc,
> regulator and IO-domain drivers.

This problem seems to occur only on rk356x?

> Ideally this race condition should be solved instead of limiting use
> of UHS modes. However, use of sd-uhs-sdr50 is typically more forgiving
> and has been used on other boards.

It seems that sd-uhs-sdr50 does not need 1.8V IO voltage.
I tested the speed on a rk3528 board with sdio wifi:
(The IO voltage of sdio on this board is 3.3V)

highspeed: 170Mbps DL
sdr50:     290Mbps DL
sdr104:    290Mbps DL

So sdr50 should be safe.

Thanks,
Chukun

-- 
2.25.1


