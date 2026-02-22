Return-Path: <devicetree+bounces-267184-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CIR6DYE+m2m8wgMAu9opvQ
	(envelope-from <devicetree+bounces-267184-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 18:36:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A060F16FF2C
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 18:36:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1ED1A300CC8A
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 17:35:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7C1F35A939;
	Sun, 22 Feb 2026 17:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S3s04kqT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AB/wjaaY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5339E849C
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 17:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771781756; cv=none; b=D0aBJs4y+62MA0oUjQK0Pb0WabAC0yNHcR0mwngLUGcyyI1xglED7bnDTLQwtCTrLK8RJE0W5bGQz7agrhob0HXMxKRalYwWHDXlNdyYSUyjt7GmrcDyqClaekfJLeSFNGa8mdznbf3NPbs1HImZokgsk7mEdwttfPNxKGV3OGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771781756; c=relaxed/simple;
	bh=5DQuEE/m0wxOPzya/s2DiLZRERBDyu4RyD51U16bErA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=T+y61Qe+nSatmi5YoO04CVrI3ygro8da01wZ9DpKBhnpB4HM1csSmE8sq+luiA186C7DQa+UURgH9TL3DFyIeT9tusLEVvK/VAK/go0peOfaRgXbsIExZJj7SD623J54CUMR2EvuHCE/sOcy78IjLM8FTO+l4vYejG/6fQgSNoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S3s04kqT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AB/wjaaY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MFe2Mi1390383
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 17:35:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=bTf/TmVCtY/Ti8nuspkKuKqy+2hnTWT9LA8
	pDciWTK8=; b=S3s04kqTarX71KS4wlt+idMKFqU+jl+mFvIv9Uxdg1CtDGr+Plg
	8ppxWm8SfNFJmFD+on30e7WNrGvLmXKG8k1ZqsNsCtUTtRfTKxrJW0XfS5KbvY+L
	jYqL+FA4CCvaIYqpJcrsnVyVwLmNCUfLAfwMtX2FPsz/cOSu3EsyHX8b2/oQX8sA
	nngi3guJuWTL/esKX5uh45hJyppcB38tYnBXgc/6twUdOs1mxmxVqigpd/QFF05l
	9i/96xCWpR7u6lgXB2/omKnDxQ6N5T/bgGsOueWY7aSSRowRGr8zjZu27MvmEr0P
	VQXmSBzqeeErHa6jamLsKTgejQ4q8NcXcgA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5vujfmc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 17:35:53 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8231c4af106so2386065b3a.3
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 09:35:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771781752; x=1772386552; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bTf/TmVCtY/Ti8nuspkKuKqy+2hnTWT9LA8pDciWTK8=;
        b=AB/wjaaYul8bqPLHe1JIsp+GkfDPPyzOIXlegbcNBZ/wv7l6ymVxmDWR0AcbnLCLnc
         B2S3p1ZrLkjFJKmhlahT66oaHZAwrJdeQapITNC35u/TgJeESZakP+uS1JCoIpdBpsHe
         s1DaY0zjcU7+M1owC3wER3qxEMmu+qZrjB2PMOB+V4zjZzzs3Ou2HGByjD7vsSyznXUY
         54C0UjV/WZ1AtKoL0kRTWD27GbJ/jrmHHsXWmBxGZTAuEltgnyZ8IJK7oqWQzIZoSDiS
         POl0NF1lTmUhRXftrjBSmC/OEEamLSKlxtxkFuLEpGDlsBt5E6pI63DLjnM6Gr2V6t/L
         Wi2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771781752; x=1772386552;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bTf/TmVCtY/Ti8nuspkKuKqy+2hnTWT9LA8pDciWTK8=;
        b=OQqXTAzdfLizv9yYyS8qa1UI+tFiJZxXJIUnzCJ0Zj6ON8G2vkyW7RXt6ifVFZNTVf
         81Hjovk/rOuUMY9gFuWpYFtyBw2wisXDwYNM+85vLBOFJ/s8R3atBKOhsW81XvRyiE/Y
         G/azIGM7wJAx7lmmlv1sjd5DrvFveb1t636pSY9BvMbT1cgFo8oj/kQ6WuHB7a615k4U
         /ZBm/Qfj6rLJ5QuT8zw69kp1djOwbAH6ygA9YJmCv9+Uh7M42MWIuuigbnHovIq7DeYG
         rd7uSS/esXKzpmZQ1jOxyzzARFxjn+2vw0q0dPUuEeCo9ULsdkeACa8L5SKdcfxMnePg
         Npxw==
X-Forwarded-Encrypted: i=1; AJvYcCVYiPc4+UtBrj35aklANGFcfYrLHM9UIZ60lKVOu6PrHwtspKug+MSGcB/AqEsOP+Bq5LSA7lE/AKWg@vger.kernel.org
X-Gm-Message-State: AOJu0YzWwnQjCLwCcziKf1gx84c2lcjgfKq3cUUfsLlw9c9CaMwKaZS+
	UmkoUHz0HvhsmBhkg4jBCJl4h1MXDmAgZhyP/bW/nEu7ibqvNzMTmB43WROqy+ZTAxyj4e1Qfqf
	ZygMPpVC2/dgCaa4+WCwgQ33tmJ5AjBuqw6LnEWgiMgA2U+CsXCf5ZYlIwQt/JLCY
X-Gm-Gg: AZuq6aKlm+WJYll3U8slvfVR/QsKETmnGQnxboFbzHVETcdb38Z1S21XM8nQLyFDPNj
	QICg7keTPb8L4BrpKQCBkefFe7xAQxHSQ8a58FGXzSHCI3hwZGrvSDAMkgMtIW5K0CzQH0pjQHK
	BgRLg7BvuQy3g9s2p1b994q9N21YJAfRgO8aBhjAzB9fWwJBZIv6qKDYFE9b4J9IGcdHjRz+oLB
	WgfwHCTm/lGGKWeon1vrem0yo9LXW4Doi2UmOlyC5BA6hxDu2g5nU0b+qhie+GkYByqGwhmAtYu
	RnUwYyTp3ZtWFiGOXcRB0TOOuca2ZKqkzhGptgJsnNMJzD75z2BVRaPU2SLKGypTmWfOuBKl2Uj
	9oC80A+FCFggPJqLdLoOY0lpliznFIK3eJO+tmmxRFuNaC6ZksQKu
X-Received: by 2002:a05:6a00:2354:b0:824:cb8f:2a06 with SMTP id d2e1a72fcca58-826daa272c9mr4035358b3a.3.1771781752165;
        Sun, 22 Feb 2026 09:35:52 -0800 (PST)
X-Received: by 2002:a05:6a00:2354:b0:824:cb8f:2a06 with SMTP id d2e1a72fcca58-826daa272c9mr4035345b3a.3.1771781751664;
        Sun, 22 Feb 2026 09:35:51 -0800 (PST)
Received: from hu-uchheda-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd8cbb02sm5193757b3a.57.2026.02.22.09.35.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 09:35:51 -0800 (PST)
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, umang.chheda@oss.qualcomm.com,
        mohd.anwar@oss.qualcomm.com, krishna.chundru@oss.qualcomm.com,
        monish.chunara@oss.qualcomm.com
Subject: [PATCH v2 0/1] Introduce Monaco EVK Interface Plus Mezzanine
Date: Sun, 22 Feb 2026 23:05:44 +0530
Message-Id: <20260222173545.3627478-1-umang.chheda@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=AL4GpdX7 c=1 sm=1 tr=0 ts=699b3e79 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=K9Lqolnw07cf1ahGGkIA:9 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: L0ljLQpGxH70-yShiIEcO_qNR38ZEwyW
X-Proofpoint-ORIG-GUID: L0ljLQpGxH70-yShiIEcO_qNR38ZEwyW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIyMDE2OSBTYWx0ZWRfX3zBkpwIg0Z0i
 ND62zhjaF+g2d5YaXe77o+RY9DK438DH8/BS3nDAVACC2Zn+PC69KSmQxb7RN4+80HVF1nkeT5N
 aAdBPSmu7zudr19pQzaGEpH2mZkNANSdpzgwoK4JwNY/So5QZTRD/+Y3RO4ncUwoMCQrqYeiO7h
 0fzLyOVURsfTOdyGj8QZXvnT5ZczkkGlAu7+q/g3zuO9qxiEdCOmvVJ0P8Us1kF7q181OpN20IR
 0Vbh/jBlSgchVbVyOGxwVjiKfC79JL6B0VxQqFZkgOThg8g5p0yF+TG5wjJMCkqKe29s/vnGmQ1
 SBq/i8b5LH7PDHbCcTiXhtto0tDq3BTnSeBRHEzRYalvkVztlR8Y2a+fhJDoaaeOqi+3kqeOFKW
 4OH6xXA4UerrSHCd9fq32asa08nz0SwWhii0sZBnU7Hm+NXjFyfkzUT9s+cbG8vYon54RntGlTh
 NCOG4tuNcga0AaiZwgQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-22_04,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 impostorscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602220169
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267184-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[umang.chheda@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A060F16FF2C
X-Rspamd-Action: no action

Introduce device tree support for the Interface Plus [IFP] Mezzanine expansion
card used with the Qualcomm Monaco Evaluation Kit (EVK).

The Monaco IFP Mezzanine is an additional add-on card which can be stacked
on top of monaco-evk board to extend peripheral capabilities of
monaco-evk used for industrial applications.

It connects via expansion headers on the monaco-evk and provides
following peripherals :
- 4x Type A USB ports in host mode.
- TC9563 PCIe switch, which has following three downstream ports (DSP) :
   - 1st DSP connects M.2 E-key connector for connecting WLAN endpoints.
   - 2nd DSP connect M.2 B-key connector for connecting cellular modems.
   - 3rd DSP with support for Dual Ethernet ports.
- EEPROM.
- LVDS Display.
- 2*mini DP.

---
Changelog

v2:
- Change the DT filename to "monaco-evk-ifp-mezzanine.dtso", also
  update commit text and cover letter text to reflect this change - Konrad.
- Remove "status=okay" property from i2c15 node - Bjorn.
- Remove "power-source", "input-disable" and "output-enable" properties
  from tc9563_resx_n node and add "output-high" property instead to
  align with TLMM supported bindings - Bjorn.
- Remove extra '\n' from tc9563_resx_n node - Konrad.
- v1-link: [1]

[1] https://lore.kernel.org/lkml/20260210103821.4169-1-umang.chheda@oss.qualcomm.com/

---

Umang Chheda (1):
  arm64: dts: qcom: monaco-evk: Add Mezzanine

 arch/arm64/boot/dts/qcom/Makefile             |   4 +
 .../dts/qcom/monaco-evk-ifp-mezzanine.dtso    | 184 ++++++++++++++++++
 2 files changed, 188 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/monaco-evk-ifp-mezzanine.dtso

--
2.34.1


