Return-Path: <devicetree+bounces-105106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DF2985276
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 07:33:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 41F1EB21B7C
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 05:33:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49AA1149C4F;
	Wed, 25 Sep 2024 05:33:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b="VG0zoYAy"
X-Original-To: devicetree@vger.kernel.org
Received: from lf-2-39.ptr.blmpb.com (lf-2-39.ptr.blmpb.com [101.36.218.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9921B85D1
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 05:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.36.218.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727242390; cv=none; b=bDDAnz9DUppd3AKbZMqStEawWS0MvUsj+AC6V+PS1llPntuOS+x++8iaOJ/ysg8BF/+G5eOARUW5rCm5a6laOVE686U1JbAPNE6oDK8I0fC+rRer6SLp5HFBbk45zKf9UGvgeOn/mTk9x8NqSUUywHMvpCkqZfpulZ1xsmSSqCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727242390; c=relaxed/simple;
	bh=lr3kdrCW9waJZWJ9AwRYvz8bGtYbn20hiykGW8PKbTQ=;
	h=To:Message-Id:Cc:Subject:From:Mime-Version:Content-Type:Date; b=b9/ky2EwmGDneGgr/jTv2Z177taqAgg35vK6l95GfEyIMYpLxGxAbFdAp/8PCAlx5FpU7CjqfLGwWILoXKUmKf4R+jyvv8ET9SzYw3rhx5kniBbzWaNxCi8ajGhU0SoWYpcu4xNcwr0apHcJ+zlsXvH2fHUyL6jEbmJUzsFAygE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io; spf=pass smtp.mailfrom=deepcomputing.io; dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b=VG0zoYAy; arc=none smtp.client-ip=101.36.218.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=deepcomputing.io
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=s1; d=deepcomputing-io.20200927.dkim.feishu.cn; t=1727242300;
  h=from:subject:mime-version:from:date:message-id:subject:to:cc:
 reply-to:content-type:mime-version:in-reply-to:message-id;
 bh=lr3kdrCW9waJZWJ9AwRYvz8bGtYbn20hiykGW8PKbTQ=;
 b=VG0zoYAyG7R8F9681nz8ry2AqiUK8/7Mqq1ZO8Ugq2+klA203j/fO6rLLrLqSW+uxDmYOl
 8TE+jmSz6QoZEyOLK3tD7yEAsqH9nsPlI8pmma5DHobMDG9U1PZrOwNPjzeW8jAXUHkjY7
 oCtgZnflyWC9E8fB29uPkTgTqkz5VFN6b/45ZQuEEKvZ3HelTUXlt092DdHSSWoHZxYvZg
 Q/RPx/PwnYvwhBphTNDzrEXxL9YE6rCkxtDaZhRmAECgBPGphGmRjwDWLDhqPfyTY5CNQ6
 lDhFsEw7d3d5MIIosjlsueB2LkmE/fgTCQ7m7VLWnc7Ra2t9m/njeRchUdMaSg==
To: "Emil Renner Berthing" <kernel@esmil.dk>
Message-Id: <20240925053123.1364574-2-sandie.cao@deepcomputing.io>
X-Original-From: Sandie Cao <sandie.cao@deepcomputing.io>
Content-Transfer-Encoding: 7bit
Cc: "Conor Dooley" <conor@kernel.org>, "Rob Herring" <robh@kernel.org>, 
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>, 
	"Paul Walmsley" <paul.walmsley@sifive.com>, 
	"Palmer Dabbelt" <palmer@dabbelt.com>, 
	"Albert Ou" <aou@eecs.berkeley.edu>, 
	"Heiko Stuebner" <heiko.stuebner@cherry.de>, 
	"Neil Armstrong" <neil.armstrong@linaro.org>, <rafal@milecki.pl>, 
	"Linus Walleij" <linus.walleij@linaro.org>, 
	"Michael Zhu" <michael.zhu@starfivetech.com>, 
	"Drew Fustini" <drew@beagleboard.org>, <linux-riscv@lists.infradead.org>, 
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, 
	<dhs@frame.work>, <ams@frame.work>, <gregkh@linuxfoundation.org>, 
	<yuning.liang@deepcomputing.io>, <huiming.qiu@deepcomputing.io>, 
	"Sandie Cao" <sandie.cao@deepcomputing.io>, 
	"Krzysztof Kozlowski" <krzk@kernel.org>
Subject: [PATCH v3 1/3] dt-bindings: vendor: add deepcomputing
Received: from roma-MacBookPro.. ([61.141.249.39]) by smtp.feishu.cn with ESMTPS; Wed, 25 Sep 2024 13:31:38 +0800
From: "Sandie Cao" <sandie.cao@deepcomputing.io>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.34.1
Content-Type: text/plain; charset=UTF-8
Date: Wed, 25 Sep 2024 13:31:21 +0800
X-Lms-Return-Path: <lba+266f3a03b+bab34a+vger.kernel.org+sandie.cao@deepcomputing.io>

Add deepcomputing into vendor list.

Signed-off-by: Sandie Cao <sandie.cao@deepcomputing.io>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

