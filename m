Return-Path: <devicetree+bounces-252811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 32969D02BE3
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 13:51:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00FD130C3BF5
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 12:45:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9329039FD9;
	Thu,  8 Jan 2026 12:30:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com [101.71.155.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC37480342;
	Thu,  8 Jan 2026 12:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767875422; cv=none; b=NVplI9qhUNRXj6ecg56Is8tU+jZsHd0DkVfMUGeEVFvw4FFs5OD3JlgQq39o0MH0N/Rmv82VUl3XOQbsPrXiPfHRyxajpF0VDQLPxbXwTkgvvho3T3zYFKVr88n8ynvJwanSS6+I/M+QCErldJ3peXSyEXwr/4akoriCztWReXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767875422; c=relaxed/simple;
	bh=DczflLKFbNJOK6R73ccooWWsKNH5cpMUIPAJiIJeYXw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=r8CQeg99nspuDMdBk/JNPRfSccMdVCrhGHWiOgy7YXKfIhdq3V8gIjquLD5xSIImhBxZBJVjE5RRqc9isD618uUxJzNoIixzR944942y3Pv8ZKnD40KHFbo3LZ74HLstvdoJDSi48K4UwWJCBwmwB0ldd5QbeD6NFXZVwm6FHYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=101.71.155.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [116.25.95.147])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2ff5bcb31;
	Thu, 8 Jan 2026 20:30:13 +0800 (GMT+08:00)
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
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: remove RTC for Radxa E52C
Date: Thu,  8 Jan 2026 20:30:08 +0800
Message-Id: <20260108123008.134323-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <6547200DD4E67155+b1fb1848-2f11-4b3e-b556-9386373d23f1@radxa.com>
References: <6547200DD4E67155+b1fb1848-2f11-4b3e-b556-9386373d23f1@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9b9d96073003a2kunm2755d007496bc
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDQkxLVkpNGE8ZShhNThodTVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSk1VSU5VQk5VSk9MWVdZFhoPEhUdFFlBWU9LSFVKS0hKTkxOVUpLS1VKQk
	tLWQY+

Hi,

> V1.209 and later should have RTC. What version do you have?

# hexdump -C /sys/bus/i2c/devices/0-0050/eeprom
00000070  0c 00 00 00 01 00 56 31  2e 32 30 38 00 00 89 0b  |......V1.208....|

How should we handle the older versions?

Thanks,
Chukun

