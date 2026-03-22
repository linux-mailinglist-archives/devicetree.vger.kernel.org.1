Return-Path: <devicetree+bounces-278665-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBNIBx2Gv2li5wMAu9opvQ
	(envelope-from <devicetree+bounces-278665-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 07:03:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 822682E856D
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 07:03:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D09A230104B6
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 06:03:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 513C330EF74;
	Sun, 22 Mar 2026 06:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="TtRdFoaW"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-155.mail.qq.com (out203-205-221-155.mail.qq.com [203.205.221.155])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3F533ADBA;
	Sun, 22 Mar 2026 06:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.155
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774159382; cv=none; b=kP2sq0Zo+DucKIvFWYUCI0YGAYYhfZ5z3iwOBtXGguqSqQTyLU6O591ak4LQ1ZR2vSmAVrMsrLZlCoCm9B+IDnKMOlfPqE0690zkSFrHpNqEoXUV4he1ZC0Xy4LuGLNieXcClhOv0NS4bdnqw1YeVa/alUjrbgjCM437qrGbn0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774159382; c=relaxed/simple;
	bh=ZrzJpmmUYKdbYxYj7JlXz5+gHo754ncX+OJVSRhbFNQ=;
	h=Message-ID:From:To:Cc:Subject:Date:MIME-Version; b=AHEXadh0IZZcRC5oHTxj5lHBE5k+lsZc3QJECAZWNdpXV/HxPvAS1D3yINgtd3Au6ovv88bRTZyvgsUY275UVtUQB3SsjS57Vr1GKaf6tr9tYM2Wdr9tZi0oXmWYRa8WXHLunEuVGWVt6rnIdwngPEp2sJuVzyBi9mOp9/kDFHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com; spf=pass smtp.mailfrom=qq.com; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=TtRdFoaW; arc=none smtp.client-ip=203.205.221.155
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qq.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1774159371; bh=PWjy4i6s6wYeKdVnAV5SQdcLX7Vht7TB45r2ZQP+jns=;
	h=From:To:Cc:Subject:Date;
	b=TtRdFoaWQy6BruyCbY3+PnT4ftsI/1sOzQ2R4FDrYHem0Wh+Y6YZs83EcIDQ9AtPc
	 jxVdGXmfYPX3WuNx1c2XkXSp5JIjYAZgp0SmqA9MhICP0+WxovLD7/hp244XU/pBzU
	 G4POyP8J9a+25lEs3T7WlRYwJ8fdRDyofhMYbN1A=
Received: from MYJGMC.tail4697e5.ts.net ([122.195.139.226])
	by newxmesmtplogicsvrsza53-0.qq.com (NewEsmtp) with SMTP
	id B100A4A; Sun, 22 Mar 2026 14:02:49 +0800
X-QQ-mid: xmsmtpt1774159369tv4f26ov6
Message-ID: <tencent_5B265C60A4EE4E6FBD5AA4CD0096A95ECC0A@qq.com>
X-QQ-XMAILINFO: MeukCuWaRbQlhjk3ZBZ13JN/CRh6EqIJXsd+CCra4KITs4vKLD38CjrFmNFHtk
	 rEyUyWapdJYgk0ZiL+9g/fSHRySYVd9MD/c527wkPmnJ96K/uYNkB3z3b2boas+J5FHZtSSdm68n
	 j2Dc0He+rDQCBjkojrDMkyBwmYZvz5kokcF9ii4bUjtudZSK78P4bOl+NdHit4DP+2Hg/h2sV2sN
	 I/9YwWEjQV0gYsi35SkSzsbRRMJwzWj1ZJZ0S5vYA1IXx7t0U52e9ak8qU/o11eNbeF7ZHPIZiht
	 CGQmAvGW/vRbuNB63E2z6fQ2UqwxhF0xMrn0+v/K0Sdpfao3xdt/37ZmXBux+WTT5vUn7MFwXatT
	 QLzZ7zpmQQYtU+m7BpIUPk3aEJ6On/0OljsbrQMuchZCpCzKvGu3Fdveb2dSgXYzza93K1gguM6A
	 dDgXqYr/pdTd1EgKWlJi5T/4pAteBZw+yNUyiOPwfdGgn2kNm/c1z2a6s1rR6VBJbDuPWoZ+Uvt7
	 yH5vu23g0HO+2RfJdAkvQBAKzUD8oHRbxZvCMMXcBiUxOy7d1y73bcr1U5EGsn9UPU/mLF+s7t7s
	 EtWIeCGwtvXFaKSVoS6MvcE/HN+kdqiQiOBMaFiliFuiVcp1/5R83sWqaxY0yf0lqSTO/mwZilO+
	 xSDbzJbSvZ2EXBJAls0zflO6SzWRPOWzPtF5kHVo2BnJ9AqfTl4dxDkBpbUJnrOCpHk6VSARLQeX
	 xB5FPawfNNcusL+dEbtFroAkoSHg7LKIjj0inv8ymxFR90qfS1j7Ftx8nVnSnMaCqbVTm/Gktizm
	 I+vN6KDtGLq/+wHW9IxgWsVxp53TJjOClc/pn6sO7aTGWCIgXl3xvuHLRI36SOE9EGxXc0K7rT6c
	 LPr4B80Q5/wLyH6tJC9IzOB+loy9TTDoafm2TPa612lIecoTXffhfy6xquWETcckhFjqo7lfhkQv
	 Ws05inFEEr/Wujy2oTFXi5zfvbFEpYM4jmIt9XCzReRhe15+uXM5Ju+qug4ItVodPXj8vtRcVkP6
	 z9pjY1mGd83mH9xglJj67vQyAfBMfsHxAYep5GcrNX5tcYHkc0mDGOu1Fuvkodl8+hXcqG083CLb
	 cgn7PY
X-QQ-XMRINFO: NI4Ajvh11aEjEMj13RCX7UuhPEoou2bs1g==
From: wjjsn <wjjsn@qq.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	chenhuacai@kernel.org
Cc: kernel@xen0n.name,
	devicetree@vger.kernel.org,
	loongarch@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	wjjsn <wjjsn@qq.com>
Subject: [PATCH v3 0/2] Add Loongson-2K0300 processor support
Date: Sun, 22 Mar 2026 14:02:44 +0800
X-OQ-MSGID: <20260322060246.1375569-1-wjjsn@qq.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qq.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qq.com:s=s201512];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[xen0n.name,vger.kernel.org,lists.linux.dev,qq.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278665-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qq.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[qq.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wjjsn@qq.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.152.150.128:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qq.com:dkim,qq.com:mid]
X-Rspamd-Queue-Id: 822682E856D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The first patch adds the necessary DT binding documentation,
and the second patch adds the DTS and DTSI files for the SoC
and the board.

Changes in v3:
- Corrected the compatible string in DT bindings from 'loongson,99pi' 
  to 'loongson,ls2k0300-ref' to match the board's formal name.

Changes in v2:
- Split DT bindings and DTS into separate patches to comply with
  upstream requirements.
- Included the missing Documentation/devicetree/bindings/ modification.

Known issues:
1. The clk controller node is correctly defined, but some frequency
   configurations rely on future driver-side fixes.
2. uart0 is currently placed under the root node as the 2K0300
   manual lacks explicit documentation on the bus/interconnect 
   hierarchy (comparable to the bus@10000000 in other 2K SoCs).


wjjsn (2):
  dt-bindings: loongarch: Add Loongson-2K0300
  loongarch: boot: dts: Add Loongson-2K0300 support

 .../bindings/loongarch/loongson.yaml          |  4 +
 arch/loongarch/boot/dts/Makefile              |  2 +-
 .../boot/dts/loongson-2k0300-ref.dts          | 34 +++++++
 arch/loongarch/boot/dts/loongson-2k0300.dtsi  | 95 +++++++++++++++++++
 4 files changed, 134 insertions(+), 1 deletion(-)
 create mode 100644 arch/loongarch/boot/dts/loongson-2k0300-ref.dts
 create mode 100644 arch/loongarch/boot/dts/loongson-2k0300.dtsi

-- 
2.43.0


