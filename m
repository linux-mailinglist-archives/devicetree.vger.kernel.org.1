Return-Path: <devicetree+bounces-69785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 079788D1846
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 12:17:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C4CC1C2272D
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 10:17:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EE3016C451;
	Tue, 28 May 2024 10:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b="xpjfBMHc";
	dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b="RX0eIsBV"
X-Original-To: devicetree@vger.kernel.org
Received: from e2i187.smtp2go.com (e2i187.smtp2go.com [103.2.140.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E28BA16B731
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 10:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.2.140.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716891390; cv=none; b=D5HYzPBoKbKNhEoiO3vwNYHymGn75OVQGgf3a2Z3ZraBHkTMZL6J+cZVT2FBfQQ0UvD8GGOTEcqeLd4kFBI8lXF/NZvkngnWEvuUR3vJZdwEqSUeDpx+2AVs1UeQXah++MvZPqLkEgaoxqN36QE/aZzqV+ONObIDjwqB18zKkAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716891390; c=relaxed/simple;
	bh=FxzUFMdru4osktFl89QiRJttKIRmQcse+pcZI7VhhWo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IwGOkhRVZtPgym+TZSxStZPrJN0Qy47fIAHSheCXgm2/lrpWtQsJNslROLJMGTVZmIr9c8P3g9VJ5AqHGfQot86j9yjnmFQ2BRIZidLxBOB8seiEO3Q64JdbSvED8/HqVwi0Jc3CIk9eKd7o/kfADPcnYYG6m9Ax8ZQyFj6SHVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it; spf=pass smtp.mailfrom=em1174574.asem.it; dkim=pass (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b=xpjfBMHc; dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b=RX0eIsBV; arc=none smtp.client-ip=103.2.140.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=em1174574.asem.it
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=smtpcorp.com; s=a1-4; h=Feedback-ID:X-Smtpcorp-Track:Message-Id:Date:
	Subject:To:From:Reply-To:Sender:List-Unsubscribe:List-Unsubscribe-Post;
	bh=WTJGKszru6/8OXc1XDAhsOOFXU+bGmBkM3qo5s6aOGI=; b=xpjfBMHcw1E6uvtYbzohCYmbL7
	sI3NOOWDxCOwB29BdPhC/rx3T7U6eH5thkYzQ2Mg3urKoCyS2d4koCvL/9nytMbl/iw9P8YDIHYNE
	wE4ro8lED6TLTe77EqUw4fsRZ5bfQeJhOB1IO7Q55M0A9FH+Xuang9YzeRU1sAy4WPlTeTxZzXPub
	T5gqkVUeEehC+S63EZGG+Xiam+kmx48IgzFOoDnnJXb6xD1sc6lwZwUkRhrWj4Kjv7hF87LKWbq9a
	Y17JZlffzL/5669uXFF6cVCxhFvp9CsP2u1SUfoqf0bbgJfdWP4asbi1XPB2MdBAsx8XsPaj8vShy
	wDSHqxzg==;
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asem.it;
 i=@asem.it; q=dns/txt; s=s1174574; t=1716891389; h=from : subject : to
 : message-id : date; bh=WTJGKszru6/8OXc1XDAhsOOFXU+bGmBkM3qo5s6aOGI=;
 b=RX0eIsBV5Kk5TH7acDL0URK1p9DN/+5q0QHnIT/BLH4eYRpLXDJ31Eymmn9q4fS3Be71/
 WPUkuKXbtC8O9r+SX/bRYIK1OHlxp0las5m3eYTTwNf+5TBiOdKpkETrm8VcJkL8HoxPDsv
 W7+cG9aikkHETBCSkW9O96oCR529syO+k16yOMnjfTc0yh30AM37ZHVv1QDl7+lOB9t61VM
 8wY8woc5J7Y/UCOPxsp+CzUmSw2jRc/VaOjx5OYuJUU02sVEb5g0Y+dj5NzXYYPsvx4HCSJ
 ophYuP935g8wozKl2gimLhMD8RLBklGUHftQ3IaRWdeLGfDcvxVZ6NfmafzA==
Received: from [10.45.56.87] (helo=SmtpCorp) by smtpcorp.com with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2-S2G) (envelope-from <f.suligoi@asem.it>)
 id 1sBtsV-Y8PCjN-MG; Tue, 28 May 2024 10:16:23 +0000
Received: from [10.86.249.198] (helo=asas054.asem.intra)
 by smtpcorp.com with esmtpa (Exim 4.97-S2G)
 (envelope-from <f.suligoi@asem.it>) id 1sBtsT-FnQW0hPuHwL-dxGp;
 Tue, 28 May 2024 10:16:21 +0000
Received: from flavio-x.asem.intra ([172.16.18.47]) by asas054.asem.intra with
 Microsoft SMTPSVC(10.0.14393.4169); Tue, 28 May 2024 12:16:14 +0200
From: Flavio Suligoi <f.suligoi@asem.it>
To: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Jose Abreu <joabreu@synopsys.com>, Adam Ford <aford173@gmail.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Flavio Suligoi <f.suligoi@asem.it>
Subject: [PATCH v4 3/5] arm64: dts: freescale: imx8mp-verdin: remove
 tx-sched-sp property
Date: Tue, 28 May 2024 12:15:51 +0200
Message-Id: <20240528101553.339214-4-f.suligoi@asem.it>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240528101553.339214-1-f.suligoi@asem.it>
References: <20240528101553.339214-1-f.suligoi@asem.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 28 May 2024 10:16:14.0294 (UTC)
 FILETIME=[12124760:01DAB0E8]
X-Smtpcorp-Track: rpuIHIIZ4gwJ.j1knVKuXMpMn.w_aSUwVRvFm
Feedback-ID: 1174574m:1174574aXfMg4B:1174574s7KWN2naAj
X-Report-Abuse: Please forward a copy of this message, including all headers,
 to <abuse-report@smtp2go.com>

Strict priority for the tx scheduler is by default in Linux driver, so the
tx-sched-sp property was removed in commit aed6864035b1 ("net: stmmac:
platform: Delete a redundant condition branch").

So we can safely remove this property from this device-tree.

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
---

v4 - Resend after some weeks (also added the tag "Reviewed-by: Krzysztof
     Kozlowski <krzysztof.kozlowski@linaro.org>" in patch num. 5/5.
v3 - Removed the tag "Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>"
     (it was added by mistake).
     Added history, as well as in the cover-letter.
v2 - This patch is the 2nd version of a previous patch, where both the DTS
     and the yaml files were included toghether. Then I split this 1st patch
     series in two, as suggested by Krzysztof.
v1 - Original version of the patch where, in addition to this DTS patch,
     there was also the one related to the correspondent snps,dwmac.yaml
     dt_binding file.

 arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
index aef4bef4bccd..222521f116f5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
@@ -276,7 +276,6 @@ queue4 {
 
 	mtl_tx_setup: tx-queues-config {
 		snps,tx-queues-to-use = <5>;
-		snps,tx-sched-sp;
 
 		queue0 {
 			snps,dcb-algorithm;
-- 
2.34.1


