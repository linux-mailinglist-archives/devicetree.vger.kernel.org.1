Return-Path: <devicetree+bounces-270566-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aNtAOlPzpmmgawAAu9opvQ
	(envelope-from <devicetree+bounces-270566-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:42:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 679961F1B34
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:42:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DF57A3016D0E
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 14:38:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 569F83DEAEA;
	Tue,  3 Mar 2026 14:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="O8ba5NN2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay90-hz2.antispameurope.com (mx-relay90-hz2.antispameurope.com [94.100.136.190])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB8A3BD622
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 14:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.190
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772548683; cv=pass; b=TBi/2xkbJZcBnfQSriEDto7/YqeH6h9aX9J9Csi/0rdRzlCx/xta+D+VQwQg0bxMYUDEOLr/D6WpLVHaTjQfEPSpPqaALkWZPnN4OWCPg23XJhchn4VA/qj54G6A7IMc7TnG1JM4qlwgg4HMZcI+NXhkJCDpKr5vmXqmDNuyJYc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772548683; c=relaxed/simple;
	bh=rVuybQUqazKyV8k4hcvo27/qV8xyidoXn7ChdP0vDYQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zig7wXoz8lAgSSZQ0R5vdRq8XvvfW6Y0MTku6cFahiztQGnBXej4LitBV64UPOPmq5WPKhxAaOIVxHOEPnHeygYQ7SX8yQwCnbpk6LT7n1oBPxetjiE77D1Xu8Q1iKhJxpxKurHWujzunFLjmrCozCSDobxBObXrup5mxNOwcQ4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=O8ba5NN2; arc=pass smtp.client-ip=94.100.136.190
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate90-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=BtZl4GKtGgoXKB3Ht+zrsFdv8HOLRY0L6GMQM5yR7QM=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1772548665;
 b=K8yCheXooUJFSUSgKQYktrrJk/5PGq/ry4NdXvTjPnobK4dMG+tQiUU+l8jJNeFBAQ5UWLo6
 W5meVOClthQ1YwJY8XplrFl7mhvbrge/VVbf1YNGKQxrfEeVjaspo6EXSvBNnyge5ZN+Dg+kKe6
 mqeeuGEekUh+f31BMYHUEArzsigvMriE6UrhHcCj9DxJHVxpXuxXd+XlfBKGkYtCrR8HMEbgOSM
 R+2C8SXZP99VfDdXdbN9abektxIQgVzFSUU9mme+djqPm5u7munoLSQSW1bEC1PpJRZqRzsCOpO
 826vWUtO1jlQwIErIsMIcAD4/TCpe+kOiBGEYFs4B0XRg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1772548665;
 b=nOCMOUzqh7Vvt6o7eXdQxLVaSkuKWRBdR+OCLgOO6UlaS2URWkXnv9bQah3xqzU8+sfzMZa/
 5wFxWcWRnvPDmwq1bcsAVcWz6bHsAW1lO++0ZcAFUeRuhpDNpVh9VoUUfkGOamgRnkvKemkq9uw
 mBCGvv9h0tjsOFp1A4BNzJwyJpU1gdTSWEMiuFlstGUQCcHKMcfhdLMVtgMoTswVIXfu1dIJEl6
 vwyUsan+ncTvwgQQ9Zub0FQnWktlb4h8LD4f+Sr34OwwagCaIbrBIQttIHAYjq9sx/YmZrLf6AS
 ZziIV8tAmiy7bwSTJn4Q0fxuhwcilFxOrnfK1+pqWG3Xg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay90-hz2.antispameurope.com;
 Tue, 03 Mar 2026 15:37:45 +0100
Received: from [10.123.75.134] (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id DFBB7A4079E;
	Tue,  3 Mar 2026 15:37:40 +0100 (CET)
Message-ID: <113446c6-3b1c-457d-a29b-682cdc9e5577@ew.tq-group.com>
Date: Tue, 3 Mar 2026 15:37:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] ARM: dts: TQMa6: modify for use in bootloaders
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Cc: linux@ew.tq-group.com, devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260220143008.186851-1-Max.Merchel@ew.tq-group.com>
Content-Language: en-US
From: Max Merchel <max.merchel@ew.tq-group.com>
In-Reply-To: <20260220143008.186851-1-Max.Merchel@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:max.merchel@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: max.merchel@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay90-hz2.antispameurope.com with 4fQJLF4WpFzX1Yg
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:9fd46e5f27eaa805456295327e3d5223
X-cloud-security:scantime:1.206
DKIM-Signature: a=rsa-sha256;
 bh=BtZl4GKtGgoXKB3Ht+zrsFdv8HOLRY0L6GMQM5yR7QM=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1772548664; v=1;
 b=O8ba5NN2Do+n7txW5LWVYQ4bQ94aPguD3Xf3cw3Mzi2+egnnGaeTrUR8mN+Un/kesk2B0C1z
 xyNd1rFLnWpU12LryT82mVqSfrBrt6mFvkUA/vPwKO40HReIdC+CZfXGsIVtx7VbODOlxOurZuF
 X8rGa9eHFjjKU7aCVtwP7cPxIYskhlLdindfl3xCnJjt5Wkjjx6hZx6L3hOq3BAPxpUC5QPp2X0
 uyRiTfbY2tFh7hwYa+bhfo8RFMffzbV9A3fT/it40n5ckKFkufinZZNlRCOTvJVhkB5oXbAp2jQ
 s4tPlcsM8cPUJcz2q0JmjA2aOZYBolE32fLvej+uJw3hg==
X-Rspamd-Queue-Id: 679961F1B34
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	TAGGED_FROM(0.00)[bounces-270566-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[max.merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action


Am 20.02.26 um 15:30 schrieb Max Merchel:
> This series contains modifications for using Linux device trees
> in bootloaders. Changes from U-Boot bootloader are incorporated
> directly into the Linux device trees.
> 
> Changes in v2:
> Improved commit messages for commits that add boot-phase properties.
> 
> Max Merchel (4):
>    ARM: dts: imx6qdl-tqma6: add missing labels
>    ARM: dts: imx6qdl: add boot phase properties
>    ARM: dts: imx6qdl-tqma6: add boot phase properties
>    ARM: dts: imx6qdl-mba6: add boot phase properties
> 
>   arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi   | 12 ++++++++++++
>   arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6.dtsi  | 11 +++++++++++
>   arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi |  5 +++--
>   arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi |  6 ++++--
>   arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi        |  6 ++++++
>   5 files changed, 36 insertions(+), 4 deletions(-)
> 

Any further feedback on this?

-- 
Best regards,
Max

TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
http://www.tq-group.com/


