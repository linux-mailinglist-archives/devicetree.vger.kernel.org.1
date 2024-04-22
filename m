Return-Path: <devicetree+bounces-61398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7067D8AC863
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 11:06:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D18C280DD6
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 09:06:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4BF113E030;
	Mon, 22 Apr 2024 09:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b="VkcVUEnd";
	dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b="FYE7+ri0"
X-Original-To: devicetree@vger.kernel.org
Received: from e2i187.smtp2go.com (e2i187.smtp2go.com [103.2.140.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A2AD1419B0
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 09:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.2.140.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713776706; cv=none; b=d8cUpg2WUWo2BbCA5K8Hk4WztefVA4rr5afVurSwgJeSYnaN3NwGlyfrlCJUuKapXrCLs3EUvBZ0+MBSmYuw2oV3OaTTttXOVICzipPnkdC0i4QJdmfqA7eZg4rdUif0A25qHhZU+ZLDuLKy1nDMzlrTUI7lUK1vyw98LZ75h04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713776706; c=relaxed/simple;
	bh=Pwq11WzAHtrQvtPi60VnmJqM0H3zSLr77uZezUo8xd0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=TXDZr0osUddINtZH5QQhgEl2NQpS1EKkjWn8rlnTxGEDAVpLS3lXv0gkQgoejj85EaJdaUbBqJ9I7ApE31WVBthX8bVKVoh5/cKv03FGgLlUQOHP64CLmFvyZ7SUMSzl1E60w+mNR297vF95SdiK96ZZZevCzXEiqO5L4Nk9Kpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it; spf=pass smtp.mailfrom=em1174574.asem.it; dkim=pass (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b=VkcVUEnd; dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b=FYE7+ri0; arc=none smtp.client-ip=103.2.140.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=em1174574.asem.it
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=smtpcorp.com; s=a1-4; h=Feedback-ID:X-Smtpcorp-Track:Message-Id:Date:
	Subject:To:From:Reply-To:Sender:List-Unsubscribe;
	bh=DUgI6FiI10ay0TPqWNHINphhvGFSuWao6S97h7oSrow=; b=VkcVUEndykxy9dodfGd/l1IWKA
	H7Umkm2vo3tRPUjYjptCzloRYuZhjbH2v7C8pRXeEXnIj8QhsBRZSOlyFUnbySA9mfXc0qpLsAGsg
	2iyTYTX6LhcbY7CLsUGjBaxf7eff2LT0I6leq7HdPF6QEFq3CxQqfrj+yYNbBgqUjzmpxSChOuxHP
	psYj8EznH2W0xbtwA8Vx2zuhIHsisZ/wdY0m8kXEcnWP5kMdCQv50E/cK2D8HFjy8GN1gGG4WkNJ6
	wYxWQI+kH0e19Q/WdfTn5/3Isip4Qx0VzKmPaRUGn8L4RLEWEtkYyE2LVPg+x+xlEvp6xPRdhEcDk
	6PG7GyXA==;
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asem.it;
 i=@asem.it; q=dns/txt; s=s1174574; t=1713776677; h=from : subject : to
 : message-id : date; bh=DUgI6FiI10ay0TPqWNHINphhvGFSuWao6S97h7oSrow=;
 b=FYE7+ri0llA1T6vA2LDcDCsjxu727W7E/a73xV+wCzSVUzBfBVLTA13ZC3mrdHK5mIwv2
 SwqiFCXZa3PniJx2kKAkuAu1VRTJjWliUuOhaZR0iRgp4WplHFa2XTKZL/wNMpkvb1qEWQO
 cPvvSmiDXdfhHSbY12KgecmL1zHTRQBAwfJR+qr8wnLyFci6Zz6BvPTtAiYo0edmYNOKIv1
 jdr3tqnAvOIP2eu9/zQciPFLWGQiXrE+GciqejnPjIcDmndXwQPipJX2+QRpvpaffcgxw2J
 Vmu6lmrIKZ6N7k3MQ0jKfDYxT+oAIOENNDj4epdDITxx1zzH0eyydooOwcSA==
Received: from [10.143.42.182] (helo=SmtpCorp) by smtpcorp.com with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2-S2G) (envelope-from <f.suligoi@asem.it>)
 id 1rypas-Y8PDu4-Nh; Mon, 22 Apr 2024 09:04:10 +0000
Received: from [10.86.249.198] (helo=asas054.asem.intra)
 by smtpcorp.com with esmtpa (Exim 4.97-S2G)
 (envelope-from <f.suligoi@asem.it>) id 1rypar-FnQW0hPpvx6-jaYr;
 Mon, 22 Apr 2024 09:04:09 +0000
Received: from flavio-x.asem.intra ([172.16.18.47]) by asas054.asem.intra with
 Microsoft SMTPSVC(10.0.14393.4169); Mon, 22 Apr 2024 11:04:08 +0200
From: Flavio Suligoi <f.suligoi@asem.it>
To: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Flavio Suligoi <f.suligoi@asem.it>
Subject: [PATCH v3 0/5] arm64: dts: remove tx-sched-sp property in snps,dwmac
Date: Mon, 22 Apr 2024 11:03:57 +0200
Message-Id: <20240422090402.33397-1-f.suligoi@asem.it>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 22 Apr 2024 09:04:08.0714 (UTC)
 FILETIME=[08F426A0:01DA9494]
X-Smtpcorp-Track: QqTYqQ8tVj66.kLW56wVzA97P.q5rjJgiNOqB
Feedback-ID: 1174574m:1174574aXfMg4B:1174574sxe1HhfNLf
X-Report-Abuse: Please forward a copy of this message, including all headers,
 to <abuse-report@smtp2go.com>

In the ethernet stmmac device driver:

- drivers/net/ethernet/stmicro/stmmac/

The "Strict priority" for the tx scheduler is by default in Linux driver,
so the tx-sched-sp property was removed in commit aed6864035b1 ("net:
stmmac: platform: Delete a redundant condition branch").

This patch series remove this property from the following device-tree
files:

- arch/arm64/boot/dts/freescale/imx8mp-beacon-som.dtsi
- arch/arm64/boot/dts/freescale/imx8mp-evk.dts
- arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
- arch/arm64/boot/dts/qcom/sa8540p-ride.dts
- arch/arm64/boot/dts/qcom/sa8775p-ride.dts

There is no problem if that property is still used in these DTS,
since, as seen above, it is a default property of the driver.

The property is also removed, in a separate patch, from the corresponding
dt_bindings file:
- Documentation/devicetree/bindings/net/snps,dwmac.yaml

v3 - Removed the tag "Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>"
     in patches num. 1/5, 2/5, 3/5 and 5/5 (it was added by mistake).
     Added history in each of the patches, as well as in the cover-letter.
v2 - This patch is the 2nd version of a previous patch, where both the DTS
     and the yaml files were included toghether. Then I split this 1st
     patch series in two, as suggested by Krzysztof.
v1 - Original version of the patch where, in addition to these DTS patches,
     there was also the one related to the correspondent snps,dwmac.yaml
     dt_binding file.

Flavio Suligoi (5):
  arm64: dts: freescale: imx8mp-beacon: remove tx-sched-sp property
  arm64: dts: freescale: imx8mp-evk: remove tx-sched-sp property
  arm64: dts: freescale: imx8mp-verdin: remove tx-sched-sp property
  arm64: dts: qcom: sa8540p-ride: remove tx-sched-sp property
  arm64: dts: qcom: sa8775p-ride: remove tx-sched-sp property

 arch/arm64/boot/dts/freescale/imx8mp-beacon-som.dtsi | 1 -
 arch/arm64/boot/dts/freescale/imx8mp-evk.dts         | 1 -
 arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi     | 1 -
 arch/arm64/boot/dts/qcom/sa8540p-ride.dts            | 2 --
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts            | 2 --
 5 files changed, 7 deletions(-)

-- 
2.34.1


