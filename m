Return-Path: <devicetree+bounces-265669-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAu+BgTckmn3zAEAu9opvQ
	(envelope-from <devicetree+bounces-265669-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 09:57:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 76660141BEF
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 09:57:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 38D763013A44
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 08:57:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6138B27FD52;
	Mon, 16 Feb 2026 08:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="fEZML8Ol"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B2D27A92D
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 08:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771232240; cv=none; b=kAoG8Mlug8OQ/kNXJLghlKAILQYfb/bjRWPFZEH3A8AiFQmJNVO8gCe7ZJnFM9zsid/jDQKX7KjH3rS9xfC4tRlgfFJXsHVbxVKw6HrkuP6rxuR2LKiCUb4pdu21ucvsXj+lIrb+o6r1F63P5bWwebmbE8cvWgqBIGF75fknVHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771232240; c=relaxed/simple;
	bh=5JjsO+Z/EOVB62LLP3J5FzjWkCYntCX6eMMQdOZn1vs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=loEwLh4bMi2YW6GNwRgVMoMz18TNG6BBXa91F6F4w7PFJNM4ulJ4zpxhEjceALXqS8SlPTc+TZQXQ0Oe2JUkoeNgngx3nXvXphuxoN0ICp1/kNUo9bdOJxRM00fowDqW3uarZI+dzdOahn0LBE4jENwMuzrkXU7nl3gNByRWGnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=fEZML8Ol; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b8f96f6956aso361089666b.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 00:57:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1771232236; x=1771837036; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k07tS0iTMZ1Aduf68Pf/2bDBD3WkPIgz5AsTfsd5Z9U=;
        b=fEZML8OlIDE4EAwi6/J6lAS5I5d6xWJQ5WGEYgjiyErKPFI7+CuTe3fNr6rFqn6h3Y
         OC1uEb1iQ0a7WGSJD3brKk6eR1pb8QT8VyDbgUYNllDorr8DedHspX41botUlz02BcCE
         7Uf/HFSrdNUa7SytVkCBix+hnX4ycNl6upDYTKtwAhWp9REStlveWSl0CCIetcpIn/an
         8D4URRnk6z527o/4S3hGfZTXcwJGeZvVInYvb+wH8JfcKX+fcSH4N6rR9y+UrYc2unEp
         8HP0iA/xC5TIcwffBG1VwgvzwEQxS/JCMmNFU6pOPvoVfJx/Blr+GUnFhWkJaVO2b9ZS
         gTCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771232236; x=1771837036;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k07tS0iTMZ1Aduf68Pf/2bDBD3WkPIgz5AsTfsd5Z9U=;
        b=iNAS9/oXunABX9jBJN8m7vvpgRDyAttx4TwtAeYAPrDCgcRTGvPPUS08BSo/Kg4Who
         E5TJDU+IGMo4gYvEZ/MNA9uu6Ao+qPhQLHlZezdLn6YLnaaLTkcPb5NQQOY+gjAjyd0m
         Tk+JhN6+tV3OQDvD3bVfA73fsxFPagQv63b73mZJC2D5uMdrFgswvHvn9dDrV9CzQqZI
         GYkrg7iHQJgsjX1mloMzCgiJxc807AunOIjz5siGfXdYzSnR1iKvnsJjkVypZ0NZ/oyc
         me2nV1Mm3folltsupP8FmXRxhBkgOf5Ldp9Z5rHcTWAKiBMkzq4Tr5UnhI8BNLCT+ZGF
         KNFg==
X-Forwarded-Encrypted: i=1; AJvYcCUVCnWorYP7mU6uJNPd8xxxro2Liel6JxV9vzLudaj7FwTbrb83NK0z7HkO6lzG2X68uhCMpm5WQ98V@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7WqW7jOVZT08BtoKjN8ZdSY6DCMozV9OBtSMV175qjzezQHxr
	shNafIERgd+QnuGAbMvYaiOjjZOTJZDHj9Hhpt+Q4AF4alDY34VAjBFYNAO1/moqT8k=
X-Gm-Gg: AZuq6aJhIeG5Eqv96jvnfOewPH1glnrzRrFeNZVd2wbMmJ3OabmKWtQOLKV5/RGxfWy
	TpsZj/W1l5zeTs4IRL0YhXqCI3yAzBOr1PU9px5U4hLuAMoLMRQ/Re61L2aZvuyEhvbAwtIhzIH
	7pJKGg7JAbCTQ6jMbtgm265DBsdFCq8tFzdRuA6to056W6xil98uA/WIvFlrN9qymFOKDOM8A/5
	esb0I9oXVHKsuQbF3NIH+A6dRd+nE1QmTS6gYRzIzgoBz1pQOdaimmNaFbgVMpPHAq1b7bGR3Ik
	yKEHXZF/XVMxIgwcCmpocOkx0qe4XUKGWqavsjlxZQxgYHcQ2uJVm288MHL9IOvQofPdw/Ss6+X
	LnHGqDIq8ZzgotlR+0f0NcTbfen/MFav35avxut6oRyzB5ezcRKxZ0n7YW0Cxfd0zpERdWAsTuD
	y+26CZ3Z2TyBOLSRUUY7ZCPmkR1aY+0H61AYJEccyudMUYVVMMw6atGaDlqnJ8xlQVWkzlqwUYM
	7AT+Q==
X-Received: by 2002:a17:906:6a1e:b0:b87:63a8:8849 with SMTP id a640c23a62f3a-b8fb4501385mr555665766b.46.1771232236335;
        Mon, 16 Feb 2026 00:57:16 -0800 (PST)
Received: from [172.16.220.101] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc769437bsm236867966b.61.2026.02.16.00.57.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 00:57:15 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v4 0/3] Add CAMSS support for SM6350
Date: Mon, 16 Feb 2026 09:54:18 +0100
Message-Id: <20260216-sm6350-camss-v4-0-b9df35f87edb@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/23OTQ6CMBAF4KuQrq1pO6WAK+9hXPRnKl0A2iLRG
 O5uxRgTwvJN8r55L5IwBkzkULxIxCmkMPQ5yF1BbKv7C9LgciaCiZIzIWnqFJSMWt2lRBsrmTS
 +sd45kivXiD48Fu50/uaIt3tWx++RGJ2Q2qHrwngoenyMNMuKCS7Ip9CGNA7xucyZ+NLY/jxxy
 qgCp4RSUGvnjl6HeG2HHveZX7BJ/AHO14DIgOPeq8ppAKO2APgBn4WwAiADwHQtS8NMZe0amOf
 5DUCVccFfAQAA
