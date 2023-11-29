Return-Path: <devicetree+bounces-20000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 581F07FD80C
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:28:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 02E1D1F20F80
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 13:28:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E77A120319;
	Wed, 29 Nov 2023 13:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="JnvVyn4L"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30F50A3;
	Wed, 29 Nov 2023 05:28:28 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 533C76602F2A;
	Wed, 29 Nov 2023 13:28:26 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701264507;
	bh=Rdu1NaKSj2kzBeybGne4kRQi1ROpMAaHqNT1VOxkkV0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JnvVyn4Lq9o5kVeK/OFctReEqNq9aOvb3z3dKUeB9dvDlSxL1sMAFEJA0QKwAMs4z
	 dP82xlCUWSV0vkDwZwqLmr1tdhXpvcWi7Hh8ivz0O4dTn2gJhGMzSVAqkDPGDIv33Q
	 zhytACMP9mlxNvUVGg04i8ADhiMXSIfmOvHRimc2SBA99ydxLJIvTmqVtofKpmblsf
	 pCvpHWbsKc6yOhZoplKBVozGhestOMNDPD8csqTz6g5j56enmA4358ibDrYguj43P/
	 +TNMSElGTp7r2yzlfp8PDbcqK3hTPt6jcVZ3B18z1+WXKitymG9Yuwc/OL+t/t/bcB
	 4OAkUNu9o3BQA==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org,
	Eugen Hristev <eugen.hristev@collabora.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	matthias.bgg@gmail.com,
	kernel@collabora.com
Subject: Re: [PATCH] arm64: dts: mediatek: mt7622: fix memory node warning check
Date: Wed, 29 Nov 2023 14:27:33 +0100
Message-ID: <170126437824.153055.16156664615192644481.b4-ty@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230814065042.4973-1-eugen.hristev@collabora.com>
References: <20230814065042.4973-1-eugen.hristev@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 14 Aug 2023 09:50:42 +0300, Eugen Hristev wrote:
> dtbs_check throws a warning at the memory node:
> Warning (unit_address_vs_reg): /memory: node has a reg or ranges property, but no unit name
> 
> fix by adding the address into the node name.
> 
> 

Applied, thanks!

[1/1] arm64: dts: mediatek: mt7622: fix memory node warning check
      commit: 022597b6e520b5c21894b9693bde215a5d788a17

Best regards,
-- 
AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

