Return-Path: <devicetree+bounces-193023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3FFAF8EFC
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 11:45:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CED87B45320
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 09:12:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9642D28B419;
	Fri,  4 Jul 2025 09:09:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89E62EF9C4
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 09:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751620145; cv=none; b=MLBeUvY3fGbLr59r7/OOyoO92nJMpRrKVmCvzhBya9PeW0sXrL4W5uEMlTahAoxqjqQHuLoJKC0bevH2sQ0TgqeS/xB9FXqWMwzSQLEaB9hfpJlRV2JecXHrAQ6pflP1tshcwjndLJIBmjA0IXORwdvI3UdRyMBBGwHpAxcmWzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751620145; c=relaxed/simple;
	bh=Sh+wjzLAo6IPoI92SS951Z++tIQyLEeWn6kUDlcxkOo=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=PgoC7FEfvRXyiokSMzg/W6bldusOiHDYvOD6RDwvmskJ2c8M2zw+d+duQlFp7IH7dhFckjDh3AFBPOOI9T8uqe/1kxGe7PqvEOKYtRoVuqjAfznpMG2800P/c1YKDWC8o7XRb6PoF+7Qth/4D3sc5fXiAzCoQRjcjTqZP6Jpg/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uXcPj-00083n-9x; Fri, 04 Jul 2025 11:08:59 +0200
Message-ID: <a89f387d-bf81-459e-979e-d97afe25dea3@pengutronix.de>
Date: Fri, 4 Jul 2025 11:08:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: Access controllers: differentiate between access checks and grants?
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Cc: Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>,
 Gatien Chevallier <gatien.chevallier@foss.st.com>,
 Rob Herring <robh@kernel.org>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, Laurentiu Mihalcea
 <laurentiumihalcea111@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi,

Quoting access-controllers.yaml:

  Access controllers are typically used to set/read the permissions of a
  hardware block and grant access to it.

I am afraid that having the exact same binding for both granting and
checking accesses complicates matters:

  1) Harder to reason about device trees: Does this property actually
     modify hardware state or not?

  2) More difficult migration: If access granting is added initially to
     Linux, but later moved into the secure world. How to reflect in
     the DT that the access controller has become read-only and that the
     driver should not attempt writes?

My suggestion would be adding an `access-checks-only;` or similar
property for access controllers that are read-only.

By setting this property for simple devices like efuses with feature
gates, we address 1) above.

2) is addressed by adding this property to Linux device tree (e.g. via
bootloader fixup) when secure firmware starts to handle a bus controller
itself.

An example where 2) would be relevant is the recent addition to
linux-next of the AIPSTZ[1] bridge for i.MX8MP. The power-on reset
defaults for the bridge preclude the DSP from accessing peripherals in
the bridge and they are lost when shutting down the relevant power
domain, so the driver takes care to apply a permissive access list on
probe and resume.

If we were to move this security setting into the secure world for
actual security benefit and made the controller read-only for normal
world, we will need a way to tell the Linux driver to avoid writing to
the peripheral.

access-checks-only could be that way.

Thoughts?

[1]:
https://lore.kernel.org/all/20250610160152.1113930-1-laurentiumihalcea111@gmail.com/

Thanks,
Ahmad



-- 
Pengutronix e.K.                       |                             |
Steuerwalder Str. 21                   | http://www.pengutronix.de/  |
31137 Hildesheim, Germany              | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-5555 |


