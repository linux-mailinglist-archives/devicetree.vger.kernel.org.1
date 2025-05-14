Return-Path: <devicetree+bounces-177266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE76AB6E27
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 16:28:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 80164862FEA
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 14:28:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 830031AA1DA;
	Wed, 14 May 2025 14:28:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b="suNo2YDF"
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCEC31BD01F
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 14:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747232880; cv=none; b=QXa7AQ0Qb1ZYBPzHJg96/i5oWKcDh6C0Ud+l8Ccy8jtAo8MwdvqMlOExP+isqqOpwUFQmelIAERbZB0WpObVc8DwErHlkLbgxJ5USfQvDjyUDkRFhut4faKZ4fzLLUmOGImRmjZjIUyCG0qU5ejPbxqyBrTUGooIYRidwsbSuic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747232880; c=relaxed/simple;
	bh=3cd4GYt7dt+rLooOE+rIxexrSys+8NzNZRAkEViR1/k=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=Og4tUkVI5cZrr0wwqE28a6yYQOBETQbaKIFDVbnDYjhTL/gIwu1gnArcoul8p8+hBGAmVxDm+iu5xgzn7EEDNp4vcMi5Xk2QWB5iKRL9IshrLz2tovv+r/zG44A7ue6Egp5O7OT6QKkj4zOS9pt0Xar+HPpFsYoeP+IiQN7llHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org; spf=pass smtp.mailfrom=mentallysanemainliners.org; dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b=suNo2YDF; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mentallysanemainliners.org
DKIM-Signature: a=rsa-sha256; b=suNo2YDFmgSLo4ydebgFiEaj4a8t4p6xEVC3Tf4bf94FgpmI/tTMVPLQtlIBD8vrv0QPFq9PCI/CRyPjrb9kvjBsnI18DGRVoTdLuRDJiUeYMO2M3Ab87JsKIKobP+Zh+UhUaZOl2txJvVXZPI2/Aq6xLsvenQTLP6oPwBPQTo0QrGaIS3IjD5z8Cnw+rUqvzyZOykD+qUvGQKH9rd90wguGp8uZKTdeRrnpOp+2ZRqyQWZenLWCJuGzAY6Q15WwnmLNIaOCFzXrSTj3BuPkswhc/2R7rNl9fKVI9lDtBNniE6OyydTePzY71m9xKbbIi/rqI9CIL6HsfX7n6hoZVQ==; s=purelymail1; d=purelymail.com; v=1; bh=3cd4GYt7dt+rLooOE+rIxexrSys+8NzNZRAkEViR1/k=; h=Feedback-ID:Received:Date:Subject:From:To;
Feedback-ID: 68247:10037:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id -502466249;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Wed, 14 May 2025 14:26:55 +0000 (UTC)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 14 May 2025 16:26:52 +0200
Message-Id: <D9VYC98LJTR0.LJXYC1H0BAKA@mentallysanemainliners.org>
Cc: "Kishon Vijay Abraham I" <kishon@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Marek Szyprowski"
 <m.szyprowski@samsung.com>, "Sylwester Nawrocki" <s.nawrocki@samsung.com>,
 "Alim Akhtar" <alim.akhtar@samsung.com>, "Krzysztof Kozlowski"
 <krzk@kernel.org>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-samsung-soc@vger.kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 0/2] USB PHY support for Exynos990 SoCs
From: "Igor Belwon" <igor.belwon@mentallysanemainliners.org>
To: "Vinod Koul" <vkoul@kernel.org>
X-Mailer: aerc 0.20.0
References: <20250420-usb-resends-april-v2-0-25dc7d2e6dd4@mentallysanemainliners.org> <aCRXgpD0Ld2W4lHE@vaman>
In-Reply-To: <aCRXgpD0Ld2W4lHE@vaman>

On Wed May 14, 2025 at 10:42 AM CEST, Vinod Koul wrote:
> On 20-04-25, 21:28, Igor Belwon wrote:
>> Hi all!
>>=20
>> This patchset adds support for the USB 2.0 PHY of the Exynos990 SoC.
>> This SoC has a combo PHY that supports highspeed, superspeed USB and
>> DisplayPort, however due to my inability to test the superspeed part of
>> the combo phy (device always enumerated as high-speed, even on the
>> vendor kernels/bootloaders) only the highspeed part is brought up.
>>=20
>> These changes have been tested and confirmed working (with the USB_ETH
>> gadget and telnet/ssh in a ramdisk) on a device from the hubble family
>> (x1s) and also a device from the canvas family (c1s).
>
> I am missing the dt patch, can you pls report the whole series if you
> would like me to review and apply this

Hi Vinod,

I've sent the DT series a while back (before resending). Usually I
propose DT changes through Krzysztof's tree. The patches are=20
unchanged (they will be resent unchanged when all usb and wdt=20
changes are merged).

Here is the patchset:
- on patchwork: https://patchwork.kernel.org/project/linux-samsung-soc/patc=
h/20250217-exynos990-dt-changes-febuary-v1-2-99935218cbf4@mentallysanemainl=
iners.org/
- on the mailing list archives: https://lore.kernel.org/all/20250217-exynos=
990-dt-changes-febuary-v1-2-99935218cbf4@mentallysanemainliners.org/

Best regards
- Igor

