Return-Path: <devicetree+bounces-131190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE9E9F24CD
	for <lists+devicetree@lfdr.de>; Sun, 15 Dec 2024 17:35:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6962A164CA0
	for <lists+devicetree@lfdr.de>; Sun, 15 Dec 2024 16:35:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC6811940AA;
	Sun, 15 Dec 2024 16:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b="ZBTRGbPS"
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43A6193064
	for <devicetree@vger.kernel.org>; Sun, 15 Dec 2024 16:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734280516; cv=none; b=tri6pH3qB/0fjFWeP+nTzgZDr4S++UsxbQi3rxuXMMnbttXRfSEIA223X0b45JrTW4wHGx/TP7CraR8gUd74n9Tm+j4o+gjRbJGHpaA4vVzanlbo1x1i9SxvdTuw84SuVI+L5juMmT16rNpZwYO/1hb53NCH1ScRnUmz2yuC0UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734280516; c=relaxed/simple;
	bh=IjCZolz5QihZwDaCtI6RD1dw0ckFGtdFRN+BW0DQV2Q=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 In-Reply-To; b=K1dUJxJrbi914mTS0BK5U+3ZkJzNOVlXcKPRJIfxX7ck6cmTlBgWab8nXd1Z/ku6u63T0MaKCa5Jn08eN1Vs6hIvObbXsrU8UwD3Tqoo1V59faCKI7LDNd7dlPtt/DAnrPa9sPF2N23cTYZnW7UPnQeP8yEtRSIPFxzfKuu/aoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org; spf=pass smtp.mailfrom=mentallysanemainliners.org; dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b=ZBTRGbPS; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mentallysanemainliners.org
Authentication-Results: purelymail.com; auth=pass
DKIM-Signature: a=rsa-sha256; b=ZBTRGbPSgOJGQheJaz4Lyxl+8+Xn+AIgsDscThWDQDj+3T2bLUkLEjzbi5z5i097biiwuZ6gxBIgSnfmgyG2SFbSmgVo/R1ichpwR+lFje1V2l9rfzF3WePDnCLHBkJfyYFP9SaQGuP7YC339rHDm0/E+hG+mZOLH9Vq9njqBCq6QWmwu5WV49lLEPMUCcgTX7dY9mb3LJBFii4oUbg2F6kUfyx/cUQP+5v8r6SSAdBFIOXMmZ+1cUQmPX40q3trTbY9DDPEyGkyLNJ50yHtU414khoCnaAFdUZu6C3uFD70YbjD7/adx4sTUNzmXCzsNfuVmhbXOQ9lEgMaTb0mHw==; s=purelymail3; d=purelymail.com; v=1; bh=IjCZolz5QihZwDaCtI6RD1dw0ckFGtdFRN+BW0DQV2Q=; h=Feedback-ID:Received:Date:From:To:Subject;
Feedback-ID: 68247:10037:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id -1641233317;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Sun, 15 Dec 2024 16:34:51 +0000 (UTC)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 15 Dec 2024 17:33:21 +0100
Message-Id: <D6CF3DHQWEPR.3J1JM27L0JUKO@mentallysanemainliners.org>
From: "Igor Belwon" <igor.belwon@mentallysanemainliners.org>
To: <umer.uddin@mentallysanemainliners.org>
Cc: <alim.akhtar@samsung.com>, <conor+dt@kernel.org>,
 <devicetree@vger.kernel.org>, <igor.belwon@mentallysanemainliners.org>,
 <krzk+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <linux-samsung-soc@vger.kernel.org>,
 <robh@kernel.org>
Subject: Re: [PATCH v1 0/1] arm64: dts: exynos990: Add m5-pmu
X-Mailer: aerc 0.18.2
In-Reply-To: <20241214115855.49138-1-umer.uddin@mentallysanemainliners.org>

Hi Umer,

Tested-by: Igor Belwon <igor.belwon@mentallysanemainliners.org>

M5 PMU got succesfully enabled on c1s.

Best regards,
Igor

