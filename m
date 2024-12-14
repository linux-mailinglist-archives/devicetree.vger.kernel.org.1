Return-Path: <devicetree+bounces-131076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7A49F1E64
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 13:00:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E418B163952
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 12:00:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A163F190049;
	Sat, 14 Dec 2024 12:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b="RI1yoT5k"
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F8C18D620
	for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 12:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734177619; cv=none; b=SBBfhzyMSKACINxSK+Jro1LdpXRSwpniDXCo2Y4i4isdHO0YVSDRPuYtPc+NurXxF08pPD0aARW1WKGx89kQ4+XeMLrwI8rPV6ozBMRfbB8O34ppmnASxTWtj87NraOE+l8VuBWHVLP5/agd/QqHRT27mqgFLVmXVdiliVipzzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734177619; c=relaxed/simple;
	bh=tYG9ihl5L+qiU8A5BMBzAn0oMBT4lU9q+EivAoC0UmA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=T5YbWsH4AWmc1TGJSGXxbAFVLTM/Iit8e35+YnbHjeOGG6xHtUSmz+OjXEGtrOwCA/N69KInWC0gu8oxSb/1McMK+gfyTc1LbW4sDhLzcOnpQwElGmKeSdZxzJbCMJa66tVpuZUmrZl+BQjbs5vYQByh1h52tyRyUUDWXiqYbgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org; spf=pass smtp.mailfrom=mentallysanemainliners.org; dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b=RI1yoT5k; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mentallysanemainliners.org
Authentication-Results: purelymail.com; auth=pass
DKIM-Signature: a=rsa-sha256; b=RI1yoT5kvuyVdZxUgRkJ7lgGLvj6bbZedA2OR1KhcLFCodlvHEUouHgtcaJQt44E46FMBXgd1rrd3j2PsFPFoTxRG/8b6PhftLaPgsfyV+nGYMyYDAjze8oroC14Er+8BGXJz5Pg9df8CNqIn/duGBzef2t8GmPJ16YzP8sX7doYxZVPE68Ai8SjOgAfy7hta2QEYkF8NvERQCv+c/yVPeu/7+gRiDrJOBr7V6CSD86ejxlHGBeide0tI3uFcld04QEdu+nTAr1Pdtn7dbjK3p/+Y44paomPQUZmXxzIyHlEHVwX7RJaQ5XJuu/rMdto5inSkArQFpeC0HVFc0G+zA==; s=purelymail3; d=purelymail.com; v=1; bh=tYG9ihl5L+qiU8A5BMBzAn0oMBT4lU9q+EivAoC0UmA=; h=Feedback-ID:Received:From:To:Subject:Date;
Feedback-ID: 68229:10037:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 770029855;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Sat, 14 Dec 2024 11:59:05 +0000 (UTC)
From: Umer Uddin <umer.uddin@mentallysanemainliners.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	igor.belwon@mentallysanemainliners.org
Subject: [PATCH v1 0/1] arm64: dts: exynos990: Add m5-pmu
Date: Sat, 14 Dec 2024 11:58:54 +0000
Message-ID: <20241214115855.49138-1-umer.uddin@mentallysanemainliners.org>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by Purelymail
Content-Type: text/plain; charset=UTF-8

Hi guys,

This series adds support for the mongoose cluster PMU in DT via
a compatible for it that was recently added.

This change was tested on my Samsung Galaxy S20 5G (x1s) and is
confirmed to be working.

Kind regards,
Umer.

Umer Uddin (1):
  arm64: dts: exynos990: Add a PMU node for the third cluster

 arch/arm64/boot/dts/exynos/exynos990.dtsi | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

--=20
2.47.1


