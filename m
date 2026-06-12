Return-Path: <devicetree+bounces-310848-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RNAOHcPWK2pRGAQAu9opvQ
	(envelope-from <devicetree+bounces-310848-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:52:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4B36786E8
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:52:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=Oo0IgB5r;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=k1aUJ+NV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310848-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310848-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=mailbox.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 56BAF300723F
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:51:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E0DB3B14DA;
	Fri, 12 Jun 2026 09:51:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EC1E370D7C;
	Fri, 12 Jun 2026 09:51:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781257911; cv=none; b=pkwJFhfXI6azAK8/1RNNh0JHqAzc1d3KLG/wVbMhDyVZtBzh66oXarH/a+MerzjP6HhsorvJzS/4XMC2amL6ORy/9v0CG8Rvl2M8NQDONRze0/CIHbbvgfRDl/YmOOkjwOW5HGUzxUumNohLHc+InaRWxtXjP8/1QVJ2vB6hMJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781257911; c=relaxed/simple;
	bh=8WwzrHxgFv4Bql+YAmkeQAyvc/z04SQjiw3ZFs2Csq0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=u94SqnGWMFwSgvTQkOSc39qGyL3l+6IXFq1FCiowOdzHBo0Duc3MiEy3FzukzO+ddW5hectiERpys9QpsUtNMWjkl8CQxl5Ljac7nzA3YChJX/ij/MurLjHtx9yXymAn2Yqm6LgCsppe7XT/0BwmtRy2ysIfTsDL75PDrFl3VmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=Oo0IgB5r; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=k1aUJ+NV; arc=none smtp.client-ip=80.241.56.151
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:b231:465::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4gcFCY2mDvz9tpN;
	Fri, 12 Jun 2026 11:51:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1781257897;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=230pkd5gomLN4/5M7G+ooajqrscGYkDpD19KGlJrTRg=;
	b=Oo0IgB5r3ksGBAThpOfySeXrKCRRmELReBH3Odn9VtitrMt2Wz20hKA0VzpoU5BazzcZv1
	CqJ54u7JINJGM52n7T7dzklhkNB9KrO5gxcbOU91la5KuR1AIYLctvmLtXKqMfn188OsIO
	l+dIx6nxVq0qYFE51DJfyg3zkKWdol101tZb1Cb//t372t04SZeU0ftYaDbcz5P0mrkRGh
	E8Quj03poEf3EIQW48QNnl/exZPqQ88i1LbItwSptET8UGDd7sSwuH2mzMJ9qD52GJn4D4
	pQtOtr/SrdwQZlMmpsUwqY+Ke612Ixiq/6yJL8u6Ml/wm2pYRUhGiK0rrtkhVw==
From: Shuwei Wu <shuwei.wu@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1781257895;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=230pkd5gomLN4/5M7G+ooajqrscGYkDpD19KGlJrTRg=;
	b=k1aUJ+NV2szgplo0Sn+DduSpYWa/wOoY1PPgzbQpis+xhG+ypdmFvA+rwbmYWb1rvIh92n
	obDFVdHs/k3KZX9QM7ihRNULZf1PVv8rY3uhnkJqb0qZo6+Uk6PxmfIsy3BAscWV8znjLh
	Z+w8L8ZCbxpdzLxETikza08wQwwsmLTKofUODrW2gkfDfIh7nyaJEUjwUD44OCY3NkGEmP
	Igxqz79X1kskHkbjIPBwYF00xDvFsgHDRUTERooVIyY4cnIV0XRZ8BJ3Dyc81qKLhl9mzX
	T4n3w4LuoQbYZssfhnb3tQujoLzJ27OKlecUBZm4ZdGTSfyCdeNwpwshv39ydw==
Subject: [PATCH v3 0/2] cpufreq: spacemit: Add cpufreq support for K1 SoC
Date: Fri, 12 Jun 2026 17:51:00 +0800
Message-Id: <20260612-shadow-deps-v3-0-2f3ba88611ff@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIbWK2oC/22Q22rDMBAFf8X4uRt08UqyKSX/UfqgyzoRiWNXc
 t2UkH+v4hTaQB9XMKPhXOpMKVKuu+pSJ1pijuOpHPKpqv3ennYEMZS7FkwoJpmGvLdh/IRAUwa
 JRlhtrNWo6kJMifp4Xm2vb/c70ftHkc73x3qys98XZVdxbFxoei2YJ2QKAxrXGhPI9EJLwbRrG
 tSCbt6BcrZrSlc9ryWCKciT9TTEGSYOSwMMTK9aDK00nNM2xezzbNPGj8PL/xLJEA4c/PEAJRs
 WDhys89ZgUCSU2g42Ht143oxptyqczQTFVz7tKuSqoRaxpMs+IDMFtC1K5FLIHjVXoXclqL4ts
 Y95HtPXOvPC1yl+EszDoqWBQVnEodeeaXJ/G1bTIn7phrNHWhS6Ia6c8axXjB7p6/X6DSLYL3D
 wAQAA
X-Change-ID: 20260307-shadow-deps-3582a78aa756
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@kernel.org>, 
 Yixun Lan <dlan@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
 devicetree@vger.kernel.org, Shuwei Wu <shuwei.wu@mailbox.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781257883; l=3367;
 i=shuwei.wu@mailbox.org; s=20251125; h=from:subject:message-id;
 bh=8WwzrHxgFv4Bql+YAmkeQAyvc/z04SQjiw3ZFs2Csq0=;
 b=SBdk/P5ptowOOfdxAdM9FnB6FHVS/Td8pSYqPYn4Jqll8MN1REG8DlcGXmQtjIdxg4H9txoPE
 mYcsdd6V9ZkDHiFX+JxFeXE4jdXiTlgYjBobVMxxppMlOiuAdHYQo3U
X-Developer-Key: i=shuwei.wu@mailbox.org; a=ed25519;
 pk=qZs6i2UZnXkmjUrwO5HJxcfpCvgSNrR4dcU5cjtfTSk=
X-MBO-RS-ID: 450bb4674b0fe0811f4
X-MBO-RS-META: ksxe7amy6wpsowkxf67gdmiyxsukc1j3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[mailbox.org,reject];
	R_DKIM_ALLOW(-0.20)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310848-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:rafael@kernel.org,m:viresh.kumar@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:dlan@kernel.org,m:linux-pm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:devicetree@vger.kernel.org,m:shuwei.wu@mailbox.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[shuwei.wu@mailbox.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shuwei.wu@mailbox.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[mailbox.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,mailbox.org:dkim,mailbox.org:email,mailbox.org:mid,mailbox.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6C4B36786E8

This series enables CPU frequency scaling for the SpacemiT K1 SoC.

K1 has two CPU cluster clocks but one shared CPU voltage rail. Add a
small K1-specific cpufreq driver so the two clocks and the shared OPP
transition can be handled together.

Tested on Banana Pi BPI-F3. The system boots with all eight CPUs online,
the K1 cpufreq driver registers one policy for CPUs 0-7, and both CPU
cluster clocks follow the selected cpufreq rate.

~ # cat /sys/devices/system/cpu/online
0-7

~ # ls /sys/devices/system/cpu/cpufreq
policy0

~ # cat /sys/devices/system/cpu/cpufreq/policy0/affected_cpus
0 1 2 3 4 5 6 7

~ # cat /sys/devices/system/cpu/cpufreq/policy0/scaling_available_frequencies
614400 819000 1000000 1228800 1600000

With the userspace governor:
----------------------------------------------------------------------------
Frequency    | scaling_cur | cpu_c0_core | cpu_c1_core | Real    | User
(kHz)        | (kHz)       | (Hz)        | (Hz)        | (s)     | (s)
-------------+-------------+-------------+-------------+---------+----------
1,600,000    | 1,600,000   | 1600000000  | 1600000000  | 1.80s   | 1.80s
1,228,800    | 1,228,800   | 1228800000  | 1228800000  | 2.33s   | 2.33s
1,000,000    | 1,000,000   | 1000000000  | 1000000000  | 2.88s   | 2.87s
  819,000    |   819,000   |  819200000  |  819200000  | 3.53s   | 3.52s
  614,400    |   614,400   |  614400000  |  614400000  | 4.72s   | 4.72s
----------------------------------------------------------------------------

Signed-off-by: Shuwei Wu <shuwei.wu@mailbox.org>
---
Changes in v3:
- Add a K1-specific cpufreq driver for the shared-rail, dual-clock topology
- Use one shared CPU OPP table and one cpufreq policy for all CPUs
- Link to v2: https://lore.kernel.org/r/20260410-shadow-deps-v2-0-4e16b8c0f60e@mailbox.org

Changes in v2:
- Move OPP tables to dedicated k1-opp.dtsi
- Enable OPP only on BPI-F3 with cpu-supply present
- Link to v1: https://lore.kernel.org/r/20260308-shadow-deps-v1-0-0ceb5c7c07eb@mailbox.org

---
Shuwei Wu (2):
      cpufreq: spacemit: Add K1 cpufreq driver
      riscv: dts: spacemit: Add cpu scaling for K1 SoC

 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts |  35 +++-
 arch/riscv/boot/dts/spacemit/k1-opp.dtsi        |  70 +++++++
 arch/riscv/boot/dts/spacemit/k1.dtsi            |   8 +
 drivers/cpufreq/Kconfig                         |   4 +
 drivers/cpufreq/Kconfig.riscv                   |  15 ++
 drivers/cpufreq/Makefile                        |   3 +
 drivers/cpufreq/cpufreq-dt-platdev.c            |   2 +
 drivers/cpufreq/spacemit-k1-cpufreq.c           | 251 ++++++++++++++++++++++++
 8 files changed, 387 insertions(+), 1 deletion(-)
---
base-commit: 5164e95565d3fd508ca8a95351323f5716dfb695
change-id: 20260307-shadow-deps-3582a78aa756
prerequisite-patch-id: 154bd4f720ce5065d58b988de8f273207b44572e
prerequisite-message-id: <20260206-spacemit-p1-v4-0-8f695d93811e@riscstar.com>
prerequisite-patch-id: 5da3e75b18291a5540d4f66d7a0600fb8975ef62
prerequisite-patch-id: bcf41917414ecef8cf743095d130f6004c32f6a5
prerequisite-patch-id: cfe3800f8c791ec4c63e070af9628e88e0fc31b9
prerequisite-message-id: <20260305-k1-clk-fix-v1-1-abca85d6e266@mailbox.org>
prerequisite-patch-id: 7c7fb9f87dba019ece4c97c45750349a7cd28f3a

Best regards,
-- 
Shuwei Wu <shuwei.wu@mailbox.org>