X-Change-ID: 20251024-sm6350-camss-9c404bf9cfdd
To: Bryan O'Donoghue <bod@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771232235; l=4900;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=5JjsO+Z/EOVB62LLP3J5FzjWkCYntCX6eMMQdOZn1vs=;
 b=KLLQDTciBdGH1afezBA4vmkcsmEr2/iAtPfFG7fHMTuIU+wtnPlgvhwl7RZVQwwY3CC/6HcR5
 Q/VoYDRr5URDgDCDwFd6aQZ6zYMFkdRV7iIFBTh4M/92IXK5Y8nSSzL
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265669-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linaro.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[fairphone.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[19];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 76660141BEF
X-Rspamd-Action: no action

Add bindings, driver and dts to support the Camera Subsystem on the
SM6350 SoC.

These patches were tested on a Fairphone 4 smartphone with WIP sensor
drivers (Sony IMX576 and IMX582), the camera pipeline works properly as
far as I can tell.

Though when stopping the camera stream, the following clock warning
appears in dmesg. But it does not interfere with any functionality,
starting and stopping the stream works and debugcc is showing 426.4 MHz
while the clock is on, and 'off' while it's off.

Any suggestion how to fix this, is appreciated.

[ 5738.590980] ------------[ cut here ]------------
[ 5738.591009] gcc_camera_axi_clk status stuck at 'on'
[ 5738.591049] WARNING: CPU: 0 PID: 6918 at drivers/clk/qcom/clk-branch.c:87 clk_branch_toggle+0x170/0x190
[ 5738.591081] Modules linked in:
[ 5738.591099] CPU: 0 UID: 10000 PID: 6918 Comm: plasma-camera Tainted: G        W           6.17.0-00057-ge6b67db49622 #71 NONE 
[ 5738.591118] Tainted: [W]=WARN
[ 5738.591126] Hardware name: Fairphone 4 (DT)
[ 5738.591136] pstate: 604000c5 (nZCv daIF +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
[ 5738.591150] pc : clk_branch_toggle+0x170/0x190
[ 5738.591164] lr : clk_branch_toggle+0x170/0x190
[ 5738.591177] sp : ffff800086ed3980
[ 5738.591184] x29: ffff800086ed3990 x28: 0000000000000001 x27: ffff800086ed3cd8
[ 5738.591208] x26: 0000000000000000 x25: ffffda14fcfbd250 x24: 0000000000000000
[ 5738.591230] x23: 0000000000000000 x22: ffffda14fc38bce0 x21: 0000000000000000
[ 5738.591252] x20: ffffda14fd33e618 x19: 0000000000000000 x18: 00000000000064c8
[ 5738.591274] x17: 0000000000000000 x16: 00001ae003667e9e x15: ffffda14fd2a07b0
[ 5738.591295] x14: 0000000000000000 x13: 6f27207461206b63 x12: 7574732073757461
[ 5738.591317] x11: 0000000000000058 x10: 0000000000000018 x9 : ffffda14fd2a0838
[ 5738.591338] x8 : 0000000000057fa8 x7 : 0000000000000a16 x6 : ffffda14fd2f8838
[ 5738.591360] x5 : ffff0001f6f59788 x4 : 0000000000000a15 x3 : ffff25ecf9d7e000
[ 5738.591381] x2 : 0000000000000000 x1 : 0000000000000000 x0 : ffff0000baf5c100
[ 5738.591403] Call trace:
[ 5738.591412]  clk_branch_toggle+0x170/0x190 (P)
[ 5738.591429]  clk_branch2_disable+0x1c/0x30
[ 5738.591445]  clk_core_disable+0x5c/0xb4
[ 5738.591462]  clk_disable+0x38/0x60
[ 5738.591478]  camss_disable_clocks+0x44/0x78
[ 5738.591496]  vfe_put+0x7c/0xc0
[ 5738.591512]  vfe_set_power+0x40/0x50
[ 5738.591528]  pipeline_pm_power_one+0x14c/0x150
[ 5738.591546]  pipeline_pm_power+0x74/0xf4
[ 5738.591561]  v4l2_pipeline_pm_use+0x54/0x9c
[ 5738.591577]  v4l2_pipeline_pm_put+0x14/0x40
[ 5738.591592]  video_unprepare_streaming+0x18/0x24
[ 5738.591608]  __vb2_queue_cancel+0x4c/0x314
[ 5738.591626]  vb2_core_streamoff+0x24/0xc8
[ 5738.591643]  vb2_ioctl_streamoff+0x58/0x98
[ 5738.591657]  v4l_streamoff+0x24/0x30
[ 5738.591672]  __video_do_ioctl+0x430/0x4a8
[ 5738.591689]  video_usercopy+0x2ac/0x680
[ 5738.591705]  video_ioctl2+0x18/0x40
[ 5738.591720]  v4l2_ioctl+0x40/0x60
[ 5738.591734]  __arm64_sys_ioctl+0x90/0xf0
[ 5738.591750]  invoke_syscall.constprop.0+0x40/0xf0
[ 5738.591769]  el0_svc_common.constprop.0+0x38/0xd8
[ 5738.591785]  do_el0_svc+0x1c/0x28
[ 5738.591801]  el0_svc+0x34/0xe8
[ 5738.591820]  el0t_64_sync_handler+0xa0/0xe4
[ 5738.591838]  el0t_64_sync+0x198/0x19c
[ 5738.591854] ---[ end trace 0000000000000000 ]---

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v4:
- Update power-domain-names order (Krzysztof)
- Make hex numbers lower case in init seq (David)
- Pick up tags
- Link to v3: https://lore.kernel.org/r/20260213-sm6350-camss-v3-0-30a845b0b7cc@fairphone.com

Changes in v3:
- Update dt-bindings to include everything related to camss
- Update regulator names
- Remove slow_ahb_src
- Link to v2: https://lore.kernel.org/r/20251114-sm6350-camss-v2-0-d1ff67da33b6@fairphone.com

Changes in v2:
- Remove prefix from interconnect-names
- Move 'top' power-domain to the top of list
- Update regulator supply names
- Link to v1: https://lore.kernel.org/r/20251024-sm6350-camss-v1-0-63d626638add@fairphone.com

---
Luca Weiss (3):
      dt-bindings: media: camss: Add qcom,sm6350-camss
      media: qcom: camss: Add SM6350 support
      arm64: dts: qcom: sm6350: Add CAMSS node

 .../bindings/media/qcom,sm6350-camss.yaml          | 471 +++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm6350.dtsi               | 233 ++++++++++
 .../platform/qcom/camss/camss-csiphy-3ph-1-0.c     | 125 ++++++
 drivers/media/platform/qcom/camss/camss-vfe.c      |   2 +
 drivers/media/platform/qcom/camss/camss.c          | 261 ++++++++++++
 drivers/media/platform/qcom/camss/camss.h          |   1 +
 6 files changed, 1093 insertions(+)
---
base-commit: 3daf23347bb5f4a375d0101ed29c97ce1a99721b
change-id: 20251024-sm6350-camss-9c404bf9cfdd

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


