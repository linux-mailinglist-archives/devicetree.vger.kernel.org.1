Return-Path: <devicetree+bounces-257769-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ECloO42DcGktYAAAu9opvQ
	(envelope-from <devicetree+bounces-257769-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:43:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A4C52F35
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:43:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 45E9835C684
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:42:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 937D84657C9;
	Wed, 21 Jan 2026 07:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EHHj3guZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEBB54611EE
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 07:42:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768981342; cv=none; b=uUOMZEnXmzp1hN2+I9KKvHEzb7JFnlbITHmWJvfw6+ggcjiicg1iWgfCRMTdxbHNft8T79c6SVWjNURYPn1SofStBZgEr8dBV5mV579ujMQR5gPqLVUKpoc65CVgZI0LKQQRcW5N6NiHrEWFu9RKC4Sw3sD5k2XAl3Q6aKk+82k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768981342; c=relaxed/simple;
	bh=H/Le12Y1Ya9Ys/AHE2MLwlPKgu80NfZB2AyT4Dbqvfw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Vh0kiks1oaPXX6aRoVv/SnYQifEnXvAOyqPWuiBeUN7WjqM/RerMeGp5CIZCb6W4vOeIkAKYc+epuoSv486is9tfXIVDXMlO3YRfiK/s1wQgEaXDD8TWAPEHowj6Pf2E40WVfhIEAoM5sUfsufkQZf/tcDRkBdqnC5FTxhw6x8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EHHj3guZ; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4801bc328easo53906935e9.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:42:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768981339; x=1769586139; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0cCPUZnGLoUlQBF/9NTsmnTAUK8WV5r6Blkl4XMyMuE=;
        b=EHHj3guZ4OUY8C10L9bOUKoUzpfWkdNAc7lKSKp+PU1+/jQEknZb0gXzHqx++d/ckG
         qssxHBDEznGgjznyucCUVzQqmqWWa03WV+0vBWsP3tyR7zJt5pllASVFzjEuhcRweULr
         7RaIJKe2dip0GegKszVbFNaiBFxPAhp7RdHgILwgDSJt5FYYYqnnqqFhsXEXhStxubxE
         R6yuQnP+hSQbXzt8rWb3W9wq6Rcr93yM0nWXO159skNVmc8gSdC6yDNCUyGiyjn2jHs7
         ltyAcJdpK7YqXRTUU6OI2JadS1lm9xRqDDYXLJVJ66FtC6WOk93O6UndPkCeayEfoj9p
         bswg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768981339; x=1769586139;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0cCPUZnGLoUlQBF/9NTsmnTAUK8WV5r6Blkl4XMyMuE=;
        b=S75n0CDTF2qlvbaEUJsH4wC1DhUXNhsxBCvIqU1UOloM9CcXvkhHxyBPdk+FroOw03
         DBHuplkpMApvjfKIFeYGElHLAUde5brtGn5Of6gVXmTltKZbL/9ITLLpLWmOKkgmrJ57
         xZeIEdtGA90v2rqZ/pLzjjNko3CxsKgEuQZjXH2NDyIUeU/w1HrYM1fGK3tmDDWa3S6T
         5cr6+GTkgB3UqkUXYag6GbpaHywfvOPwFdehkQJtjagks8TwnTfFMe+d0EyA4rGq7KfP
         jGEp+KsfC+0aKHJLOYoKLak/ChPUmPrAZvYGGKIs8YbNLCiGq65eVto2dCoLHLyx2cPu
         VoTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWjMEfKKa8ZaFs1sXd9RQvIyEXB9lagkqD/Brspqk7GF9l77ZEweexdgOUzZDtbuTAy1gOXRGPR++jE@vger.kernel.org
X-Gm-Message-State: AOJu0YzgBpgjAXX/FKDMCAG/XgB/J8yjMCZnXMwQ3mJPjVqhyI//IeNb
	nsw/TtJUG4uMMMr9o8i+fvUm8s8QuoHeYYB7kfh/x5IgU0fVnAXx2yY0
X-Gm-Gg: AZuq6aI7UvHITPA4pvRabW3t2NPCa4vFke70FPa300xwyLFkj+lal97KLkodODBV79d
	HFIIq8wzXIIMKsjNZH1WUXTwWFRnRM5ZICa58B/zDgbidZkuXWbSQ5P5ra5+B3ZnNBKJOPmvRoK
	lsga7OWg/+bYzAfph8xrb72J+Ghd4zVqKJcujXa7/7Yxp+LNCmJ8xMLcztRhaBFGRRZSNLkWcPq
	T9P1aPblJS8pdtCY0odCyfHQDtwrZ9lz6lJRvg55XG8sWCbJnPbTYe04OvcCIBOXUzWpWuUy3at
	XM44nS7D3oiwfQgTcRW9M2LE7/UWm3QihUHO+Nk36scqhItKf53nkuPNetwn8gat32OWTGJMFgT
	xEXjyirk8aJdKaAUf17GtInVKa/ipC0Eg8K4B2IUy+raIibFvwngvs+PNbXAqS53wX23N4hllT0
	NrJpJR9Xj7kiOcOYUEKpXbTI+phxHiSXjDGdQTbtAbgbdK+WIPtr7Cy0tn+Uo3fNE=
X-Received: by 2002:a05:600c:198e:b0:477:9976:9e1a with SMTP id 5b1f17b1804b1-4801eaadc94mr208656345e9.6.1768981338757;
        Tue, 20 Jan 2026 23:42:18 -0800 (PST)
Received: from alchark-surface.localdomain (bba-83-110-134-52.alshamil.net.ae. [83.110.134.52])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4356999824csm34368915f8f.39.2026.01.20.23.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 23:42:18 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 21 Jan 2026 11:42:13 +0400
Subject: [PATCH v3] arm64: dts: rockchip: Explicitly request UFS reset pin
 on RK3576
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260121-ufs-rst-v3-1-35839bcb4ca7@gmail.com>
X-B4-Tracking: v=1; b=H4sIAFSDcGkC/2WMyw6CMBBFf4XM2pq2QGld+R/GBdQpTCKPtNhoC
 P9uYSOJy3Nzz1kgoCcMcMkW8Bgp0DgkyE8Z2K4eWmT0SAySS8WFMOzlAvNhZs41lqPVGnkF6T1
 5dPTeS7d74o7CPPrPHo5iW/8bUTDBrEajCpObQttr29f0PNuxh60R5cGT/OfJ5DVllZdOGKOcO
 nrrun4BqGEyK9YAAAA=
X-Change-ID: 20260119-ufs-rst-ffbc0ec88e07
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 "Martin K. Petersen" <martin.petersen@oracle.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: Quentin Schulz <quentin.schulz@cherry.de>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4576; i=alchark@gmail.com;
 h=from:subject:message-id; bh=H/Le12Y1Ya9Ys/AHE2MLwlPKgu80NfZB2AyT4Dbqvfw=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQWNEd1/vFnKX7XOtVy1p1lmvIvev2rTpd0fmpM/nNXQ
 vLCtTVnOyayMIhxMViKKbLM/bbEdqoR36xdHh5fYeawMoEMkRZpYAACFga+3MS8UiMdIz1TbUM9
 Q0MdYx0jBi5OAZhq3h8M/1PUlrT1cjzd+LP2hPPHiVdrjqyKMv++LfWp+MFDKeIlvxoYGc5LHbw
 W1GfhP9fil9RNhbevDEyO6D33TZoS4bdp5St7fX4A
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[cherry.de,vger.kernel.org,lists.infradead.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257769-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[2a2d0000:email,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,cherry.de:email]
X-Rspamd-Queue-Id: B1A4C52F35
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Rockchip RK3576 UFS controller uses a dedicated pin to reset the connected
UFS device, which can operate either in a hardware controlled mode or as a
GPIO pin.

Power-on default is GPIO mode, but the boot ROM reconfigures it to a
hardware controlled mode if it uses UFS to load the next boot stage.

Given that existing bindings (and rk3576.dtsi) expect a GPIO-controlled
device reset, request the required pin config explicitly.

The pin is requested with pull-down enabled, which is in line with the
SoC power-on default and helps ensure that the attached UFS chip stays
in reset until the driver takes over the control of the respective
GPIO line.

This doesn't appear to affect Linux, but it does affect U-boot:

Before:
=> md.l 0x2604b398
2604b398: 00000011 00000000 00000000 00000000  ................
< ... snip ... >
=> ufs init
ufshcd-rockchip ufshc@2a2d0000: [RX, TX]: gear=[3, 3], lane[2, 2], pwr[FASTAUTO_MODE, FASTAUTO_MODE], rate = 2
=> md.l 0x2604b398
2604b398: 00000011 00000000 00000000 00000000  ................

After:
=> md.l 0x2604b398
2604b398: 00000011 00000000 00000000 00000000  ................
< ... snip ...>
=> ufs init
ufshcd-rockchip ufshc@2a2d0000: [RX, TX]: gear=[3, 3], lane[2, 2], pwr[FASTAUTO_MODE, FASTAUTO_MODE], rate = 2
=> md.l 0x2604b398
2604b398: 00000010 00000000 00000000 00000000  ................

(0x2604b398 is the respective pin mux register, with its BIT0 driving the
mode of UFS_RST: unset = GPIO, set = hardware controlled UFS_RST)

This helps ensure that GPIO-driven device reset actually fires when the
system requests it, not when whatever black box magic inside the UFSHC
decides to reset the flash chip.

Cc: stable@vger.kernel.org
Fixes: c75e5e010fef ("scsi: arm64: dts: rockchip: Add UFS support for RK3576 SoC")
Reported-by: Quentin Schulz <quentin.schulz@cherry.de>
Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
This has originally surfaced during the review of UFS patches for U-boot
at [1], where it was found that the UFS reset line is not requested to be
configured as GPIO but used as such. This leads in some cases to the UFS
driver appearing to control device resets, while in fact it is the
internal controller logic that drives the reset line (perhaps in
unexpected ways).

Thanks Quentin Schulz for spotting this issue.

[1] https://lore.kernel.org/u-boot/259fc358-f72b-4a24-9a71-ad90f2081335@cherry.de/
---
Changes in v3:
- Rename the pin to "ufs-rstgpio" to avoid incorrectly matching against
  the GPIO schema with the *-gpio pattern (thanks Rob's bot)
- Amend the commit description to reflect the rationale for the pull-down
  configuration (thanks Quentin)
- Link to v2: https://lore.kernel.org/r/20260120-ufs-rst-v2-1-b5735f1996f6@gmail.com

Changes in v2:
- Change default pin pull to pull-down in line with the SoC power-on default
- Link to v1: https://lore.kernel.org/r/20260119-ufs-rst-v1-1-c8e96493948c@gmail.com
---
 arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi | 7 +++++++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi         | 2 +-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi
index 0b0851a7e4ea..98c9f8013158 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi
@@ -5228,6 +5228,13 @@ ufs_rst: ufs-rst {
 				/* ufs_rstn */
 				<4 RK_PD0 1 &pcfg_pull_none>;
 		};
+
+		/omit-if-no-ref/
+		ufs_rstgpio: ufs-rstgpio {
+			rockchip,pins =
+				/* ufs_rstn */
+				<4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
 	};
 
 	ufs_testdata0 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 3a29c627bf6d..49ccdf12ef7e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1865,7 +1865,7 @@ ufshc: ufshc@2a2d0000 {
 			assigned-clock-parents = <&cru CLK_REF_MPHY_26M>;
 			interrupts = <GIC_SPI 361 IRQ_TYPE_LEVEL_HIGH>;
 			power-domains = <&power RK3576_PD_USB>;
-			pinctrl-0 = <&ufs_refclk>;
+			pinctrl-0 = <&ufs_refclk &ufs_rstgpio>;
 			pinctrl-names = "default";
 			resets = <&cru SRST_A_UFS_BIU>, <&cru SRST_A_UFS_SYS>,
 				 <&cru SRST_A_UFS>, <&cru SRST_P_UFS_GRF>;

---
base-commit: 46fe65a2c28ecf5df1a7475aba1f08ccf4c0ac1b
change-id: 20260119-ufs-rst-ffbc0ec88e07

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>


