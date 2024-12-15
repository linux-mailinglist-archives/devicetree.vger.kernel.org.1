Return-Path: <devicetree+bounces-131191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FA19F24E2
	for <lists+devicetree@lfdr.de>; Sun, 15 Dec 2024 18:10:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 301EB7A063E
	for <lists+devicetree@lfdr.de>; Sun, 15 Dec 2024 17:10:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 125E01B2180;
	Sun, 15 Dec 2024 17:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b="xAdJlwWG"
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6672E1B218C
	for <devicetree@vger.kernel.org>; Sun, 15 Dec 2024 17:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734282609; cv=none; b=GlB1b43p7gtTMeXAz8nAVVGX7kmjdnLagX006ARenbNHdquEJMu0L6S1s6iUfpv1oFVriEyUT8uTQe1Hvg5GKcvc3dv2zRSxLZj55RV2ARGtx4AdAiw/m7xbFGIP+azfpzqi96CEs/RSlugOrDZJNktmP2Yicu0M+j6NFmiFmPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734282609; c=relaxed/simple;
	bh=0+g+RK4mm+gXK4FknZi+afJu+Pu6+v4iIIJSvUsfP74=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=klZUfZmh4W/KKIkmZ+vohhwdESLyvL/0CKv8eNAeym+8NJt1oPuG8iks/bmmYtiE24KeYhIcHsHCcp6hT9HKA3ZbooJbFis3MtXMQWu4LpMHQOttL7EoMX6fQ5v7TUjkrgHoeT9V21xz4onUChtxfM8In60EZHTZb8ZM9l+Ymwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org; spf=pass smtp.mailfrom=mentallysanemainliners.org; dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b=xAdJlwWG; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mentallysanemainliners.org
DKIM-Signature: a=rsa-sha256; b=xAdJlwWGZcpzPGneW+nYOyAW9OLBj2j7IBzkaWPLPnPmri/9zWDy4SkkgdURob0ippmICXsv4ZOMP+sRj9+9BcEPOI4Zu01Bbrga82UJ8Bca9c9pOdESxv3pMZ/Q07j5VAYSRD8NTLC5ocWaVHiLcDyzxRSpsGZyvRjcKo0ewgTYb1YPOoAV+lEOeFYBB8QFLnbdaICJrV8vC5Q+et6jWahpxVwZLB6IuqBoZt6YN3hNxVd2kHY/8H2EvKUrUZbqtl6qlsXMhlhSGIUdquDKXn8Lf/mTgh1u/UVT/+CsTvlu7LyLiDHn7gM6JAOWSg3AOJkpABm4F506yYeSYFSgSw==; s=purelymail3; d=purelymail.com; v=1; bh=0+g+RK4mm+gXK4FknZi+afJu+Pu6+v4iIIJSvUsfP74=; h=Feedback-ID:Received:From:To:Subject:Date;
Feedback-ID: 68247:10037:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 1363280443;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Sun, 15 Dec 2024 17:09:54 +0000 (UTC)
From: Igor Belwon <igor.belwon@mentallysanemainliners.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/1] arm64: dts: exynos990: Add cmu nodes
Date: Sun, 15 Dec 2024 18:08:02 +0100
Message-ID: <20241215170803.1756850-1-igor.belwon@mentallysanemainliners.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by Purelymail
Content-Type: text/plain; charset=UTF-8

Hi all,

This patchset adds device tree nodes for Exynos990 CMUs (TOP and HSI0).

This allows the first two implemented CMU blocks to be used.

Changes since v1:
- Fix clock-names formatting (Thanks, Krzysztof!)
- Remove stray blank line (Thanks, Krzysztof!)
- Make clock-names conform with the binding style

Best regards,
Igor

Igor Belwon (1):
  arm64: dts: exynos990: Add clock management unit nodes

 arch/arm64/boot/dts/exynos/exynos990.dtsi | 28 +++++++++++++++++++++++
 1 file changed, 28 insertions(+)

--=20
2.45.2


