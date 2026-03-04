Return-Path: <devicetree+bounces-270880-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHoLG7Dhp2mrlAAAu9opvQ
	(envelope-from <devicetree+bounces-270880-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:39:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E941FBB55
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:39:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 23FC930CB8B6
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 07:37:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D81C36D9EB;
	Wed,  4 Mar 2026 07:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1dDJcjj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79FCD30ACF0;
	Wed,  4 Mar 2026 07:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772609842; cv=none; b=OemDHEqu7rq1tGiBpEC58w2ns5enEU/ecXK39fpHlC2iPzHpxww85FwZV/KYumgOVJ7DHA0E3QusCL+HgWZyt7xtaeLadtfuH5gCLayjMKinQw5Ns7YLa67EhP5JkyZ0WMx017rBnnJVO+j3Dq01EPIYapizIDnuFsZp8dcLTxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772609842; c=relaxed/simple;
	bh=azbr6K57fTqAAumzaPXw5TukZtFjPtItwS5yh3shQsI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Rwp+grpATL3PXpK4R31fSpt6M29TUCOxhq4yo7wc09g6WGrFMvX6XoNmyZvC4eW0DYYCgsW5QnjhjToJ2pVhxZB7qYMaQ76oNk+cXtvrOUXLGtCumyURcfKy+a5GhYxAeF//LuOwXBQZgAl6HpyIpKeG8DyupeqPGiGnFauGDiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1dDJcjj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CC1FC2BCAF;
	Wed,  4 Mar 2026 07:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772609842;
	bh=azbr6K57fTqAAumzaPXw5TukZtFjPtItwS5yh3shQsI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=X1dDJcjj6uuRg3UYUVo486JNbOEhGjz9ohQeZxawZoMXa1fvw0iRwlj828Fw801tz
	 8QCFsoZ0OGQLY2vhWKa+zaTK1pv/pzAS+fYAgGkB9Efdeaj+C+Elwdl+89nSjzZ0Wj
	 Rck6m+A7vGGpKcrmV/TPNkikgjQLKa5Tc17LdMeSRVvrOsrKKGdh9NpdDriVSwPcfW
	 1RpBWhzWGsBdguB+m58L1ONCS/4sa2LAWYcgce6b95jf0FyXg/3GXApbZA0hikh61h
	 /IxeCJ1LQcOpyC7Zh6VdHs4aaW3apLfHQExEYUigl/uDFaqTz+3QDmv/H3/51ETK3b
	 qw+sYkD/+6xoQ==
From: Yixun Lan <dlan@kernel.org>
Date: Wed, 04 Mar 2026 07:36:43 +0000
Subject: [PATCH 2/4] riscv: dts: spacemit: k3: add pinctrl support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-01-dts-uart-full-v1-2-50a0aa53a245@kernel.org>
References: <20260304-01-dts-uart-full-v1-0-50a0aa53a245@kernel.org>
In-Reply-To: <20260304-01-dts-uart-full-v1-0-50a0aa53a245@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Yixun Lan <dlan@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=934; i=dlan@kernel.org;
 h=from:subject:message-id; bh=azbr6K57fTqAAumzaPXw5TukZtFjPtItwS5yh3shQsI=;
 b=owEB6QIW/ZANAwAKATGq6kdZTbvtAcsmYgBpp+Ed0j7KxYg5TRh3MeN8b6VSOKQTUJkEfgM+b
 PotX3Co5jiJAq8EAAEKAJkWIQS1urjJwxtxFWcCI9wxqupHWU277QUCaafhHRsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDJfFIAAAAAALgAoaXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5
 maWZ0aGhvcnNlbWFuLm5ldEI1QkFCOEM5QzMxQjcxMTU2NzAyMjNEQzMxQUFFQTQ3NTk0REJCRU
 QACgkQMarqR1lNu+1blg/9F7olxaBFWs+VLjqqZXYjbxlga5Jb3wivuArss8iw20X3VsbWGokfi
 iRs8gXQs7627RQZIj6mpT8v1YVsd0EzpVWY4lsgMNoZKSBgGyPLrv/oso4Qrki+m0d8RvoXBGJ5
 YUmLWrvEDgJekEZfkii482jL3Zl1ZYQzvq65I5h44Phy75hp6Y56XndWWhHd0jHH4SYynP2ntOv
 QDCd4JQf3DVrfpZdNQ99UjQO5ITlfxgaA0sA9liTYJ0yGF0nUyodSF/8fFPSEIFf3Z7DhNx3QnK
 cqK2YDq/U4l8c5uRiuYdY/X75/CEIult2qkAwPHbX1aZaoDbpUjQVVPtiYKk5+iHSrL+DBe7Ajo
 ++ZYax7RtdCoY0v6BYliGQxfs8TLHsGLYY7cfOpj5Qsb2BbDeDT3zPQ48bccPppBZKvTqOHWWB6
 M8CjWe1KoMZXrIEEYiFzifS81o2Qlxlz7YdrChv1S/OfQFS6tBmdUw8xen9vYqUK1ZS3sx2Nn1c
 3CtDMJI6ZI3fQprDn8XwJhK1Nr//zVlXK+3QnBN4eHQUVKINjbq9XRqGRHc665iWxUK7BdIaAmi
 Sh4E3DLREF6Q6pIyiR8SQyxu0tKcXG1FgkC+jxLOuGgRoZM/8bByNwV5dYRVEX2NVfBieihoLTJ
 MyXQGsNonITWTQMBQZbUPgairTkzh8=
X-Developer-Key: i=dlan@kernel.org; a=openpgp;
 fpr=50B03A1A5CBCD33576EF8CD7920C0DBCAABEFD55
X-Rspamd-Queue-Id: C3E941FBB55
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270880-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,d401f000:email]
X-Rspamd-Action: no action

Populate pinctrl node in Device Tree for SpacemiT K3 SoC, So devices
can request pinctrl resource properly.

Signed-off-by: Yixun Lan <dlan@kernel.org>
---
 arch/riscv/boot/dts/spacemit/k3.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k3.dtsi b/arch/riscv/boot/dts/spacemit/k3.dtsi
index e3d7f3102fd5..6449ab056293 100644
--- a/arch/riscv/boot/dts/spacemit/k3.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k3.dtsi
@@ -536,6 +536,14 @@ uart9: serial@d4017800 {
 			status = "disabled";
 		};
 
+		pinctrl: pinctrl@d401e000 {
+			compatible = "spacemit,k3-pinctrl";
+			reg = <0x0 0xd401e000 0x0 0x1000>;
+			clocks = <&syscon_apbc CLK_APBC_AIB>,
+				 <&syscon_apbc CLK_APBC_AIB_BUS>;
+			clock-names = "func", "bus";
+		};
+
 		uart10: serial@d401f000 {
 			compatible = "spacemit,k3-uart", "intel,xscale-uart";
 			reg = <0x0 0xd401f000 0x0 0x100>;

-- 
2.53.0


