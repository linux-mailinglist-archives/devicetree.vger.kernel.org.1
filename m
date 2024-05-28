Return-Path: <devicetree+bounces-69787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BC78D184B
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 12:17:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 502B51C22A06
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 10:17:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FE2516C6B6;
	Tue, 28 May 2024 10:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b="0ePY+NmX";
	dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b="i6nal+1I"
X-Original-To: devicetree@vger.kernel.org
Received: from e2i187.smtp2go.com (e2i187.smtp2go.com [103.2.140.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD46A16C689
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 10:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.2.140.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716891393; cv=none; b=H9sSaJIzF0/Jx4vHxujrHrNGkFMppAVDwe7NeEcnW3RmNsCyGzTAk+WzcFcQYQuy+/O8gYakuFz8EdyY+uftMRaVTWeCTnXhuS8gxZsFBUL/2IVqcfGCO2cUivndtjJtE+Y8GN+mVOfVXuxK5QI1f1blhF7DRdWFdLreFqbscCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716891393; c=relaxed/simple;
	bh=5F+iDYpbnmnqiU4VSKO2K0zkALQApme+Wow4A9DBOo0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IRWtNL7qhLBRsSU1bYxggXJSAuHJvblPp1OVDE944VDKf9w0EM4kGbUi5sLwQ8ttKtUdbMhkFdH0gmwUbVCpWbs+QF3JH/rl+Vc37VYZUgnoBEd0OHt4WisAa/WGXqecp67zDJh1z1bsp5eo76W4m2Jq4MYlt/pOYMCuGBVC/XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it; spf=pass smtp.mailfrom=em1174574.asem.it; dkim=pass (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b=0ePY+NmX; dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b=i6nal+1I; arc=none smtp.client-ip=103.2.140.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=em1174574.asem.it
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=smtpcorp.com; s=a1-4; h=Feedback-ID:X-Smtpcorp-Track:Message-Id:Date:
	Subject:To:From:Reply-To:Sender:List-Unsubscribe:List-Unsubscribe-Post;
	bh=oa6h68qDDGHy9Qw+YR/L3ULv9tToF4ZR16++RM2seHg=; b=0ePY+NmX3rRfKch5qAlcYv+Umt
	Jc+dIg456ukqIBoPrbSeIsOOIflnDPjH/G+Ko+vmU1SAQtQSfwOy/LUvzheGy1GuNbkMo6+XaU5kc
	lBUULnw5mxpO/5J3CSyeNe6CMVohbKaYS1BczDZnPwNTPDqLthvLExqch085vTUEXU0lWc46565NS
	S2FqGUjj2KrCM+qUSW3lC8frRbDaU3avxGcztMKtW+V1Jk4wEPmxk39dmwb5/qLqHeofT5vuxQ3bk
	zHoC/ZM+9NTL9V7GWzzNGoCW3TWyiDi5+/+Q6UGeS8t270Ig9qj5ZylKVp0VWrCIfEmoqrcaVUtdH
	QKyISQ2A==;
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asem.it;
 i=@asem.it; q=dns/txt; s=s1174574; t=1716891391; h=from : subject : to
 : message-id : date; bh=oa6h68qDDGHy9Qw+YR/L3ULv9tToF4ZR16++RM2seHg=;
 b=i6nal+1IHaSyidty0QDm7i+s0wybxP7HBBMRrsqEB2m89HmBbF2Vhg8pNHReao/3BukQ5
 lXT3SYg1rQjEOpS1+T179Rqigt/ioOr8YqCOmtps9sqxO4oDqBzlmHTgfqBiAbMd+Qt5pWD
 2laQNijp2H7HNtYTVoK64cGauJYWPf7weOiliMfqyjexGgtraoUIBShF6Myt3ga8aEBV6u7
 IIaj5316lBHCUTbqceK0MzR1rUh30myvVVoiKV5DUwRVLjAAOAGGh3sAHW7z3hyThXT/Mqi
 OTeZVQ9CBVySE8guRM+8FL9fhZN5c0MWWjm/oqGAlMPAz6jNB3fnMDqYlXfg==
Received: from [10.45.56.87] (helo=SmtpCorp) by smtpcorp.com with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2-S2G) (envelope-from <f.suligoi@asem.it>)
 id 1sBtsY-Y8PCtQ-Ux; Tue, 28 May 2024 10:16:26 +0000
Received: from [10.86.249.198] (helo=asas054.asem.intra)
 by smtpcorp.com with esmtpa (Exim 4.97-S2G)
 (envelope-from <f.suligoi@asem.it>) id 1sBtsW-FnQW0hPuHwL-fPMb;
 Tue, 28 May 2024 10:16:25 +0000
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
 linux-kernel@vger.kernel.org, Flavio Suligoi <f.suligoi@asem.it>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 5/5] arm64: dts: qcom: sa8775p-ride: remove tx-sched-sp
 property
Date: Tue, 28 May 2024 12:15:53 +0200
Message-Id: <20240528101553.339214-6-f.suligoi@asem.it>
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
X-OriginalArrivalTime: 28 May 2024 10:16:14.0341 (UTC)
 FILETIME=[12197350:01DAB0E8]
X-Smtpcorp-Track: tlTUXbgGgrP_.m4MSdnseIQsD.1blmKQ6fzuX
Feedback-ID: 1174574m:1174574aXfMg4B:1174574sUnubbTcW2
X-Report-Abuse: Please forward a copy of this message, including all headers,
 to <abuse-report@smtp2go.com>

Strict priority for the tx scheduler is by default in Linux driver, so the
tx-sched-sp property was removed in commit aed6864035b1 ("net: stmmac:
platform: Delete a redundant condition branch").

So we can safely remove this property from this device-tree.

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

v4 - Resend after some weeks.
     Added the tag "Reviewed-by: Krzysztof Kozlowski
     <krzysztof.kozlowski@linaro.org>"
v3 - Removed the tag "Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>"
     (it was added by mistake).
     Added history, as well as in the cover-letter.
v2 - This patch is the 2nd version of a previous patch, where both the DTS
     and the yaml files were included toghether. Then I split this 1st patch
     series in two, as suggested by Krzysztof.
v1 - Original version of the patch where, in addition to this DTS patch,
     there was also the one related to the correspondent snps,dwmac.yaml
     dt_binding file.

 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index 26ad05bd3b3f..2e1770e07f45 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -334,7 +334,6 @@ queue3 {
 
 	mtl_tx_setup: tx-queues-config {
 		snps,tx-queues-to-use = <4>;
-		snps,tx-sched-sp;
 
 		queue0 {
 			snps,dcb-algorithm;
@@ -404,7 +403,6 @@ queue3 {
 
 	mtl_tx_setup1: tx-queues-config {
 		snps,tx-queues-to-use = <4>;
-		snps,tx-sched-sp;
 
 		queue0 {
 			snps,dcb-algorithm;
-- 
2.34.1


