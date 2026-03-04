Return-Path: <devicetree+bounces-271061-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qGrLEik6qGkTqgAAu9opvQ
	(envelope-from <devicetree+bounces-271061-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:56:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EE178200D21
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:56:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CFCD23040204
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:55:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DDE73B52E5;
	Wed,  4 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pta2002.com header.i=@pta2002.com header.b="MlhLMxlR";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mrs1.rp.oracleemaildelivery.com header.i=@mrs1.rp.oracleemaildelivery.com header.b="ncdpzK/4"
X-Original-To: devicetree@vger.kernel.org
Received: from abi149ajj126.mrs1.oracleemaildelivery.com (abi149ajj126.mrs1.oracleemaildelivery.com [129.149.100.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 739A93B4E8F
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 13:54:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=129.149.100.126
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772632492; cv=none; b=Wm2aMa9BflsywPbtYzAQcik33MxOEu/T4I289+PMK/SJXopBUF4Fua2WpvzcZcTj35TcGMWF6zYqkbSSUUa83ha/r6l9zs0WftGgTIQNxNww6mgXFKu4nVljls/RrFed2FpIuovbHylXDjgKoDbQ6Bc0X2LhdMoqZCshLqNB8EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772632492; c=relaxed/simple;
	bh=a20VMlDpaLH9AXgrhdHoV4Pssvg7BkUbHXan6awwzQ8=;
	h=From:Date:Subject:MIME-version:Content-type:Message-id:To:Cc; b=Z5Opd+dVOTzOh1J/33NLj5ZtDcErSEe4FP4gsV9CEb+wFtI8xX/lW1yEnuFqw46LHwdU858/5slwoyX9b4WRlLaZbYdEeUoL1Dg9LBtH3y1VVPPCGdC75CV8URR+ZfttQ4TLDyFbcAWBa6fToSFmvPwjfxm6Q5U9oTX3tXFJS5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=pta2002.com; spf=pass smtp.mailfrom=mrs1.rp.oracleemaildelivery.com; dkim=pass (2048-bit key) header.d=pta2002.com header.i=@pta2002.com header.b=MlhLMxlR; dkim=pass (2048-bit key) header.d=mrs1.rp.oracleemaildelivery.com header.i=@mrs1.rp.oracleemaildelivery.com header.b=ncdpzK/4; arc=none smtp.client-ip=129.149.100.126
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=pta2002.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mrs1.rp.oracleemaildelivery.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=pta2002-202603;
 d=pta2002.com;
 h=Date:To:From:Subject:Message-Id:MIME-Version:Sender:List-Unsubscribe:List-Unsubscribe-Post;
 bh=f8nmjH0o71gVTcBoCc9bpsGh59DT0B52MUM4FwYNG4o=;
 b=MlhLMxlRXoh/nBQEK7SkhlUcifFt8nsCYYWr9Qr+9mWh/gOIX0mgr3D15j2rvie8ZLD4lH0Q5CSt
   jiEQ2riLGzvka24M4SSY2ngxVI3i8IpeV5JmeFOZjNt7ixpt7GgeG+sANjN8IderLa8uLFXU74EC
   A+JjwUIUJAwRpvDVa+1AhfEn+HXaT8ZF0TAJWfaAx+aeuLp6GgrOAY6q0wmkbzKbmCYbu6hHoTet
   PoJls3JEXi5SPoiSJ8CbBjMaPMGNSF/5io/DP9dqsxQd8lTmHaeod95/CMCGJWt3mLj+4TIZ5IXa
   dEJw+QYhtQfH6JawYd28vPh8mlg9iA5uv9wmew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=prod-mrs-20211019;
 d=mrs1.rp.oracleemaildelivery.com;
 h=Date:To:From:Subject:Message-Id:MIME-Version:Sender:List-Unsubscribe:List-Unsubscribe-Post;
 bh=f8nmjH0o71gVTcBoCc9bpsGh59DT0B52MUM4FwYNG4o=;
 b=ncdpzK/4LS97XKB1skyxaHGRmjnOXja4tHeTgHiF84UY4iUyXoT1KCLY8eqd0g3rr2OaFfSiZlYa
   n7fmJv3fL/x3Zv8OuE/Jp0M5CxpbkYfeiXiWF4H8koQvkvIsfLXSEjfDjlKa7WinNyZ1XM0sUKEl
   LRFL5XozqmisKWVlnbaohUiGfWsDn63gATIWOvg3b15hGCD+o3VawZIpRzgQgVBLNGLxMy2bLXRy
   j4y3QDMFU19KwAuJYEUep/NCoTKWi7W5nyD0hHDa2RZz0S45oQD5eFVRXef9Br3bSQ1n4YRsz+7Z
   uSKCeWmPs0JIwHV8RrOSekjiWzPqtCDi/M1Jdw==
Received: by omta-ad1-fd2-401-eu-marseille-1.omtaad1.vcndpmrs.oraclevcn.com
 (Oracle Communications Messaging Server 8.1.0.1.20260212 64bit (built Feb 12
 2026))
 with ESMTPS id <0TBD00DONNZACF40@omta-ad1-fd2-401-eu-marseille-1.omtaad1.vcndpmrs.oraclevcn.com>
 for devicetree@vger.kernel.org; Wed, 04 Mar 2026 13:54:46 +0000 (GMT)
List-Unsubscribe-Post: List-Unsubscribe=One-Click
From: Pedro Alves <pta2002@pta2002.com>
Date: Wed, 04 Mar 2026 13:54:45 +0000
Subject: [PATCH] arm64: dts: rockchip: configure hdmirx in Rock 5 ITX
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-version: 1.0
Content-type: text/plain; charset="utf-8"
Content-transfer-encoding: 7bit
Message-id: <20260304-radxa-r5-itx-hdmirx-v1-1-f77bf1f7ce03@pta2002.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Pedro Alves <pta2002@pta2002.com>
X-Mailer: b4 0.14.3
X-B4-Tracking: v=1; b=H4sIAKQ5qGkC/x3MSQqAMAxA0atI1gaqHRCvIi6KTW0WDqQiBfHuF
 pdv8f8DmYQpw9g8IHRz5mOv6NoGluT3lZBDNfSqd0orjeJD8SgW+SqYwsZSMBpnLDkTh0VDLU+
 hyOW/TvP7fnnBuFVlAAAA
X-Change-ID: 20260303-radxa-r5-itx-hdmirx-f4645e64f8c3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772632485; l=2284;
 i=pta2002@pta2002.com; s=20260304; h=from:subject:message-id;
 bh=a20VMlDpaLH9AXgrhdHoV4Pssvg7BkUbHXan6awwzQ8=;
 b=T4+sgz4tWkB8i0u16hTDGjXuLsMdrYYl15JeSAdNb40ze7ydGmZe+dJlrjHy11G8r2aDvoAc4
 FfEVkl+3sLQB8E2pj3XSkQVo40wODZC7G/oYYxB7dVSAMTzUJNzTgrJ
X-Developer-Key: i=pta2002@pta2002.com; a=ed25519;
 pk=leagPTMCtYIB9nQJfoZ5+TYiuZUercAQHfGnFVTTaiQ=
Reporting-Meta:
 AAFw+0CP0PnaoJ46S1wWgOjfMw4kceiZ7uqB5ClL97jTJ2qLoufiwQIhvJ3NQU+T
 V33OC6+yp86+syDj7IVQ2dZaJCEsMkOjKhmct6PIaNhLuH7hSl2615KouHtA/GBQ
 NUkRLtG5RJX6ehM8hvFkluXBvY2lVYxEUWDNSosnvReve6Y9w7o/RpWmfi2PBX1U
 GR50+YGwGKpaMUGWDgkfAXfrWBgjfu1Di/Ac9MrzVXPnmK3JmHSE/WYpBK225iLa
 tbESxgstSujrXxbPDM/8S1HJokf1b3zWQss4ZYDTJy3A+FgSNykrmGpUp5rMjZ3U
 rfHXTnKmFqt7wClBEIHKAaN6R9lw7z+EEHCPcI/9atGqGr2a0hKY+EuUb15H9kgz
 EFvU3YM6Ei3bNgzbnApCNIhdTm52y5+fw4ziiXikmJMGbY7VywozSVVfuWqCRBs=
X-Rspamd-Queue-Id: EE178200D21
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[pta2002.com:s=pta2002-202603,mrs1.rp.oracleemaildelivery.com:s=prod-mrs-20211019];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[pta2002.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271061-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[pta2002.com:-,mrs1.rp.oracleemaildelivery.com:-];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pta2002@pta2002.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.407];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,pta2002.com:mid,pta2002.com:email]
X-Rspamd-Action: no action

The Radxa Rock 5 ITX board exposes an HDMI input exactly the same way as
the Rock 5B, but this was not reflected in its DTS.

Change the rk3588-rock-5-itx to configure and enable the hdmi_receiver
and hdmi_receiver_cma nodes.

One of the existing pinctrl labels, hdmirx_det, was renamed into
hdmirx_hpd to match the other boards. The _det name seems to have come
from the downstream kernel sources, where the other boards also have
that name. Changing it to hdmirx_hpd in order to be consistent with the
other rk3588 boards in the kernel.

The configurations were confirmed to be identical on the downstream
Radxa kernel, and this has been tested to work on a Rock 5 ITX board
running kernel 6.19.3.

Signed-off-by: Pedro Alves <pta2002@pta2002.com>
---
Tested with the following commands:

v4l2-ctl --verbose -d /dev/video4 \
  --set-fmt-video=width=3840,height=2160,pixelformat='BGR3' \
  --stream-mmap=4 --stream-skip=3 --stream-count=20 \
  --stream-to=hdmiin.raw --stream-poll

ffmpeg -f rawvideo -vcodec rawvideo -s 3840x2160 -r 30 -pix_fmt bgr24 \
  -i hdmiin.raw output.mp4
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
index 172aeabba72a..9f4f31d1ca94 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
@@ -349,6 +349,18 @@ &hdmi1_sound {
 	status = "okay";
 };
 
+&hdmi_receiver_cma {
+	status = "okay";
+};
+
+&hdmi_receiver {
+	pinctrl-0 = <&hdmim1_rx_cec &hdmim1_rx_hpdin &hdmim1_rx_scl &hdmim1_rx_sda &hdmirx_hpd>;
+	pinctrl-names = "default";
+
+	hpd-gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
 &hdptxphy1 {
 	status = "okay";
 };
@@ -746,7 +758,7 @@ vbus5v0_typec_en: vbus5v0-typec-en {
 	};
 
 	hdmirx {
-		hdmirx_det: hdmirx-det {
+		hdmirx_hpd: hdmirx-5v-detection {
 			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};

---
base-commit: 05f7e89ab9731565d8a62e3b5d1ec206485eeb0b
change-id: 20260303-radxa-r5-itx-hdmirx-f4645e64f8c3

Best regards,
-- 
Pedro Alves <pta2002@pta2002.com>


