Return-Path: <devicetree+bounces-265351-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFTXJt8jj2lNKAEAu9opvQ
	(envelope-from <devicetree+bounces-265351-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 14:15:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB065136386
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 14:15:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C9D97300A5AB
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 13:15:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BABCD235063;
	Fri, 13 Feb 2026 13:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="2U+dmohB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00FE135F8CC
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 13:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770988506; cv=none; b=Utsqm5aN8/XFXyD7CVVFmtxkIwcsb7nJEZqMMGLDyjl3dbAcaAOL3xLgBEoIrtV9ixskAKlWDFUARtNeVaah8l/xBSrdXCpQF4mEF5zZDmPGWUTnugpli+B0TPc3Jb4t3UciDrGul8AhKyT5bzVpwUXjeS7m0I7eM1ukE8uCZFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770988506; c=relaxed/simple;
	bh=3CjkebGvysoDFaZ1dQV9tl68Ii9Y4ANoycW8kIDfkUk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=seuxaMnqB60R52ulVAWufv8AGW5X0KyXd/q9y8IsiXlMKJ2qzk9vsuBYg5K3fIjpJFXc3/z2DU1iHM57hWTe0MoxKruFxPOn9BLfOmkCh8v2qd+76sMgFEtVLOL1suZPF6ezxurpc0HN8OCg+Ys2sIRxk9lqDtL8KO4M5lCXCdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=2U+dmohB; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b8f86167d39so109055266b.0
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 05:15:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1770988503; x=1771593303; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qYFkF62INIHvz4pPjn3ekdDeu5/At4F7VTEdNw0IrTc=;
        b=2U+dmohBeI2ES/ol5ShB6JLZ6d6MkVoD6WmYvVaV/7BR4D4LIoRMFXxQEB13rAVfDE
         Cf0mSfFkAgsAMCnfdDxf3DWNXAFQB1jVgp8k3mu+VxuOBowZnfcP4wS8pb1+68SGzmpu
         UaygcPvQ/FXKY5hXtyZSPHoWohNjoYsoOmGTmFCYHO/4oQLc7MhExGMPwoYxNXkjutBV
         84sF6tbzIGqZKy45yrim0HqMqnjnyg0KatEg1eiYwVXxycQt62ctn1MBvu/Dy2vB+NPo
         led2xSv0q3xVU7NCxWnfyRWK4DaNg8Jv4iauz84D1gW1ZdZvE3hh0ULE2uYlwCYh+/8Z
         edkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770988503; x=1771593303;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qYFkF62INIHvz4pPjn3ekdDeu5/At4F7VTEdNw0IrTc=;
        b=bFKqEZutdoCnqaDaOtBb1wt6bEDyi4b49VAstGqUHIUaGShZpKP0FF7CqRpVq6r87+
         bbQ5CDunkRLf75SwWg/bbRvUy9s9hNBIk+ntCjmL7InpK2b2/HsPk2IBjU7JpCiUi7pf
         3qRcRRReG27qkDl0UEex6wDJ65aRXOkCVLftF4U+KLifEWcWNQzJ4SInS2QRgjzRL6ZQ
         BItGsf0ZF9GSo0frZsxpkUytYFp6qYQ6wF0IWMqywbyy7JQc9jhc7FdzrlEjo2ksD6+3
         77WWSifLOCbRc/KiOaG8ToWly+kFr6zd5Ri/j2swUZQDg71L5yJhJAshFI8i1YjtKFu2
         HrBg==
X-Forwarded-Encrypted: i=1; AJvYcCX0xicT+3jpRjhSgidNmpw36hLlMlH9u6YUu4QPsYpO3QrXfN7iHJunJBA2c+JtXJtxAQKGcLMS5bFF@vger.kernel.org
X-Gm-Message-State: AOJu0YwLWlp9h0tNsGHGj2AaG6X1nmpW5jY46XyF8rzWNa+j1K3xToiV
	NvnnFXwbng5+D5AwVM9ZL43m327ltf5/0+ibQWNkCBxM88RMqumDYJRA0iPflPLTxLA=
X-Gm-Gg: AZuq6aL+qqrzI2S0bxw65TSVFHx6U0tqmKd3Qc62cgFPEXSnZGbX+yaDVMZOOLhvaVd
	8GoEMxq3LNohJwxrR9U8/spqMthE3oKK0I+0ZvoMV1yObr6mKDVdEfvgFP1Zk1vKbomqPyY2fj4
	LaPPiBdD4JQf74aQI7vqtg6LtZKcZ9Xw6/jlJ2Tso0681UEVAzYlRBuTvQVQZ/u/NFtoBL6P1VT
	sMcg2muo5aJ2ks/olPpA+8PNWYDYNbytfLH57tPlKfdxCOUPUAA37Bah7GohQPsBQPEw2IdTFeR
	sQEYcRQ6YrCs3Rqzyu4Z427jA9W6zQUA+yjPHTpJbtjWuN6O/WZL6mb45JD41SzzcNrd5NaBcKz
	1XR5Ltpb4AuPfkKfx8+v8zlq111FAc1M41LlRqlCVwjemF3BHOLAvsVuT08IMIMhFaVs/r+NPh1
	Uwd7miOLoCdIvYSrTjjlEo19rOTOm9Qhf56Xpqv7sJH+KG9cwsjh17b5aG8u3M7r21DjEA88t3/
	/6G6glFyY+txks=
X-Received: by 2002:a17:907:9626:b0:b74:984c:a3de with SMTP id a640c23a62f3a-b8fb43a3b0emr121338866b.28.1770988503217;
        Fri, 13 Feb 2026 05:15:03 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bace3fc4esm674231a12.0.2026.02.13.05.15.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 05:15:02 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v3 0/3] Add CAMSS support for SM6350
Date: Fri, 13 Feb 2026 14:15:00 +0100
Message-Id: <20260213-sm6350-camss-v3-0-30a845b0b7cc@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/23OTQ7CIBAF4Ks0rMXw06J25T2MCwqDZQFUqE1N0
 7uLdGHSuHyTvO/NghJECwm11YIiTDbZ4HPghwqpXvoHYKtzRoywhhJW4+QEbwhW0qWEL6omdWc
 uymiNcmWIYOxcuNt9yxGer6yO2xF1MgFWwTk7tpWHecRZFoRRhr6F3qYxxHd5Z6Kl8X95ophgw
 bVgQvCz1PpqpI1DHzwcM1+wif0ASvcAy4CmxoiTlpx3Yg+s6/oBqxaYHx4BAAA=
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
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770988501; l=4673;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=3CjkebGvysoDFaZ1dQV9tl68Ii9Y4ANoycW8kIDfkUk=;
 b=JBmxAQSdlwIT7/lADuBiR3dtwqF6e6wSCyoyA1f3F5ZyCH+u9hjaiNl1QWnV55PaxwQ2hCuyt
 +iHbGLdD2QaCqHuDb01eIdJxsHEftwLDkRAoALxrxtSLko2Y2J+uktB
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265351-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[fairphone.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AB065136386
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


