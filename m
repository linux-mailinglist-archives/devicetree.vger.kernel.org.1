Return-Path: <devicetree+bounces-109738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 88382997CE8
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 08:15:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 13A28B227F0
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 06:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6F011A254F;
	Thu, 10 Oct 2024 06:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="G3VESp9x"
X-Original-To: devicetree@vger.kernel.org
Received: from omta040.useast.a.cloudfilter.net (omta040.useast.a.cloudfilter.net [44.202.169.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5DF1A0AF2
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 06:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728540900; cv=none; b=rZ6TJkUb/sAzW8v8o94PS1qUx01UWtqEjnVyZ7C+K7ajwzCGW2UOswF7AU5RR8P2jeJSqlVALNxMZgqqNIGedwuT2uWaTfEsy5Ge0L95uQ6pD/gxFhm5qkEQ+qosDD5ZmqBMt2N1bmK0BmktYuS6LQV+yX2/9e/ve9omamIwHk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728540900; c=relaxed/simple;
	bh=cn5vK56jOcjlo9XJzP5uTQcE5ndRjUdaHxqRUbU1430=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=stMK6XEBpHBPBkLT4yJkEum21Y9RefyCzUUqwwpA1SFUsptjX4Rt0Qacfj+WN4dFL7uLO/kz1b1T/Ks6oHswlEtmORfRcJ9IE+d8lCxApAKx0C4++tP16ERJE83WF3rAcSmT5eVu01tpSmF6LG/Xll3prJ41PLVjFWVdlQ4iW7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=G3VESp9x; arc=none smtp.client-ip=44.202.169.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-6010a.ext.cloudfilter.net ([10.0.30.248])
	by cmsmtp with ESMTPS
	id yRC6saMKCnNFGymRns38zg; Thu, 10 Oct 2024 06:14:52 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id ymRksyXJ2olgPymRlsCjwb; Thu, 10 Oct 2024 06:14:50 +0000
X-Authority-Analysis: v=2.4 cv=bp5KBlai c=1 sm=1 tr=0 ts=670770da
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=DAUX931o1VcA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8 a=VwQbUJbxAAAA:8
 a=CWmjl8rzmKzYHtF8YhwA:9 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
	:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=u9n22b7xqMqkSOr8GxS5T3m6uq+qCh+LjINZHSI03K4=; b=G3VESp9xxKglmfRxhSHl5KZ1Yt
	uZifip06lQ2SBcofq6IZpS8OtgTb7qlA/HSPm8/DOVxwm/DkZ1IQgJW4O5XNC2bII+rv5M1Aa760e
	NAW1hy+FZpVHLEcakSFVk6dYrv6EqzDbKh/iMv1nSubfWt/jZa9LAFWJmGUM0rLiknpc6T2ABYIj2
	s9FNzpFwErmEgXiRTgOlL8oZ8KX+qcH409uenFQcWJhhxKLLlm3qGJYpl5kb+U9jvzk0hrsRAhrMe
	ewE2mL1b3tBAAL03t3OoIrdLuTPprc3PSSsLceXBVi+y+HE0jjpSEPw08Xcj9hslNEuhnsDmLbJAg
	8DuQN2eg==;
Received: from [122.165.245.213] (port=36152 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1symRi-001l4I-25;
	Thu, 10 Oct 2024 11:44:46 +0530
From: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Subject: [PATCH 0/1] Add RV1126 compatible watchdog string
Date: Thu, 10 Oct 2024 11:44:07 +0530
Message-Id: <20241010061408.1351865-1-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1symRi-001l4I-25
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:36152
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 3
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfKAPmR6xeZwEMIDY/PgjdDZzW/e/VT0hcDA7vBNfix6YypXWFhaBrK6OHHBORqxMGEGESfkYubve21jFqrldoFkksx0PTTazqoOMDIF0gxyoV2ZTY/4x
 seIORUMoDjOYEz/urw+OjvkegrtRDXPSs2F0V5mFb5BWqv/VrHRjccaVCXtmyBv0Cmdf58dWMSpe3Ct8Ogjqr2Ps4mcDpHfBnNQ=

This patch is introduces a watchdog compatible string for rockchip's
RV1126. I have already send this patch[1] in the series[2] but somehow
missed watchdog maintainers and list. So resending this patch alone
again from the series[2].

Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---

- Link to patch: [1]. https://lore.kernel.org/all/20240912142451.2952633-2-karthikeyan@linumiz.com 
- Link to series: [2]. https://lore.kernel.org/all/20240912142451.2952633-1-karthikeyan@linumiz.com

Karthikeyan Krishnasamy (1):
  dt-bindings: watchdog: rockchip: Add rockchip,rv1126-wdt string

 Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

-- 
2.39.2


