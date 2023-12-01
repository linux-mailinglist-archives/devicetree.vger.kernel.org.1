Return-Path: <devicetree+bounces-20634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA97800636
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 09:51:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17AA22816A4
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 08:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBCF41C2B5;
	Fri,  1 Dec 2023 08:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="jplB+oWN"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7382194;
	Fri,  1 Dec 2023 00:51:00 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B18otYI126348;
	Fri, 1 Dec 2023 02:50:55 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701420655;
	bh=NscL3Sas4Tp3A3k8UITB+q6E+Lj34rinbPBLH++LU3Y=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=jplB+oWNqQKOgkRAupfikuz9p/6MhJw3jH656i1ZoS/w4k3h3ACiuJ/b2shwuhZZS
	 35TjurTEeJ6+414cVeks/VfFbM192Qp5OIwKZ+Q8Dy73IdtLlYRgmvyBd7pYuRQoW/
	 v4jfOpQh81k8OkQ+ISgeIoDJdoWI6ygUmnn3xH8s=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B18otQj116187
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 1 Dec 2023 02:50:55 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 1
 Dec 2023 02:50:55 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 1 Dec 2023 02:50:55 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B18otxG105321;
	Fri, 1 Dec 2023 02:50:55 -0600
From: Nishanth Menon <nm@ti.com>
To: <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        Nitin Yadav
	<n-yadav@ti.com>
CC: Nishanth Menon <nm@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3] arm64: boot: dts: ti: k3-am62a-main: Fix GPIO pin count in DT nodes.
Date: Fri, 1 Dec 2023 02:50:53 -0600
Message-ID: <170142057182.921957.13056043269089747285.b4-ty@ti.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231027065930.1187405-1-n-yadav@ti.com>
References: <20231027065930.1187405-1-n-yadav@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hi Nitin Yadav,

On Fri, 27 Oct 2023 12:29:30 +0530, Nitin Yadav wrote:
> Fix number of gpio pins in main_gpio0 & main_gpio1 DT nodes according
> to AM62A7 datasheet[0].
> 
> [0]https://www.ti.com/lit/gpn/am62a3 Section: 6.3.10 GPIO (Page No. 52-55)
> 
> 

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: boot: dts: ti: k3-am62a-main: Fix GPIO pin count in DT nodes.
      commit: 7dc4af358cc382c5d20bd5b726e53ef0f526eb6d

NOTE: fixes sha is 12 chars and not 13 (generates a checkpatch warning - which
you should have run before posting) and the $subject line does'nt need "boot:"
- I have fixed this locally before I applied, but please take care of this in
the future.

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent up the chain during
the next merge window (or sooner if it is a relevant bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/ti/linux.git
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D


