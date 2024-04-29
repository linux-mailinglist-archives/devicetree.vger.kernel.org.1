Return-Path: <devicetree+bounces-63534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F21158B543A
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 11:27:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE6D3282909
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 09:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C45225750;
	Mon, 29 Apr 2024 09:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b="gR+TTC2B";
	dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b="G03iNm77"
X-Original-To: devicetree@vger.kernel.org
Received: from e2i187.smtp2go.com (e2i187.smtp2go.com [103.2.140.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E29322EF8
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 09:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.2.140.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714382850; cv=none; b=LpIjNatXFd0evWy6gPR/AsQbN8kcAIUI8z6umUjqPTby46TAqbpof7o1s/siGAjdNQG35l0CUL5+OOHZeNvIFzqH2KFaKTBvqXMZq2xq/mLH6EC+nZZFtUuAxByPZ30W4uz6278MaQx5XQEpI63u+mDal57dkSRJiBEREV1tCZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714382850; c=relaxed/simple;
	bh=PeIo8633KxMCicFSGbU5eN9BSne6OhoxkH2gFHVl+WI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=OnAaO63swrU3itSdUThmy8Z9DLvdMoBxEw9INKGx22FKAs9+2qK59yrpnKNzJ181zRENZamlvLEJRH6Yzun2N8GL6/Md/Yymc9rTAEZTJcb/0H2QHC7ZcMzu+jJC20kRuTRyS6oiOmUlq/IjkUHG3lkzg7aUVV3CRR79jqwFP1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it; spf=pass smtp.mailfrom=em1174574.asem.it; dkim=pass (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b=gR+TTC2B; dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b=G03iNm77; arc=none smtp.client-ip=103.2.140.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=em1174574.asem.it
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=smtpcorp.com; s=a1-4; h=Feedback-ID:X-Smtpcorp-Track:Message-Id:Date:
	Subject:To:From:Reply-To:Sender:List-Unsubscribe;
	bh=/jnzyymWoI0n+E9HMAHvZ+vi8662r/KZP+FVgSW63Ds=; b=gR+TTC2Bhn03p6ZmYTBUrmQyb/
	eAIq3tc0TIiHvX5nVeh7IbGLaqlXBYbQLEE1rSBJuJCb/8Wjd4G4yMwkVeXAFBTK8WhCZY2HpUbTX
	YjpQWGHJ7Nk6ZGuMyMN1hPDfFoINAXKHvSalqna1Z/mJVCUp5GE75zL6IVRwbP5/WCK1TysVZsZny
	eIvzBKG703d1Q1bZvwXdJmXC+E/s7kgZmynYzkutRGEmu/rCAwFhYHOLGJ5sQWapWGJDIsjlCjOE1
	/Uc2PNR261LGDMRIvrkLBw06NFT/1c94i9f0zRLXaF59Lwsku/lF4/wzg0b6Hx130o+MzwrFrw5L3
	hitr9eGQ==;
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asem.it;
 i=@asem.it; q=dns/txt; s=s1174574; t=1714382848; h=from : subject : to
 : message-id : date; bh=/jnzyymWoI0n+E9HMAHvZ+vi8662r/KZP+FVgSW63Ds=;
 b=G03iNm77hpht09vAzQi3XTh5sy9w9XThVedCYb127AEKKN+W8hFrY2frKObBNL4ayfr80
 A6UzufWBiZOqR55LsmzkWUdskNzpi4kB7o91nKXOxzBmRAz7Fi0DRZkQt68Txki1F5tLKSu
 rOsjX/eBHQNjH2nlE4nY2g7WmRT/gr8VY692Z860QW0CuQEoYnf8WJy1P/6igfP3AXkD8Ir
 sRVJ9XoCcDX2ygH1p8kuxOGddVyVrzchR3T+KzczRlX1xWq2RJfBI84vPvLaA2Gq6M9b5Qi
 4VpRWOfnYFij3IMxRRZxFd9HmBEgse/SzU7aAhJ8GH8d9I1kNH1l7Bbnq/dg==
Received: from [10.45.79.114] (helo=SmtpCorp) by smtpcorp.com with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2-S2G) (envelope-from <f.suligoi@asem.it>)
 id 1s1NI9-Y8PKfn-Go; Mon, 29 Apr 2024 09:27:21 +0000
Received: from [10.86.249.198] (helo=asas054.asem.intra)
 by smtpcorp.com with esmtpa (Exim 4.97-S2G)
 (envelope-from <f.suligoi@asem.it>) id 1s1NI8-FnQW0hPkfet-LMc9;
 Mon, 29 Apr 2024 09:27:20 +0000
Received: from flavio-x.asem.intra ([172.16.18.47]) by asas054.asem.intra with
 Microsoft SMTPSVC(10.0.14393.4169); Mon, 29 Apr 2024 11:27:18 +0200
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
Subject: [PATCH net-next v3 0/1] dt-bindings: net: snps,
 dwmac: remove tx-sched-sp property
Date: Mon, 29 Apr 2024 11:26:53 +0200
Message-Id: <20240429092654.31390-1-f.suligoi@asem.it>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 29 Apr 2024 09:27:18.0342 (UTC)
 FILETIME=[6E20CE60:01DA9A17]
X-Smtpcorp-Track: LcYZNkcnqZ-M.XwOkZLpkFveK.WxP7-Asofya
Feedback-ID: 1174574m:1174574aXfMg4B:1174574sSVfFvi59V
X-Report-Abuse: Please forward a copy of this message, including all headers,
 to <abuse-report@smtp2go.com>

Strict priority for the tx scheduler is by default in Linux driver, so the
tx-sched-sp property was removed in commit aed6864035b1 ("net: stmmac:
platform: Delete a redundant condition branch").

This property is still in use in the following DT (and it will be removed
in a separate patch series):

- arch/arm64/boot/dts/freescale/imx8mp-beacon-som.dtsi
- arch/arm64/boot/dts/freescale/imx8mp-evk.dts
- arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
- arch/arm64/boot/dts/qcom/sa8540p-ride.dts
- arch/arm64/boot/dts/qcom/sa8775p-ride.dts

There is no problem if that property is still used in the DTs above,
since, as seen above, it is a default property of the driver.

v3 - Added history in the patch, as well as in the cover-letter.
   - Add "Acked-by: Adam Ford <aford173@gmail.com>".
v2 - This patch is the 2nd version of a previous patch series, where both
     the DTS and the yaml files were included toghether. Then I split this
     1st patch series in two, as suggested by Krzysztof.
   - Add "Acked-by: Krzysztof Kozlowski <krzk@kernel.org>".
v1 - Original version of the patch series, including, in addition to this
     patch, also other five DTS patches, in which the property
     "snps,tx-sched-sp" appeared.

Flavio Suligoi (1):
  dt-bindings: net: snps,dwmac: remove tx-sched-sp property

 .../devicetree/bindings/net/snps,dwmac.yaml        | 14 --------------
 1 file changed, 14 deletions(-)

-- 
2.34.1


