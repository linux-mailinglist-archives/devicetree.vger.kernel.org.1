Return-Path: <devicetree+bounces-274691-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JjoLGHjsmnyQgAAu9opvQ
	(envelope-from <devicetree+bounces-274691-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:01:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C31A2751A2
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:01:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 84DD5304CB5D
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:57:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89B4C3E5586;
	Thu, 12 Mar 2026 15:56:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L/B3y7VM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bEvGx+VQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18753F165E
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773331009; cv=none; b=NUQ7t7x+rR8FWD/IasYGQdYSwQiYjTHlD09umcx5QmC0Q3aFJSVjdKHKWqDeSi/ByRgisTJFzr0WIx66i/zE716n+0NEHNsp/KQUkaHNA1eD4LHkwOXYCDNL8DRQ52hco47XuCXtJCSaAOiAxA4akXTuMHLZXbhBVVZlbM+XubA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773331009; c=relaxed/simple;
	bh=aii1fPblRjNclJS2d8OX1hBWeOj56SYwnkO3sJwY7J0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Jpo0zzwa9N8/0KY92MfPkdGl0KOm9KFsq0mwB0xAIupWiklwsgHnSdQ/+0f7OCPqaneoIWTNJSljX68J8gYkVUL3SZDyGB/BKr2ADD4f/2STumRckIdsJuW3oW4WrusulB2/aU7AAJdUqaazGAVYiG/o9apbUvpWiT1KAWyNAoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L/B3y7VM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bEvGx+VQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62C7e5wX509874
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:56:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=QwEXfdGiojEjy3gvtQQt7O
	9v/YbfetfeaFmZDvDbysg=; b=L/B3y7VMqMfnkZx6dE3Mt0PN1M9SW2IoFP7/rq
	32UlJh0aSjIxavUk1R9uFECwWrc7Do/S4zVY3DBB2oX1ZuJclqQNrQ6uZXC9g2By
	tjPvHxtmI3NxakwGupkYiviY95hQg0qnSrRGqoz8SbQQ22uDnM8HoUzu5iS5btib
	sOPf/QY8KUNAQ7u+gYrrlARERO4LePp6KPj/UplN+pHtOqVBnVWF4x3dk+PmrYre
	XfKCjUzH0+QE1DX8wwU0dFQR1cL/vsMjBT95LnRP8rAjVG7VlNchBg05YSWvvAm/
	LOyVsvuU6oZ5OCJvL7AcMb78XXCiCK2YRUXpZD9/p0npfL6Q==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cus9w1axk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:56:45 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b6ce1b57b9cso998793a12.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773331005; x=1773935805; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QwEXfdGiojEjy3gvtQQt7O9v/YbfetfeaFmZDvDbysg=;
        b=bEvGx+VQuwu6rdafJdn46id0m2d8D1uJgIsE5V9Xrx7GrnbwvA+j7P2ezYMR3qBL+r
         5eOiHHOYP3mATVQyM9tgjJ6qfbLPEww+k1HPvgG0GdmiFhoG0iSUuhR5V8qbgnGOReql
         IXnzTkFfmYHTH7YHA7jPEwe7iamBpy0YrvKqir0xERFBwP8Mg1TXV3Tb840H03pHr2fU
         VAoRMRLuThD+Ka/VDpA6SmacfW6svO2P7CkWHdmbOsDRdUJngalCTaW5Ek3kRqJ/Wk3o
         /8B63A6wx1J6mAqRt9wo9S76Cfd8oyyAbL9/dI7WTqbKmge8A5yuBCYiRvar3CHwvWDe
         P6Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773331005; x=1773935805;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QwEXfdGiojEjy3gvtQQt7O9v/YbfetfeaFmZDvDbysg=;
        b=asYUguZiixBJM/XwIAKVELpgPfpVkT4VPp99FnKTDkfmwil/ZvlTPytPIMMU+ugydP
         b8obnSsCUfXcPm70tgCFgs424SYbk0NodEfLj9p+yF2hoG2iqTkxJKFZlcwKLtai0H5T
         NMhOOFdw9RcG2teBs4jhqmojzqZaipvnLvIaykVJNchc+XPowPCym946yUER3Z35Xpwi
         eOAwO+Rxx3TzRpW5aQs39XdOWCTg53PcnhgUfCOX0YaI7lAW7BfHqrVR3Mz9+MkF54Be
         ZOB25jBcIw6SSVPrThDHjCOpUFNBj3/eoPrn21ed5eg+leSPRremZ46DrG6IiuAoFVcY
         c+XQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBKHB82wGy/NZBRzeRWtqGV72fi8FoQFWT+NzUqf5TNeYeliwDKYfH4tGjUXDLGuFZPFHq0VufRy5s@vger.kernel.org
X-Gm-Message-State: AOJu0Ywh0wrhmm4PqwSBNqfdUHik9nlrQu60Bh1HoXzySgrrNuUV5EMu
	Ed6mkebRNS9HC9097t9qXKDhvB62yuUWnHVbBetUC/AIasjaYpqyjXlhqNdXyR22amYdZRaj7qb
	Mz9oV8f8F7HTd4/lGG8dIgZCsTsShByZWdg2D0IttRHae7ZCe4QUHoE4mMjulf97J
X-Gm-Gg: ATEYQzzmosiPmwypEM+12Cvhp2ikD30BCl/RA0oPheX2msU22aiIWURKwX+dDR/t/7D
	SXDRdvO+YyrgqkcAIDJB8XersR/7xcq87BZbAuuW6PNCIEnhNjSNjWEHe0Jjhu7an8GF42CW7yD
	3MpSyhb1ltULBIIQm3Gffz8w2DvRWOtzSAoPbWRfIST1w+oTiWsVSFxOKQU5aDeLC5U+7SW5h+X
	1iA3CL2q0eiTq3KGgBTua5JsuV+l2WzThuqVQItHTifPPqukImeBpOFOmePOasYHelYGi2sMg+w
	ohBVDy4ttY8nAWjOXzNaR9ho9PauWm398qah3yunzZEZfcN2O7DPFfwEIcapFX8cROaUx6LAm2Q
	rcmYOLFxPkZC+I0+NIFERbC+jamb1abA3nSvhXHXRlAuf+tpMXg==
X-Received: by 2002:a05:6a21:3212:b0:398:8f38:441a with SMTP id adf61e73a8af0-398c5b185c7mr6107630637.0.1773331004677;
        Thu, 12 Mar 2026 08:56:44 -0700 (PDT)
X-Received: by 2002:a05:6a21:3212:b0:398:8f38:441a with SMTP id adf61e73a8af0-398c5b185c7mr6107609637.0.1773331004224;
        Thu, 12 Mar 2026 08:56:44 -0700 (PDT)
Received: from hu-mkshah-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73cdf254acsm6067852a12.11.2026.03.12.08.56.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:56:43 -0700 (PDT)
From: Maulik Shah <maulik.shah@oss.qualcomm.com>
Subject: [PATCH 0/5] x1e80100: Enable PDC wake GPIOs and deepest idle state
Date: Thu, 12 Mar 2026 21:26:34 +0530
Message-Id: <20260312-hamoa_pdc-v1-0-760c8593ce50@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADPismkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDY0Mj3YzE3PzE+IKUZF2LZBOTVHODJENTQ3MloPqCotS0zAqwWdGxtbU
 ARrT4RVsAAAA=
X-Change-ID: 20260312-hamoa_pdc-8c44e70b1517
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Thomas Gleixner <tglx@kernel.org>,
        Linus Walleij <linusw@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773331000; l=3532;
 i=maulik.shah@oss.qualcomm.com; s=20240109; h=from:subject:message-id;
 bh=aii1fPblRjNclJS2d8OX1hBWeOj56SYwnkO3sJwY7J0=;
 b=j6joHry2MQQKR2ZIes52GRlx/dwYfcyF+23+kSAxqG0PS031XjdvYlNq5q9mTnxm5l+H1FbQd
 zhAUXcXjqRCDdOh+bMj84a2bbb/JOu/7ADMfD/MRu6JfYvoiitxL9+C
X-Developer-Key: i=maulik.shah@oss.qualcomm.com; a=ed25519;
 pk=bd9h5FIIliUddIk8p3BlQWBlzKEQ/YW5V+fe759hTWQ=
X-Proofpoint-GUID: 7pVHysFUefY71KGWw0gPj1OWlxaI4hYu
X-Authority-Analysis: v=2.4 cv=IIIPywvG c=1 sm=1 tr=0 ts=69b2e23d cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=bCJDybkbam8vuuN2_HAA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEyOCBTYWx0ZWRfX51DwutqEigrl
 tlyrDb+nTo8U1z0+GzQMgas8vfrX5eLomSOik1l1/yZw+AxNJELTxHOFzQGF+NCaJP6KOB5rXDU
 gbNrSzLPxdLCtp5h1k5wVHpdLY7xjKNSFhkfaxQV9oKlcEOMfexR26uZvhMMx/yhIj51BcZRlZ1
 trTCK4q300qo8DyL8znfBYWfgEYStHGL8hJDvjpuTI+xqaJh+pEfSC+QQ31eicRPBYmOU1xp6OH
 JFi0W2LkYBnI5bp9X3XKQ/SI0pL/iBGzS42C3iPWEoiqHkoSj5iCZszojuTZtIx0BlKMRZulwjB
 6fBiYgbGpfpxYGpJF+LUwnN1yGkraj76sDO8lIdz5nWyi7K0QFs8ERCKSELJGu9mx3t2DKM/LiP
 zXpeGIpfxWv9fzDPcXB6CrJ3l2lgI+QvyGtCCzrqJZU+AuUPsckYtRgR4Lc8x5MKUYCrctSbHL9
 4Dh1AWO+aXJ0bfX4A0A==
X-Proofpoint-ORIG-GUID: 7pVHysFUefY71KGWw0gPj1OWlxaI4hYu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120128
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-274691-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maulik.shah@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0C31A2751A2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

There are two modes PDC irqchip can work in
        - pass through mode
        - secondary controller mode

All PDC irqchip supports pass through mode in which both Direct SPIs and
GPIO IRQs (as SPIs) are sent to GIC without latching at PDC, PDC only does
inversion when needed for falling edge to rising edge or level low to level
high, as the GIC do not support falling edge/level low interrupts.

Newer PDCs (v3.0 onwards) also support additional secondary controller mode
where PDC latches GPIO IRQs and sends to GIC as level type IRQ. Direct SPIs
still works same as pass through mode without latching at PDC even in
secondary controller mode.

All the SoCs defaulted to pass through mode with the exception of some x1e.

x1e PDC may be set to secondary controller mode for builds on CRD boards
whereas it may be set to pass through mode for IoT-EVK boards.

There is no way to read which current mode it is set to and make PDC work
in respective mode as the read access is not opened up for non secure
world. There is though write access opened up via SCM write API to set the
mode.

As the linux only ever makes use of pass through mode, set the IRQ mask
meant specifically for secondary controller mode to mask all the IRQs to be
forwarded to GIC irrespective of the mode PDC is set to. Writing the mask
is do not care when the PDC works in pass through mode, which is always
the case except for some of x1e platforms.

Configure PDC mode to pass through mode for all x1e based boards via SCM
write.

For successful write:
        - Nothing more to be done
For unsuccessful write:
        - Inform TLMM to monitor GPIO IRQs (same as MPM)
        - Prevent SoC low power mode (CxPC) as PDC is not monitoring GPIO
          IRQs which may be needed to wake the SoC from low power mode.

As the deepest idle state as the PDC can now wake up SoC from GPIOs and
revert 602cb14e310a ("pinctrl: qcom: x1e80100: Bypass PDC wakeup parent
for now").

Note:
For testing this series on x1e80100 CRD, interconnect nodes from SCM
device are removed as PDC requires SCM APIs early in the boot up and
interconnect nodes delays the probe of SCM device which results in early
boot NULL pointer derefernce. Looking at documentation interconnect are
added to get additional performance boost and are optional to add. Removing
them for now allows this series to go through until proper fix from SCM
device is found.

The series has been tested on x1e80100 CRD with both old and new firmware
and also on kaanapali.

Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
---
Maulik Shah (5):
      arm64: dts: qcom: x1e80100: Remove interconnect from SCM device
      dt-bindings: interrupt-controller: qcom,pdc: Document reg and QMP
      irqchip/qcom-pdc: Configure PDC to pass through mode
      arm64: dts: qcom: x1e80100: Add deepest idle state
      Revert "pinctrl: qcom: x1e80100: Bypass PDC wakeup parent for now"

 .../bindings/interrupt-controller/qcom,pdc.yaml    |   5 +
 arch/arm64/boot/dts/qcom/hamoa.dtsi                |  19 +++-
 drivers/irqchip/Kconfig                            |   1 +
 drivers/irqchip/qcom-pdc.c                         | 119 +++++++++++++++++++--
 drivers/pinctrl/qcom/pinctrl-x1e80100.c            |   4 +-
 5 files changed, 131 insertions(+), 17 deletions(-)
---
base-commit: f90aadf1c67c8b4969d1e5e6d4fd7227adb6e4d7
change-id: 20260312-hamoa_pdc-8c44e70b1517

Best regards,
-- 
Maulik Shah <maulik.shah@oss.qualcomm.com>


