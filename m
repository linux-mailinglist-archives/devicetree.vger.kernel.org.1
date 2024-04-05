Return-Path: <devicetree+bounces-56663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 947A889A112
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 17:29:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 501002836F8
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 15:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D464616F903;
	Fri,  5 Apr 2024 15:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b="PQNkW6hK";
	dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b="PSdFMBzG"
X-Original-To: devicetree@vger.kernel.org
Received: from e3i57.smtp2go.com (e3i57.smtp2go.com [158.120.84.57])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4585416F27D
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 15:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=158.120.84.57
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712330949; cv=none; b=Vpk0K6SFAMNXCkVrwTZea1o4Xje4LF23An5UkuNglQUEyNo9ubJyZ7CGMKVsfehwwRtA//2UTnrywyYY+SSfhCjO0FxelxSC1rJg9T6YV7fHZNLLj7v6znuV3Ocxb62z4EQDCz/9Id3wDKAEulNpBWHNvUyD6hZFZ1yEjHAd0KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712330949; c=relaxed/simple;
	bh=yEXd6R2RFIyAkUmeFULIOxy0s9OfDiNnoGFMw55jKdY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=mmZILIwWc+M0+lZHSs+xKtdPllhhAFrkMtB3FC//3AXwkSZSxe065UQKOKUUfpw0g2YjixImSODBKxkogFeaF8mgXJVkOyu9OSB8oCoksFTi0IW5pq4GrHhyM8Qt5KUV7VBcVy+h2fZH2FJbbdj93BwCPRW5nbEcKG2bI2QyfF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it; spf=pass smtp.mailfrom=em1174574.asem.it; dkim=pass (2048-bit key) header.d=smtpcorp.com header.i=@smtpcorp.com header.b=PQNkW6hK; dkim=pass (2048-bit key) header.d=asem.it header.i=@asem.it header.b=PSdFMBzG; arc=none smtp.client-ip=158.120.84.57
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=asem.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=em1174574.asem.it
Received: from [10.86.249.198] (helo=asas054.asem.intra)
	by smtpcorp.com with esmtpa (Exim 4.96.1-S2G)
	(envelope-from <f.suligoi@asem.it>)
	id 1rslV0-04gIYl-1e;
	Fri, 05 Apr 2024 15:29:02 +0000
Received: from flavio-x.asem.intra ([172.16.18.47]) by asas054.asem.intra with Microsoft SMTPSVC(10.0.14393.4169);
	 Fri, 5 Apr 2024 17:29:01 +0200
From: Flavio Suligoi <f.suligoi@asem.it>
To: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: netdev@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Flavio Suligoi <f.suligoi@asem.it>
Subject: [PATCH 0/6] Remove stmmac tx-sched-sp property from documentation and DT
Date: Fri,  5 Apr 2024 17:27:54 +0200
Message-Id: <20240405152800.638461-1-f.suligoi@asem.it>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 05 Apr 2024 15:29:01.0370 (UTC) FILETIME=[FC3A11A0:01DA876D]
X-smtpcorp-track: 1rs_V004gmY_1-.Eui8jfSQQjp3a
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smtpcorp.com;
 i=@smtpcorp.com; q=dns/txt; s=a1-4; t=1712330943; h=feedback-id :
 x-smtpcorp-track : date : message-id : to : subject : from : reply-to
 : sender : list-unsubscribe;
 bh=PPveenjhvhYMsU4A99FqUOwm3FtKhb+PERao04VTYEk=;
 b=PQNkW6hKi8DhYZEIOBWef26eo+wvKSd1VbnZ4h2bvEzLMqDGNXnhGg0C7zoeLG4Sfntb8
 2cUxR4r/V46tQtldn0x3ahnVRY9w83bBnmaaYY0CHxd/aiMDkfsDIxChJusT6efagdup9fX
 bBOmmG1tDUUYADKVzNRvFRH+JSyW6DIkSAw1fRrVnsex3g7srygB+QIZ/jk0pM7rT7a6afF
 rxK0NJJsX8B1ditS/94XqHbqPP0tmPd3dEvBhFqTkRIKqyVHn8ubovcnjzbwR7FRp8ELeUK
 8DdaVbjQbLZIBVYaQvkYD98RGA9F0NprDBrWvwcAO1g1A0Qk4TfgUm5wcadQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asem.it;
 i=@asem.it; q=dns/txt; s=s1174574; t=1712330944; h=from : subject : to
 : message-id : date; bh=PPveenjhvhYMsU4A99FqUOwm3FtKhb+PERao04VTYEk=;
 b=PSdFMBzGzUfbj1EL/TWfgJzR+3E/I4HG9eR94sLd8gEKLhKUsEaKDCPKVy07Z8xnfV+jH
 ABtJetQVpj2I2f80xWzHc70Pb3VA6ny4zTAffL52G0fZuCX+y000REBXz7eSJF0tnF/Abrn
 K7FyBgJdBgpbgzuf1Bn4q16KJpRE+XZgzl9/0uQplUYuAcdLOT78ENQ2paKpB8kKF/nUfM6
 XjuYoG9to5hV6mNnmr9aCLckgsQ+59I8YSdDVjrithWYZYjbqawtV7iMq1WuzQ0WVvpBxJu
 ZgsAnbJpRD9nT9KPRSZUqKtYT5TlKuQ12W2SuzMRbv0F0/Px5SLN2rfGauRw==

The property "tx-sched-sp" no longer exists, as it was removed from the
file:

drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c

by the commit:

commit aed6864035b1 ("net: stmmac: platform: Delete a redundant condition
branch")

This patch serie remove this property both from the "snps,dwmac.yaml"
documentation and from some device-tree boards files where was still used.

Flavio Suligoi (6):
  dt-bindings: net: snps,dwmac: remove tx-sched-sp property
  arm64: dts: imx8mp-beacon: remove tx-sched-sp property
  arm64: dts: imx8mp-evk: remove tx-sched-sp property
  arm64: dts: imx8mp-verdin: remove tx-sched-sp property
  arm64: dts: qcom: sa8540p-ride: remove tx-sched-sp property
  dts: qcom: sa8775p-ride: remove tx-sched-sp property

 .../devicetree/bindings/net/snps,dwmac.yaml        | 14 --------------
 .../boot/dts/freescale/imx8mp-beacon-som.dtsi      |  1 -
 arch/arm64/boot/dts/freescale/imx8mp-evk.dts       |  1 -
 arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi   |  1 -
 arch/arm64/boot/dts/qcom/sa8540p-ride.dts          |  2 --
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts          |  2 --
 6 files changed, 21 deletions(-)

-- 
2.34.1


