Return-Path: <devicetree+bounces-259751-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DugINJmeGnTpgEAu9opvQ
	(envelope-from <devicetree+bounces-259751-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 08:18:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D58FF90AC9
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 08:18:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 92E8D3011C6A
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 07:18:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF341329E67;
	Tue, 27 Jan 2026 07:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CZ/5uHWu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bCfsEM3j"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D7042BFC7B
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769498319; cv=none; b=LERP9GUG+Hqry5HZIJvPiHrGI3HmUhWnly0JV+yBis22S11ljPSIsJne0pKZxdVcsaDLxTFvFR6Ek9YlnDUi2UI40VLm6gEOERFPwQ+38jWxqLUCxf9gctx2PaZhUgXIuW3EDI6HxpGKsG4rn7u8YXhpy+J1nLTbRoGOY4AeA0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769498319; c=relaxed/simple;
	bh=nPIjFJWEz6cbYOAQ8erioipFaVgTTlFMfXePTF1j7ac=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=JbypYvaqsSagGb5bYflOzhE/zjGSd5bdm/RnL8VKb+L7UTljxqR0+IrZvFP+CaHYOcmAn20vsR3qV1XghvUfIYXy/2eXOSiOZ4HC/gkhSn4SBtOeMfv1PN8qi06dnhWEpieFqYlouYp0lmaW4rU2lsORaCbIaSwayNlmDuTpvUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CZ/5uHWu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bCfsEM3j; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R4UUZQ1900709
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:18:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=IWEnM0YBbjg+b3mhL88lQZ
	NqYkOm6EFF+BuRi3TqvyA=; b=CZ/5uHWuykzpaSqRT3qLqAPcmZawWAKCkCi/vX
	6zofSG7KuZdNBzrmk5L/w+lSRzmNbkbe2vMPhoIuJdNRyX+ahDVDE2xupXdDpthx
	tKUDU7Gtz+LSYGX6Tfff3PDvGZUzcOD42HISIa2KgBLFAhYZKZ3yRF+yhGZs1KMA
	u5Mr7GyayRfHYKy5N4EZSVAOGebbnsQhL1hTD70qKFfNh79RN4HIjzV9i5uJAor9
	J3K3C4rSVve8iEJ8mfByGrxdiysvSFxdhM8O9b4RGbor6I951g5hFSYGuhQVAk4M
	Msw41r9sD/kOqAg07PsrhyPKSv5CiDHti59SgCt49u0sZ7GQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxadptnu5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:18:37 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a863be8508so22690745ad.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:18:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769498317; x=1770103117; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IWEnM0YBbjg+b3mhL88lQZNqYkOm6EFF+BuRi3TqvyA=;
        b=bCfsEM3jR0emyVyLMGkzKHVy8iPIOvShY5WZIHVbAVJ3fCURt3WLpGHY6gnwrxEMrX
         Jw1mraBMsmXsTSWpcjTbzAdBFp7GOXrPcfxILVM1jCRyWrDgXapr1GsqxsD5yBk0TBsj
         OKmBN8aOx+0k7X1CJnC8iBgAItaVueQ0F9zk61PSZrDwhSJdnTo+LTVbVzTvO7eJvqHI
         TJFqFLGgR1fyrDoabrtl48Bs63vVwFtdu45oZlNYUnLkaWKTSkuNufgIU0/KfloA7BvS
         XexczFvYk6xiYrDVK8tavPNgz1zIhtTOVU9JN5wzSilY3WIKd+R+DtwJ7mbujXmZscI0
         hMoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769498317; x=1770103117;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IWEnM0YBbjg+b3mhL88lQZNqYkOm6EFF+BuRi3TqvyA=;
        b=CXmKbr74dKm0yj9utdaYkpve9/l0dLx1o6E4H4Abdo0D2HtPaOqtUhcukYzWFtEHUz
         6qiY8/UyYffXqPwMC0JU7ar2NQZ4ZdESykfdAgFtwZ8cx1B9jpEkWyHpU+LvFBp+ZBmB
         8VhjPUMmN0zRIogONJLqTdyRAEZmISEYNK6GHwrVuVmae8hh5iQqvy37o35GsIFbnN5O
         VOkZrnQeok9u58nlerPPQA8ollSJNgIWYQvD39pRuK2HOT7uUbbhK9w28pWAD06AETW/
         vAfFBtwVuTdghwH/EM8WPXSrKq9Bdhdh0yphD2qxbtDl+kS5IAj5H8XK1xidyIeaVum+
         tnPA==
X-Forwarded-Encrypted: i=1; AJvYcCX/TRCFQv4snOnEPaQS+4u4Iz7yBZ7WTq5Vv+P3iiilmVi28/Eym52jDnQIk9JXU9BcNJ9J3TmkBA7g@vger.kernel.org
X-Gm-Message-State: AOJu0YyYoDGEBv7T87TdQNkHQC+PMRkP+NtofroKmedDxFitag9k8g7U
	+O4fUKQNlUEx2Pup7HLEnfjHpKRa/AUNvWSQxXjZjupkE47Yg3jwJSyG8LjVncfsimIv/lOTd5e
	hsmO5HbjdT4Kb6qYDEhRw7Z0Gv43ysnlnpUSPwgaLlDQhlaqYc2aUfvwLT2zmX6Cn
X-Gm-Gg: AZuq6aJBz3HY6AHbV/qXTZm8h5qniViE03x44HmJ/58Lo+v7vV12JflAAZLnQXK41xe
	YHBX+cWxzqnVCSXa+1qysAyDokyBgwgdJFgP9Y7AWHnkyBXfv9Fkq+ZaCKAd0UG0la8vZzXq8d0
	b15/7fmtSP6S2JJK/txMEOQ/8EKHk2WMcbUqnivjQoL6rWxBcvCjF32LUqChu017Xfib7Q4Inz/
	qERGKMROPcCNB0OzcZHMVPmilajpjOqegxRVVsRgIFMQTpzDPQ/2IZYDIINvnkyrQOj+Fy+s8r5
	SB9YQ2POw7oH4E98Er8wTNDXSdBCCYkOakwthhrAEQc3hvaIDHCPJ7lxwpLdTSJkrCO/WvqJ6IO
	TD5lm19QK6KOxCm0Mko4fG7lxwK8HuYqPjg==
X-Received: by 2002:a17:903:ac7:b0:2a0:c1e4:e25 with SMTP id d9443c01a7336-2a870e8d1e3mr9505745ad.54.1769498316972;
        Mon, 26 Jan 2026 23:18:36 -0800 (PST)
X-Received: by 2002:a17:903:ac7:b0:2a0:c1e4:e25 with SMTP id d9443c01a7336-2a870e8d1e3mr9505515ad.54.1769498316443;
        Mon, 26 Jan 2026 23:18:36 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a817f21707sm88084525ad.28.2026.01.26.23.18.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 23:18:36 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Subject: [PATCH 0/2] clk: qcom: Add support for GPUCC and GXCLK for Glymur
Date: Tue, 27 Jan 2026 12:45:48 +0530
Message-Id: <20260127-glymur_gpucc-v1-0-547334c81ba2@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACRmeGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQyMT3fScytzSovj0gtLkZN1Uc5O0NFOj5DRDYwsloJaCotS0zAqwcdG
 xtbUAWOuIlV4AAAA=
X-Change-ID: 20260124-glymur_gpucc-e74ff52cf138
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-ORIG-GUID: 1P8kQWsCLF8lVQU798ggUGXo8MlZRKG1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA1OCBTYWx0ZWRfX9YjeXTDoi/3x
 22XG4QKr/iGGrEvDrPEgj8AktT/h4yH7/+acgwvJ5CBIfoA4cQ0idkfYBOjwy2Rj28PhsI9KRQC
 tAWg5mWGtd3U1K4uYbck+qopEyKoBuEENCXFJeDMQosn8Ui4acT6oclLG1FK7lILvQ1uIklZHaR
 PSBavOolmGZxYfW6G8RIhTYXmr3HvB7W/CBYi4fOVhn254hvlmLikhvD8dLiz5xIQZvFxo3s4Wn
 iVl62xKXPltDopf3nyZ3yRZHxNTbpLdpPkBImLEKCdxQuXRmmhXdAkNpNMxTR67rJKzlAFNksx+
 pi3/eta2ssusm3xaa3SXDSI/av/3usFsYSJyFlqfytR5ej9DQ8cNo92weQLjCSIN06qvYyITeRw
 lYCd8YwiWI3FHQA6c+v/9Baz38V6S+jmxce3NUh2FJaKiup/J7HG6amtrXi9T2i+RPZExKZAqbj
 myEGcBbHtGlthJT3E2w==
X-Authority-Analysis: v=2.4 cv=GvdPO01C c=1 sm=1 tr=0 ts=697866cd cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=8BAK5ul3PV33nhPFZ3EA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 1P8kQWsCLF8lVQU798ggUGXo8MlZRKG1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_01,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 malwarescore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270058
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-259751-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D58FF90AC9
X-Rspamd-Action: no action

Support the graphics clock controller for Glymur for Graphics SW
driver to use the clocks. GXCLKCTL (Graphics GX Clock Controller) is a
block dedicated to managing clocks for the GPU subsystem on GX power
domain. The GX clock controller driver manages only the GX GDSC and the
rest of the resources of the controller are managed by the firmware.

The Graphics GX clock controller is a reuse of the Kaanapali SW driver.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
Taniya Das (2):
      dt-bindings: clock: qcom: document the Glymur GPU Clock Controller
      clk: qcom: Add support for GPUCC and GXCLK for Glymur

 .../bindings/clock/qcom,kaanapali-gxclkctl.yaml    |   1 +
 .../bindings/clock/qcom,sm8450-gpucc.yaml          |   4 +-
 drivers/clk/qcom/Kconfig                           |   9 +
 drivers/clk/qcom/Makefile                          |   1 +
 drivers/clk/qcom/gpucc-glymur.c                    | 619 +++++++++++++++++++++
 drivers/clk/qcom/gxclkctl-kaanapali.c              |   1 +
 include/dt-bindings/clock/qcom,glymur-gpucc.h      |  51 ++
 7 files changed, 685 insertions(+), 1 deletion(-)
---
base-commit: ca3a02fda4da8e2c1cb6baee5d72352e9e2cfaea
change-id: 20260124-glymur_gpucc-e74ff52cf138

Best regards,
-- 
Taniya Das <taniya.das@oss.qualcomm.com>


